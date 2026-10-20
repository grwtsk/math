/-
IndicesAndActivity
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec4647d540fea03c4b4f3c23e581850d4effa44a509c853255858595ec39a986
Organized SHA-256: eb292535cbef87c08deeb61c945506cd1e42155631339bfff27569e0b89cbfbc
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Three-index finRotate and its whole CoordPermutation retain all index equalities, bijectivity, zero SAC/variance, hamming-one branch activity and branchNumber=2 with full positive-width premise. These are structural finite examples, not cryptographic security, mixing or Avalanche guarantees. The original namespace BitMatrix.Tests.PermutationNetwork is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Network.Permutation
import BitMatrix.FiniteField.Round
import Mathlib.Data.ZMod.Basic
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete permutation-network boundary tests

These finite examples exercise the corrected guarantee boundary. Coordinate
rotation is a permutation with branch number two but zero avalanche scores;
an exact state-dependent correction collapses the identity; trivial elementary
`H¹` does not prevent that collision; and a square-zero operator is not
bijective. The `ZMod 2` example checks a pole of the partial finite-field
expression, not a statistical property.
-/

namespace BitMatrix.Tests.PermutationNetwork

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.FiniteField.Round
open BitMatrix.Network.Permutation

/-! ## Three-coordinate cyclic rotation -/

/-- The cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def rotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- Coordinate rotation induced by `rotate3Indices`. -/
def rotate3 : Bits 3 ≃ Bits 3 :=
  coordinatePermutation rotate3Indices

example : rotate3Indices (0 : Fin 3) = 1 := by native_decide
example : rotate3Indices (1 : Fin 3) = 2 := by native_decide
example : rotate3Indices (2 : Fin 3) = 0 := by native_decide

example : Function.Bijective rotate3 :=
  rotate3.bijective

example : sacScore rotate3 = 0 := by
  native_decide

example : varianceScore rotate3 = 0 := by
  native_decide

example : hammingWeight (rotate3 (basisBit (0 : Fin 3))) = 1 := by
  native_decide

example :
    branchNumber
      (XorLinearEquiv.ofCoordinatePermutation rotate3Indices) = 2 :=
  branchNumber_coordinatePermutation rotate3Indices (by decide)

end BitMatrix.Tests.PermutationNetwork
