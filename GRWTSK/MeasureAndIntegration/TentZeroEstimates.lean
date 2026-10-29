/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.TentPrimeConsequences
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.ScaledHeightCountingTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalDensityCriterion

/-!
# Source-parameterized tent estimates upstream of the RH adapter

The complete head, tail, count and geometry proofs are retained. Only the
actual canonical upper-half-plane envelope supplies the spectral input.
The log-coordinate reduction can instead consume the displayed full-source
allowance directly. Neither consumer takes RH as an argument.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped Interval BigOperators
namespace GRWTSK.NumberTheory.Chebyshev.TentZeroEstimates

open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Series.ScaledHeightCountingTail
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.RiemannHypothesis.CriticalDensityCriterion
open CanonicalTentAbsolute ShortIntervalPrimeCount TentPrimeConsequences

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

/-- The source upper-half-plane envelope improves the tail numerator to b^(3/2).
The finite low inventory is not dropped, and no coefficient-one count is used. -/
theorem complement_bound_of_upper (hline : CanonicalUpperHalfPlane)
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
      z.1.1 (hline z.1) him
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

/-- Full source spectral allowance with the actual finite low count retained. -/
theorem zeroContribution_bound_of_upper (hline : CanonicalUpperHalfPlane)
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
            (norm_tentKernel_le_low x h hh ha z.1 (hline z))
            (Nat.cast_nonneg (multiplicity z) : (0 : ℝ) ≤ multiplicity z)
      _ = L * (heightCount T : ℝ) := by
        rw [← Finset.sum_mul, ← heightCount_cast]
        ring
  have htail : ‖∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1‖ ≤
      countingCoefficient * tentTailBudget x h (1 / 2) T :=
    (norm_tsum_le_tsum_norm hn).trans (complement_bound_of_upper hline x h T hh ha hT)
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
theorem log_window_zero_bound_of_allowance
    (hbudget : ∀ x h T : ℝ, 0 < h → 1 < x - h → 2 ≤ T →
      ‖zeroContribution x h‖ ≤
        (2 * h * densityBound (x - h) (x + h) (1 / 2)) *
          ((heightCount 2 : ℝ) + countingCoefficient * (T * Real.log T)) +
        countingCoefficient * tentTailBudget x h (1 / 2) T)
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
  have hz := hbudget x h T hh0
    (by dsimp [x]; linarith) hT
  rw [hD] at hz
  change ‖zeroContribution x h‖ ≤ _
  change _ ≤ (M + 100 * K) * (t * e)
  linarith

/-- The existing canonical count and tails construct the norm supplier. -/
theorem log_window_zero_bound_of_upper (hline : CanonicalUpperHalfPlane) :
    LogWindowZeroBound coarseSpectralConstant :=
  log_window_zero_bound_of_allowance (zeroContribution_bound_of_upper hline)

/-- A reversible source-density input can feed the same estimate without an RH argument. -/
theorem log_window_zero_bound_of_density_growth (h : CriticalDensityGrowth) :
    LogWindowZeroBound coarseSpectralConstant :=
  log_window_zero_bound_of_upper (upper_of_density_growth h)

end GRWTSK.NumberTheory.Chebyshev.TentZeroEstimates
