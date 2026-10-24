-- lean/cognition/Core/CognitiveState.lean
import cognition.Core.CognitiveMode
import cognition.Core.FlowRegion

namespace Cognition.Core

/--
`CognitiveState` tracks the runtime mental posture of the user or agent.

This structure is pure and updated via `applyEvent`.
-/
structure CognitiveState where
  /-- High-level cognitive mode (focus, reflect, plan, etc.). -/
  mode : CognitiveMode
  /-- Flow region (underloaded, optimal, overloaded). -/
  flow : FlowRegion
  /-- Milliseconds since last input. -/
  pauseMs : Nat
  /-- Character length of the most recent prompt. -/
  lastPromptLen : Nat
  /-- Recent error count (e.g. backspaces). -/
  recentErrorCount : Nat
  /-- Valence score ∈ [-1.0, 1.0] representing affect polarity. -/
  valence : Float
  /-- Confidence score ∈ [0.0, 1.0] representing user certainty. -/
  confidence : Float
  deriving Repr, DecidableEq

/-- Default (neutral) state: Focus mode, Optimal flow, zeroed metrics. -/
def CognitiveState.default : CognitiveState :=
  {
    mode := CognitiveMode.focus,
    flow := FlowRegion.optimal,
    pauseMs := 0,
    lastPromptLen := 0,
    recentErrorCount := 0,
    valence := 0.0,
    confidence := 0.5
  }

instance : Inhabited CognitiveState := ⟨CognitiveState.default⟩

end Cognition.Core
