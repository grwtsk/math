/-
SingleCoordinateUpdateAndEquations — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd
Organized SHA-256: 6dffc4cc08da5c2419472eef5fd4784fb800be0436b476ac774c77c5da963081
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- One coherent update constructor and its exact target/off-target equations. The off-target premise row≠targetRow∨column≠targetColumn and the entire disjunction-elimination proof are retained; no finite support cardinality or runtime update claim. Original provider identities and all proof bytes retained; no Lean/Lake replay or stronger domain construction. -/

import BooleanMatrix.Matrix.Core

/-!
# Local BooleanMatrix updates
-/

namespace BooleanMatrix
namespace Matrix

/-- Replace one matrix entry. -/
def set
    (matrix : Matrix)
    (targetRow targetColumn : Nat)
    (value : Bool) :
    Matrix :=
  fun row column =>
    if row = targetRow ∧ column = targetColumn then
      value
    else
      matrix row column

@[simp]
theorem set_target
    (matrix : Matrix)
    (row column : Nat)
    (value : Bool) :
    set matrix row column value row column = value := by
  simp [set]

theorem set_other
    (matrix : Matrix)
    (targetRow targetColumn row column : Nat)
    (value : Bool)
    (different :
      row ≠ targetRow ∨ column ≠ targetColumn) :
    set matrix targetRow targetColumn value row column =
      matrix row column := by
  unfold set
  split
  · rename_i equal
    exact False.elim <|
      different.elim
        (fun hrow => hrow equal.1)
        (fun hcolumn => hcolumn equal.2)
  · rfl

end Matrix
end BooleanMatrix
