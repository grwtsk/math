# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Determinants.IntegralPermutationParity.Variant4694af98a3c046e2.DeterminantSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0226ee1f3a8dc2d79258d1e30574c6ff2b0e40cd` · SHA-256 `f62e37b6c78677eb9a8d9c7b0d2ae0eda19757d65f21264dcb7ac8054424076c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DeterminantSign — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba
Organized SHA-256: 1ad04b3fab4c174ddddf38f02f58a323325838f2cf8a53a31956f009af725377
PMD: 510.1.070.020.010 determinants (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The determinant-sign agreement, plus-or-minus-one alternative, absolute determinant and exact integral-parity equality form a separate determinant seam, with original proof terms unchanged. No orientation, move-legality or deduction of integral sign from reduction modulo two is introduced. The exact original BitMatrix.Algebra.InvolutionProjection extension namespace remains outside any added container to preserve its fully qualified imported carrier identity. Physical maintained paths are under GRWTSK/actual PMD; distinct historical variants must not be jointly imported or substituted. -/

import BitMatrix.Algebra.InvolutionProjection
import Mathlib.GroupTheory.Perm.Sign
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.EncodedInvolutionMatrices.Variant4694af98a3c046e2.IntegralPermutationLift

/-!
# Integral lift of a binary involution action matrix

The Boolean action matrix has a canonical integral `0/1` lift.  It is the
identity matrix with its columns permuted by the encoded state involution, so
its determinant is exactly the Mathlib permutation sign and hence `+1` or
`-1`.  This is an integral parity statement.  It is deliberately separate
from the `ZMod 2` matrix and from any orientation or move-legality judgment.
-/

open FinitePermutationDynamics

namespace BitMatrix.Algebra.InvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

variable (P : BitMatrix.Algebra.InvolutionProjection X)

/-- Exact agreement with Mathlib's permutation-sign homomorphism. -/
theorem det_integralMatrix_eq_sign :
    P.integralMatrix.det = (P.encodedPerm.sign : ℤ) := by
  rw [P.integralMatrix_eq_one_submatrix]
  simpa using
    (Matrix.det_permute' P.encodedPerm
      (1 : Matrix (Fin P.width) (Fin P.width) ℤ))

/-- The determinant of an integral permutation lift is exactly `+1` or `-1`. -/
theorem det_integralMatrix_eq_one_or_neg_one :
    P.integralMatrix.det = 1 ∨ P.integralMatrix.det = -1 := by
  have hdet := congrArg Matrix.det P.integralMatrix_mul_self
  rw [Matrix.det_mul, Matrix.det_one] at hdet
  apply (sq_eq_one_iff).mp
  simpa [pow_two] using hdet

theorem abs_det_integralMatrix : |P.integralMatrix.det| = 1 := by
  rcases P.det_integralMatrix_eq_one_or_neg_one with h | h <;> simp [h]

/-- Integral parity is the permutation sign, not a conclusion drawn from
reduction modulo two. -/
theorem integral_parity_agrees :
    P.integralMatrix.det = (P.encodedPerm.sign : ℤ) :=
  P.det_integralMatrix_eq_sign

end BitMatrix.Algebra.InvolutionProjection
```
