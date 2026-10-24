import RootActualPeriodicTransportKernel
import SourceActualPeriodicInteriorAbel

/-!
The original twisted source cell has a genuine physical-variable profile.
Its derivative is the complete transported kernel divided by x squared;
no arithmetic interpolation or extra correlation derivative is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
open SourcePairing RootActualDoubleAdjointTransfer RootActualCovariantWorkKernel
open MeasureTheory Set
open SourceActualDoubleMixedKernel SourceActualCovariantKernel
open RootActualPeriodicTransportKernel SourceActualPeriodicInteriorAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization RH16IndependentChallengeNext RH16FiveCesaro
open ActualSupportEdgeMangoldtRow RootActualUpperColumnWindow
noncomputable section

/-- The actual physical source test for one closed integer column cell. -/
def actualPeriodicPhysicalCellProfile (A t x : ℝ) : ℝ :=
  actualTwistedTimeDensity A t (Real.log x) / x

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

private theorem twisted_column_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (actualTwistedTimeDensity A t)
      (covariantMixedDerivative (actualLogMixedDensity A) t s -
        actualTwistedTimeDensity A t s / 2) s := by
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (jet_hasDerivAt hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hd := he.mul (h3.sub (h1.div_const 4))
  rw [actual_covariant_ordinary_work_kernel A hA t s]
  unfold actualTwistedTimeDensity
  convert hd using 1 <;> try rfl
  simp only [Function.comp_apply, id_eq, Pi.sub_apply, Pi.neg_apply]
  ring

/-- The true physical derivative needs only the original global C4 correlation. -/
theorem actualPeriodicPhysicalCellProfile_hasDerivAt {A x : ℝ}
    (hA : 0 < A) (hx : 0 < x) (t : ℝ) :
    HasDerivAt (actualPeriodicPhysicalCellProfile A t)
      ((covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2) x := by
  have hc := (twisted_column_hasDerivAt hA t (Real.log x)).comp x
    (Real.hasDerivAt_log hx.ne')
  have hd := hc.div (hasDerivAt_id x) hx.ne'
  convert hd using 1 <;> try rfl
  simp only [id_eq, Function.comp_apply]
  field_simp
  ring

/-- The actual cell-profile derivative is exactly the retained four-sector transport. -/
theorem actualPeriodicPhysicalCellProfile_deriv {A x : ℝ}
    (hA : 0 < A) (hx : 0 < x) (t : ℝ) :
    deriv (actualPeriodicPhysicalCellProfile A t) x =
      (covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2 :=
  (actualPeriodicPhysicalCellProfile_hasDerivAt hA hx t).deriv

/-- Its genuine positive physical-column derivative has an unconditional weighted norm budget. -/
theorem actualPeriodicPhysicalCellProfile_deriv_abs_le {A t x : ℝ}
    (hA : 91 ≤ A) (hx : 0 < x) (hz : 0 ≤ t + Real.log x) :
    |deriv (actualPeriodicPhysicalCellProfile A t) x| ≤
      Real.exp (t / 2) * Real.exp (-5 * Real.log x / 2) * (4 / A) := by
  rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hx t]
  have he : Real.exp (-Real.log x) = x⁻¹ := by rw [Real.exp_neg, Real.exp_log hx]
  have hb := actualPeriodicWeightedTransport_abs_le hA hz
  rw [he, abs_mul, abs_of_pos (inv_pos.mpr hx)] at hb
  have hm := mul_le_mul_of_nonneg_left hb (inv_pos.mpr hx).le
  have hleft : x⁻¹ * (x⁻¹ *
      |covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)|) =
      |(covariantMixedDerivative (actualLogMixedDensity A) t (Real.log x) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log x)) / x ^ 2| := by
    rw [abs_div, abs_of_pos (sq_pos_of_pos hx)]
    ring
  rw [hleft] at hm
  calc
    _ ≤ _ := hm
    _ = _ := by
      rw [← he, show Real.exp (-5 * Real.log x / 2) =
        Real.exp (-Real.log x) * Real.exp (-3 * Real.log x / 2) by
          rw [← Real.exp_add]; congr 1; ring]
      ring

/-- Every genuine closed source log cell equals its physical-variable integral. -/
theorem actualPeriodicColumnEndpointWeight_eq_physical {A : ℝ} (hA : 0 < A)
    (t : ℝ) (M : ℕ) (hM : 2 ≤ M) :
    actualPeriodicColumnEndpointWeight A t M =
      ∫ x in ((M : ℝ) - 1)..(M : ℝ), actualPeriodicPhysicalCellProfile A t x := by
  have hm : (2 : ℝ) ≤ (M : ℝ) := by exact_mod_cast hM
  have hlb : (M : ℝ) - 1 ≤ (M : ℝ) := by linarith
  have hp (x : ℝ) (hx : x ∈ uIcc ((M : ℝ) - 1) (M : ℝ)) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    linarith [hx.1]
  have hi : ContinuousOn (fun x : ℝ => x⁻¹) (uIcc ((M : ℝ) - 1) (M : ℝ)) :=
    continuousOn_id.inv₀ (fun x hx => (hp x hx).ne')
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    rw [continuous_iff_continuousAt]
    intro s
    exact (twisted_column_hasDerivAt hA t s).continuousAt
  have h := intervalIntegral.integral_comp_mul_deriv
    (fun x hx => Real.hasDerivAt_log (hp x hx).ne') hi ht
  unfold actualPeriodicColumnEndpointWeight actualPeriodicPhysicalCellProfile
  simpa only [Function.comp_apply, div_eq_mul_inv] using h.symm

/-- The actual physical profile is C1 on every genuine positive compact interval. -/
theorem actualPeriodicPhysicalCellProfile_contDiffOn {A l : ℝ} (hA : 0 < A)
    (hl : 0 < l) (b t : ℝ) :
    ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (Icc l b) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : ContDiff ℝ 1 (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 1 (hc.of_le (by norm_num))
  have h3 : ContDiff ℝ 1 (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 3 (hc.of_le (by norm_num))
  have ht : ContDiff ℝ 1 (actualTwistedTimeDensity A t) := by
    unfold actualTwistedTimeDensity
    fun_prop
  have hp (x : ℝ) (hx : x ∈ Icc l b) : x ≠ 0 := (hl.trans_le hx.1).ne'
  have hg : ContDiffOn ℝ 1 Real.log (Icc l b) := contDiffOn_id.log hp
  exact (ht.comp_contDiffOn hg).div contDiffOn_id hp

/-- The source test vanishes only past its true closed upper support, including seam jets. -/
theorem actualPeriodicPhysicalCellProfile_zero_right {A t x : ℝ} (hA : 1 ≤ A)
    (hz : 2 * A ≤ t + Real.log x) : actualPeriodicPhysicalCellProfile A t x = 0 := by
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  rw [actualCorrelation_jet_zero_right A hA 3 _ hz,
    actualCorrelation_jet_zero_right A hA 1 _ hz]
  simp

/-- The actual cell profile has its source C1/C3 budget and complete exponential weight. -/
theorem actualPeriodicPhysicalCellProfile_abs_le {A t x : ℝ} (hA : 91 ≤ A)
    (hx : 0 < x) (hz : 0 ≤ t + Real.log x) :
    |actualPeriodicPhysicalCellProfile A t x| ≤
      Real.exp (t / 2) * Real.exp (-3 * Real.log x / 2) * (4 / A) := by
  have hAp : 0 < A := by linarith
  by_cases hs : 2 * A ≤ t + Real.log x
  · rw [actualPeriodicPhysicalCellProfile_zero_right (by linarith : 1 ≤ A) hs, abs_zero]
    positivity
  let z := t + Real.log x
  have hzs : z ≤ 2 * A := (lt_of_not_ge hs).le
  have h3 : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      134 / A ^ 3 := by
    calc
      _ ≤ 67 / A ^ 4 * (2 * A - z) := actual_correlation_third_edge_abs_le hA hzs
      _ ≤ 67 / A ^ 4 * (2 * A) :=
        mul_le_mul_of_nonneg_left (by dsimp [z]; linarith) (by positivity)
      _ = _ := by field_simp; ring
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      10 / A := by
    have hh := SourceFiveFullKappaShortReduction.actualCorrelation_first_abs_le_five hA z
    simp only [abs_of_nonneg hz] at hh
    calc
      _ ≤ 5 / A ^ 2 * z := by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hh
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4| ≤ 4 / A := by
    have hh := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4)
    rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))] at hh
    have hb : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
        iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4| ≤
        134 / A ^ 3 + (10 / A) / 4 := by nlinarith
    apply hb.trans
    apply (le_div_iff₀ hAp).2
    field_simp
    nlinarith [sq_nonneg (A - 91)]
  have he : Real.exp (-3 * Real.log x / 2) = Real.exp (-Real.log x / 2) / x := by
    rw [div_eq_mul_inv, ← Real.exp_log hx, ← Real.exp_neg, ← Real.exp_add]
    congr 1
    ring
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  rw [abs_div, abs_mul, abs_of_pos (by positivity :
    0 < Real.exp (t / 2) * Real.exp (-Real.log x / 2)), abs_of_pos hx, he]
  calc
    _ ≤ (Real.exp (t / 2) * Real.exp (-Real.log x / 2) * (4 / A)) / x :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hj (by positivity)) hx.le
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
