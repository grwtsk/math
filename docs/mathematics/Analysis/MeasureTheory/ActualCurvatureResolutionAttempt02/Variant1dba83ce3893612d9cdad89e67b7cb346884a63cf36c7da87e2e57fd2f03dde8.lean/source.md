# Complete source: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt02.Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5f98547956f127a97508a74ba09476347994ebb` · SHA-256 `1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCurvatureBudget
import Mathlib.MeasureTheory.Function.Floor

/-! Source-bound sampled curvature readout and an explicit growing-range resolution.
The complete signed pairing is approximated; no uniform sign budget is constructed.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCurvatureResolution
open MeasureTheory Set
open scoped Interval
open ActualCurvatureBudget ActualSecondAbel BridgeLipschitz BridgeEnvelope
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

def sampledCurvatureWork (A : ℝ) (s : ℝ → ℝ) : ℝ :=
  ∫ u in 0..2*A, criticalDiscrepancyBridge A (s u)*pairedTailCurvature A u

theorem sampled_integrand_intervalIntegrable {A : ℝ} {s : ℝ → ℝ}
    (hA : 1≤A) (hs : Measurable s)
    (hrange : ∀ u∈Icc (0:ℝ) (2*A),s u∈Icc (0:ℝ) (2*A)) :
    IntervalIntegrable (fun u => criticalDiscrepancyBridge A (s u)*pairedTailCurvature A u)
      volume 0 (2*A) := by
  have hi := pairedTailCurvature_intervalIntegrable hA 0 (2*A)
  have hm := ((criticalDiscrepancyBridge_continuous A).measurable.comp hs).aestronglyMeasurable
    (μ:=volume.restrict (uIoc (0:ℝ) (2*A)))
  apply (hi.abs.const_mul ((389/80:ℝ)*A)).mono_fun' (hm.mul hi.aestronglyMeasurable_restrict_uIoc)
  filter_upwards [ae_restrict_mem (measurableSet_uIoc)] with u hu
  have huc : u∈Icc (0:ℝ) (2*A) := by
    rw [uIoc_of_le (by linarith : (0:ℝ)≤2*A)] at hu
    exact Ioc_subset_Icc_self hu
  dsimp only [Pi.mul_apply,Function.comp_def]
  rw [Real.norm_eq_abs,abs_mul]
  exact mul_le_mul_of_nonneg_right
    (actual_bridge_abs_le_scale (by linarith : 0<A) (hrange u huc).1 (hrange u huc).2)
    (abs_nonneg _)

/-- A measurable coordinate sampler carries an explicit weighted-error contract. -/
theorem sampled_work_error {A h : ℝ} {s : ℝ → ℝ} (hA : 1≤A) (_hh : 0≤h)
    (hs : Measurable s)
    (hrange : ∀ u∈Icc (0:ℝ) (2*A),s u∈Icc (0:ℝ) (2*A))
    (hmesh : ∀ u∈Icc (0:ℝ) (2*A),|s u-u|≤h) :
    |sampledCurvatureWork A s-criticalRemovedPairedWork A|≤
      (389/40:ℝ)*h*curvatureVariation A := by
  have hp : 0<A := by linarith
  have his := sampled_integrand_intervalIntegrable hA hs hrange
  have hia := actual_bridge_curvature_intervalIntegrable hA
  have hide := his.sub hia
  rw [sampledCurvatureWork,actual_second_Abel hA,←intervalIntegral.integral_sub his hia]
  calc
    _ ≤ ∫ u in 0..2*A, |criticalDiscrepancyBridge A (s u)*pairedTailCurvature A u-
        criticalDiscrepancyBridge A u*pairedTailCurvature A u| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ u in 0..2*A, ((389/40:ℝ)*h)*|pairedTailCurvature A u| := by
      apply intervalIntegral.integral_mono_on (by linarith) hide.abs
        ((pairedTailCurvature_intervalIntegrable hA 0 (2*A)).abs.const_mul _)
      intro u hu
      rw [←sub_mul,abs_mul]
      have hb := actual_bridge_lipschitz hp hu (hrange u hu)
      have hb2 : |criticalDiscrepancyBridge A (s u)-criticalDiscrepancyBridge A u|≤
          (389/40:ℝ)*h := hb.trans (mul_le_mul_of_nonneg_left (hmesh u hu) (by norm_num))
      exact mul_le_mul_of_nonneg_right hb2 (abs_nonneg _)
    _ = _ := by rw [intervalIntegral.integral_const_mul];rfl

/-- Uniform left grid, including the closed upper point; outside-domain values are irrelevant. -/
def leftGridSample (A : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  (2*A/(n:ℝ))*(⌊u/(2*A/(n:ℝ))⌋₊:ℝ)

theorem leftGridSample_measurable (A : ℝ) (n : ℕ) : Measurable (leftGridSample A n) := by
  unfold leftGridSample
  fun_prop

theorem leftGridSample_range_mesh {A u : ℝ} {n : ℕ} (hA : 0<A) (hn : 0<n)
    (hu : u∈Icc (0:ℝ) (2*A)) :
    leftGridSample A n u∈Icc (0:ℝ) (2*A) ∧ |leftGridSample A n u-u|≤2*A/n := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  let h : ℝ := 2*A/n
  have hh : 0<h := by dsimp [h];positivity
  have hx : 0≤u/h := div_nonneg hu.1 hh.le
  have hf := Nat.floor_le hx
  have ht := Nat.lt_floor_add_one (u/h)
  have hlo : 0≤h*(⌊u/h⌋₊:ℝ) := by positivity
  have hle : h*(⌊u/h⌋₊:ℝ)≤u := by
    have hf2 := (le_div_iff₀ hh).mp hf
    nlinarith
  have hdiff : u-h*(⌊u/h⌋₊:ℝ)≤h := by
    have ht2 := (div_lt_iff₀ hh).mp ht
    nlinarith
  change h*(⌊u/h⌋₊:ℝ)∈Icc (0:ℝ) (2*A) ∧ |h*(⌊u/h⌋₊:ℝ)-u|≤h
  constructor
  · exact ⟨hlo,hle.trans hu.2⟩
  · rw [abs_sub_comm,abs_of_nonneg (sub_nonneg.mpr hle)]
    exact hdiff

theorem actual_grid_work_error {A : ℝ} {n : ℕ} (hA : 1≤A) (hn : 0<n) :
    |sampledCurvatureWork A (leftGridSample A n)-criticalRemovedPairedWork A|≤
      (2200:ℝ)*A^2*Real.exp A/n := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  have hh := sampled_work_error hA (by positivity : 0≤2*A/(n:ℝ))
    (leftGridSample_measurable A n)
    (fun u hu => (leftGridSample_range_mesh (by linarith : 0<A) hn hu).1)
    (fun u hu => (leftGridSample_range_mesh (by linarith : 0<A) hn hu).2)
  apply hh.trans
  have hv := curvatureVariation_le hA
  have hc := mul_le_mul_of_nonneg_left hv (by positivity : 0≤(389/40:ℝ)*(2*A/(n:ℝ)))
  calc
    (389/40:ℝ)*(2*A/(n:ℝ))*curvatureVariation A ≤
        (389/40:ℝ)*(2*A/(n:ℝ))*(112*A*Real.exp A) := hc
    _ = (10892/5:ℝ)*A^2*Real.exp A/n := by ring
    _ ≤ _ := by gcongr; norm_num

def curvatureResolutionCount (A η : ℝ) : ℕ := ⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊+1

theorem curvatureResolutionCount_pos (A η : ℝ) : 0<curvatureResolutionCount A η := by
  unfold curvatureResolutionCount
  omega

theorem actual_joint_grid_work_accuracy {A η : ℝ} {n : ℕ} (hA : 1≤A) (hη : 0<η)
    (hn : curvatureResolutionCount A η≤n) :
    |sampledCurvatureWork A (leftGridSample A n)-criticalRemovedPairedWork A|≤η := by
  have hp : 0<n := (curvatureResolutionCount_pos A η).trans_le hn
  have hnr : (0:ℝ)<n := by exact_mod_cast hp
  have hc : (⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊:ℝ)≤n := by
    exact_mod_cast (by unfold curvatureResolutionCount at hn;omega :
      ⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊≤n)
  have hb := (Nat.le_ceil (((2200:ℝ)*A^2*Real.exp A)/η)).trans hc
  have hb2 := (div_le_iff₀ hη).mp hb
  apply (actual_grid_work_error hA hp).trans
  apply (div_le_iff₀ hnr).mpr
  nlinarith

end ContinuousResearch.ActualCurvatureResolution
```
