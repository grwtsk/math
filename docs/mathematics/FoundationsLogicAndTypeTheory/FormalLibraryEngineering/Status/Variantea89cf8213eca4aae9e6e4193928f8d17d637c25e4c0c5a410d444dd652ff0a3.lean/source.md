# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Status.Variantea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ab30742afe3c259d4a4432973621d59b44fb818` · SHA-256 `ea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Taxonomy.Role
import Mathlib.Tactic.DeriveFintype

/-! # Mathematical status independent of role and domain. -/

namespace Mathematics.Taxonomy

inductive MathematicalStatus
  | definition
  | axiom
  | derivedDefinition
  | provedTheorem
  | importedTheorem
  | conditionalTheorem
  | classificationTheorem
  | existenceTheorem
  | uniquenessTheorem
  | equivalenceTheorem
  | bound
  | algorithm
  | verifiedAlgorithm
  | numericalObservation
  | heuristic
  | conjecture
  | openProblem
  | disprovedClaim
  | counterexample
  | historicalFormulation
  deriving DecidableEq, Inhabited, Fintype

def MathematicalStatus.RequiresTheoremAuthority : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.RequiresTheoremAuthority := by
  cases status <;>
    simp only [MathematicalStatus.RequiresTheoremAuthority] <;>
    infer_instance

/-- Statuses that denote an admitted proved statement rather than an open claim. -/
def MathematicalStatus.IsProved : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.IsProved := by
  cases status <;>
    simp only [MathematicalStatus.IsProved] <;>
    infer_instance

end Mathematics.Taxonomy
```
