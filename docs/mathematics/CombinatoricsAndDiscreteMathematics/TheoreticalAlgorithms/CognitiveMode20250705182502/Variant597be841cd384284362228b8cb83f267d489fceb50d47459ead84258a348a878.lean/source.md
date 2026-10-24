# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CognitiveMode20250705182502.Variant597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e062b038305ded863f1702277e20d56fcf7cce7` · SHA-256 `597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
