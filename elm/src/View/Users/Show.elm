module View.Users.Show exposing (view)

import Model exposing (Model)
import Types exposing (User)
import Msg exposing (Msg(..))
import Html exposing (Html, text, h2, div)


view : Model -> Int -> Html Msg
view model id =
    case model.shownUser of
        Nothing ->
            text "No user here, sorry bud."

        Just user ->
            div []
                [ h2 [] [ text user.name ]
                ]
