-- lean/cognition/Core/UserInputEvent.lean

namespace Cognition.Core

open Std (Duration)

/--
`UserInputEvent` represents a raw user-originated interaction.

These events are captured by the frontend or runtime sensorium,
and timestamped internally as `PerceptionEvent`.
-/
inductive UserInputEvent
  /-- A user prompt (free-form text input). -/
  | prompt (text : String)

  /-- A pause was observed (e.g. idle period without input). -/
  | pause (duration : Duration)

  /-- The user made an error (e.g. backspace or correction). -/
  | errorDetected

  /-- The user explicitly asked the system to take over. -/
  | explicitDelegate
  deriving Repr, DecidableEq

end Cognition.Core
