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

/-! ## State-dependent correction and elementary cohomology -/

example : Function.Bijective (id : Bits 1 → Bits 1) :=
  Function.bijective_id

example :
    ¬ Function.Injective
      (addCorrection
        (id : Bits 1 → Bits 1)
        (id : Bits 1 → Bits 1)) :=
  identity_add_identity_not_injective (by decide)

example : (endMapComplex 1).H1Trivial :=
  identityZeroComplex_h1Trivial _ _

example :
    (endMapComplex 1).Exact₁ (id : EndMap 1) :=
  identityCorrection_exact 1

example :
    (endMapComplex 1).H1Trivial ∧
    (endMapComplex 1).Closed₁ (id : EndMap 1) ∧
    (endMapComplex 1).Exact₁ (id : EndMap 1) ∧
    Function.Bijective (id : EndMap 1) ∧
    ¬ Function.Injective
      (addCorrection (id : EndMap 1) (id : EndMap 1)) :=
  trivial_H1_does_not_preserve_bijectivity (by decide)

/-! ## Concrete square-zero operator -/

/-- The constant-false endomap of `Bool`. -/
def boolZeroOperator : Bool → Bool :=
  fun _ => false

example : ¬ Function.Injective boolZeroOperator :=
  not_injective_of_square_zero
    false boolZeroOperator rfl (fun _ => rfl) ⟨true, by decide⟩

example : ¬ Function.Bijective boolZeroOperator :=
  not_bijective_of_square_zero
    false boolZeroOperator rfl (fun _ => rfl) ⟨true, by decide⟩

/-! ## Partial finite-field expression -/

example :
    finiteDigamma? ({1} : Finset (ZMod 2)) 1 = none := by
  exact finiteDigamma_none_of_mem {1} (by simp)

end BitMatrix.Tests.PermutationNetwork
