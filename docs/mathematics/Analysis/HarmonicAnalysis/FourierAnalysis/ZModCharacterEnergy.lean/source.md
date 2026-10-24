# Complete source: GRWTSK.Analysis.Fourier.ZModCharacterEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `425592aaa63e5fc93d0e3a9db0ffb4d360f491fc` · SHA-256 `1c5503e654a2b58d9a96bf0cc5c5e6dbac0ba6366743ab74687b38750bf15bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Tactic

/-!
# Character averages and modular pair energy

The estimates here prove Fact 2.5 and the character-average step of equation
(3.2) of Pham–Sauermann, *On Graham's rearrangement conjecture*,
arXiv:2602.15797v1. No primality is needed for these estimates.
-/

namespace GRWTSK.ZModCharacterEnergy
open scoped BigOperators

variable {p : ℕ} [NeZero p]

/-- Distance of the normalized canonical residue to the closest integer.
The normalized representative lies in `[0,1)`, so the nearest integer is 0 or 1. -/
noncomputable def modularDistance (x : ZMod p) : ℝ :=
  min ((x.val : ℝ) / p) (1 - (x.val : ℝ) / p)

omit [NeZero p] in
theorem normalized_val_nonneg (x : ZMod p) : 0 ≤ (x.val : ℝ) / p := by positivity

theorem normalized_val_lt_one (x : ZMod p) : (x.val : ℝ) / p < 1 := by
  have hp : (0 : ℝ) < p := by exact_mod_cast NeZero.pos p
  apply (div_lt_one hp).mpr
  exact_mod_cast x.val_lt

theorem modularDistance_nonneg (x : ZMod p) : 0 ≤ modularDistance x := by
  exact le_min (normalized_val_nonneg x) (by linarith [normalized_val_lt_one x])

omit [NeZero p] in
theorem modularDistance_le_half (x : ZMod p) : modularDistance x ≤ 1 / 2 := by
  unfold modularDistance
  by_cases h : (x.val : ℝ) / p ≤ 1 / 2
  · exact (min_le_left _ _).trans h
  · exact (min_le_right _ _).trans (by linarith)

omit [NeZero p] in
@[simp] theorem modularDistance_zero : modularDistance (0 : ZMod p) = 0 := by
  simp [modularDistance]

omit [NeZero p] in
/-- The minimum in `modularDistance` is bounded by the distance to every integer. -/
theorem modularDistance_le_abs_sub_int (x : ZMod p) (k : ℤ) :
    modularDistance x ≤ |(x.val : ℝ) / p - k| := by
  by_cases hk : k ≤ 0
  · have hk' : (k : ℝ) ≤ 0 := by exact_mod_cast hk
    exact (min_le_left _ _).trans ((by linarith :
      (x.val : ℝ) / p ≤ (x.val : ℝ) / p - k).trans (le_abs_self _))
  · have hk' : (1 : ℝ) ≤ k := by exact_mod_cast (by omega : 1 ≤ k)
    exact (min_le_right _ _).trans ((by linarith :
      1 - (x.val : ℝ) / p ≤ -((x.val : ℝ) / p - k)).trans (neg_le_abs _))

/-- The nearest-integer distance is attained, by either 0 or 1. -/
theorem modularDistance_attained (x : ZMod p) :
    ∃ k : ℤ, modularDistance x = |(x.val : ℝ) / p - k| := by
  by_cases h : (x.val : ℝ) / p ≤ 1 - (x.val : ℝ) / p
  · refine ⟨0, ?_⟩
    unfold modularDistance
    norm_num only [Int.cast_zero, sub_zero]
    rw [min_eq_left h, abs_of_nonneg (normalized_val_nonneg x)]
  · refine ⟨1, ?_⟩
    simp only [modularDistance, min_eq_right (le_of_not_ge h), Int.cast_one,
      abs_of_nonpos (by linarith [normalized_val_lt_one x] : (x.val : ℝ) / p - 1 ≤ 0)]
    ring

theorem stdAddChar_re (x : ZMod p) :
    (ZMod.stdAddChar x).re = Real.cos (2 * Real.pi * ((x.val : ℝ) / p)) := by
  rw [ZMod.stdAddChar_apply, ZMod.toCircle_eq_circleExp, Circle.coe_exp]
  simp only [Complex.exp_re, Complex.mul_re, Complex.ofReal_re, Complex.I_re,
    Complex.ofReal_im, Complex.I_im, mul_zero, sub_zero, Real.exp_zero,
    Complex.mul_im, mul_one, add_zero, one_mul]

private theorem cos_two_pi_le (u : ℝ) (hu : 0 ≤ u) (hu' : u ≤ 1 / 2) :
    Real.cos (2 * Real.pi * u) ≤ 1 - 2 * u ^ 2 := by
  have habs : |2 * Real.pi * u| ≤ Real.pi := by
    rw [abs_of_nonneg (by positivity)]
    nlinarith [Real.pi_pos]
  have h := Real.cos_le_one_sub_mul_cos_sq habs
  have hp : Real.pi ≠ 0 := ne_of_gt Real.pi_pos
  have heq : 2 / Real.pi ^ 2 * (2 * Real.pi * u) ^ 2 = 8 * u ^ 2 := by
    field_simp
    ring
  rw [heq] at h
  nlinarith [sq_nonneg u]

/-- Fact 2.5, with the source constant 2 and no spectral hypothesis. -/
theorem stdAddChar_re_le (x : ZMod p) :
    (ZMod.stdAddChar x).re ≤ 1 - 2 * modularDistance x ^ 2 := by
  rw [stdAddChar_re]
  unfold modularDistance
  by_cases h : (x.val : ℝ) / p ≤ 1 - (x.val : ℝ) / p
  · rw [min_eq_left h]
    exact cos_two_pi_le _ (normalized_val_nonneg x) (by linarith)
  · rw [min_eq_right (le_of_not_ge h)]
    have heq : Real.cos (2 * Real.pi * ((x.val : ℝ) / p)) =
        Real.cos (2 * Real.pi * (1 - (x.val : ℝ) / p)) := by
      rw [mul_sub, mul_one, Real.cos_two_pi_sub]
    rw [heq]
    exact cos_two_pi_le _ (by linarith [normalized_val_lt_one x]) (by linarith)

/-- The other side of source Fact 2.2, transferred to a cyclic residue. -/
theorem one_sub_modularDistance_sq_le_stdAddChar_re (x : ZMod p) :
    1 - 20 * modularDistance x ^ 2 ≤ (ZMod.stdAddChar x).re := by
  have hcos (u : ℝ) : 1 - 20 * u ^ 2 ≤ Real.cos (2 * Real.pi * u) := by
    have h := Real.one_sub_sq_div_two_le_cos (x := 2 * Real.pi * u)
    have hpi : Real.pi ^ 2 < 10 := by nlinarith [Real.pi_lt_d2, Real.pi_pos]
    have hmul : 2 * Real.pi ^ 2 * u ^ 2 ≤ 20 * u ^ 2 := by
      nlinarith [sq_nonneg u]
    nlinarith
  rw [stdAddChar_re]
  unfold modularDistance
  by_cases h : (x.val : ℝ) / p ≤ 1 - (x.val : ℝ) / p
  · rw [min_eq_left h]
    exact hcos _
  · rw [min_eq_right (le_of_not_ge h)]
    have heq : Real.cos (2 * Real.pi * ((x.val : ℝ) / p)) =
        Real.cos (2 * Real.pi * (1 - (x.val : ℝ) / p)) := by
      rw [mul_sub, mul_one, Real.cos_two_pi_sub]
    rw [heq]
    exact hcos _

/-- Triangle inequality for distance of a residue to zero on the additive circle. -/
theorem modularDistance_add_le (x y : ZMod p) :
    modularDistance (x + y) ≤ modularDistance x + modularDistance y := by
  obtain ⟨a, ha⟩ := modularDistance_attained x
  obtain ⟨b, hb⟩ := modularDistance_attained y
  have hp : (p : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne p
  have htri := abs_add_le ((x.val : ℝ) / p - a) ((y.val : ℝ) / p - b)
  rw [ha, hb]
  by_cases h : p ≤ x.val + y.val
  · have hadd : ((x + y).val : ℝ) / p = (x.val : ℝ) / p + (y.val : ℝ) / p - 1 := by
      rw [ZMod.val_add_of_le h, Nat.cast_sub h, Nat.cast_add]
      field_simp
    have hd := modularDistance_le_abs_sub_int (x + y) (a + b - 1)
    rw [hadd] at hd
    push_cast at hd
    have heq : (x.val : ℝ) / p + (y.val : ℝ) / p - 1 - ((a : ℝ) + b - 1) =
        ((x.val : ℝ) / p - a) + ((y.val : ℝ) / p - b) := by ring
    rw [heq] at hd
    exact hd.trans htri
  · have hadd : ((x + y).val : ℝ) / p = (x.val : ℝ) / p + (y.val : ℝ) / p := by
      rw [ZMod.val_add_of_lt (by omega), Nat.cast_add, add_div]
    have hd := modularDistance_le_abs_sub_int (x + y) (a + b)
    rw [hadd] at hd
    push_cast at hd
    have heq : (x.val : ℝ) / p + (y.val : ℝ) / p - ((a : ℝ) + b) =
        ((x.val : ℝ) / p - a) + ((y.val : ℝ) / p - b) := by ring
    rw [heq] at hd
    exact hd.trans htri

theorem modularDistance_sum_le {ι : Type*} (I : Finset ι) (x : ι → ZMod p) :
    modularDistance (∑ i ∈ I, x i) ≤ ∑ i ∈ I, modularDistance (x i) := by
  classical
  induction I using Finset.induction_on with
  | empty => simp
  | @insert a I ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact (modularDistance_add_le _ _).trans (add_le_add le_rfl ih)

/-- Source Fact 2.3, with the precise cardinality factor. -/
theorem modularDistance_sum_sq_le {ι : Type*} (I : Finset ι) (x : ι → ZMod p) :
    modularDistance (∑ i ∈ I, x i) ^ 2 ≤
      I.card * ∑ i ∈ I, modularDistance (x i) ^ 2 := by
  exact (pow_le_pow_left₀ (modularDistance_nonneg _)
    (modularDistance_sum_le I x) 2).trans (sq_sum_le_card_mul_sum_sq)

/-- Uniform character average over one nonempty partition part. -/
noncomputable def characterAverage (S : Finset (ZMod p)) (χ : ZMod p) : ℂ :=
  (S.card : ℂ)⁻¹ * ∑ x ∈ S, ZMod.stdAddChar (χ * x)

/-- The source pair energy normalized by the square of the part size. -/
noncomputable def pairEnergy (S : Finset (ZMod p)) (χ : ZMod p) : ℝ :=
  (S.card : ℝ)⁻¹ ^ 2 * ∑ x ∈ S, ∑ y ∈ S, modularDistance (χ * (x - y)) ^ 2

omit [NeZero p] in
theorem pairEnergy_nonneg (S : Finset (ZMod p)) (χ : ZMod p) :
    0 ≤ pairEnergy S χ := by
  unfold pairEnergy
  positivity

theorem character_sum_norm_sq (S : Finset (ZMod p)) (χ : ZMod p) :
    ‖∑ x ∈ S, ZMod.stdAddChar (χ * x)‖ ^ 2 =
      ∑ x ∈ S, ∑ y ∈ S, (ZMod.stdAddChar (χ * (x - y))).re := by
  have h (x y : ZMod p) : ZMod.stdAddChar (χ * (x - y)) =
      ZMod.stdAddChar (χ * x) * star (ZMod.stdAddChar (χ * y)) := by
    rw [mul_sub, AddChar.map_sub_eq_div, div_eq_mul_inv, Complex.inv_eq_conj (by simp)]
    rfl
  have hc : (∑ x ∈ S, ZMod.stdAddChar (χ * x)) *
      star (∑ x ∈ S, ZMod.stdAddChar (χ * x)) =
      ∑ x ∈ S, ∑ y ∈ S, ZMod.stdAddChar (χ * (x - y)) := by
    simp only [star_sum, Finset.sum_mul, Finset.mul_sum, h]
    rw [Finset.sum_comm]
  calc
    _ = ((∑ x ∈ S, ZMod.stdAddChar (χ * x)) *
        star (∑ x ∈ S, ZMod.stdAddChar (χ * x))).re := by
      simpa only [Complex.star_def, ← Complex.ofReal_pow, Complex.ofReal_re] using (congrArg Complex.re
        (Complex.mul_conj' (∑ x ∈ S, ZMod.stdAddChar (χ * x)))).symm
    _ = _ := by rw [hc]; simp

theorem characterAverage_norm_sq (S : Finset (ZMod p)) (χ : ZMod p) :
    ‖characterAverage S χ‖ ^ 2 = (S.card : ℝ)⁻¹ ^ 2 *
      ∑ x ∈ S, ∑ y ∈ S, (ZMod.stdAddChar (χ * (x - y))).re := by
  rw [characterAverage, norm_mul, mul_pow, norm_inv, Complex.norm_natCast,
    character_sum_norm_sq]

theorem characterAverage_norm_sq_le (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ : ZMod p) :
    ‖characterAverage S χ‖ ^ 2 ≤ 1 - 2 * pairEnergy S χ := by
  rw [characterAverage_norm_sq]
  calc
    _ ≤ (S.card : ℝ)⁻¹ ^ 2 *
        ∑ x ∈ S, ∑ y ∈ S, (1 - 2 * modularDistance (χ * (x - y)) ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
      exact Finset.sum_le_sum fun _ _ => Finset.sum_le_sum fun _ _ => stdAddChar_re_le _
    _ = 1 - 2 * pairEnergy S χ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_const, nsmul_eq_mul]
      simp_rw [← Finset.mul_sum, pairEnergy]
      have hcard : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
      field_simp

/-- The one-part estimate used in source equation (3.2). -/
theorem characterAverage_norm_le_exp_neg_pairEnergy (S : Finset (ZMod p))
    (hS : S.Nonempty) (χ : ZMod p) :
    ‖characterAverage S χ‖ ≤ Real.exp (-pairEnergy S χ) := by
  have hsq := characterAverage_norm_sq_le S hS χ
  have he : 1 - 2 * pairEnergy S χ ≤ Real.exp (-2 * pairEnergy S χ) := by
    have h := Real.add_one_le_exp (-2 * pairEnergy S χ)
    linarith
  have hexp : Real.exp (-2 * pairEnergy S χ) =
      Real.exp (-pairEnergy S χ) ^ 2 := by
    rw [sq, ← Real.exp_add]
    congr 1
    ring
  exact (sq_le_sq₀ (norm_nonneg _) (Real.exp_pos _).le).mp
    (hsq.trans (he.trans_eq hexp))

omit [NeZero p] in
@[simp] theorem pairEnergy_zero_frequency (S : Finset (ZMod p)) :
    pairEnergy S 0 = 0 := by simp [pairEnergy]

theorem pairEnergy_le_quarter (S : Finset (ZMod p)) (χ : ZMod p) :
    pairEnergy S χ ≤ 1 / 4 := by
  have hbound (x y : ZMod p) : modularDistance (χ * (x - y)) ^ 2 ≤ (1 / 4 : ℝ) := by
    nlinarith [modularDistance_nonneg (χ * (x - y)),
      modularDistance_le_half (χ * (x - y))]
  unfold pairEnergy
  calc
    _ ≤ (S.card : ℝ)⁻¹ ^ 2 * ∑ _x ∈ S, ∑ _y ∈ S, (1 / 4 : ℝ) := by
      apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
      exact Finset.sum_le_sum fun x _ => Finset.sum_le_sum fun y _ => hbound x y
    _ ≤ 1 / 4 := by
      by_cases hS : S.Nonempty
      · simp only [Finset.sum_const, nsmul_eq_mul]
        have hcard : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
        field_simp
        norm_num
      · rw [Finset.not_nonempty_iff_eq_empty.mp hS]
        norm_num

theorem pairEnergy_le_one (S : Finset (ZMod p)) (χ : ZMod p) :
    pairEnergy S χ ≤ 1 := (pairEnergy_le_quarter S χ).trans (by norm_num)

/-- The quadratic triangle estimate for the energy of a sum of frequencies. -/
theorem pairEnergy_sum_le {ι : Type*} (I : Finset ι) (S : Finset (ZMod p))
    (χ : ι → ZMod p) :
    pairEnergy S (∑ i ∈ I, χ i) ≤ I.card * ∑ i ∈ I, pairEnergy S (χ i) := by
  unfold pairEnergy
  simp_rw [Finset.sum_mul]
  calc
    _ ≤ (S.card : ℝ)⁻¹ ^ 2 * ∑ x ∈ S, ∑ y ∈ S,
        I.card * ∑ i ∈ I, modularDistance (χ i * (x - y)) ^ 2 := by
      apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
      exact Finset.sum_le_sum fun _ _ => Finset.sum_le_sum fun _ _ =>
        modularDistance_sum_sq_le I _
    _ = _ := by
      have hswap : (∑ x ∈ S, ∑ y ∈ S, ∑ i ∈ I,
          modularDistance (χ i * (x - y)) ^ 2) =
          ∑ i ∈ I, ∑ x ∈ S, ∑ y ∈ S, modularDistance (χ i * (x - y)) ^ 2 := by
        calc
          _ = ∑ x ∈ S, ∑ i ∈ I, ∑ y ∈ S,
              modularDistance (χ i * (x - y)) ^ 2 := by
            apply Finset.sum_congr rfl
            intro x _
            rw [Finset.sum_comm]
          _ = _ := Finset.sum_comm
      simp_rw [← Finset.mul_sum]
      rw [hswap]
      ring

/-- Multiplication of the independent one-part bounds is source equation (3.2). -/
theorem prod_characterAverage_norm_le {ι : Type*} (I : Finset ι)
    (S : ι → Finset (ZMod p)) (hS : ∀ i ∈ I, (S i).Nonempty) (χ : ZMod p) :
    ∏ i ∈ I, ‖characterAverage (S i) χ‖ ≤
      Real.exp (-(∑ i ∈ I, pairEnergy (S i) χ)) := by
  calc
    _ ≤ ∏ i ∈ I, Real.exp (-pairEnergy (S i) χ) := by
      apply Finset.prod_le_prod
      · intro i _
        exact norm_nonneg _
      · intro i hi
        exact characterAverage_norm_le_exp_neg_pairEnergy _ (hS i hi) _
    _ = _ := by rw [← Real.exp_sum, Finset.sum_neg_distrib]

end GRWTSK.ZModCharacterEnergy
```
