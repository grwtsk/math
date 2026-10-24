# Complete source: GRWTSK.Topology.GeneralTopology.ActualPeriodicEdgeTimeBudgetAttempt02.Variant632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4088dda0c16452f2f06b1a058362279adf5667e` · SHA-256 `632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualPeriodicPhysicalCell
import SourceActualPhysicalPeriodicPrimitive

/-!
True support-edge moments control the actual anchored time primitive and
signed physical periodic primitive. All four transported jet sectors and
both physical Abel endpoints remain in the estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget
open MeasureTheory Set
open SourcePairing SourceActualAdjointAbelPrimitives SourceSamplingCoefficients
open SourceActualPhysicalPeriodicPrimitive SourceActualDoubleMixedKernel
open SourceActualCovariantKernel RootActualCovariantWorkKernel RootActualDoubleAdjointTransfer
open RootActualPeriodicPhysicalCell RootActualUpperColumnWindow
open ActualSupportEdgeMangoldtRow RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
noncomputable section

/-- Genuine time norm of one actual periodic primitive endpoint. -/
def actualPeriodicEdgeEndpointMass (A u : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    |actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrimitive (vaughanCutoff A) u *
        actualPeriodicPhysicalCellProfile A t u|

/-- Genuine time norm of the full physical Abel bulk integrand. -/
def actualPeriodicEdgeDerivativeMass (A u : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    |actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrimitive (vaughanCutoff A) u *
        deriv (actualPeriodicPhysicalCellProfile A t) u|

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN⟩

private theorem support_upper_le_cutoff {A u : ℝ} (hA : 1 ≤ A) (hu : 2 ≤ u) :
    2 * A - Real.log u ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hNp : 0 < (sourceKernelCutoff A : ℝ) := by
    have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
    exact_mod_cast (lt_of_lt_of_le (vaughanCutoff_pos A hA) hUN)
  have he : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) + 1 :=
    Nat.lt_floor_add_one _
  have hN1 : 1 ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by exact_mod_cast hNp : 1 ≤ sourceKernelCutoff A)
  apply (Real.le_log_iff_exp_le hNp).2
  rw [Real.exp_sub, Real.exp_log (by linarith : 0 < u)]
  apply (div_le_iff₀ (by linarith : 0 < u)).2
  nlinarith

private theorem jet_continuous {A : ℝ} (hA : 0 < A) (j : ℕ) (hj : j ≤ 4) :
    Continuous (iteratedDeriv j (sourceCorrelation explicitSecondDerivative A)) :=
  (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv j (by exact_mod_cast hj)

private theorem profile_time_continuous {A : ℝ} (hA : 0 < A) (u : ℝ) :
    Continuous (fun t => actualPeriodicPhysicalCellProfile A t u) := by
  have h1 := jet_continuous hA 1 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  fun_prop

private theorem profile_deriv_time_continuous {A u : ℝ} (hA : 0 < A) (hu : 0 < u) :
    Continuous (fun t => deriv (actualPeriodicPhysicalCellProfile A t) u) := by
  have he : (fun t => deriv (actualPeriodicPhysicalCellProfile A t) u) =
      fun t => (covariantMixedDerivative (actualLogMixedDensity A) t (Real.log u) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log u)) / u ^ 2 := by
    funext t
    exact actualPeriodicPhysicalCellProfile_deriv hA hu t
  rw [he]
  simp only [actual_covariant_ordinary_work_kernel A hA]
  have h1 := jet_continuous hA 1 (by norm_num)
  have h2 := jet_continuous hA 2 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  have h4 := jet_continuous hA 4 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem profile_deriv_zero_right {A t u : ℝ}
    (hA : 1 ≤ A) (hu : 0 < u) (hz : 2 * A ≤ t + Real.log u) :
    deriv (actualPeriodicPhysicalCellProfile A t) u = 0 := by
  rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hu t,
    actual_covariant_ordinary_work_kernel A (by linarith : 0 < A) t (Real.log u)]
  unfold actualTwistedTimeDensity
  rw [actualCorrelation_jet_zero_right A hA 4 _ hz,
    actualCorrelation_jet_zero_right A hA 3 _ hz,
    actualCorrelation_jet_zero_right A hA 2 _ hz,
    actualCorrelation_jet_zero_right A hA 1 _ hz]
  simp

private theorem exponential_truncated_moment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) ≤
      Real.exp (L / 2) * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ)) := by
  have hi := exponential_half_integrable j
  have hn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
      0 ≤ t ^ j * Real.exp (-t / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact mul_nonneg (pow_nonneg (show 0 ≤ t from ht.le) j) (Real.exp_pos _).le
  have hm := setIntegral_mono_set (s := Ioc (0 : ℝ) L) (t := Ioi (0 : ℝ)) hi hn
    (Filter.Eventually.of_forall (fun _ ht => ht.1))
  rw [← intervalIntegral.integral_of_le hL, exponential_half_integral] at hm
  have hs := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => t ^ j * Real.exp (-t / 2)) (a := (0 : ℝ)) (b := L) L
  simp only [sub_self, sub_zero] at hs
  calc
    _ = Real.exp (L / 2) * (∫ t in 0..L, (L - t) ^ j * Real.exp (-(L - t) / 2)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      have he : Real.exp (t / 2) = Real.exp (L / 2) * Real.exp (-(L - t) / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    _ = Real.exp (L / 2) * (∫ t in 0..L, t ^ j * Real.exp (-t / 2)) := by rw [hs]
    _ ≤ _ := mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le

private theorem restrict_supported_time_norm {A u : ℝ} (hA : 1 ≤ A) (hu : 2 ≤ u)
    (F : ℝ → ℝ) (hc : Continuous F)
    (hz : ∀ t, 2 * A - Real.log u ≤ t → F t = 0)
    {B : ℝ} (hB : 0 ≤ B)
    (hb : ∀ L : ℝ, L = 2 * A - Real.log u → 0 ≤ L →
      (∫ t in 0..L, |F t|) ≤ B) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ), |F t|) ≤ B := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let L := 2 * A - Real.log u
  obtain ⟨hl, hlb⟩ := actual_orders hA
  have hLb := support_upper_le_cutoff hA hu
  by_cases hL : 0 ≤ L
  · have hrestrict := intervalIntegral.integral_mono_interval (μ := volume) hl hlb le_rfl
      (f := fun t => |F t|) (Filter.Eventually.of_forall (fun t => abs_nonneg (F t)))
      (hc.abs.intervalIntegrable 0 b)
    have htail : (∫ t in L..b, |F t|) = 0 := by
      apply intervalIntegral.integral_zero_ae
      exact Filter.Eventually.of_forall (fun t ht => by
        rw [uIoc_of_le hLb] at ht
        rw [hz t ht.1.le, abs_zero])
    have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
      (hc.abs.intervalIntegrable 0 L) (hc.abs.intervalIntegrable L b)
    rw [htail, add_zero] at hs
    exact hrestrict.trans (hs ▸ hb L rfl hL)
  · have he : (∫ t in l..b, |F t|) = 0 := by
      apply intervalIntegral.integral_zero_ae
      exact Filter.Eventually.of_forall (fun t ht => by
        rw [uIoc_of_le hlb] at ht
        rw [hz t (by dsimp only [L] at hL; linarith [ht.1]), abs_zero])
    rw [he]
    exact hB

/-- The actual C3/C1 profile has its genuine integrated support-edge gamma budget. -/
theorem actualPeriodicProfile_time_norm_le {A u : ℝ} (hA : 91 ≤ A) (hu : 2 ≤ u) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      |actualPeriodicPhysicalCellProfile A t u|) ≤
        536 * Real.exp A / (A ^ 4 * u ^ 2) := by
  have hup : 0 < u := by linarith
  apply restrict_supported_time_norm (by linarith : 1 ≤ A) hu
    (fun t => actualPeriodicPhysicalCellProfile A t u)
    (profile_time_continuous (by linarith : 0 < A) u)
    (fun t ht => actualPeriodicPhysicalCellProfile_zero_right
      (by linarith : 1 ≤ A) (by linarith)) (by positivity)
  intro L hLe hL
  have heq : (∫ t in 0..L, 67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
      ((L - t) + (L - t) ^ 3 / 24) * Real.exp (t / 2)) =
      67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
        ((∫ t in 0..L, (L - t) ^ 1 * Real.exp (t / 2)) +
          (∫ t in 0..L, (L - t) ^ 3 * Real.exp (t / 2)) / 24) := by
    rw [← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add ((by fun_prop : Continuous (fun t : ℝ =>
        (L - t) ^ 1 * Real.exp (t / 2))).intervalIntegrable 0 L)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 3 * Real.exp (t / 2) / 24)).intervalIntegrable 0 L),
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  have hm := intervalIntegral.integral_mono_on (μ := volume) hL
    ((profile_time_continuous (by linarith : 0 < A) u).abs.intervalIntegrable 0 L)
    ((by fun_prop : Continuous (fun t : ℝ => 67 / A ^ 4 / u *
      Real.exp (-Real.log u / 2) * ((L - t) + (L - t) ^ 3 / 24) *
        Real.exp (t / 2))).intervalIntegrable 0 L) (fun t ht => by
      have hz : t + Real.log u ≤ 2 * A := by linarith [ht.2]
      have h3 := actual_correlation_third_edge_abs_le (z := t + Real.log u) hA hz
      have h1 := actual_correlation_first_edge_abs_le (z := t + Real.log u) hA hz
      simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1 h3
      have hh := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
        (t + Real.log u)) (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) / 4)
      rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))] at hh
      have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) - iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
          (t + Real.log u) / 4| ≤ 67 / A ^ 4 * ((L - t) + (L - t) ^ 3 / 24) := by
        simp only [iteratedDeriv_succ, iteratedDeriv_zero] at hh ⊢
        rw [show 2 * A - (t + Real.log u) = L - t by rw [hLe]; ring] at h3 h1
        linarith
      unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
      rw [abs_div, abs_mul, abs_of_pos (by positivity :
        0 < Real.exp (t / 2) * Real.exp (-Real.log u / 2)), abs_of_pos hup]
      calc
        _ ≤ (Real.exp (t / 2) * Real.exp (-Real.log u / 2) *
          (67 / A ^ 4 * ((L - t) + (L - t) ^ 3 / 24))) / u :=
            div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hj (by positivity)) hup.le
        _ = _ := by ring)
  rw [heq] at hm
  have h1 := exponential_truncated_moment_le 1 hL
  have h3 := exponential_truncated_moment_le 3 hL
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h1 h3
  have hb : (∫ t in 0..L, |actualPeriodicPhysicalCellProfile A t u|) ≤
      536 / A ^ 4 / u * Real.exp (-Real.log u / 2) * Real.exp (L / 2) := by
    apply hm.trans
    calc
      _ ≤ 67 / A ^ 4 / u * Real.exp (-Real.log u / 2) *
          (Real.exp (L / 2) * 4 + Real.exp (L / 2) * 96 / 24) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact add_le_add h1 (div_le_div_of_nonneg_right h3 (by norm_num))
      _ = _ := by ring
  apply hb.trans_eq
  have he : Real.exp (-Real.log u / 2) * Real.exp (L / 2) = Real.exp A / u := by
    rw [← Real.exp_add, hLe,
      show -Real.log u / 2 + (2 * A - Real.log u) / 2 = A - Real.log u by ring,
      Real.exp_sub, Real.exp_log hup]
  calc
    _ = 536 / A ^ 4 / u *
        (Real.exp (-Real.log u / 2) * Real.exp (L / 2)) := by ring
    _ = _ := by rw [he]; field_simp; ring

end
end FormalResearch.RiemannHypothesis.ActualPeriodicEdgeTimeBudget
```
