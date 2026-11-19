/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Rational enclosures of the original parity-dependent gamma constant

MSC2020: 11M26, 11M41, 33B15, 65G20.
Consumer: WeilExponentialBumpRoundedEvaluation. The Euler constant is supplied
by actual harmonic-number/logarithm inequalities, not a decimal approximation.
Pi endpoints remain certified inputs; a concrete pinned-library choice is given.
The two source parity identities are retained with their opposite pi/2 signs.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, kernel replay, transitive axiom
audit, certified source computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent individual provenance and argument.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalGammaConstant

open CharacterWindow

/-- Finite rational lower bound; the harmonic index must be positive in the theorem. -/
def eulerLower (h N : ℕ) : ℚ :=
  harmonic h - RationalLogarithms.upper ((h : ℚ) + 1) N

def eulerUpper (h N : ℕ) : ℚ :=
  harmonic h - RationalLogarithms.lower (h : ℚ) N

/-- RGC-1. Return the finite sums to the actual Euler-Mascheroni constant. -/
theorem euler_enclosure {h : ℕ} (hh : 0 < h) (N : ℕ) :
    (eulerLower h N : ℝ) ≤ Real.eulerMascheroniConstant ∧
      Real.eulerMascheroniConstant ≤ (eulerUpper h N : ℝ) := by
  have hhQ : (1 : ℚ) ≤ (h : ℚ) := by exact_mod_cast (show 1 ≤ h by omega)
  have hplus := (RationalLogarithms.log_enclosure
    (q := (h : ℚ) + 1) (by exact_mod_cast (show 1 ≤ h + 1 by omega)) N).2
  have hlog := (RationalLogarithms.log_enclosure hhQ N).1
  have hlo := (Real.eulerMascheroniSeq_lt_eulerMascheroniConstant h).le
  have hup := (Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' h).le
  simp only [Real.eulerMascheroniSeq] at hlo
  simp only [Real.eulerMascheroniSeq', ne_of_gt hh, if_false] at hup
  simp only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] at hplus hlog
  simp only [eulerLower, eulerUpper, Rat.cast_sub]
  constructor <;> linarith

/-- RGC-2. Exact source normalization; this is not a newly chosen gamma coefficient. -/
theorem gammaConstant_parity_eq {q a : ℕ} (hq : 0 < q) (ha : a ≤ 1) :
    gammaConstant q a = Real.log (q : ℝ) - Real.log Real.pi -
      Real.eulerMascheroniConstant - 3 * Real.log 2 +
        (if a = 0 then -Real.pi / 2 else Real.pi / 2) := by
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hq)
  have hlog := Real.log_div hqR Real.pi_ne_zero
  rcases (show a = 0 ∨ a = 1 by omega) with rfl | rfl
  · have hd : (2 * (0 : ℝ) + 1) / 4 = (1 / 4 : ℝ) := by ring
    simp only [gammaConstant, Nat.cast_zero, hd, digamma_quarter, if_pos rfl]
    rw [hlog]
    ring
  · have hd : (2 * (1 : ℝ) + 1) / 4 = (3 / 4 : ℝ) := by ring
    simp only [gammaConstant, Nat.cast_one, hd, digamma_three_quarters,
      if_neg (by decide : (1 : ℕ) ≠ 0)]
    rw [hlog]
    ring

/-- Finite rational endpoint, with the negative pi/2 orientation in parity zero. -/
def lower (q a h N : ℕ) (pL pU : ℚ) : ℚ :=
  RationalLogarithms.lower (q : ℚ) N - RationalLogarithms.upper pU N -
    eulerUpper h N - 3 * RationalLogarithms.upper 2 N +
      (if a = 0 then -pU / 2 else pL / 2)

def upper (q a h N : ℕ) (pL pU : ℚ) : ℚ :=
  RationalLogarithms.upper (q : ℚ) N - RationalLogarithms.lower pL N -
    eulerLower h N - 3 * RationalLogarithms.lower 2 N +
      (if a = 0 then -pL / 2 else pU / 2)

def center (q a h N : ℕ) (pL pU : ℚ) : ℚ :=
  (lower q a h N pL pU + upper q a h N pL pU) / 2

def radius (q a h N : ℕ) (pL pU : ℚ) : ℚ :=
  (upper q a h N pL pU - lower q a h N pL pU) / 2

/-- RGC-3. All logarithms and the Euler constant are discharged by finite sums.
The caller may refine the certified pi endpoints; no fixed tolerance is implicit. -/
theorem gamma_enclosure {q a h : ℕ} (hq : 0 < q) (ha : a ≤ 1) (hh : 0 < h)
    (N : ℕ) {pL pU : ℚ} (hpL : 1 ≤ pL)
    (hpiL : (pL : ℝ) ≤ Real.pi) (hpiU : Real.pi ≤ (pU : ℝ)) :
    (lower q a h N pL pU : ℝ) ≤ gammaConstant q a ∧
      gammaConstant q a ≤ (upper q a h N pL pU : ℝ) := by
  have hpLU : pL ≤ pU := by exact_mod_cast hpiL.trans hpiU
  have hpU : 1 ≤ pU := hpL.trans hpLU
  have hpLR : (0 : ℝ) < (pL : ℝ) := by exact_mod_cast (show 0 < pL by linarith)
  have hqQ : (1 : ℚ) ≤ (q : ℚ) := by exact_mod_cast (show 1 ≤ q by omega)
  obtain ⟨hql, hqu⟩ := RationalLogarithms.log_enclosure hqQ N
  obtain ⟨h2l, h2u⟩ := RationalLogarithms.log_enclosure (by norm_num : (1 : ℚ) ≤ 2) N
  have hpl := (RationalLogarithms.log_enclosure hpL N).1.trans
    (Real.log_le_log hpLR hpiL)
  have hpu := (Real.log_le_log Real.pi_pos hpiU).trans
    (RationalLogarithms.log_enclosure hpU N).2
  obtain ⟨hgl, hgu⟩ := euler_enclosure hh N
  simp only [Rat.cast_natCast, Rat.cast_ofNat] at hql hqu h2l h2u
  rw [gammaConstant_parity_eq hq ha]
  by_cases hz : a = 0
  · simp only [lower, upper, if_pos hz, Rat.cast_add, Rat.cast_sub, Rat.cast_mul,
      Rat.cast_div, Rat.cast_neg, Rat.cast_ofNat]
    constructor <;> linarith
  · simp only [lower, upper, if_neg hz, Rat.cast_add, Rat.cast_sub, Rat.cast_mul,
      Rat.cast_div, Rat.cast_ofNat]
    constructor <;> linarith

/-- RGC-4. Center/radius for later PRODUCT errors, including a possibly negative center. -/
theorem center_error {q a h : ℕ} (hq : 0 < q) (ha : a ≤ 1) (hh : 0 < h)
    (N : ℕ) {pL pU : ℚ} (hpL : 1 ≤ pL)
    (hpiL : (pL : ℝ) ≤ Real.pi) (hpiU : Real.pi ≤ (pU : ℝ)) :
    0 ≤ radius q a h N pL pU ∧
      |gammaConstant q a - (center q a h N pL pU : ℝ)| ≤
        (radius q a h N pL pU : ℝ) := by
  obtain ⟨hl, hu⟩ := gamma_enclosure hq ha hh N hpL hpiL hpiU
  have hLU : lower q a h N pL pU ≤ upper q a h N pL pU := by
    exact_mod_cast hl.trans hu
  refine ⟨div_nonneg (sub_nonneg.mpr hLU) (by norm_num), ?_⟩
  simp only [center, radius, Rat.cast_div, Rat.cast_add, Rat.cast_sub, Rat.cast_ofNat]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- RGC-5. A concrete fully sourced pi choice. This fixed-width instance is NOT
an arbitrary-precision pi generator; RGC-3/4 accept stronger certified endpoints. -/
theorem center_error_pi_hundredths {q a h : ℕ}
    (hq : 0 < q) (ha : a ≤ 1) (hh : 0 < h) (N : ℕ) :
    0 ≤ radius q a h N (314 / 100) (315 / 100) ∧
      |gammaConstant q a - (center q a h N (314 / 100) (315 / 100) : ℝ)| ≤
        (radius q a h N (314 / 100) (315 / 100) : ℝ) := by
  apply center_error hq ha hh N (by norm_num)
  · convert Real.pi_gt_d2.le using 1 <;> norm_num
  · convert Real.pi_lt_d2.le using 1 <;> norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalGammaConstant
