/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CommutativeAlgebra.DividedFrobeniusCochain
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The actual integral two-delta coefficient structure

For every integer x, x - x² is divisible by 2, including negative
integers. Hence delta₂(x)=(x-x²)/2 is an INTEGER and its Frobenius
lift x²+2 delta₂(x) is exactly x. This constructs the existing
TorsionFreeDeltaStructure at p=2 over Z, including both p-derivation
laws and the p-regularity proof. It does not assume a δ-operator.

This IS a concrete 2-torsion-free δ-ring. It is NOT a prism:
Z is not complete for the 2-adic topology. Passing to a
genuine crystalline prism such as (Z₂,(2)) needs an independently
constructed 2-adic completion, its δ-extension, ideal and
derived-completeness certificates. The mod-2 shadow cannot be used
as the coefficient ring for the TorsionFreeDeltaStructure:
multiplication by 2 in F₂ is zero.
-/

namespace GRWTSK.Algebra.FinitePrismaticSurfaceModel.IntegralTwoDeltaFrobenius

open GRWTSK.Algebra.FinitePrismaticSurfaceModel.DividedFrobeniusCochain

/-- An integer-valued two-derivation, not a real quotient. -/
def deltaTwo (x : ℤ) : ℤ := (x - x ^ 2) / 2

/-- Exact integral divided Frobenius identity on every integer. -/
theorem two_mul_deltaTwo (x : ℤ) :
    2 * deltaTwo x = x - x ^ 2 := by
  have heven : Even ((x - 1) * x) := by
    simpa using Int.even_mul_succ_self (x - 1)
  have hdiv : (2 : ℤ) ∣ x - x ^ 2 := by
    have h := (even_iff_two_dvd.mp heven).neg
    convert h using 1 <;> ring
  exact Int.mul_ediv_cancel' hdiv

/-- The full existing division-free p=2 torsion-free δ laws are
verified by the actual integer formula, not supplied by a record
with unproved research fields. -/
def integerTwoDelta : TorsionFreeDeltaStructure 2 ℤ where
  prime := by norm_num
  delta := deltaTwo
  delta_zero := by norm_num [deltaTwo]
  delta_one := by norm_num [deltaTwo]
  delta_add := by
    intro x y
    change (2 : ℤ) *
        (deltaTwo (x + y) - deltaTwo x - deltaTwo y) =
      x ^ 2 + y ^ 2 - (x + y) ^ 2
    calc
      (2 : ℤ) * (deltaTwo (x + y) - deltaTwo x - deltaTwo y) =
          2 * deltaTwo (x + y) - 2 * deltaTwo x - 2 * deltaTwo y := by ring
      _ = x ^ 2 + y ^ 2 - (x + y) ^ 2 := by
        rw [two_mul_deltaTwo, two_mul_deltaTwo, two_mul_deltaTwo]
        ring
  delta_mul := by
    intro x y
    change deltaTwo (x * y) =
      x ^ 2 * deltaTwo y + y ^ 2 * deltaTwo x +
        2 * deltaTwo x * deltaTwo y
    have h :
        (2 : ℤ) * deltaTwo (x * y) =
          2 * (x ^ 2 * deltaTwo y + y ^ 2 * deltaTwo x +
            2 * deltaTwo x * deltaTwo y) := by
      rw [two_mul_deltaTwo]
      calc
        x * y - (x * y) ^ 2 =
            x ^ 2 * (y - y ^ 2) +
              y ^ 2 * (x - x ^ 2) +
              (x - x ^ 2) * (y - y ^ 2) := by ring
        _ = 2 * (x ^ 2 * deltaTwo y + y ^ 2 * deltaTwo x +
              2 * deltaTwo x * deltaTwo y) := by
          rw [← two_mul_deltaTwo x, ← two_mul_deltaTwo y]
          ring
    exact (mul_left_cancel₀ (by norm_num : (2 : ℤ) ≠ 0) h)
  p_regular := by
    intro x hx
    omega

/-- The constructed Frobenius is the literal identity on Z.
This is a concrete arithmetic source of coefficient fixity. -/
theorem integerTwoFrobenius_identity (x : ℤ) :
    integerTwoDelta.frobeniusLift x = x := by
  change x ^ 2 + 2 * deltaTwo x = x
  rw [two_mul_deltaTwo]
  ring

/-- The existing finite-coboundary law now has an ACTUAL δ-ring
coefficient supplier over Z, for every integer incidence matrix. -/
theorem integer_two_finiteCoboundary_commutes
    {I J : Type*} [Fintype I]
    (M : J → I → ℤ) (x : I → ℤ) (j : J) :
    integerTwoDelta.frobeniusLift (finiteCoboundary M x j) =
      finiteCoboundary M
        (fun i => integerTwoDelta.frobeniusLift (x i)) j := by
  apply integerTwoDelta.finiteCoboundary_commutes_of_coefficients_fixed
  intro k i
  exact integerTwoFrobenius_identity (M k i)

/-- The entire untwisted finite degree-zero cocycle is retained over
the actual integer delta ring; there is no completed cohomology. -/
theorem integer_two_finiteCocycle
    {I J : Type*} [Fintype I]
    (M : J → I → ℤ) (x : I → ℤ)
    (hx : ∀ j, finiteCoboundary M x j = 0) :
    ∀ j, finiteCoboundary M
      (fun i => integerTwoDelta.frobeniusLift (x i)) j = 0 := by
  intro j
  rw [← integer_two_finiteCoboundary_commutes M x j]
  simp [hx j]

end GRWTSK.Algebra.FinitePrismaticSurfaceModel.IntegralTwoDeltaFrobenius
