# Complete source: GRWTSK.Algebra.LinearAlgebra.IntegralPermutationLift.Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0114000af4a9670c8aaedfb1afa055adf951608c` · SHA-256 `d30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.InvolutionProjection
import Mathlib.GroupTheory.Perm.Sign
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-!
# Integral lift of a binary involution action matrix

The Boolean action matrix has a canonical integral `0/1` lift.  It is the
identity matrix with its columns permuted by the encoded state involution, so
its determinant is exactly the Mathlib permutation sign and hence `+1` or
`-1`.  This is an integral parity statement.  It is deliberately separate
from the `ZMod 2` matrix and from any orientation or move-legality judgment.
-/

open FinitePermutationDynamics

namespace BinaryInvolutionProjection

variable {X : Type*} [Fintype X] [DecidableEq X]

variable (P : BinaryInvolutionProjection X)

/-- The source involution transported to the encoded finite index type. -/
def encodedPerm : Equiv.Perm (Fin P.width) :=
  FinitePermutationDynamics.transport P.encode P.source.toPerm

theorem encodedPerm_apply (j : Fin P.width) :
    P.encodedPerm j = P.encode (P.source.act (P.encode.symm j)) :=
  rfl

@[simp]
theorem encodedPerm_symm : P.encodedPerm.symm = P.encodedPerm := by
  apply Equiv.ext
  intro j
  apply P.encodedPerm.injective
  rw [Equiv.apply_symm_apply]
  simp only [P.encodedPerm_apply]
  simp [encodedPerm]

@[simp]
theorem encodedPerm_apply_self (j : Fin P.width) :
    P.encodedPerm (P.encodedPerm j) = j := by
  rw [← P.encodedPerm_symm]
  exact P.encodedPerm.symm_apply_apply j

/-- Integral `0/1` lift of the Boolean action matrix. -/
def integralMatrix : Matrix (Fin P.width) (Fin P.width) ℤ :=
  fun i j => if P.actionMatrix i j then 1 else 0

theorem integralMatrix_eq_ite (i j : Fin P.width) :
    P.integralMatrix i j = if P.encodedPerm j = i then 1 else 0 := by
  unfold integralMatrix
  by_cases h : P.encodedPerm j = i
  · have hb : P.actionMatrix i j = true := (P.action_spec i j).mpr h
    simp [hb, h]
  · have hb : P.actionMatrix i j = false := by
      cases hvalue : P.actionMatrix i j
      · rfl
      · exact False.elim (h ((P.action_spec i j).mp hvalue))
    rw [if_neg h]
    simp [hb]

/-- The integral lift is the identity matrix with columns permuted. -/
theorem integralMatrix_eq_one_submatrix :
    P.integralMatrix =
      (1 : Matrix (Fin P.width) (Fin P.width) ℤ).submatrix id P.encodedPerm := by
  ext i j
  rw [P.integralMatrix_eq_ite]
  simp [Matrix.submatrix, Matrix.one_apply, eq_comm]

/-- The integral action remains an involution. -/
theorem integralMatrix_mul_self :
    P.integralMatrix * P.integralMatrix = 1 := by
  ext i j
  classical
  rw [Matrix.mul_apply]
  let k := P.encodedPerm j
  rw [Finset.sum_eq_single k]
  · have hk : P.encodedPerm k = j := by simp [k]
    simp [P.integralMatrix_eq_ite, k, hk, Matrix.one_apply, eq_comm]
  · intro b _ hb
    have hne : P.encodedPerm j ≠ b := by simpa [k] using hb.symm
    rw [P.integralMatrix_eq_ite, P.integralMatrix_eq_ite, if_neg hne]
    simp
  · simp

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

end BinaryInvolutionProjection
```
