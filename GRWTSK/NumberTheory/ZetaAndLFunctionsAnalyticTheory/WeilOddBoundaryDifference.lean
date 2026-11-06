/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapPeriodLift
import Mathlib.MeasureTheory.Group.Prod
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic

/-!
# The exterior exponential response of periodization

Sections 2–3 of weil-periodic-boundary.md (2026-11-04) compare literal
zero extension with periodic translation. For each exponential rate
α > 0 and t in the window, the two translates agree until t+r
passes the right endpoint. Translating the remaining integral gives
the right exterior Laplace tail multiplied by exp(α t). Periodicity
identifies that tail with exp(-2αT) times the tail starting at the left
endpoint. Splitting the latter into the window and the right tail
solves for the exact factor 1/(exp(2αT)-1).

The measure-preserving shear (t,r) ↦ (t,t+r) sends the surviving region
to the exterior rectangle. This proves absolute integrability of each
weighted correlation and factors its integral into two exponential
moments. Odd reflection sends those moments to opposite sinh moments,
fixing the negative boundary sign. Expansion of the actual square
differences cancels the two invariant mass terms and contributes the
factor two. The integrable Carleman majorant from WeilOddBoundaryNorm
then identifies the sum of all these exact differences with the literal
odd boundary form. The half-open window discards only a null endpoint.

This gives convergence of the series of differences. The maximal-domain
step still needs the return from both nonnegative exponential energy
series to their respective gamma-weighted integrals. Independent
mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryDifference

/-- The zero extension of one period, using the same half-open
representative as the circle lift. -/
def zeroWindow (T : ℝ) (p : ℝ → ℝ) : ℝ → ℝ := (Ioc (-T) T).indicator p

/-- The negatively weighted exponential moment of one period. -/
def negativeMoment (T a : ℝ) (p : ℝ → ℝ) : ℝ :=
  ∫ u in Ioc (-T) T, Real.exp (-a * u) * p u

/-- The positively weighted exponential moment of one period. -/
def positiveMoment (T a : ℝ) (p : ℝ → ℝ) : ℝ :=
  ∫ u in Ioc (-T) T, Real.exp (a * u) * p u

private theorem integral_translate_Ioi (g : ℝ → ℝ) (c d : ℝ) :
    (∫ x in Ioi c, g (x + d)) = ∫ x in Ioi (c + d), g x := by
  have hPre : (fun x : ℝ => x + d) ⁻¹' Ioi (c + d) = Ioi c := by
    ext x
    simp
  have h := (measurePreserving_add_right volume d).setIntegral_preimage_emb
    (MeasurableEquiv.addRight d).measurableEmbedding g (Ioi (c + d))
  rwa [hPre] at h

/-- The periodic exterior response is the exact geometric multiplier
times the window moment. The weighted integrability premise concerns the
full half-line beginning at the left endpoint. -/
theorem rightTail_eq_negativeMoment {T a : ℝ} (hT : 0 < T) (ha : 0 < a)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T))
    (hInt : IntegrableOn (fun u => Real.exp (-a * u) * p u) (Ioi (-T))) :
    (∫ u in Ioi T, Real.exp (-a * u) * p u) =
      negativeMoment T a p / (Real.exp (2 * a * T) - 1) := by
  let g := fun u : ℝ => Real.exp (-a * u) * p u
  let L := ∫ u in Ioi (-T), g u
  let R := ∫ u in Ioi T, g u
  let M := negativeMoment T a p
  have hOrder : -T ≤ T := by linarith
  have hSplit : L = M + R := by
    change (∫ u in Ioi (-T), g u) = (∫ u in Ioc (-T) T, g u) + ∫ u in Ioi T, g u
    rw [← Ioc_union_Ioi_eq_Ioi hOrder]
    exact setIntegral_union Ioc_disjoint_Ioi_same measurableSet_Ioi
      (hInt.mono_set Ioc_subset_Ioi_self) (hInt.mono_set (Ioi_subset_Ioi hOrder))
  have hShift : R = Real.exp (-(2 * a * T)) * L := by
    calc
      R = ∫ u in Ioi (-T), g (u + 2 * T) := by
        simpa only [show -T + 2 * T = T by ring] using
          (integral_translate_Ioi g (-T) (2 * T)).symm
      _ = ∫ u in Ioi (-T), Real.exp (-(2 * a * T)) * g u := by
        apply integral_congr_ae (Filter.Eventually.of_forall (fun u => ?_))
        dsimp only [g]
        rw [hper u, ← mul_assoc, ← Real.exp_add]
        congr 2
        ring
      _ = _ := integral_const_mul _ _
  have hScaled : Real.exp (2 * a * T) * R = L := by
    rw [hShift, ← mul_assoc, ← Real.exp_add, add_neg_cancel, Real.exp_zero, one_mul]
  have hDen : Real.exp (2 * a * T) - 1 ≠ 0 :=
    (sub_pos.mpr (Real.one_lt_exp_iff.mpr (by positivity))).ne'
  change R = M / _
  apply (eq_div_iff hDen).2
  nlinarith only [hSplit, hScaled]

/-- For an interior starting point, the exponentially weighted
periodic-minus-zero response is the exact exterior moment. -/
theorem exponential_translate_difference {T a t : ℝ} (hT : 0 < T) (ha : 0 < a)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T)) (ht : t ∈ Ioc (-T) T)
    (hInt : IntegrableOn (fun u => Real.exp (-a * u) * p u) (Ioi (-T))) :
    (∫ r in Ioi (0 : ℝ), Real.exp (-a * r) * (p (t + r) - zeroWindow T p (t + r))) =
      Real.exp (a * t) * negativeMoment T a p / (Real.exp (2 * a * T) - 1) := by
  let g := fun u : ℝ => Real.exp (-a * u) * (p u - zeroWindow T p u)
  let q := fun u : ℝ => Real.exp (-a * u) * p u
  have hZero : (∫ u in Ioi t, g u) = ∫ u in Ioi T, q u := by
    have heq : g =ᵐ[volume.restrict (Ioi t)] (Ioi T).indicator q := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      by_cases huT : u ≤ T
      · have hw : u ∈ Ioc (-T) T := ⟨ht.1.trans hu, huT⟩
        simp [g, zeroWindow, hw, huT.not_gt]
      · have hw : u ∉ Ioc (-T) T := fun h => huT h.2
        simp [g, q, zeroWindow, hw, lt_of_not_ge huT]
    rw [integral_congr_ae heq, integral_indicator measurableSet_Ioi,
      Measure.restrict_restrict measurableSet_Ioi]
    rw [Set.inter_eq_left.mpr (Ioi_subset_Ioi ht.2)]
  calc
    _ = ∫ r in Ioi (0 : ℝ), Real.exp (a * t) * g (r + t) := by
      apply integral_congr_ae (Filter.Eventually.of_forall (fun r => ?_))
      dsimp only [g]
      rw [← mul_assoc, ← Real.exp_add, add_comm r t]
      congr 2
      ring
    _ = Real.exp (a * t) * ∫ u in Ioi t, g u := by
      rw [integral_const_mul, integral_translate_Ioi, zero_add]
    _ = _ := by rw [hZero, rightTail_eq_negativeMoment hT ha hper hInt, mul_div_assoc]

/-- The exact weighted integrand of the periodic-minus-zero correlation. -/
def exteriorProduct (T a : ℝ) (p : ℝ → ℝ) (z : ℝ × ℝ) : ℝ :=
  Real.exp (-a * z.2) * (p z.1 * (p (z.1 + z.2) - zeroWindow T p (z.1 + z.2)))

/-- A measure-preserving shear sends the one-sided shift to the true
exterior rectangle. The joint correlation is absolutely integrable and
factorizes into the two actual exponential moments. -/
theorem exponential_correlation_difference_prod {T a : ℝ} (hT : 0 < T) (ha : 0 < a)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T))
    (hNegInt : IntegrableOn (fun u => Real.exp (-a * u) * p u) (Ioi (-T)))
    (hPosInt : IntegrableOn (fun u => Real.exp (a * u) * p u) (Ioc (-T) T)) :
    IntegrableOn (exteriorProduct T a p) (Ioc (-T) T ×ˢ Ioi (0 : ℝ))
        ((volume : Measure ℝ).prod volume) ∧
      (∫ z in Ioc (-T) T ×ˢ Ioi (0 : ℝ), exteriorProduct T a p z
        ∂((volume : Measure ℝ).prod volume)) =
        positiveMoment T a p * negativeMoment T a p / (Real.exp (2 * a * T) - 1) := by
  let V : Measure (ℝ × ℝ) := (volume : Measure ℝ).prod volume
  let D := Ioc (-T) T ×ˢ Ioi (0 : ℝ)
  let E := Ioc (-T) T ×ˢ Ioi T
  let F := exteriorProduct T a p
  let W := fun z : ℝ × ℝ => (Real.exp (a * z.1) * p z.1) * (Real.exp (-a * z.2) * p z.2)
  let e := MeasurableEquiv.shearAddRight ℝ
  have he (z : ℝ × ℝ) : e z = (z.1, z.1 + z.2) := rfl
  have hMP : MeasurePreserving e V V := measurePreserving_prod_add volume volume
  have hD : MeasurableSet D := measurableSet_Ioc.prod measurableSet_Ioi
  have hPre : MeasurableSet (e ⁻¹' E) := e.measurable (measurableSet_Ioc.prod measurableSet_Ioi)
  have hSame : D.indicator F = (e ⁻¹' E).indicator (W ∘ e) := by
    funext z
    by_cases hzE : z ∈ e ⁻¹' E
    · have hz : z.1 ∈ Ioc (-T) T ∧ T < z.1 + z.2 := hzE
      have hzD : z ∈ D := ⟨hz.1, by
        change 0 < z.2
        linarith [hz.1.2, hz.2]⟩
      have hzout : z.1 + z.2 ∉ Ioc (-T) T := fun h => hz.2.not_ge h.2
      rw [indicator_of_mem hzD, indicator_of_mem hzE]
      simp only [F, exteriorProduct, Function.comp_apply, he, W,
        zeroWindow, indicator_of_notMem hzout, sub_zero]
      have hExp : Real.exp (a * z.1) * Real.exp (-a * (z.1 + z.2)) = Real.exp (-a * z.2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [← hExp]
      ring
    · by_cases hzD : z ∈ D
      · have hz : z.1 ∈ Ioc (-T) T ∧ 0 < z.2 := hzD
        have hzIn : z.1 + z.2 ∈ Ioc (-T) T := ⟨by linarith [hz.1.1, hz.2],
          le_of_not_gt (fun h => hzE ⟨hz.1, h⟩)⟩
        rw [indicator_of_mem hzD, indicator_of_notMem hzE]
        simp [F, exteriorProduct, zeroWindow, hzIn]
      · rw [indicator_of_notMem hzD, indicator_of_notMem hzE]
  have hOrder : -T ≤ T := by linarith
  have hW : IntegrableOn W E V := by
    change Integrable W (((volume : Measure ℝ).prod volume).restrict E)
    rw [show E = Ioc (-T) T ×ˢ Ioi T by rfl, ← Measure.prod_restrict]
    exact hPosInt.mul_prod (hNegInt.mono_set (Ioi_subset_Ioi hOrder))
  have hWE : IntegrableOn (W ∘ e) (e ⁻¹' E) V :=
    (hMP.restrict_preimage_emb e.measurableEmbedding E).integrable_comp_of_integrable hW
  have hF : IntegrableOn F D V := by
    apply (integrable_indicator_iff hD).1
    rw [hSame]
    exact (integrable_indicator_iff hPre).2 hWE
  refine ⟨hF, ?_⟩
  change (∫ z in D, F z ∂V) = _
  rw [← integral_indicator hD, hSame, integral_indicator hPre]
  calc
    _ = ∫ z in E, W z ∂V := hMP.setIntegral_preimage_emb e.measurableEmbedding W E
    _ = positiveMoment T a p * ∫ u in Ioi T, Real.exp (-a * u) * p u :=
      setIntegral_prod_mul (μ := volume) (ν := volume)
        (fun u : ℝ => Real.exp (a * u) * p u) (fun u : ℝ => Real.exp (-a * u) * p u)
        (Ioc (-T) T) (Ioi T)
    _ = _ := by rw [rightTail_eq_negativeMoment hT ha hper hNegInt, mul_div_assoc]

/-- The periodic-minus-zero correlation under one exponential, in the
actual order of shift integration. The shift variable stays on the whole
positive half-line. -/
theorem exponential_correlation_difference {T a : ℝ} (hT : 0 < T) (ha : 0 < a)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T))
    (hNegInt : IntegrableOn (fun u => Real.exp (-a * u) * p u) (Ioi (-T)))
    (hPosInt : IntegrableOn (fun u => Real.exp (a * u) * p u) (Ioc (-T) T)) :
    (∫ r in Ioi (0 : ℝ), Real.exp (-a * r) *
      ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r))) =
      positiveMoment T a p * negativeMoment T a p / (Real.exp (2 * a * T) - 1) := by
  obtain ⟨hInt, hValue⟩ := exponential_correlation_difference_prod hT ha hper hNegInt hPosInt
  change Integrable (exteriorProduct T a p)
    (((volume : Measure ℝ).prod volume).restrict (Ioc (-T) T ×ˢ Ioi (0 : ℝ))) at hInt
  rw [← Measure.prod_restrict] at hInt hValue
  rw [integral_prod_symm _ hInt] at hValue
  simpa only [exteriorProduct, integral_const_mul] using hValue

private theorem weightedIntervalIntegrable {p : ℝ → ℝ} {T : ℝ}
    (hT : 0 < T) (hp : IntegrableOn p (Ioc (-T) T)) (a : ℝ) :
    IntervalIntegrable (fun t => Real.exp (a * t) * p t) volume (-T) T :=
  IntervalIntegrable.continuousOn_mul
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : -T ≤ T)).2 hp)
    (by fun_prop)

/-- An integrable periodic window has a convergent exterior exponential
tail. Each translated window costs exactly one additional geometric factor. -/
theorem integrableOn_periodic_exp_neg {T a : ℝ} (hT : 0 < T) (ha : 0 < a)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T))
    (hp : IntegrableOn p (Ioc (-T) T)) :
    IntegrableOn (fun u => Real.exp (-a * u) * p u) (Ioi (-T)) := by
  let L := 2 * T
  let q := Real.exp (-a * L)
  let g := fun u : ℝ => Real.exp (-a * u) * p u
  let M := ∫ u in (-T)..T, ‖g u‖
  let b := fun n : ℕ => -T + (n : ℝ) * L
  have hL : 0 < L := by dsimp [L]; positivity
  have hOrd : -T ≤ T := by linarith
  have hpI : IntervalIntegrable p volume (-T) ((-T) + L) := by
    rw [show -T + L = T by dsimp [L]; ring]
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hOrd).2 hp
  have hg (u v : ℝ) : IntervalIntegrable g volume u v :=
    (hper.intervalIntegrable hL.ne' hpI u v).continuousOn_mul (by fun_prop)
  have hM : 0 ≤ M := intervalIntegral.integral_nonneg_of_forall hOrd (fun _ => norm_nonneg _)
  have hStep (n : ℕ) : (∫ u in b n..b (n + 1), ‖g u‖) = q ^ n * M := by
    let d := (n : ℝ) * L
    have hB0 : b n = -T + d := rfl
    have hB1 : b (n + 1) = T + d := by dsimp [b, d, L]; push_cast; ring
    have hpShift (u : ℝ) : p (u + d) = p u := by
      simpa only [d, nsmul_eq_mul, L] using (hper.nsmul n) u
    rw [hB0, hB1, ← intervalIntegral.integral_comp_add_right (fun u => ‖g u‖) d]
    calc
      _ = ∫ u in (-T)..T, q ^ n * ‖g u‖ := by
        apply intervalIntegral.integral_congr
        intro u _
        dsimp only [g]
        rw [hpShift, show -a * (u + d) = -a * d + -a * u by ring,
          Real.exp_add, mul_assoc, norm_mul, Real.norm_eq_abs (Real.exp (-a * d)),
          abs_of_pos (Real.exp_pos _)]
        congr 1
        dsimp [q, d]
        rw [← Real.exp_nat_mul]
        congr 1
        ring
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hPartial (n : ℕ) :
      (∫ u in (-T)..b n, ‖g u‖) = M * ∑ k ∈ Finset.range n, q ^ k := by
    induction n with
    | zero => simp [b]
    | succ n ih =>
        calc
          _ = (∫ u in (-T)..b n, ‖g u‖) + ∫ u in b n..b (n + 1), ‖g u‖ :=
            (intervalIntegral.integral_add_adjacent_intervals
              (hg _ _).norm (hg _ _).norm).symm
          _ = _ := by rw [ih, hStep, Finset.sum_range_succ]; ring
  have hq0 : 0 ≤ q := Real.exp_nonneg _
  have hq1 : q < 1 := Real.exp_lt_one_iff.mpr (mul_neg_of_neg_of_pos (neg_lt_zero.mpr ha) hL)
  have hqSum := summable_geometric_of_lt_one hq0 hq1
  have hb : Tendsto b atTop atTop := by
    dsimp [b]
    exact tendsto_atTop_add_const_left _ _
      (tendsto_natCast_atTop_atTop.atTop_mul_const hL)
  refine integrableOn_Ioi_of_intervalIntegral_norm_bounded (M * ∑' k : ℕ, q ^ k) (-T)
    (fun n => (hg (-T) (b n)).1) hb (Eventually.of_forall (fun n => ?_))
  rw [hPartial]
  exact mul_le_mul_of_nonneg_left
    (hqSum.sum_le_tsum _ (fun k _ => pow_nonneg hq0 k)) hM

/-- On an odd window, the positively weighted moment is twice the positive
half sinh moment. The reflection hypothesis only uses interior points. -/
theorem positiveMoment_eq_sinh {T : ℝ} (hT : 0 < T) {p : ℝ → ℝ}
    (hp : IntegrableOn p (Ioc (-T) T)) (hOdd : ∀ t ∈ Ioo 0 T, p (-t) = -p t) (a : ℝ) :
    positiveMoment T a p = 2 * ∫ t in Ioo 0 T, Real.sinh (a * t) * p t := by
  let f := fun t : ℝ => Real.exp (a * t) * p t
  let g := fun t : ℝ => Real.exp (-a * t) * p t
  have hOrd : -T ≤ T := by linarith
  have hpRight : IntegrableOn p (Ioc 0 T) :=
    hp.mono_set (Ioc_subset_Ioc_left (by linarith))
  have hpLeft : IntegrableOn p (Ioc (-T) 0) := hp.mono_set (Ioc_subset_Ioc_right hT.le)
  have hR : IntervalIntegrable f volume 0 T :=
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).2 hpRight).continuousOn_mul (by fun_prop)
  have hL : IntervalIntegrable f volume (-T) 0 :=
    IntervalIntegrable.continuousOn_mul
      ((intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith)).2 hpLeft)
      (by fun_prop)
  have hG : IntervalIntegrable g volume 0 T :=
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).2 hpRight).continuousOn_mul (by fun_prop)
  have hReflect : (∫ t in (-T)..0, f t) = -(∫ t in 0..T, g t) := by
    calc
      _ = ∫ t in 0..T, f (-t) := by
        simpa only [neg_neg, neg_zero] using
          (intervalIntegral.integral_comp_neg (a := (0 : ℝ)) (b := T) f).symm
      _ = ∫ t in 0..T, -g t := by
        apply intervalIntegral.integral_congr_Ioo_of_le hT.le
        intro t ht
        simp only [f, g, hOdd t ht, mul_neg, neg_mul]
      _ = _ := intervalIntegral.integral_neg
  change (∫ t in Ioc (-T) T, f t) = _
  rw [← intervalIntegral.integral_of_le hOrd,
    ← intervalIntegral.integral_add_adjacent_intervals hL hR, hReflect]
  calc
    _ = (∫ t in 0..T, f t) - (∫ t in 0..T, g t) := by ring
    _ = ∫ t in 0..T, f t - g t := (intervalIntegral.integral_sub hR hG).symm
    _ = ∫ t in 0..T, 2 * (Real.sinh (a * t) * p t) := by
      apply intervalIntegral.integral_congr
      intro t _
      simp only [f, g, Real.sinh_eq, neg_mul]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_of_le hT.le,
        integral_Ioc_eq_integral_Ioo]

/-- For one actual gamma exponent the correlation difference equals the
literal signed hyperbolic term on the positive half. The factor two
in the jump energy is supplied by the usual correlation expansion. -/
theorem exponential_correlation_difference_eq_oddTerm {T : ℝ} (hT : 0 < T) (j : ℕ)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T))
    (hOdd : ∀ t ∈ Ioo 0 T, p (-t) = -p t)
    (hp : IntegrableOn p (Ioc (-T) T)) :
    (∫ r in Ioi (0 : ℝ), Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) *
      ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r))) =
      ∫ z in Ioo 0 T ×ˢ Ioo 0 T,
        -OddBoundaryNorm.positiveTerm T z.1 z.2 j * p z.1 * p z.2
        ∂((volume : Measure ℝ).prod volume) := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let C := Real.exp (2 * a * T) - 1
  let s := fun t : ℝ => Real.sinh (a * t) * p t
  have ha : 0 < a := by dsimp [a]; positivity
  have hNegInt := integrableOn_periodic_exp_neg hT ha hper hp
  have hOrder : -T ≤ T := by linarith
  have hPosInt : IntegrableOn (fun t => Real.exp (a * t) * p t) (Ioc (-T) T) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hOrder).1 (weightedIntervalIntegrable hT hp a)
  have hPos : positiveMoment T a p = 2 * ∫ t in Ioo 0 T, s t :=
    positiveMoment_eq_sinh hT hp hOdd a
  have hNeg : negativeMoment T a p = -(2 * ∫ t in Ioo 0 T, s t) := by
    change positiveMoment T (-a) p = _
    rw [positiveMoment_eq_sinh hT hp hOdd]
    simp only [neg_mul, Real.sinh_neg, s, integral_neg]
    ring
  change (∫ r in Ioi (0 : ℝ), Real.exp (-a * r) *
    ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r))) = _
  rw [exponential_correlation_difference hT ha hper hNegInt hPosInt, hPos, hNeg]
  have hProduct :
      (∫ z in Ioo 0 T ×ˢ Ioo 0 T,
        -OddBoundaryNorm.positiveTerm T z.1 z.2 j * p z.1 * p z.2
        ∂((volume : Measure ℝ).prod volume)) =
        (-4 / C) * (∫ t in Ioo 0 T, s t) * ∫ t in Ioo 0 T, s t := by
    calc
      _ = ∫ z in Ioo 0 T ×ˢ Ioo 0 T, (-4 / C) * (s z.1 * s z.2)
          ∂((volume : Measure ℝ).prod volume) := by
        apply integral_congr_ae (Filter.Eventually.of_forall (fun z => ?_))
        dsimp [OddBoundaryNorm.positiveTerm, a, C, s]
        ring
      _ = _ := by
        rw [integral_const_mul, setIntegral_prod_mul s s]
        ring
  rw [hProduct]
  change 2 * (∫ t in Ioo 0 T, s t) * -(2 * ∫ t in Ioo 0 T, s t) / C = _
  ring

private theorem positiveTerm_nonneg {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) (j : ℕ) :
    0 ≤ OddBoundaryNorm.positiveTerm T t s j := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  have ha : 0 < a := by dsimp [a]; positivity
  have hT := ht.1.trans ht.2
  change 0 ≤ 4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1)
  have hDen : 0 ≤ Real.exp (2 * a * T) - 1 :=
    sub_nonneg.mpr (Real.one_le_exp_iff.mpr (by positivity))
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num)
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le ht.1.le)))
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le hs.1.le))) hDen

/-- The exponential boundary terms sum to the literal kernel integral. The
dominating function is the integrable magnitude of that same kernel applied
to the two coordinates, so all remote terms are included. -/
theorem hasSum_oddTerm_integrals (T : ℝ) (p : ℝ → ℝ) (hp : Measurable p)
    (hp2 : IntegrableOn (fun t => p t ^ 2) (Ioo 0 T)) :
    HasSum (fun j : ℕ => ∫ z in Ioo 0 T ×ˢ Ioo 0 T,
      -OddBoundaryNorm.positiveTerm T z.1 z.2 j * p z.1 * p z.2
      ∂((volume : Measure ℝ).prod volume))
      (∫ z in Ioo 0 T ×ˢ Ioo 0 T, OddBoundaryNorm.oddKernel T z.1 z.2 * p z.1 * p z.2
        ∂((volume : Measure ℝ).prod volume)) := by
  let S := Ioo 0 T
  let ν := volume.restrict S
  let μ := ν.prod ν
  let F := fun (j : ℕ) (z : ℝ × ℝ) =>
    -OddBoundaryNorm.positiveTerm T z.1 z.2 j * p z.1 * p z.2
  let G := fun z : ℝ × ℝ => OddBoundaryNorm.oddKernel T z.1 z.2 * p z.1 * p z.2
  have hG : Integrable G μ := (OddBoundaryNorm.oddKernel_quadratic_bound T p hp hp2).1
  have hInterior : ∀ᵐ t ∂ν, t ∈ S := ae_restrict_mem measurableSet_Ioo
  have hPair : ∀ᵐ z ∂μ, z ∈ S ×ˢ S := by
    apply (Measure.ae_prod_mem_iff_ae_ae_mem (measurableSet_Ioo.prod measurableSet_Ioo)).2
    filter_upwards [hInterior] with t ht
    exact hInterior.mono (fun _ hs => ⟨ht, hs⟩)
  have hNorm {z : ℝ × ℝ} (hz : z ∈ S ×ˢ S) (j : ℕ) :
      ‖F j z‖ = OddBoundaryNorm.positiveTerm T z.1 z.2 j * |p z.1| * |p z.2| := by
    simp [F, Real.norm_eq_abs, abs_of_nonneg (positiveTerm_nonneg hz.1 hz.2 j)]
  have hMeas (j : ℕ) : AEStronglyMeasurable (F j) μ := by
    apply Measurable.aestronglyMeasurable
    dsimp [F, OddBoundaryNorm.positiveTerm]
    fun_prop
  have hBoundSum : ∀ᵐ z ∂μ, Summable (fun j => ‖F j z‖) := by
    filter_upwards [hPair] with z hz
    simpa only [hNorm hz] using
      ((OddBoundaryNorm.positiveTerm_summable hz.1 hz.2).mul_right |p z.1|).mul_right |p z.2|
  have hBoundInt : Integrable (fun z => ∑' j, ‖F j z‖) μ := by
    apply hG.norm.congr
    filter_upwards [hPair] with z hz
    simp_rw [hNorm hz]
    rw [tsum_mul_right, tsum_mul_right]
    simp [G, OddBoundaryNorm.oddKernel, Real.norm_eq_abs,
      abs_of_nonneg (tsum_nonneg (positiveTerm_nonneg hz.1 hz.2))]
  have hLimit : ∀ᵐ z ∂μ, HasSum (fun j => F j z) (G z) := by
    filter_upwards [hPair] with z hz
    exact (((OddBoundaryNorm.positiveTerm_summable hz.1 hz.2).hasSum.neg).mul_right
      (p z.1)).mul_right (p z.2)
  rw [← Measure.prod_restrict]
  exact hasSum_integral_of_dominated_convergence (fun j z => ‖F j z‖) hMeas
    (fun _ => Filter.Eventually.of_forall (fun _ => le_rfl)) hBoundSum hBoundInt hLimit

/-- The sum of all exact one-sided exponential correlation differences is
the signed odd boundary form. Each component uses the literal periodic
translate and its zero extension. -/
theorem hasSum_exponential_correlation_differences {T : ℝ} (hT : 0 < T)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T)) (hp : Measurable p)
    (hOdd : ∀ t ∈ Ioo 0 T, p (-t) = -p t) (hp1 : IntegrableOn p (Ioc (-T) T))
    (hp2 : IntegrableOn (fun t => p t ^ 2) (Ioo 0 T)) :
    HasSum (fun j : ℕ => ∫ r in Ioi (0 : ℝ), Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) *
      ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r)))
      (∫ z in Ioo 0 T ×ˢ Ioo 0 T, OddBoundaryNorm.oddKernel T z.1 z.2 * p z.1 * p z.2
        ∂((volume : Measure ℝ).prod volume)) := by
  simp_rw [exponential_correlation_difference_eq_oddTerm hT _ hper hOdd hp1]
  exact hasSum_oddTerm_integrals T p hp hp2

private theorem integrable_mul_of_sq {μ : Measure ℝ} {f g : ℝ → ℝ}
    (hf : Measurable f) (hg : Measurable g)
    (hf2 : Integrable (fun t => f t ^ 2) μ) (hg2 : Integrable (fun t => g t ^ 2) μ) :
    Integrable (fun t => f t * g t) μ := by
  refine ((hf2.add hg2).div_const 2).mono' (hf.mul hg).aestronglyMeasurable ?_
  filter_upwards with t
  change ‖f t * g t‖ ≤ (f t ^ 2 + g t ^ 2) / 2
  rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs]
  have h := sq_nonneg (|f t| - |g t|)
  rw [sub_sq, sq_abs, sq_abs] at h
  linarith

private theorem integral_sq_sub_eq {μ : Measure ℝ} {f g : ℝ → ℝ}
    (hf : Measurable f) (hg : Measurable g)
    (hf2 : Integrable (fun t => f t ^ 2) μ) (hg2 : Integrable (fun t => g t ^ 2) μ) :
    (∫ t, (g t - f t) ^ 2 ∂μ) =
      (∫ t, g t ^ 2 ∂μ) + (∫ t, f t ^ 2 ∂μ) - 2 * ∫ t, f t * g t ∂μ := by
  have hfg := integrable_mul_of_sq hf hg hf2 hg2
  have hEq : (fun t => (g t - f t) ^ 2) =
      fun t => g t ^ 2 + f t ^ 2 - 2 * (f t * g t) := by
    funext t
    ring
  have hSub := integral_sub (hg2.add hf2) (hfg.const_mul 2)
  simp only [Pi.add_apply] at hSub
  rw [hEq, hSub, integral_add hg2 hf2, integral_const_mul]

/-- The mass terms in the periodic and whole-line jump integrals cancel.
The remaining signed difference is twice the literal exterior correlation. -/
theorem shiftEnergy_difference_eq_correlation {T : ℝ} (hT : 0 < T)
    {p : ℝ → ℝ} (hper : Function.Periodic p (2 * T)) (hp : Measurable p)
    (hf : MemLp (zeroWindow T p) 2 volume) (r : ℝ) :
    OddWrapEnergy.zeroShiftEnergy r (zeroWindow T p) -
      (∫ t in Ioc (-T) T, (p (t + r) - p t) ^ 2) =
      2 * ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r)) := by
  let f := zeroWindow T p
  let S := Ioc (-T) T
  have hS : MeasurableSet S := measurableSet_Ioc
  have hfM : Measurable f := hp.indicator hS
  have hf2 : Integrable (fun t => f t ^ 2) := hf.integrable_sq
  have hfShift2 : Integrable (fun t => f (t + r) ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hf2
  have hP2 : IntegrableOn (fun t => p t ^ 2) S := by
    apply hf2.integrableOn.congr_fun (fun t ht => ?_) hS
    change t ∈ Ioc (-T) T at ht
    simp [f, zeroWindow, ht]
  have hPerSq : Function.Periodic (fun t => p t ^ 2) (2 * T) := fun t =>
    congrArg (fun x : ℝ => x ^ 2) (hper t)
  have hOrd : -T ≤ T := by linarith
  have hPeriod : -T + 2 * T = T := by ring
  have hPInterval : IntervalIntegrable (fun t => p t ^ 2) volume (-T) (-T + 2 * T) := by
    rw [hPeriod]
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hOrd).2 hP2
  have hPTranslatedInterval : IntervalIntegrable (fun t => p t ^ 2) volume (-T + r) (T + r) :=
    hPerSq.intervalIntegrable (by positivity : (0 : ℝ) < 2 * T).ne' hPInterval _ _
  have hPShiftInterval : IntervalIntegrable (fun t => p (t + r) ^ 2) volume (-T) T := by
    simpa only [add_sub_cancel_right] using hPTranslatedInterval.comp_add_right r
  have hPShift2 : IntegrableOn (fun t => p (t + r) ^ 2) S :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hOrd).1 hPShiftInterval
  have hPShiftMass : (∫ t in S, p (t + r) ^ 2) = ∫ t in S, p t ^ 2 := by
    change (∫ t in Ioc (-T) T, p (t + r) ^ 2) = ∫ t in Ioc (-T) T, p t ^ 2
    simp only [← intervalIntegral.integral_of_le hOrd]
    rw [intervalIntegral.integral_comp_add_right (fun t => p t ^ 2) r]
    simpa only [hPeriod, show -T + r + 2 * T = T + r by ring] using
      hPerSq.intervalIntegral_add_eq (-T + r) (-T)
  have hPShiftM : Measurable (fun t => p (t + r)) := hp.comp (measurable_id.add measurable_const)
  have hfShiftM : Measurable (fun t => f (t + r)) := hfM.comp (measurable_id.add measurable_const)
  have hMass : (∫ t : ℝ, f t ^ 2) = ∫ t in S, p t ^ 2 := by
    rw [← integral_indicator hS]
    apply integral_congr_ae (Filter.Eventually.of_forall (fun t => ?_))
    by_cases ht : t ∈ Ioc (-T) T <;> simp [f, zeroWindow, S, ht]
  have hCorr : (∫ t : ℝ, f t * f (t + r)) = ∫ t in S, p t * f (t + r) := by
    rw [← integral_indicator hS]
    apply integral_congr_ae (Filter.Eventually.of_forall (fun t => ?_))
    by_cases ht : t ∈ Ioc (-T) T <;> simp [f, zeroWindow, S, ht]
  have hExterior :
      (∫ t in S, p t * (p (t + r) - f (t + r))) =
        (∫ t in S, p t * p (t + r)) - (∫ t in S, p t * f (t + r)) := by
    simp only [mul_sub]
    exact integral_sub (integrable_mul_of_sq hp hPShiftM hP2 hPShift2)
      (integrable_mul_of_sq hp hfShiftM hP2 hfShift2.integrableOn)
  change (∫ t : ℝ, (f (t + r) - f t) ^ 2) - (∫ t in S, (p (t + r) - p t) ^ 2) = _
  rw [integral_sq_sub_eq hfM hfShiftM hf2 hfShift2, integral_sq_sub_eq hp hPShiftM hP2 hPShift2,
    integral_add_right_eq_self (fun t : ℝ => f t ^ 2) r, hMass, hCorr, hPShiftMass, hExterior]
  ring

/-- The real-line periodic representative of the existing centered lift. -/
def periodicRep (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  OddWrapPeriodLift.centeredLift T hT f (u : AddCircle (2 * T))

theorem periodic_periodicRep (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) :
    Function.Periodic (periodicRep T hT f) (2 * T) := by
  intro u
  unfold periodicRep
  rw [AddCircle.coe_add_period]

theorem periodicRep_eq {T : ℝ} (hT : 0 < T) (f : ℝ → ℝ) {u : ℝ}
    (hu : u ∈ Ioc (-T) T) : periodicRep T hT f u = f u := by
  let : Fact (0 < 2 * T) := ⟨by positivity⟩
  apply AddCircle.liftIoc_coe_apply
  rwa [show -T + 2 * T = T by ring]

theorem measurable_periodicRep {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ} (hf : Measurable f) :
    Measurable (periodicRep T hT f) := by
  let : Fact (0 < 2 * T) := ⟨by positivity⟩
  let e := AddCircle.measurableEquivIoc (2 * T) (-T)
  change Measurable (f ∘ Subtype.val ∘ e ∘ fun u : ℝ => (u : AddCircle (2 * T)))
  exact hf.comp (measurable_subtype_coe.comp (e.measurable.comp AddCircle.measurable_mk'))

theorem zeroWindow_periodicRep_ae {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ}
    (hsupport : ∀ᵐ u : ℝ, u ∉ Icc (-T) T → f u = 0) :
    zeroWindow T (periodicRep T hT f) =ᵐ[volume] f := by
  have hEndpoint : ∀ᵐ u : ℝ, u ≠ -T := by rw [ae_iff]; simp
  filter_upwards [hsupport, hEndpoint] with u hu hne
  by_cases h : u ∈ Ioc (-T) T
  · simp [zeroWindow, h, periodicRep_eq hT f h]
  · have hout : u ∉ Icc (-T) T := fun hm => h ⟨hm.1.lt_of_ne hne.symm, hm.2⟩
    simp [zeroWindow, h, hu hout]

/-- Exact jump comparison for the actual circle lift and actual zero
extension, including the half-open endpoint convention. -/
theorem actual_shiftEnergy_difference_eq_correlation {T : ℝ} (hT : 0 < T)
    {f : ℝ → ℝ} (hf : Measurable f) (hf2 : MemLp f 2 volume)
    (hsupport : ∀ᵐ u : ℝ, u ∉ Icc (-T) T → f u = 0) (r : ℝ) :
    let p := periodicRep T hT f
    OddWrapEnergy.zeroShiftEnergy r f - OddWrapPeriodLift.periodicJumpEnergy T hT r f =
      2 * ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r)) := by
  let p := periodicRep T hT f
  have hfAE := zeroWindow_periodicRep_ae hT hsupport
  have hShift := shiftEnergy_difference_eq_correlation hT (periodic_periodicRep T hT f)
    (measurable_periodicRep hT hf) ((memLp_congr_ae hfAE).mpr hf2) r
  rw [OddWrapEnergy.zeroShiftEnergy_congr_ae r hfAE] at hShift
  have hPeriodic : OddWrapPeriodLift.periodicJumpEnergy T hT r f =
      ∫ t in Ioc (-T) T, (p (t + r) - p t) ^ 2 := by
    unfold OddWrapPeriodLift.periodicJumpEnergy
    rw [integral_Icc_eq_integral_Ioc]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    dsimp only
    rw [← AddCircle.coe_add]
    change (p (t + r) - f t) ^ 2 = _
    rw [show p t = f t from periodicRep_eq hT f ht]
  rwa [hPeriodic]

/-- After each exact jump comparison, summing the exponential differences
returns the original signed boundary form. The full-window energy uses the
factor two relating it to the positive-half quadratic integral. -/
theorem hasSum_actual_exponential_jump_differences {T : ℝ} (hT : 0 < T)
    {f : ℝ → ℝ} (hf : Measurable f) (hf2 : MemLp f 2 volume)
    (hsupport : ∀ᵐ u : ℝ, u ∉ Icc (-T) T → f u = 0)
    (hOdd : ∀ t ∈ Ioo 0 T, f (-t) = -f t) :
    HasSum (fun j : ℕ => ∫ r in Ioi (0 : ℝ), Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) *
      (OddWrapEnergy.zeroShiftEnergy r f - OddWrapPeriodLift.periodicJumpEnergy T hT r f))
      (2 * ∫ z in Ioo 0 T ×ˢ Ioo 0 T, OddBoundaryNorm.oddKernel T z.1 z.2 * f z.1 * f z.2
        ∂((volume : Measure ℝ).prod volume)) := by
  let p := periodicRep T hT f
  let S := Ioc (-T) T
  have hEq : EqOn p f S := fun _ hu => periodicRep_eq hT f hu
  have hpOdd (t : ℝ) (ht : t ∈ Ioo 0 T) : p (-t) = -p t := by
    rw [hEq (show -t ∈ S from ⟨by linarith [ht.2], by linarith [ht.1]⟩),
      hEq (show t ∈ S from ⟨by linarith [ht.1], ht.2.le⟩), hOdd t ht]
  let : IsFiniteMeasure (volume.restrict S) := ⟨by
    rw [Measure.restrict_apply_univ]
    dsimp only [S]
    rw [Real.volume_Ioc]
    exact ENNReal.ofReal_lt_top⟩
  have hf1 : IntegrableOn f S :=
    memLp_one_iff_integrable.mp ((hf2.restrict S).mono_exponent (by norm_num))
  have hp1 : IntegrableOn p S := hf1.congr_fun (fun t ht => (hEq ht).symm) measurableSet_Ioc
  have hSq : IntegrableOn (fun t => p t ^ 2) (Ioo 0 T) := by
    refine hf2.integrable_sq.integrableOn.congr_fun (fun t ht => ?_) measurableSet_Ioo
    rw [hEq (show t ∈ S from ⟨by linarith [ht.1], ht.2.le⟩)]
  have hB := hasSum_exponential_correlation_differences hT (periodic_periodicRep T hT f)
    (measurable_periodicRep hT hf) hpOdd hp1 hSq
  have hBoundary :
      (∫ z in Ioo 0 T ×ˢ Ioo 0 T, OddBoundaryNorm.oddKernel T z.1 z.2 * p z.1 * p z.2
        ∂((volume : Measure ℝ).prod volume)) =
      ∫ z in Ioo 0 T ×ˢ Ioo 0 T, OddBoundaryNorm.oddKernel T z.1 z.2 * f z.1 * f z.2
        ∂((volume : Measure ℝ).prod volume) := by
    apply setIntegral_congr_fun (measurableSet_Ioo.prod measurableSet_Ioo)
    intro z hz
    dsimp only
    rw [hEq (show z.1 ∈ S from ⟨by linarith [hz.1.1], hz.1.2.le⟩),
      hEq (show z.2 ∈ S from ⟨by linarith [hz.2.1], hz.2.2.le⟩)]
  rw [hBoundary] at hB
  convert hB.mul_left 2 using 1
  funext j
  rw [← integral_const_mul]
  apply integral_congr_ae (Filter.Eventually.of_forall (fun r => ?_))
  rw [actual_shiftEnergy_difference_eq_correlation hT hf hf2 hsupport r]
  change _ = 2 * (Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) *
    ∫ t in Ioc (-T) T, p t * (p (t + r) - zeroWindow T p (t + r)))
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryDifference
