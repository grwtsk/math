# Complete source: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicDistance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7afc88eac8ba7c8f23acee83df6811dc4d61659` · SHA-256 `993598796cf964f45e544b84f9b5c53ec072a1409c572d09e53258db5785e93b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #967.

This module is intentionally Mathlib-only.  It supplies the character
small-divisor geometry needed by the endpoint bridge without importing the
current Möbius endpoint dependency closure.
-/
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

set_option autoImplicit false
noncomputable section
open AddChar

namespace GRWTSK.NumberTheory.CharacterSums

/-- Circular distance of a finite cyclic frequency from zero. -/
def finiteCyclicCircularDistance
    {q : ℕ} [NeZero q]
    (t : ZMod q) : ℕ :=
  min t.val (-t).val

/-- Circular distance vanishes exactly at the zero frequency. -/
theorem finiteCyclicCircularDistance_eq_zero_iff
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
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

/-- Circular distance is invariant under frequency negation. -/
theorem finiteCyclicCircularDistance_neg
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    finiteCyclicCircularDistance (-t) =
      finiteCyclicCircularDistance t := by
  simp [finiteCyclicCircularDistance, min_comm]

/-- Twice the circular distance is at most the modulus. -/
theorem finiteCyclicCircularDistance_two_mul_le
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    2 * finiteCyclicCircularDistance t ≤ q := by
  by_cases ht : t = 0
  · subst t
    simp [finiteCyclicCircularDistance]
  · letI : NeZero t := ⟨ht⟩
    rw [finiteCyclicCircularDistance, ZMod.val_neg_of_ne_zero]
    by_cases hside : t.val ≤ q - t.val
    · rw [min_eq_left hside]
      have htlt := ZMod.val_lt t
      omega
    · rw [min_eq_right (Nat.le_of_not_ge hside)]
      have htlt := ZMod.val_lt t
      omega

/-- Standard finite-difference multiplier for the negative-phase interval
identity. -/
def finiteCyclicMultiplier
    {q : ℕ} [NeZero q]
    (t : ZMod q) : ℂ :=
  ZMod.stdAddChar t - 1

/-- The finite-difference multiplier vanishes exactly at zero frequency. -/
theorem finiteCyclicMultiplier_eq_zero_iff
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    finiteCyclicMultiplier t = 0 ↔ t = 0 := by
  unfold finiteCyclicMultiplier
  rw [sub_eq_zero]
  constructor
  · intro h
    apply ZMod.injective_stdAddChar
    simpa using h
  · rintro rfl
    simp

/-- A nonzero frequency has a nonzero finite-difference multiplier. -/
theorem finiteCyclicMultiplier_ne_zero
    {q : ℕ} [NeZero q]
    {t : ZMod q}
    (ht : t ≠ 0) :
    finiteCyclicMultiplier t ≠ 0 := by
  exact (finiteCyclicMultiplier_eq_zero_iff t).not.mpr ht

private theorem finiteCyclic_stdAddChar_sub_one_norm_neg
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    ‖ZMod.stdAddChar (-t) - 1‖ =
      ‖ZMod.stdAddChar t - 1‖ := by
  have hprod :
      ZMod.stdAddChar (-t) * ZMod.stdAddChar t = 1 := by
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

private theorem finiteCyclic_stdAddChar_sub_one_norm_eq_valSine
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    ‖ZMod.stdAddChar t - 1‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi * (t.val : ℝ) / (q : ℝ))‖ := by
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

/-- Exact sine formula for the standard-character multiplier in terms of
circular distance. -/
theorem finiteCyclicMultiplier_norm_eq_sineDistance
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    ‖finiteCyclicMultiplier t‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi * (finiteCyclicCircularDistance t : ℝ) /
            (q : ℝ))‖ := by
  unfold finiteCyclicMultiplier finiteCyclicCircularDistance
  by_cases hside : t.val ≤ (-t).val
  · rw [min_eq_left hside]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine t
  · rw [min_eq_right (Nat.le_of_not_ge hside)]
    rw [← finiteCyclic_stdAddChar_sub_one_norm_neg t]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine (-t)

/-- Jordan lower scale for one finite cyclic frequency. -/
def finiteCyclicJordanLowerScale
    {q : ℕ} [NeZero q]
    (t : ZMod q) : ℝ :=
  4 * (finiteCyclicCircularDistance t : ℝ) / (q : ℝ)

/-- Jordan's inequality on `[0, π/2]` gives the correctly normalized lower
bound for the finite-difference multiplier. -/
theorem finiteCyclicMultiplier_norm_lowerBound
    {q : ℕ} [NeZero q]
    (hq : 0 < q)
    (t : ZMod q) :
    finiteCyclicJordanLowerScale t ≤
      ‖finiteCyclicMultiplier t‖ := by
  let d := finiteCyclicCircularDistance t
  let x : ℝ := Real.pi * (d : ℝ) / (q : ℝ)
  have hqR : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hq
  have hdqNat : 2 * d ≤ q := by
    simpa [d] using finiteCyclicCircularDistance_two_mul_le t
  have hdq : (d : ℝ) ≤ (q : ℝ) / 2 := by
    have hcast : (2 : ℝ) * (d : ℝ) ≤ (q : ℝ) := by
      exact_mod_cast hdqNat
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
        field_simp [ne_of_gt hqR]
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
      4 * (d : ℝ) / (q : ℝ) =
          2 * (2 / Real.pi * x) := by
            dsimp [x]
            field_simp [Real.pi_ne_zero, ne_of_gt hqR]
            ring
      _ ≤ 2 * Real.sin x := by
        gcongr
  rw [finiteCyclicMultiplier_norm_eq_sineDistance]
  have hnorm : ‖(2 : ℝ) * Real.sin x‖ = 2 * Real.sin x := by
    rw [Real.norm_eq_abs, abs_of_nonneg]
    positivity
  simpa [finiteCyclicJordanLowerScale, d, x, hnorm] using hscaled

/-- At nonzero frequency, the inverse multiplier is controlled by reciprocal
circular distance. -/
theorem finiteCyclicMultiplier_inv_norm_le_distance
    {q : ℕ} [NeZero q]
    {t : ZMod q}
    (hq : 0 < q)
    (ht : t ≠ 0) :
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
      (q : ℝ) /
        (4 * (finiteCyclicCircularDistance t : ℝ)) := by
  let d := finiteCyclicCircularDistance t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hqR : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hq
  have hscale : 0 < 4 * (d : ℝ) / (q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (q : ℝ) ≤ ‖finiteCyclicMultiplier t‖ := by
    simpa [finiteCyclicJordanLowerScale, d] using
      finiteCyclicMultiplier_norm_lowerBound hq t
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖finiteCyclicMultiplier t‖⁻¹ ≤
        (4 * (d : ℝ) / (q : ℝ))⁻¹ := by
          simpa [one_div] using hrecip
    _ = (q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hqR, ne_of_gt hd]
      ring

/-- Uniform inverse-multiplier bound beyond a circular-distance cutoff. -/
theorem finiteCyclicMultiplier_inv_norm_le_cutoff
    {q : ℕ} [NeZero q]
    {t : ZMod q}
    {L : ℕ}
    (hq : 0 < q)
    (hLt : L < finiteCyclicCircularDistance t) :
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
      (q : ℝ) / (4 * ((L + 1 : ℕ) : ℝ)) := by
  have ht : t ≠ 0 := by
    intro ht0
    subst t
    simp [finiteCyclicCircularDistance] at hLt
  let d := finiteCyclicCircularDistance t
  have hsucc : L + 1 ≤ d := Nat.succ_le_iff.mpr hLt
  have hsuccR : ((L + 1 : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast hsucc
  have hden :
      (4 : ℝ) * ((L + 1 : ℕ) : ℝ) ≤ 4 * (d : ℝ) := by
    gcongr
  have hrecip :
      1 / (4 * (d : ℝ)) ≤
        1 / (4 * ((L + 1 : ℕ) : ℝ)) :=
    one_div_le_one_div_of_le (by positivity) hden
  calc
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
        (q : ℝ) / (4 * (d : ℝ)) := by
          simpa [d] using finiteCyclicMultiplier_inv_norm_le_distance hq ht
    _ = (q : ℝ) * (1 / (4 * (d : ℝ))) := by
      rw [div_eq_mul_inv, one_div]
    _ ≤ (q : ℝ) * (1 / (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ = (q : ℝ) / (4 * ((L + 1 : ℕ) : ℝ)) := by
      rw [div_eq_mul_inv, one_div]

end GRWTSK.NumberTheory.CharacterSums

#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_norm_lowerBound
#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_inv_norm_le_distance
#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_inv_norm_le_cutoff
```
