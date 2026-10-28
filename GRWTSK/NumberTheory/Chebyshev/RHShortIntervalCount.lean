/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount
import GRWTSK.Analysis.Series.ScaledHeightCountingTail
import GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-!
# A Cramer-scale prime-count consequence of canonical RH

Use the actual canonical tent formula, both-sign multiplicity count, complete
inverse-square tail, and Mathlib's unconditional proper-power bound. The
coarse Jensen coefficient gives a constructed but nonoptimal fixed constant.
No new zero-count, source-identification, tail, or cancellation premise is
assumed in `many_primes_of_RH`.

This does NOT claim the sharp constants 1 and 3 from the preceding written
argument. That sharpening requires the sharp weighted zero-count estimate,
not merely the coarse Jensen bound used here. All source proof scripts await
compilation, fresh kernel replay, and a full transitive axiom audit.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped Interval BigOperators

namespace GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount

open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Series.ScaledHeightCountingTail
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open CanonicalTentAbsolute ShortIntervalPrimeCount

/-- Apply exactly the canonical RH exclusions to each actual source point. -/
theorem re_zero_of_RH (hRH : _root_.RiemannHypothesis) (z : ZeroPoint) :
    z.1.re = 1 / 2 := hRH z.1 z.2.1 z.2.2.1 z.2.2.2

/-- A pole-free low-height bound; it includes zero height and both signs. -/
theorem norm_tentKernel_le_low (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (hz : z.re ≤ 1 / 2) :
    ‖tentKernel x h z‖ ≤ 2 * h * densityBound (x - h) (x + h) (1 / 2) := by
  let D := densityBound (x - h) (x + h) (1 / 2)
  have hdom (t : ℝ) (ht : t ∈ Set.Icc (x - h) (x + h)) :
      ‖(tent x h t : ℂ) * density z t‖ ≤ D := by
    rw [norm_mul, Complex.norm_of_nonneg (tent_nonneg x h t)]
    calc
      _ ≤ 1 * D := mul_le_mul (tent_le_one x h t hh)
        (norm_density_le ha ht hz) (norm_nonneg _) (by norm_num)
      _ = D := one_mul _
  have hl := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := x - h) (b := x)
    (f := fun t => (tent x h t : ℂ) * density z t) (C := D) (fun t ht => by
      have ht' : t ∈ Set.Ioc (x - h) x :=
        (Set.uIoc_of_le (by linarith : x - h ≤ x)) ▸ ht
      exact hdom t ⟨ht'.1.le, by linarith [ht'.2]⟩)
  have hr := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := x) (b := x + h)
    (f := fun t => (tent x h t : ℂ) * density z t) (C := D) (fun t ht => by
      have ht' : t ∈ Set.Ioc x (x + h) :=
        (Set.uIoc_of_le (by linarith : x ≤ x + h)) ▸ ht
      exact hdom t ⟨by linarith [ht'.1], ht'.2⟩)
  rw [tentKernel_eq_split_integral x h hh ha z]
  have ht := norm_add_le
    (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t)
    (∫ t in x..(x + h), (tent x h t : ℂ) * density z t)
  have hleft : |x - (x - h)| = h := by rw [show x - (x - h) = h by ring, abs_of_pos hh]
  have hright : |x + h - x| = h := by rw [show x + h - x = h by ring, abs_of_pos hh]
  rw [hleft] at hl
  rw [hright] at hr
  dsimp [D] at *
  nlinarith

/-- RH improves the numerator of the complete omitted tail from b^2 to b^(3/2).
The finite low inventory is not dropped, and no coefficient-one count is used. -/
theorem rh_complement_bound (hRH : _root_.RiemannHypothesis)
    (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    (∑' z : {z : ZeroPoint // z ∉ heightHead T},
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ≤
      countingCoefficient * tentTailBudget x h (1 / 2) T := by
  classical
  let e : {z : ZeroPoint // z ∉ heightHead T} ↪ ZeroPoint :=
    ⟨Subtype.val, Subtype.val_injective⟩
  let C : ℝ := 4 * Real.exp (((1 / 2 : ℝ) + 1) * Real.log (x + h)) / h
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hlower (z : {z : ZeroPoint // z ∉ heightHead T}) : T < height z.1 :=
    height_gt_of_not_mem_head T z.1 z.2
  have hcount : ∀ S : Finset {z : ZeroPoint // z ∉ heightHead T}, ∀ t, T ≤ t →
      finiteCountingMass S (fun z => height z.1) (fun z => (multiplicity z.1 : ℝ)) t ≤
        countingCoefficient * (t * Real.log t) := by
    intro S t ht
    have hc := finiteCountingMass_high_le (S.map e) t (hT.trans ht) (by
      intro z hz
      obtain ⟨v, _, rfl⟩ := Finset.mem_map.mp hz
      exact hT.trans_lt (hlower v))
    rw [finiteCountingMass_map] at hc
    exact hc
  have hdom (z : {z : ZeroPoint // z ∉ heightHead T}) :
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖ ≤
        C * ((multiplicity z.1 : ℝ) / (height z.1) ^ 2) := by
    have him : z.1.1.im ≠ 0 := by
      intro hz
      have ht := hlower z
      simp only [height, hz, abs_zero] at ht
      linarith
    have hk := norm_tentKernel_le_inverse_height_sq x h (1 / 2) hh ha (by norm_num)
      z.1.1 (re_zero_of_RH hRH z.1).le him
    calc
      _ = (multiplicity z.1 : ℝ) * ‖tentKernel x h z.1.1‖ := by
        simp only [norm_mul, Complex.norm_natCast]
      _ ≤ (multiplicity z.1 : ℝ) *
          (4 * Real.exp (((1 / 2 : ℝ) + 1) * Real.log (x + h)) /
            (h * z.1.1.im ^ 2)) :=
        mul_le_mul_of_nonneg_left hk (Nat.cast_nonneg _)
      _ = _ := by
        dsimp [C, height]
        rw [sq_abs]
        simp only [div_eq_mul_inv, mul_inv_rev]
        ring
  have hout := dominated_family_scaled
    (fun z : {z : ZeroPoint // z ∉ heightHead T} => height z.1)
    (fun z => (multiplicity z.1 : ℝ))
    (fun z => (multiplicity z.1 : ℂ) * tentKernel x h z.1.1)
    T C countingCoefficient (by linarith) hC countingCoefficient_pos
    (fun z => Nat.cast_nonneg _) hlower hcount hdom
  refine hout.2.2.trans_eq ?_
  unfold C inverseSquareBudget tentTailBudget
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Full RH spectral allowance with the actual finite low count retained. -/
theorem rh_zeroContribution_bound (hRH : _root_.RiemannHypothesis)
    (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    ‖zeroContribution x h‖ ≤
      (2 * h * densityBound (x - h) (x + h) (1 / 2)) *
        ((heightCount 2 : ℝ) + countingCoefficient * (T * Real.log T)) +
      countingCoefficient * tentTailBudget x h (1 / 2) T := by
  classical
  let f : ZeroPoint → ℂ := fun z => (multiplicity z : ℂ) * tentKernel x h z.1
  let L := 2 * h * densityBound (x - h) (x + h) (1 / 2)
  have hL : 0 ≤ L := by dsimp [L, densityBound]; positivity
  have hs : Summable f := (canonical_absolute_summable x h hh ha).2
  have hn := (complement_summable_and_bound x h T hh ha hT).1
  have hcomp : (∑' z : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ), f z.1) =
      ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1 := by
    let e : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ) ≃
        {z : ZeroPoint // z ∉ heightHead T} :=
      Equiv.subtypeEquivRight (by intro z; simp)
    exact e.tsum_eq (fun z : {z : ZeroPoint // z ∉ heightHead T} => f z.1)
  have hhead : ‖∑ z ∈ heightHead T, f z‖ ≤ L * (heightCount T : ℝ) := by
    calc
      _ ≤ ∑ z ∈ heightHead T, ‖f z‖ := norm_sum_le _ _
      _ ≤ ∑ z ∈ heightHead T, (multiplicity z : ℝ) * L := by
        apply Finset.sum_le_sum
        intro z _
        simpa only [f, norm_mul, Complex.norm_natCast] using
          mul_le_mul_of_nonneg_left
            (norm_tentKernel_le_low x h hh ha z.1 (re_zero_of_RH hRH z).le)
            (Nat.cast_nonneg (multiplicity z) : (0 : ℝ) ≤ multiplicity z)
      _ = L * (heightCount T : ℝ) := by
        rw [← Finset.sum_mul, ← heightCount_cast]
        ring
  have htail : ‖∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1‖ ≤
      countingCoefficient * tentTailBudget x h (1 / 2) T :=
    (norm_tsum_le_tsum_norm hn).trans (rh_complement_bound hRH x h T hh ha hT)
  have he := hs.sum_add_tsum_compl (s := heightHead T)
  rw [hcomp] at he
  calc
    ‖zeroContribution x h‖ = ‖(∑ z ∈ heightHead T, f z) +
        ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1‖ := by
      change ‖∑' z, f z‖ = _
      rw [he]
    _ ≤ L * (heightCount T : ℝ) +
        countingCoefficient * tentTailBudget x h (1 / 2) T :=
      (norm_add_le _ _).trans (add_le_add hhead htail)
    _ ≤ _ := add_le_add
      (mul_le_mul_of_nonneg_left (heightCount_le_low_add T hT) hL) le_rfl

/-- The finite low count and the existing Jensen coefficient are fixed constants. -/
def coarseSpectralConstant : ℝ := (heightCount 2 : ℝ) + 100 * countingCoefficient

theorem coarseSpectralConstant_nonnegative : 0 ≤ coarseSpectralConstant := by
  unfold coarseSpectralConstant
  exact add_nonneg (Nat.cast_nonneg _)
    (mul_nonneg (by norm_num) countingCoefficient_pos.le)

/-- A coarse, uniform spectral estimate in one-sided logarithmic coordinates.
Both the radius and the high/low cutoff are specified, not postulated. -/
theorem rh_log_window_zero_bound (hRH : _root_.RiemannHypothesis)
    (t h : ℝ) (ht : 1 ≤ t) (hh : 1 ≤ h)
    (hshort : 2 * h ≤ (Real.exp t) ^ 2) :
    ‖zeroContribution ((Real.exp t) ^ 2 + h) h‖ ≤
      coarseSpectralConstant * (t * Real.exp t) := by
  let e := Real.exp t
  let a := e ^ 2
  let x := a + h
  let b := a + 2 * h
  let T := a / h
  let K := countingCoefficient
  let M : ℝ := heightCount 2
  have he : 0 < e := Real.exp_pos t
  have he2 : 2 ≤ e := by have := Real.add_one_le_exp t; dsimp [e]; linarith
  have ha : 4 ≤ a := by
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) he2 2
    norm_num at hp
    exact hp
  have hh0 : 0 < h := by linarith
  have hshort' : 2 * h ≤ a := hshort
  have hb0 : 0 < b := by dsimp [b]; linarith
  have hab : a ≤ b := by dsimp [b]; linarith
  have hb : b ≤ 2 * a := by dsimp [b]; linarith
  have hT : 2 ≤ T := (le_div_iff₀ hh0).mpr (by nlinarith)
  have hTa : T ≤ a := (div_le_iff₀ hh0).mpr (by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hh (by linarith : 0 ≤ a))
  have hcancel : h * T = a := by dsimp [T]; field_simp [hh0.ne'] <;> ring
  have hloga : Real.log a = 2 * t := by simp [a, e, Real.log_pow]
  have hlogT : Real.log T ≤ 2 * t :=
    (Real.log_le_log (by linarith : 0 < T) hTa).trans_eq hloga
  have hlogT0 : 0 ≤ Real.log T := Real.log_nonneg (by linarith)
  have hD : densityBound (x - h) (x + h) (1 / 2) = e⁻¹ := by
    have hlogab : Real.log a ≤ Real.log b := Real.log_le_log (by linarith) hab
    have hmax : ((1 / 2 : ℝ) - 1) * Real.log b ≤
        ((1 / 2 : ℝ) - 1) * Real.log a := by nlinarith
    change Real.exp (max (((1 / 2 : ℝ) - 1) * Real.log (a + h - h))
      (((1 / 2 : ℝ) - 1) * Real.log (a + h + h))) = e⁻¹
    rw [add_sub_cancel_right, show a + h + h = b by dsimp [b]; ring,
      max_eq_left hmax, hloga]
    rw [show ((1 / 2 : ℝ) - 1) * (2 * t) = -t by ring, Real.exp_neg]
  have hK : 0 ≤ K := countingCoefficient_pos.le
  have hM : 0 ≤ M := Nat.cast_nonneg _
  have hlow : 2 * h * e⁻¹ ≤ e := by
    rw [← div_eq_mul_inv]
    apply (div_le_iff₀ he).mpr
    dsimp [a] at hshort'
    nlinarith
  have hhighIdentity : (2 * h * e⁻¹) * (K * (T * Real.log T)) =
      2 * K * e * Real.log T := by
    dsimp [T, a]
    field_simp [he.ne', hh0.ne']
    <;> ring
  have hhead : (2 * h * e⁻¹) * (M + K * (T * Real.log T)) ≤
      (M + 4 * K) * (t * e) := by
    rw [mul_add, hhighIdentity]
    have hm := mul_le_mul_of_nonneg_right hlow hM
    have hz := mul_le_mul_of_nonneg_left hlogT
      (mul_nonneg (mul_nonneg (by norm_num) hK) he.le)
    have het : e ≤ t * e := by
      simpa only [one_mul] using mul_le_mul_of_nonneg_right ht he.le
    have hmt : M * e ≤ M * (t * e) := mul_le_mul_of_nonneg_left het hM
    nlinarith
  let s := Real.exp ((1 / 2 : ℝ) * Real.log b)
  have hs : 0 < s := Real.exp_pos _
  have hs2 : s ^ 2 = b := by
    dsimp [s]
    rw [pow_two, ← Real.exp_add,
      show (1 / 2 : ℝ) * Real.log b + (1 / 2 : ℝ) * Real.log b = Real.log b by ring,
      Real.exp_log hb0]
  have hsle : s ≤ 2 * e := by
    apply (sq_le_sq₀ hs.le (by positivity : 0 ≤ 2 * e)).mp
    rw [hs2]
    dsimp [a] at hb
    nlinarith [sq_nonneg e]
  have hexp : Real.exp (((1 / 2 : ℝ) + 1) * Real.log b) ≤ 4 * a * e := by
    rw [show ((1 / 2 : ℝ) + 1) * Real.log b =
      Real.log b + (1 / 2 : ℝ) * Real.log b by ring,
      Real.exp_add, Real.exp_log hb0]
    change b * s ≤ _
    have hp := mul_le_mul hb hsle hs.le (by positivity : 0 ≤ 2 * a)
    nlinarith
  have htail : K * tentTailBudget x h (1 / 2) T ≤ 96 * K * (t * e) := by
    have hnum : (8 * Real.exp (((1 / 2 : ℝ) + 1) * Real.log b)) * (Real.log T + 1) ≤
        (8 * (4 * a * e)) * (3 * t) := by
      have hl : Real.log T + 1 ≤ 3 * t := by linarith
      exact mul_le_mul (mul_le_mul_of_nonneg_left hexp (by norm_num)) hl
        (by linarith) (by positivity)
    have hd := div_le_div_of_nonneg_right hnum (by linarith : 0 ≤ a)
    have hk := mul_le_mul_of_nonneg_left hd hK
    have heq : K * ((8 * (4 * a * e)) * (3 * t) / a) = 96 * K * (t * e) := by
      field_simp [show a ≠ 0 by linarith]
      <;> ring
    rw [heq] at hk
    simpa only [tentTailBudget, x, show a + h + h = b by dsimp [b]; ring, hcancel] using hk
  have hz := rh_zeroContribution_bound hRH x h T hh0
    (by dsimp [x]; linarith) hT
  rw [hD] at hz
  change ‖zeroContribution x h‖ ≤ _
  change _ ≤ (M + 100 * K) * (t * e)
  linarith

/-- Elementary growth control, with no unquantified limit interchange. -/
theorem exp_ge_square_quarter (t : ℝ) (ht : 0 ≤ t) : t ^ 2 / 4 ≤ Real.exp t := by
  have h := Real.add_one_le_exp (t / 2)
  have hpos := Real.exp_pos (t / 2)
  have he : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add, show t / 2 + t / 2 = t by ring]
  have hs : (t / 2) ^ 2 ≤ Real.exp (t / 2) ^ 2 :=
    (sq_le_sq₀ (by linarith : 0 ≤ t / 2) hpos.le).2 (by linarith)
  rw [he] at hs
  nlinarith

/-- Full RH consequence with a nonoptimal fixed Cramer constant.
The only analytic hypothesis is canonical RH; the power constant is constructed. -/
theorem many_primes_in_log_coordinates_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B : ℝ, 0 < B ∧ ∀ t : ℝ, max 1 (8 * B) ≤ t →
      Real.exp t < (primeCount ((Real.exp t) ^ 2)
        ((Real.exp t) ^ 2 + 2 * B * t * Real.exp t) : ℝ) := by
  obtain ⟨C, hC, hpower⟩ := exists_uniform_proper_power_constant
  let B := coarseSpectralConstant + 2 * C + 4
  have hA := coarseSpectralConstant_nonnegative
  have hB : 4 ≤ B := by dsimp [B]; linarith
  refine ⟨B, by linarith, ?_⟩
  intro t ht
  have ht1 : 1 ≤ t := (le_max_left _ _).trans ht
  have htB : 8 * B ≤ t := (le_max_right _ _).trans ht
  let e := Real.exp t
  let a := e ^ 2
  let h := B * t * e
  let x := a + h
  let b := a + 2 * h
  have he : 0 < e := Real.exp_pos t
  have he2 : 2 ≤ e := by have := Real.add_one_le_exp t; dsimp [e]; linarith
  have ha : 4 ≤ a := by
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) he2 2
    norm_num at hp
    exact hp
  have hh1 : 1 ≤ h := by
    have hBt : 4 ≤ B * t := hB.trans
      (le_mul_of_one_le_right (by linarith : 0 ≤ B) ht1)
    have hm := mul_le_mul hBt he2 (by norm_num : (0 : ℝ) ≤ 2)
      (by linarith : 0 ≤ B * t)
    dsimp [h]
    nlinarith
  have hh : 0 < h := by linarith
  have hEt : 2 * B * t ≤ e := by
    have hq := exp_ge_square_quarter t (by linarith)
    have hm := mul_nonneg (by linarith : 0 ≤ t)
      (by linarith : 0 ≤ t - 8 * B)
    dsimp [e]
    nlinarith
  have hshort : 2 * h ≤ a := by
    have hm := mul_le_mul_of_nonneg_right hEt he.le
    dsimp [h, a]
    nlinarith
  have hb : b ≤ 2 * a := by dsimp [b]; linarith
  have hb0 : 0 < b := by dsimp [b]; linarith
  have hxs : x - h = a := by dsimp [x]; ring
  have hxb : x + h = b := by dsimp [x, b]; ring
  have hz : ‖zeroContribution x h‖ ≤ coarseSpectralConstant * (t * e) :=
    rh_log_window_zero_bound hRH t h ht1 hh1 hshort
  have hsqrt : Real.sqrt b ≤ 2 * e := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg b) (by positivity : 0 ≤ 2 * e)).mp
    rw [Real.sq_sqrt hb0.le]
    dsimp [a] at hb
    nlinarith [sq_nonneg e]
  have hp : properPowerTent x h ≤ 2 * C * (t * e) := by
    have hpow := hpower x h hh
    rw [hxb] at hpow
    have h1 := mul_le_mul_of_nonneg_left hsqrt hC
    have het : e ≤ t * e := by
      simpa only [one_mul] using mul_le_mul_of_nonneg_right ht1 he.le
    have h2 : 2 * C * e ≤ 2 * C * (t * e) :=
      mul_le_mul_of_nonneg_left het (mul_nonneg (by norm_num) hC)
    exact hpow.trans (h1.trans (by nlinarith))
  have hc : -1 ≤ rationalTentCorrection x h :=
    rational_correction_ge_neg_one x h hh (by rw [hxs]; linarith)
      (by rw [hxs]; linarith)
  have hlog : Real.log b ≤ 3 * t := by
    have hba : b ≤ e ^ 3 := by
      have hm := mul_nonneg (sq_nonneg e) (by linarith : 0 ≤ e - 2)
      dsimp [a] at hb
      nlinarith
    have hl := Real.log_le_log hb0 hba
    rw [Real.log_pow] at hl
    dsimp [e] at hl
    rw [Real.log_exp] at hl
    norm_num at hl ⊢
    exact hl
  have hm := prime_count_master_bound x h hh (by rw [hxs]; linarith)
  rw [hxs, hxb] at hm
  have hcount : e < (primeCount a b : ℝ) := by
    by_contra hn
    have hle : (primeCount a b : ℝ) ≤ e := le_of_not_gt hn
    have hprod := mul_le_mul hlog hle (Nat.cast_nonneg (primeCount a b))
      (by linarith : 0 ≤ 3 * t)
    have heq : h = (coarseSpectralConstant + 2 * C + 4) * (t * e) := by
      dsimp [h, B]; ring
    have hte : 2 ≤ t * e := by
      have hm := mul_le_mul ht1 he2 (by norm_num : (0 : ℝ) ≤ 2)
        (by linarith : 0 ≤ t)
      simpa only [one_mul] using hm
    rw [heq] at hm
    nlinarith
  simpa only [b, h, a, e, mul_assoc] using hcount

/-- For some fixed B>0, every sufficiently large real interval
(x, x+B*sqrt(x)*log(x)] contains more than sqrt(x) actual primes. -/
theorem many_primes_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) := by
  obtain ⟨B, hB, hb⟩ := many_primes_in_log_coordinates_of_RH hRH
  let t₀ := max 1 (8 * B)
  refine ⟨B, Real.exp (2 * t₀), hB, Real.exp_pos _, ?_⟩
  intro x hx
  have hx0 : 0 < x := (Real.exp_pos _).trans_le hx
  let t := Real.log x / 2
  have ht : t₀ ≤ t := by
    have hl := Real.log_le_log (Real.exp_pos (2 * t₀)) hx
    rw [Real.log_exp] at hl
    dsimp [t]
    linarith
  have he : (Real.exp t) ^ 2 = x := by
    rw [pow_two, ← Real.exp_add]
    dsimp [t]
    rw [show Real.log x / 2 + Real.log x / 2 = Real.log x by ring,
      Real.exp_log hx0]
  have hs : Real.sqrt x = Real.exp t := by
    rw [← he, Real.sqrt_sq_eq_abs, abs_of_pos (Real.exp_pos t)]
  have hr := hb t ht
  rw [he] at hr
  have hw : 2 * B * t * Real.exp t = B * Real.sqrt x * Real.log x := by
    rw [hs]
    dsimp [t]
    ring
  rw [hw, ← hs] at hr
  exact hr

/-- The same theorem returns a literal prime, not only positive prime-power mass. -/
theorem prime_in_short_interval_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧
        (p : ℝ) ≤ x + B * Real.sqrt x * Real.log x := by
  obtain ⟨B, X, hB, hX, hb⟩ := many_primes_of_RH hRH
  refine ⟨B, max X 1, hB, lt_of_lt_of_le hX (le_max_left _ _), ?_⟩
  intro x hx
  have hxX := (le_max_left X 1).trans hx
  have hx1 := (le_max_right X 1).trans hx
  have hc := hb x hxX
  have hn : 0 < primeCount x (x + B * Real.sqrt x * Real.log x) := by
    have hp : (0 : ℝ) < primeCount x (x + B * Real.sqrt x * Real.log x) :=
      (Real.sqrt_nonneg x).trans_lt hc
    exact_mod_cast hp
  have hl : 0 ≤ Real.log x := Real.log_nonneg hx1
  have hb0 : 0 ≤ x + B * Real.sqrt x * Real.log x :=
    add_nonneg (by linarith) (mul_nonneg (mul_nonneg hB.le (Real.sqrt_nonneg x)) hl)
  exact (primeCount_pos_iff hb0).mp hn



/-- Consecutive-prime gap consequence with the same fixed constant.
The least-successor condition is literal; natural subtraction is cast only
with p<q supplied. No finite numerical prime inventory is used. -/
theorem consecutive_prime_gap_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ p q : ℕ,
      Nat.Prime p → Nat.Prime q → p < q →
      (∀ r : ℕ, Nat.Prime r → p < r → q ≤ r) → X ≤ (p : ℝ) →
      ((q - p : ℕ) : ℝ) ≤ B * Real.sqrt (p : ℝ) * Real.log (p : ℝ) := by
  obtain ⟨B, X, hB, hX, hb⟩ := prime_in_short_interval_of_RH hRH
  refine ⟨B, X, hB, hX, ?_⟩
  intro p q _hp _hq hpq hnext hpX
  obtain ⟨r, hr, hpr, hrb⟩ := hb (p : ℝ) hpX
  have hprN : p < r := by exact_mod_cast hpr
  have hqr : (q : ℝ) ≤ (r : ℝ) := by exact_mod_cast hnext r hr hprN
  rw [Nat.cast_sub hpq.le]
  linarith

/-- The same downstream conclusion at every sufficiently late actual dyadic cutoff.
The elementary cutoff coverage is proved, not passed as a sequence hypothesis. -/
theorem many_primes_dyadic_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B : ℝ, 0 < B ∧ ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
      Real.sqrt ((2 ^ j : ℕ) : ℝ) <
        (primeCount ((2 ^ j : ℕ) : ℝ)
          (((2 ^ j : ℕ) : ℝ) + B * Real.sqrt ((2 ^ j : ℕ) : ℝ) *
            ((j : ℝ) * Real.log 2)) : ℝ) := by
  obtain ⟨B, X, hB, _hX, hb⟩ := many_primes_of_RH hRH
  refine ⟨B, hB, ⌈X⌉₊, ?_⟩
  intro j hj
  have hpow (n : ℕ) : n ≤ 2 ^ n := by
    induction n with
    | zero => simp
    | succ n ih =>
        have hp : 0 < (2 : ℕ) ^ n := by positivity
        rw [pow_succ]
        omega
  have hXj : X ≤ ((2 ^ j : ℕ) : ℝ) := calc
    X ≤ (⌈X⌉₊ : ℝ) := Nat.le_ceil X
    _ ≤ (j : ℝ) := by exact_mod_cast hj
    _ ≤ ((2 ^ j : ℕ) : ℝ) := by exact_mod_cast hpow j
  have hr := hb ((2 ^ j : ℕ) : ℝ) hXj
  have hl : Real.log ((2 ^ j : ℕ) : ℝ) = (j : ℝ) * Real.log 2 := by
    rw [Nat.cast_pow, Nat.cast_ofNat, Real.log_pow]
  rwa [hl] at hr

/-- The existing signed pickup programme can feed the downstream consequence.
DyadicBirthBound remains an explicit upstream arithmetic hypothesis. -/
theorem many_primes_of_dyadicBirthBound
    (h : GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.DyadicBirthBound) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) :=
  many_primes_of_RH
    (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.riemannHypothesis_of_dyadicBirthBound h)

end GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount
