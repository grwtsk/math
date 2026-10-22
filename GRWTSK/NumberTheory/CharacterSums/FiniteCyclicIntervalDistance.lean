/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI ChatGPT.
Mathlib imports retain their upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicInterval
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Circular-distance bounds for finite cyclic interval characters

This file is Mathlib-only apart from the separately replayable interval supplier
`FiniteCyclicInterval`.  It converts the exact multiplier

`ZMod.stdAddChar t - 1`

into the circular-distance lower bound supplied by Jordan's inequality and then
combines it with the negative-phase interval theorem.  No endpoint, Möbius,
centered-fiber, or squarefree-gcd module is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.CharacterSums

open scoped BigOperators
open AddChar

variable {q : ℕ} [NeZero q]

/-- Circular distance of a finite cyclic frequency from zero. -/
def finiteCyclicCircularDistance (t : ZMod q) : ℕ :=
  min t.val (-t).val

/-- Circular distance vanishes exactly at zero frequency. -/
theorem finiteCyclicCircularDistance_eq_zero_iff (t : ZMod q) :
    finiteCyclicCircularDistance t = 0 ↔ t = 0 := by
  constructor
  · intro h
    by_cases ht : t = 0
    · exact ht
    · have htval : 0 < t.val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero t).not.mpr ht)
      have hnt : -t ≠ 0 := neg_ne_zero.mpr ht
      have hntval : 0 < (-t).val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero (-t)).not.mpr hnt)
      unfold finiteCyclicCircularDistance at h
      omega
  · rintro rfl
    simp [finiteCyclicCircularDistance]

/-- Twice the circular distance is at most the cyclic modulus. -/
theorem finiteCyclicCircularDistance_two_mul_le (t : ZMod q) :
    2 * finiteCyclicCircularDistance t ≤ q := by
  by_cases ht : t = 0
  · subst t
    simp [finiteCyclicCircularDistance]
  · letI : NeZero t := ⟨ht⟩
    rw [finiteCyclicCircularDistance, ZMod.val_neg_of_ne_zero]
    by_cases hside : t.val ≤ q - t.val
    · rw [min_eq_left hside]
      have hlt := ZMod.val_lt t
      omega
    · rw [min_eq_right (Nat.le_of_not_ge hside)]
      have hlt := ZMod.val_lt t
      omega

/-- Negating a frequency preserves the norm of its standard-character
finite-difference multiplier. -/
private theorem finiteCyclic_stdAddChar_sub_one_norm_neg (t : ZMod q) :
    ‖ZMod.stdAddChar (-t) - 1‖ = ‖ZMod.stdAddChar t - 1‖ := by
  have hprod : ZMod.stdAddChar (-t) * ZMod.stdAddChar t = 1 := by
    rw [← map_add_eq_mul]
    simp
  have hfactor :
      ZMod.stdAddChar (-t) - 1 =
        -ZMod.stdAddChar (-t) * (ZMod.stdAddChar t - 1) := by
    rw [mul_sub, neg_mul, hprod]
    ring
  rw [hfactor, norm_mul, norm_neg]
  have hchar : ‖ZMod.stdAddChar (-t)‖ = 1 := by
    rw [ZMod.stdAddChar_apply]
    simp
  rw [hchar, one_mul]

/-- Exact sine formula using the canonical representative. -/
private theorem finiteCyclic_stdAddChar_sub_one_norm_eq_valSine
    (t : ZMod q) :
    ‖ZMod.stdAddChar t - 1‖ =
      ‖(2 : ℝ) * Real.sin (Real.pi * (t.val : ℝ) / (q : ℝ))‖ := by
  have hqreal : (q : ℝ) ≠ 0 := by
    exact_mod_cast (NeZero.ne q)
  rw [ZMod.stdAddChar_apply, ZMod.toCircle_apply, Circle.coe_exp]
  convert
    Complex.norm_exp_I_mul_ofReal_sub_one
      (2 * Real.pi * (t.val : ℝ) / (q : ℝ)) using 1
  · congr 2
    push_cast
    field_simp [hqreal]
    ring
  · congr 2
    field_simp [hqreal]
    ring

/-- Exact multiplier norm in terms of circular distance. -/
theorem norm_stdAddChar_sub_one_eq_sineCircularDistance (t : ZMod q) :
    ‖ZMod.stdAddChar t - 1‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi * (finiteCyclicCircularDistance t : ℝ) / (q : ℝ))‖ := by
  unfold finiteCyclicCircularDistance
  by_cases hside : t.val ≤ (-t).val
  · rw [min_eq_left hside]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine t
  · rw [min_eq_right (Nat.le_of_not_ge hside)]
    rw [← finiteCyclic_stdAddChar_sub_one_norm_neg t]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine (-t)

/-- Jordan lower scale attached to one finite cyclic frequency. -/
def finiteCyclicJordanLowerScale (t : ZMod q) : ℝ :=
  4 * (finiteCyclicCircularDistance t : ℝ) / (q : ℝ)

/-- Jordan's inequality gives the exact linear lower bound for the cyclic
finite-difference multiplier. -/
theorem finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one
    (t : ZMod q) :
    finiteCyclicJordanLowerScale t ≤ ‖ZMod.stdAddChar t - 1‖ := by
  let d := finiteCyclicCircularDistance t
  let x : ℝ := Real.pi * (d : ℝ) / (q : ℝ)
  have hqnat : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hq : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hqnat
  have hdqnat : 2 * d ≤ q := by
    simpa [d] using finiteCyclicCircularDistance_two_mul_le t
  have hdq : (d : ℝ) ≤ (q : ℝ) / 2 := by
    have hcast : (2 : ℝ) * (d : ℝ) ≤ (q : ℝ) := by
      exact_mod_cast hdqnat
    linarith
  have hx0 : 0 ≤ x := by
    dsimp [x]
    positivity
  have hxhalf : x ≤ Real.pi / 2 := by
    dsimp [x]
    calc
      Real.pi * (d : ℝ) / (q : ℝ) ≤
          Real.pi * ((q : ℝ) / 2) / (q : ℝ) := by
            gcongr
      _ = Real.pi / 2 := by
        field_simp [ne_of_gt hq]
        ring
  have hxpi : x ≤ Real.pi := by
    linarith [Real.pi_pos]
  have hsin : 0 ≤ Real.sin x :=
    Real.sin_nonneg_of_nonneg_of_le_pi hx0 hxpi
  have hJordan : 2 / Real.pi * x ≤ Real.sin x :=
    Real.mul_le_sin hx0 hxhalf
  have hscaled :
      4 * (d : ℝ) / (q : ℝ) ≤ 2 * Real.sin x := by
    calc
      4 * (d : ℝ) / (q : ℝ) = 2 * (2 / Real.pi * x) := by
        dsimp [x]
        field_simp [Real.pi_ne_zero, ne_of_gt hq]
        ring
      _ ≤ 2 * Real.sin x := by
        gcongr
  rw [norm_stdAddChar_sub_one_eq_sineCircularDistance]
  have hnorm : ‖(2 : ℝ) * Real.sin x‖ = 2 * Real.sin x := by
    rw [Real.norm_eq_abs, abs_of_nonneg]
    positivity
  simpa [finiteCyclicJordanLowerScale, d, x, hnorm] using hscaled

/-- A nonzero frequency has the reciprocal circular-distance multiplier bound. -/
theorem norm_inv_stdAddChar_sub_one_le_circularDistance
    {t : ZMod q} (ht : t ≠ 0) :
    ‖(ZMod.stdAddChar t - 1)⁻¹‖ ≤
      (q : ℝ) / (4 * (finiteCyclicCircularDistance t : ℝ)) := by
  let d := finiteCyclicCircularDistance t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hqnat : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hq : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hqnat
  have hscale : 0 < 4 * (d : ℝ) / (q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (q : ℝ) ≤ ‖ZMod.stdAddChar t - 1‖ := by
    simpa [finiteCyclicJordanLowerScale, d] using
      finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one t
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖ZMod.stdAddChar t - 1‖⁻¹ ≤
        (4 * (d : ℝ) / (q : ℝ))⁻¹ := by
      simpa [one_div] using hrecip
    _ = (q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hq, ne_of_gt hd]
      ring

/-- Actual circular-distance estimate for the negative-phase interval sum. -/
theorem norm_sum_stdAddChar_neg_Ico_le_circularDistance
    (t : ZMod q) (A B : ℕ) (hA : 1 ≤ A) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      (q : ℝ) / (2 * (finiteCyclicCircularDistance t : ℝ)) := by
  let d := finiteCyclicCircularDistance t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  calc
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
        2 * ‖(ZMod.stdAddChar t - 1)⁻¹‖ :=
      norm_sum_stdAddChar_neg_Ico_le t A B hA ht
    _ ≤ 2 * ((q : ℝ) / (4 * (d : ℝ))) := by
      exact mul_le_mul_of_nonneg_left
        (by simpa [d] using norm_inv_stdAddChar_sub_one_le_circularDistance
          (q := q) ht)
        (by norm_num)
    _ = (q : ℝ) / (2 * (d : ℝ)) := by
      field_simp [ne_of_gt hd]
      ring

/-- Uniform specialization when the circular distance lies beyond cutoff `L`. -/
theorem norm_sum_stdAddChar_neg_Ico_le_regularCutoff
    (t : ZMod q) (A B L : ℕ) (hA : 1 ≤ A) (ht : t ≠ 0)
    (hL : L < finiteCyclicCircularDistance t) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      (q : ℝ) / (2 * (((L + 1 : ℕ) : ℝ))) := by
  let d := finiteCyclicCircularDistance t
  have hsucc : L + 1 ≤ d := Nat.succ_le_iff.mpr hL
  have hsuccReal : ((L + 1 : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast hsucc
  have hden :
      (2 : ℝ) * ((L + 1 : ℕ) : ℝ) ≤ 2 * (d : ℝ) := by
    gcongr
  have hrecip :
      1 / (2 * (d : ℝ)) ≤ 1 / (2 * ((L + 1 : ℕ) : ℝ)) :=
    one_div_le_one_div_of_le (by positivity) hden
  calc
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
        (q : ℝ) / (2 * (d : ℝ)) := by
      simpa [d] using
        norm_sum_stdAddChar_neg_Ico_le_circularDistance
          (q := q) t A B hA ht
    _ = (q : ℝ) * (1 / (2 * (d : ℝ))) := by
      rw [div_eq_mul_inv, one_div]
    _ ≤ (q : ℝ) * (1 / (2 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ = (q : ℝ) / (2 * (((L + 1 : ℕ) : ℝ))) := by
      rw [div_eq_mul_inv, one_div]

end GRWTSK.NumberTheory.CharacterSums
