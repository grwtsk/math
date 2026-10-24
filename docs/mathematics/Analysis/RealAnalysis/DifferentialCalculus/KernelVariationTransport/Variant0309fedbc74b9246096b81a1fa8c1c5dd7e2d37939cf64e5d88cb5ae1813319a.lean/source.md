# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KernelVariationTransport.Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b33461db8ed0e94763546a954f13ecc9dd10d0a4` · SHA-256 `0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Conditional scratch transport only: the kernel derivative bound is a premise. -/

set_option autoImplicit false

namespace KernelVariationTransportScratch

open Finset Set

theorem abs_sub_le_reciprocal (f f' : ℝ → ℝ) (B x y : ℝ)
    (hx : 1 ≤ x) (hxy : x ≤ y) (hc : ContinuousOn f (Set.Ici 1))
    (hd : ∀ t : ℝ, 1 < t → HasDerivAt f (f' t) t)
    (hb : ∀ t : ℝ, 1 < t → |f' t| ≤ B / t ^ 2) :
    |f x - f y| ≤ B * (1 / x - 1 / y) := by
  have hrec (t : ℝ) (ht : 1 ≤ t) :
      HasDerivAt (fun s : ℝ ↦ B / s) (-B / t ^ 2) t := by
    have ht0 : t ≠ 0 := ne_of_gt (by linarith)
    simpa only [div_eq_mul_inv, mul_neg, neg_mul] using
      (hasDerivAt_inv ht0).const_mul B
  have hcont : ContinuousOn (fun s : ℝ ↦ B / s) (Set.Ici 1) :=
    fun t ht ↦ (hrec t ht).continuousAt.continuousWithinAt
  have hmono : MonotoneOn (fun t ↦ f t - B / t) (Set.Ici 1) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 1) (hc.sub hcont)
      (f' := fun t ↦ f' t - (-B / t ^ 2))
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      exact ((hd t ht1).sub (hrec t ht1.le)).hasDerivWithinAt
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      have hl := (abs_le.mp (hb t ht1)).1
      simp only [neg_div]
      linarith
  have hanti : AntitoneOn (fun t ↦ f t + B / t) (Set.Ici 1) := by
    apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 1) (hc.add hcont)
      (f' := fun t ↦ f' t + (-B / t ^ 2))
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      exact ((hd t ht1).add (hrec t ht1.le)).hasDerivWithinAt
    · intro t ht
      have ht1 : 1 < t := by simpa only [interior_Ici, Set.mem_Ioi] using ht
      have hu := (abs_le.mp (hb t ht1)).2
      simp only [neg_div]
      linarith
  have hm := hmono hx (hx.trans hxy) hxy
  have ha := hanti hx (hx.trans hxy) hxy
  have he : B * (1 / x - 1 / y) = B / x - B / y := by ring
  rw [he]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem sqrt_reciprocal_step_le (j : ℕ) (hj : 1 ≤ j) :
    Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) ≤
      2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) := by
  have hj0 : (0 : ℝ) < j := by exact_mod_cast (show 0 < j by omega)
  have hj1 : (0 : ℝ) < (j : ℝ) + 1 := by positivity
  have hs0 := Real.sqrt_pos.mpr hj0
  have hs1 := Real.sqrt_pos.mpr hj1
  have hsq0 := Real.sq_sqrt hj0.le
  have hsq1 := Real.sq_sqrt hj1.le
  have hmono := Real.sqrt_le_sqrt (show (j : ℝ) ≤ (j : ℝ) + 1 by linarith)
  have hfactor : Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ) > 0 := by positivity
  have hl : Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) =
      1 / (Real.sqrt (j : ℝ) * ((j : ℝ) + 1)) := by
    field_simp
    nlinarith
  have hr : 2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) =
      2 / (Real.sqrt (j : ℝ) * Real.sqrt ((j : ℝ) + 1) *
        (Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ))) := by
    field_simp
    nlinarith
  rw [hl, hr]
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  have hm := mul_le_mul_of_nonneg_left hmono hs1.le
  have hsmall : Real.sqrt ((j : ℝ) + 1) *
      (Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ)) ≤ 2 * ((j : ℝ) + 1) := by
    nlinarith
  nlinarith [mul_le_mul_of_nonneg_left hsmall hs0.le]

theorem sqrt_reciprocal_variation_le (G : ℕ) :
    (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) ≤ 2 := by
  by_cases hG : G = 0
  · subst G
    simp
  have hG1 : 1 ≤ G := by omega
  have hset : Finset.Icc 1 (G - 1) = Finset.Ico 1 G := by
    ext j
    simp only [Finset.mem_Ico, Finset.mem_Icc]
    omega
  have ht : (∑ j ∈ Finset.Icc 1 (G - 1),
      (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1))) =
      1 - 1 / Real.sqrt (G : ℝ) := by
    rw [hset]
    have h := congrArg Neg.neg (sum_Ico_sub (fun j : ℕ ↦ 1 / Real.sqrt (j : ℝ)) hG1)
    simpa only [← sum_neg_distrib, neg_sub, Nat.cast_add, Nat.cast_one,
      Real.sqrt_one, div_one] using h
  calc
    _ ≤ ∑ j ∈ Finset.Icc 1 (G - 1),
        2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) := by
      apply sum_le_sum
      intro j hj
      exact sqrt_reciprocal_step_le j (Finset.mem_Icc.mp hj).1
    _ = 2 * (1 - 1 / Real.sqrt (G : ℝ)) := by rw [← mul_sum, ht]
    _ ≤ 2 := by nlinarith [one_div_nonneg.mpr (Real.sqrt_nonneg (G : ℝ))]

theorem composed_abs_sub_le (E : ℝ → ℝ) (h K' x y : ℝ)
    (hh : 1 ≤ h) (hx : 1 ≤ x) (hxy : x ≤ y)
    (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    |E (h * x ^ 2) - E (h * y ^ 2)| ≤
      (2 * K' / Real.sqrt h) * (1 / x - 1 / y) := by
  have hh0 : 0 < h := zero_lt_one.trans_le hh
  have hs0 : 0 < Real.sqrt h := Real.sqrt_pos.mpr hh0
  have hmap (t : ℝ) (ht : 1 ≤ t) : 1 ≤ h * t ^ 2 := by
    have hm := mul_le_mul_of_nonneg_right hh (sq_nonneg t)
    nlinarith
  have hmap' (t : ℝ) (ht : 1 < t) : 1 < h * t ^ 2 := by
    have hm := mul_le_mul_of_nonneg_right hh (sq_nonneg t)
    nlinarith
  apply abs_sub_le_reciprocal (fun t ↦ E (h * t ^ 2))
    (fun t ↦ deriv E (h * t ^ 2) * (2 * h * t)) (2 * K' / Real.sqrt h) x y hx hxy
  · exact hc.comp ((continuous_const.mul (continuous_id.pow 2)).continuousOn) hmap
  · intro t ht
    have hpow : HasDerivAt (fun s : ℝ ↦ h * s ^ 2) (2 * h * t) t := by
      convert! (hasDerivAt_pow 2 t).const_mul h using 1
      ring
    exact (hd _ (hmap' t ht)).hasDerivAt.comp t hpow
  · intro t ht
    have ht0 : 0 < t := by linarith
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 * h * t)]
    calc
      _ ≤ (K' / ((h * t ^ 2) * Real.sqrt (h * t ^ 2))) * (2 * h * t) :=
        mul_le_mul_of_nonneg_right (hb _ (hmap' t ht)) (by positivity)
      _ = (2 * K' / Real.sqrt h) / t ^ 2 := by
        rw [Real.sqrt_mul hh0.le, Real.sqrt_sq ht0.le]
        field_simp

noncomputable def composedVariation (E : ℝ → ℝ) (h : ℝ) (G : ℕ) : ℝ :=
  Real.sqrt (G : ℝ) * |E (h * (G : ℝ) ^ 2)| +
    ∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)|

theorem composedVariation_zero (E : ℝ → ℝ) (h : ℝ) : composedVariation E h 0 = 0 := by
  simp [composedVariation]

theorem composedVariation_le (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h := by
  have hK : 0 ≤ K := by
    have h := hv 1 le_rfl
    norm_num at h
    exact (abs_nonneg _).trans h
  have hK' : 0 ≤ K' := by
    have h : 0 ≤ K' / (4 * Real.sqrt 4) :=
      (abs_nonneg _).trans (hb 4 (by norm_num))
    simpa only [zero_mul] using (le_div_iff₀ (by positivity : 0 < (4 : ℝ) * Real.sqrt 4)).mp h
  have hh0 : 0 < h := zero_lt_one.trans_le hh
  have hs0 : 0 < Real.sqrt h := Real.sqrt_pos.mpr hh0
  by_cases hG : G = 0
  · subst G
    rw [composedVariation_zero]
    positivity
  have hG1 : 1 ≤ G := by omega
  have hGr : (1 : ℝ) ≤ G := by exact_mod_cast hG1
  have hG0 : (0 : ℝ) < G := zero_lt_one.trans_le hGr
  have hq : 1 ≤ h * (G : ℝ) ^ 2 := by
    have hm := mul_le_mul_of_nonneg_right hh (sq_nonneg (G : ℝ))
    nlinarith
  have hend : Real.sqrt (G : ℝ) * |E (h * (G : ℝ) ^ 2)| ≤ K / Real.sqrt h := by
    have hval := hv _ hq
    rw [Real.sqrt_mul hh0.le, Real.sqrt_sq hG0.le] at hval
    calc
      _ ≤ Real.sqrt (G : ℝ) * (K / (Real.sqrt h * (G : ℝ))) :=
        mul_le_mul_of_nonneg_left hval (Real.sqrt_nonneg _)
      _ ≤ (G : ℝ) * (K / (Real.sqrt h * (G : ℝ))) :=
        mul_le_mul_of_nonneg_right (Real.sqrt_le_self_iff.mpr (Or.inr hGr))
          (by positivity)
      _ = K / Real.sqrt h := by field_simp
  have hB : 0 ≤ 2 * K' / Real.sqrt h := by positivity
  have hterm (j : ℕ) (hj : j ∈ Finset.Icc 1 (G - 1)) :
      Real.sqrt (j : ℝ) * |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)| ≤
        (2 * K' / Real.sqrt h) *
          (Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) := by
    have hj1 : (1 : ℝ) ≤ j := by exact_mod_cast (Finset.mem_Icc.mp hj).1
    have hs := mul_le_mul_of_nonneg_left
      (composed_abs_sub_le E h K' (j : ℝ) ((j : ℝ) + 1) hh hj1 (by linarith) hc hd hb)
      (Real.sqrt_nonneg (j : ℝ))
    simpa only [Nat.cast_add, Nat.cast_one, mul_left_comm] using hs
  have hsum : (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)|) ≤
      4 * K' / Real.sqrt h := by
    calc
      _ ≤ ∑ j ∈ Finset.Icc 1 (G - 1), (2 * K' / Real.sqrt h) *
          (Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) :=
        sum_le_sum hterm
      _ = (2 * K' / Real.sqrt h) *
          ∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
            (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) := (mul_sum _ _ _).symm
      _ ≤ (2 * K' / Real.sqrt h) * 2 :=
        mul_le_mul_of_nonneg_left (sqrt_reciprocal_variation_le G) hB
      _ = _ := by ring
  unfold composedVariation
  calc
    _ ≤ K / Real.sqrt h + 4 * K' / Real.sqrt h := add_le_add hend hsum
    _ = _ := by ring

theorem composedVariation_nat_le (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) := by
  simpa only [composedVariation, Nat.cast_mul, Nat.cast_pow] using
    composedVariation_le E (h : ℝ) K K' G (by exact_mod_cast hh) hc hd hv hb

theorem rpow_three_halves (q : ℝ) (hq : 0 < q) :
    q ^ (3 / 2 : ℝ) = q * Real.sqrt q := by
  rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by norm_num, Real.rpow_add hq,
    Real.rpow_one, ← Real.sqrt_eq_rpow]

theorem composedVariation_nat_le_rpow (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / q ^ (3 / 2 : ℝ)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) := by
  apply composedVariation_nat_le E h G K K' hh hc hd hv
  intro q hq
  simpa only [rpow_three_halves q (zero_lt_one.trans hq)] using hb q hq

end KernelVariationTransportScratch
```
