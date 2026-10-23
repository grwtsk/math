/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.Algebra.Algebra.Hom

set_option autoImplicit false

open scoped BigOperators

/-!
# Rational multiplication moments

The primitive object in this file is an arithmetic function with rational coefficients.
Its multiplication is Dirichlet convolution, so multiplication data are carried by all
factor pairs of an integer rather than by prime-labelled graph vertices.

The rationalized zeta arithmetic function and Möbius arithmetic function are inverse under
this convolution. A representation sends the whole convolution algebra to rational-linear
endomorphisms. Consequently Möbius inversion becomes an operator identity before any Euler
product, prime enumeration, analytic continuation, or spectral interpretation is chosen.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra

/-- Rational arithmetic functions, multiplied by Dirichlet convolution. -/
abbrev Moment := ArithmeticFunction ℚ

/-- The coefficient at a declared multiplication moment. -/
def coefficient (n : ℕ) : Moment →ₗ[ℚ] ℚ where
  toFun f := f n
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

@[simp]
theorem coefficient_apply (n : ℕ) (f : Moment) : coefficient n f = f n :=
  rfl

/-- Every coefficient of a product is assembled from all factor pairs. No prime symbols
occur in the definition. -/
theorem coefficient_mul (f g : Moment) (n : ℕ) :
    coefficient n (f * g) =
      ∑ pair ∈ n.divisorsAntidiagonal, f pair.1 * g pair.2 :=
  rfl

/-- The rational zeta moment: one at every positive integer and zero at zero. -/
def zetaMoment : Moment :=
  (ArithmeticFunction.zeta : ArithmeticFunction ℚ)

/-- The integer Möbius function transported to rational coefficients. -/
def mobiusMoment : Moment :=
  (ArithmeticFunction.moebius : ArithmeticFunction ℚ)

/-- Möbius inversion is an exact identity in the rational convolution algebra. -/
@[simp]
theorem mobiusMoment_mul_zetaMoment : mobiusMoment * zetaMoment = 1 := by
  have identity := congrArg
    (fun f : ArithmeticFunction ℤ => (f : ArithmeticFunction ℚ))
    ArithmeticFunction.moebius_mul_coe_zeta
  simp [mobiusMoment, zetaMoment]

@[simp]
theorem zetaMoment_mul_mobiusMoment : zetaMoment * mobiusMoment = 1 := by
  rw [mul_comm, mobiusMoment_mul_zetaMoment]

/-- A rational-linear, multiplicative realization of multiplication moments on a module. -/
structure Representation (M : Type*) [AddCommGroup M] [Module ℚ M] where
  action : Moment →ₐ[ℚ] Module.End ℚ M

namespace Representation

variable {M : Type*} [AddCommGroup M] [Module ℚ M]

/-- The endomorphism represented by the zeta moment. -/
def zetaOperator (representation : Representation M) : Module.End ℚ M :=
  representation.action zetaMoment

/-- The endomorphism represented by the Möbius moment. -/
def mobiusOperator (representation : Representation M) : Module.End ℚ M :=
  representation.action mobiusMoment

@[simp]
theorem mobiusOperator_mul_zetaOperator (representation : Representation M) :
    representation.mobiusOperator * representation.zetaOperator = 1 := by
  change representation.action mobiusMoment * representation.action zetaMoment = 1
  calc
    representation.action mobiusMoment * representation.action zetaMoment =
        representation.action (mobiusMoment * zetaMoment) :=
      (map_mul representation.action _ _).symm
    _ = representation.action 1 := congrArg representation.action mobiusMoment_mul_zetaMoment
    _ = 1 := map_one representation.action

@[simp]
theorem zetaOperator_mul_mobiusOperator (representation : Representation M) :
    representation.zetaOperator * representation.mobiusOperator = 1 := by
  change representation.action zetaMoment * representation.action mobiusMoment = 1
  calc
    representation.action zetaMoment * representation.action mobiusMoment =
        representation.action (zetaMoment * mobiusMoment) :=
      (map_mul representation.action _ _).symm
    _ = representation.action 1 := congrArg representation.action zetaMoment_mul_mobiusMoment
    _ = 1 := map_one representation.action

@[simp]
theorem mobius_zeta_apply (representation : Representation M) (x : M) :
    representation.mobiusOperator (representation.zetaOperator x) = x := by
  change (representation.mobiusOperator * representation.zetaOperator) x = x
  rw [representation.mobiusOperator_mul_zetaOperator]
  rfl

@[simp]
theorem zeta_mobius_apply (representation : Representation M) (x : M) :
    representation.zetaOperator (representation.mobiusOperator x) = x := by
  change (representation.zetaOperator * representation.mobiusOperator) x = x
  rw [representation.zetaOperator_mul_mobiusOperator]
  rfl

end Representation

end GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra
