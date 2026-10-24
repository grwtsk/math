# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.Discrepancy.CombinatorialDiscrepancy.FiniteBinaryCarrierMathematics.Variante70264a1b259cd1a.SignedImbalanceAndHalfCountBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d0333ed878a8a25881b16397a1caae994184d28` · SHA-256 `e5f80989f32ea21dcd9754a0633599ec89f064e12ff57d2d694c8ee7fe9839fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SignedImbalanceAndHalfCountBounds — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29
Organized SHA-256: 3c52709fd14315d0fe4dbcd003c982e38cc1c1c557d27dcc9d7913a42dc4463e
PMD: 510.7.050.050.010 combinatorial discrepancy (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact signed ones-minus-zeros definition, natAbs bound and whole three-case half-count disjunction. The positive-size premise of the last theorem remains present even though its copied proof does not use it. Original declaration namespaces and historical imports are retained literally. No geometric, probabilistic, analytic, operational or kernel acceptance is inferred from historical labels. Tactics are preserved text and remain unexecuted. -/

import Folder.Bitspace.Checkerboard

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FiniteBinaryCarrierMathematics.Variante70264a1b259cd1a.OddEvenCardinalityAndMatrixCounts

/-!
# Folder.Bitspace.Density

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.density
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier
open Finset
open scoped Count

noncomputable def imbalance (M : BinaryMatrix) : Int :=
  (BinaryMatrix.countOnes M : Int) - (BinaryMatrix.countZeros M : Int)

theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (imbalance (checkerboard m n)) ≤ 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hzeros : BinaryMatrix.countZeros (checkerboard m n) = N - N / 2 := by
    simpa [N] using checkerboard_countZeros_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  have hmod : N % 2 = 0 ∨ N % 2 = 1 := Nat.mod_two_eq_zero_or_one N
  rcases hmod with hmod | hmod
  · have hhalf : N - N / 2 = N / 2 := by omega
    simp [imbalance, hones, hzeros, hhalf]
  · have hhalf : (N : Int) - (N / 2 : Int) = (N / 2 : Int) + 1 := by
      have : N = 2 * (N / 2) + 1 := by omega
      omega
    have himb : imbalance (checkerboard m n) = -1 := by
      simp [imbalance, hones, hzeros]
      omega
    simp [himb]

theorem checkerboard_average_half_bound
    (m n : Nat)
    (_h : 0 < m * n) :
    2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) + 1 =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) + 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  rcases Nat.mod_two_eq_zero_or_one N with hmod | hmod
  · left
    omega
  · right
    left
    omega

end Bitspace
end Folder
```
