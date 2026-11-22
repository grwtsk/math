/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpRoundedEvaluation
import Mathlib.Tactic

/-!
# Exact small-character phases for the original signed Weil coefficients

MSC2020: 11L03, 11M26, 11M41, 65G20.
Construct characters in the existing DirichletCharacter type, prove their
nonprincipality, conductor and gamma parity, and discharge the actual phase
premise of RoundedCoefficients.coefficient_error. The quartic example keeps
both imaginary orientations; no absolute-value character replaces it.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED.
See WeilSmallCharacterPhases.md for individual provenance and source return;
WeilModThreeBumpEvaluation.md records a finite endpoint calculation, not RH/GRH.
-/

set_option autoImplicit false
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SmallCharacterPhases

open LowSchur OddRootProjection RoundedCoefficients

private instance : Fact (Nat.Prime 3) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5) := ⟨by norm_num⟩

/-- Exact integer data for the nonprincipal character modulo three. -/
def threeTable (n : ℕ) : ℤ :=
  if n % 3 = 0 then 0 else if n % 3 = 1 then 1 else -1

/-- Multiplicativity is checked on all nine residue pairs, not assumed. -/
def three : DirichletCharacter ℂ 3 where
  toFun a := (threeTable a.val : ℂ)
  map_one' := by norm_num [threeTable]
  map_mul' := by
    intro a b
    fin_cases a <;> fin_cases b <;> norm_num [threeTable]
  map_nonunit' := by
    intro a ha
    have hz : a = 0 := by
      by_contra hn
      exact ha (isUnit_iff_ne_zero.mpr hn)
    subst a
    norm_num [threeTable]

/-- SCP-1. All natural labels, including multiples of the conductor. -/
theorem three_apply_nat (n : ℕ) : three n = (threeTable n : ℂ) := by
  change (threeTable ((n : ZMod 3).val) : ℂ) = _
  simp [ZMod.val_natCast, threeTable, Nat.mod_mod]

/-- SCP-2. Distinguish this source from the principal character. -/
theorem three_ne_one : three ≠ 1 := by
  intro h
  have he := congrArg (fun χ : DirichletCharacter ℂ 3 => χ (2 : ZMod 3)) h
  rw [MulChar.one_apply (isUnit_iff_ne_zero.mpr (by decide : (2 : ZMod 3) ≠ 0))] at he
  norm_num [three, threeTable] at he

private theorem primitive_of_prime {q : ℕ} (hp : q.Prime)
    (χ : DirichletCharacter ℂ q) (hχ : χ ≠ 1) : χ.IsPrimitive := by
  letI : NeZero q := ⟨hp.ne_zero⟩
  rcases (Nat.dvd_prime hp).mp χ.conductor_dvd_level with hc | hc
  · exact (hχ (DirichletCharacter.eq_one_iff_conductor_eq_one.mpr hc)).elim
  · exact hc

/-- SCP-3. The conductor is proved to be three, rather than inserted as a modulus. -/
theorem three_isPrimitive : three.IsPrimitive :=
  primitive_of_prime (by norm_num) three three_ne_one

/-- SCP-4. Actual character parity, not parity of a test function. -/
theorem three_odd : three.Odd := by
  norm_num [DirichletCharacter.Odd, three, threeTable]

/-- SCP-5. Return to the same gamma parity used in EBR-1. -/
theorem gammaParity_three : gammaParity three = 1 := by
  norm_num [gammaParity, three, threeTable]

/-- SCP-6. A zero-radius certificate for every original integer label. -/
theorem three_phase_error (n : ℕ) : ‖three n - (threeTable n : ℂ)‖ ≤ 0 := by
  rw [three_apply_nat]
  simp

/-- Exact Gaussian-rational phases; the values at two and three have opposite signs. -/
def quarticFiveTable (n : ℕ) : ℂ :=
  if n % 5 = 0 then 0 else if n % 5 = 1 then 1 else
    if n % 5 = 2 then Complex.I else if n % 5 = 3 then -Complex.I else -1

/-- The unit generator two maps to i; all 25 products are checked. -/
def quarticFive : DirichletCharacter ℂ 5 where
  toFun a := quarticFiveTable a.val
  map_one' := by norm_num [quarticFiveTable]
  map_mul' := by
    intro a b
    fin_cases a <;> fin_cases b <;>
      norm_num [quarticFiveTable, Complex.I_mul_I]
  map_nonunit' := by
    intro a ha
    have hz : a = 0 := by
      by_contra hn
      exact ha (isUnit_iff_ne_zero.mpr hn)
    subst a
    norm_num [quarticFiveTable]

/-- SCP-7. Periodic return to the actual complex-valued character. -/
theorem quarticFive_apply_nat (n : ℕ) : quarticFive n = quarticFiveTable n := by
  change quarticFiveTable ((n : ZMod 5).val) = _
  simp [ZMod.val_natCast, quarticFiveTable, Nat.mod_mod]

/-- SCP-8. The imaginary value at two prevents principal-character substitution. -/
theorem quarticFive_ne_one : quarticFive ≠ 1 := by
  intro h
  have he := congrArg (fun χ : DirichletCharacter ℂ 5 => χ (2 : ZMod 5)) h
  rw [MulChar.one_apply (isUnit_iff_ne_zero.mpr (by decide : (2 : ZMod 5) ≠ 0))] at he
  have hi := congrArg Complex.im he
  norm_num [quarticFive, quarticFiveTable] at hi

/-- SCP-9. No inducing-character or inflated-conductor assumption is left. -/
theorem quarticFive_isPrimitive : quarticFive.IsPrimitive :=
  primitive_of_prime (by norm_num) quarticFive quarticFive_ne_one

/-- SCP-10. The quartic source is odd because its value at four is minus one. -/
theorem quarticFive_odd : quarticFive.Odd := by
  norm_num [DirichletCharacter.Odd, quarticFive, quarticFiveTable]

/-- SCP-11. Both examples use parity one in the original gamma kernel. -/
theorem gammaParity_quarticFive : gammaParity quarticFive = 1 := by
  norm_num [gammaParity, quarticFive, quarticFiveTable]

/-- SCP-12. No floating argument, root of unity, or phase error is supplied as input. -/
theorem quarticFive_phase_error (n : ℕ) : ‖quarticFive n - quarticFiveTable n‖ ≤ 0 := by
  rw [quarticFive_apply_nat]
  simp

/-- SCP-13. An explicit signed readout for arbitrary COMPLEX correlation values.
The imaginary residues contribute +Im z and -Im z, not zero and not |z|. -/
theorem quarticFive_signed_readout (n : ℕ) (z : ℂ) :
    (conj (quarticFive n) * z).re =
      if n % 5 = 0 then 0 else if n % 5 = 1 then z.re else
        if n % 5 = 2 then z.im else if n % 5 = 3 then -z.im else -z.re := by
  rw [quarticFive_apply_nat]
  unfold quarticFiveTable
  split_ifs <;> simp [Complex.mul_re]

/-- SCP-14. Discharge RBC-1's phase premise for the actual modulus-three source. -/
theorem three_coefficient_error {n D : ℕ} (hn : 1 ≤ n) (hD : 0 < D) (L : ℕ) :
    ‖(primeWeight n : ℂ) * conj (three n) - coefficient n L D (threeTable n : ℂ)‖ ≤
      (RationalPrimeWeights.radius n L D : ℝ) := by
  simpa only [coefficientRadius, mul_zero, add_zero] using
    coefficient_error three hn hD L (threeTable n : ℂ) 0 (three_phase_error n)

/-- SCP-15. The same source return with genuinely complex phases. -/
theorem quarticFive_coefficient_error {n D : ℕ} (hn : 1 ≤ n) (hD : 0 < D) (L : ℕ) :
    ‖(primeWeight n : ℂ) * conj (quarticFive n) - coefficient n L D (quarticFiveTable n)‖ ≤
      (RationalPrimeWeights.radius n L D : ℝ) := by
  simpa only [coefficientRadius, mul_zero, add_zero] using
    coefficient_error quarticFive hn hD L (quarticFiveTable n) 0 (quarticFive_phase_error n)

end GRWTSK.NumberTheory.WeilQuadraticForm.SmallCharacterPhases
