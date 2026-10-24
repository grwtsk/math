# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant6a8c4d7c421f9c98.BinaryMatrixFiniteCounts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e54c79be2de43d117e1bee5481d39a38e156b4fb` · SHA-256 `242aab966a093eb6db3b29ec61eaa2621a0fc37ccbde5cc585d119f3b7f09c8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BinaryMatrixFiniteCounts — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77
Organized SHA-256: 02587afbb8384718f0448dbaf9e54afd048908e902439e33230a3c8aaffb1807
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Actual finite cell/filter cardinalities, checkerboard predicate and complete zero/one partition proof. No measure/density or checkerboard existence theorem is inferred. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.Bit
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier

/-!
# Folder.Carrier.BinaryMatrix

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.binary_matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrix
def cellCount (M : BinaryMatrix) : Nat :=
  M.m * M.n

def IsCheckerboardPattern (M : BinaryMatrix) : Prop :=
  ∀ i j, M.get i j = ((i.val + j.val : Nat) : Bit)

def actualCount (M : BinaryMatrix) (b : Bit) : Nat :=
  (Finset.univ.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = b)).card

def countOnes (M : BinaryMatrix) : Nat :=
  actualCount M 1

def countZeros (M : BinaryMatrix) : Nat :=
  actualCount M 0

theorem bit_eq_zero_or_one (b : Bit) :
    b = 0 ∨ b = 1 := by
  fin_cases b
  · left
    rfl
  · right
    rfl

theorem bit_eq_zero_iff_not_eq_one (b : Bit) :
    b = 0 ↔ ¬ b = 1 := by
  constructor
  · intro h0 h1
    rw [h0] at h1
    norm_num at h1
  · intro h
    rcases bit_eq_zero_or_one b with h0 | h1
    · exact h0
    · exact False.elim (h h1)

theorem countOnes_add_countZeros (M : BinaryMatrix) :
    countOnes M + countZeros M = cellCount M := by
  classical
  unfold countOnes countZeros actualCount cellCount
  let cells : Finset (Fin M.m × Fin M.n) := Finset.univ
  have hnot :
      (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)) =
        (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 0)) := by
    apply Finset.filter_congr
    intro c hc
    exact (bit_eq_zero_iff_not_eq_one (M.get c.1 c.2)).symm
  have hsum :
      (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)).card +
        (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)).card =
          cells.card := by
    simpa [cells] using Finset.card_filter_add_card_filter_not
      (s := cells) (p := fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)
  rw [← hnot]
  simpa [cells, Fintype.card_prod, Fintype.card_fin] using hsum

end BinaryMatrix
end Carrier
end Folder
```
