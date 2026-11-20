/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Mathlib quadratic characters retain their upstream Apache-2.0 license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeCharacter
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds

/-!
# Exact conductor, parity and real arithmetic of the native modulo-three character

The character remains the integer-valued quadratic character composed with
the existing cast into the complex numbers. Real-valuedness justifies the
prime-coefficient conversion used by the integrated Weil kernel; odd parity
alone would not justify that conversion for a general complex character.

Primitivity is proved from the actual conductor: it divides the prime three,
and conductor one is excluded by the existing nonprincipal theorem. No
primitivity assumption or replacement character is introduced.

These finite character identities do not establish an integration-by-parts
identity, an explicit formula, an analytic positivity statement, or GRH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

local instance : Fact (Nat.Prime 3) := ⟨by norm_num⟩

/-- The native complex character has no imaginary component because it is
defined by casting an integer-valued quadratic character. -/
@[simp] theorem modThreeQuadratic_im (a : ZMod 3) :
    (modThreeQuadratic a).im = 0 := by
  simp [modThreeQuadratic]

/-- Complex conjugation fixes every value, including the zero on nonunits. -/
@[simp] theorem modThreeQuadratic_conj (a : ZMod 3) :
    conj (modThreeQuadratic a) = modThreeQuadratic a := by
  apply Complex.ext <;> simp

/-- The native modulo-three character has odd Dirichlet parity. -/
theorem modThreeQuadratic_odd : modThreeQuadratic.Odd := by
  change modThreeQuadratic (-1) = -1
  rw [show (-1 : ZMod 3) = 2 by decide]
  exact modThreeQuadratic_two

/-- Oddness is a statement about the character argument, not the test waveform. -/
theorem modThreeQuadratic_neg (a : ZMod 3) :
    modThreeQuadratic (-a) = -modThreeQuadratic a :=
  modThreeQuadratic_odd.to_fun a

/-- The conductor is the actual prime modulus, derived without a supplied
primitive-character hypothesis. -/
theorem modThreeQuadratic_conductor : modThreeQuadratic.conductor = 3 := by
  have hd := (Nat.dvd_prime (by norm_num : Nat.Prime 3)).mp
    modThreeQuadratic.conductor_dvd_level
  rcases hd with h | h
  · exact False.elim (modThreeQuadratic_nonprincipal
      (DirichletCharacter.eq_one_iff_conductor_eq_one.mpr h))
  · exact h

/-- Genuine primitivity of the existing character follows from its conductor. -/
theorem modThreeQuadratic_isPrimitive : modThreeQuadratic.IsPrimitive :=
  modThreeQuadratic_conductor

/-- The gamma parity used by the arithmetic source is exactly one. -/
theorem modThreeQuadratic_gammaParity : gammaParity modThreeQuadratic = 1 := by
  unfold gammaParity
  have h : modThreeQuadratic (-1) = -1 := modThreeQuadratic_odd
  rw [h]
  norm_num

/-- The exact real-part factorization required by the signed prime hinges.
For a nonreal coefficient, this factorization need not hold. -/
theorem modThreeQuadratic_conj_mul_re (a : ZMod 3) (z : ℂ) :
    (conj (modThreeQuadratic a) * z).re =
      (conj (modThreeQuadratic a)).re * z.re := by
  simp [Complex.mul_re]

/-- The literal arithmetic prime term has the integrated kernel's real
coefficients, with the original cutoff, every weight and the factor two. -/
theorem modThreeQuadratic_twistedPrime_eq (T : ℝ) (C : ℕ → ℂ) :
    twistedPrime T modThreeQuadratic C =
      2 * ∑ n ∈ activePrimePowers T,
        primeWeight n * (conj (modThreeQuadratic n)).re * (C n).re := by
  simp only [twistedPrime, modThreeQuadratic_conj_mul_re, mul_assoc]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

