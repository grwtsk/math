-- lean/cognition/Core/CognitiveMode.lean

namespace Cognition.Core

/--
`CognitiveMode` is a coarse classification of the agent’s current mental posture.

It reflects how the system interprets user behavior based on event patterns.
-/
inductive CognitiveMode
  /-- Actively typing or reading; default working mode. -/
  | focus
  /-- A pause suggests internal reflection. -/
  | reflect
  /-- A planning intention is detected in the prompt. -/
  | plan
  /-- High load detected; user likely needs help. -/
  | offload
  /-- User explicitly delegates control to the system. -/
  | delegate
  deriving DecidableEq, Repr

namespace CognitiveMode

/-- All known cognitive modes. -/
def all : List CognitiveMode :=
  [focus, reflect, plan, offload, delegate]

/-- Render a `CognitiveMode` as a human-readable string. -/
def toString : CognitiveMode → String
  | focus    => "Focus"
  | reflect  => "Reflect"
  | plan     => "Plan"
  | offload  => "Offload"
  | delegate => "Delegate"

instance : ToString CognitiveMode := ⟨toString⟩

end CognitiveMode

end Cognition.Core
