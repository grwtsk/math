/-
BoolInvolutionIntegralAndBinaryLifts — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817
Organized SHA-256: 5fcdf0b66da4626f08445bc7e1212d83d8641f82765ce7ab14bf96415442d25f
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The entire Bool≃Fin2 equivalence, certified Bool.not action with exact support, full InvolutionProjection construction, integral determinant−1 and integral/ZMod2 square-identity statements remain. Integral parity is not inferred from determinant in characteristic2, nor from arbitrary surgery or geometric orientation. -/

import BitMatrix.Surgery.Submatrix
import BitMatrix.Network.IntegralPermutationLift

/-!
# Tests for exact binary submatrix surgery

The selected rows and columns are non-contiguous, so the examples exercise the
ordered global embeddings rather than a rectangular offset shortcut.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619

namespace BitMatrix.Tests.SubmatrixSurgery

open BitMatrix.Geometry
open BitMatrix.Surgery
open BitMatrix.Surgery.SubmatrixSurgery

/-! A concrete two-state involution also checks the integral lift boundary. -/

def boolFinTwo : Bool ≃ Fin 2 where
  toFun
    | false => 0
    | true => 1
  invFun i := i = 1
  left_inv b := by cases b <;> rfl
  right_inv i := by fin_cases i <;> rfl

def boolNotInvolution :
    FinitePermutationDynamics.CertifiedInvolution Bool where
  act := Bool.not
  involutive b := by cases b <;> rfl
  support := Finset.univ
  support_spec b := by cases b <;> simp

def boolProjection : BitMatrix.Algebra.InvolutionProjection Bool :=
  BitMatrix.Algebra.InvolutionProjection.ofCertified 2 boolFinTwo boolNotInvolution

example : boolProjection.integralMatrix.det = -1 := by native_decide

example : boolProjection.integralMatrix * boolProjection.integralMatrix = 1 :=
  boolProjection.integralMatrix_mul_self

example : boolProjection.f2Matrix * boolProjection.f2Matrix = 1 :=
  boolProjection.f2Matrix_mul_self

end BitMatrix.Tests.SubmatrixSurgery

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619
