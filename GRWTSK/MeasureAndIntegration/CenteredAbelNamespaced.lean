-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FracPlus.Variant518733f639a74339ea6d01b2d0125f53f749072ee4397c571ba687348f41ba67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"518733f639a74339ea6d01b2d0125f53f749072ee4397c571ba687348f41ba67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FracPlus.Variant518733f639a74339ea6d01b2d0125f53f749072ee4397c571ba687348f41ba67","mathematical_subject":"Analysis.Integration","original_sha256":"518733f639a74339ea6d01b2d0125f53f749072ee4397c571ba687348f41ba67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/independent-replay/CenteredAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.AbelSummation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
Locally checked proof-development candidate; accepted integration remains pending.
Research direction and theorem selection: grwtsk contributors.
Static Lean proof construction: OpenAI Codex.
This generic module has no dependency on an RH target or source family.
The existing SourceFractionalQuadrature infrastructure is retained; this is
the finite, arbitrary-terminal extension needed for its logarithmic adapter.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.FracPlus.Variant518733f639a74339ea6d01b2d0125f53f749072ee4397c571ba687348f41ba67

set_option autoImplicit false
noncomputable section
namespace CenteredAbelCandidate
open MeasureTheory Set Finset Filter

def fracPlus (x : ℝ) : ℝ := x - (⌊x⌋₊ : ℝ)

theorem fracPlus_bounds {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ fracPlus x ∧ fracPlus x < 1 := by
  constructor
  · exact sub_nonneg.mpr (Nat.floor_le hx)
  · dsimp [fracPlus]
    linarith [Nat.lt_floor_add_one x]

theorem fracPlus_eq_fract {x : ℝ} (hx : 0 ≤ x) : fracPlus x = Int.fract x := by
  rw [fracPlus, Int.fract, natCast_floor_eq_intCast_floor hx]

theorem fracPlus_centered_abs_le {x : ℝ} (hx : 0 ≤ x) :
    |fracPlus x - 1 / 2| ≤ (1 / 2 : ℝ) := by
  obtain ⟨h0, h1⟩ := fracPlus_bounds hx
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem fracPlus_measurable : Measurable fracPlus := by
  exact measurable_id.sub
    ((measurable_of_countable (fun n : ℕ => (n : ℝ))).comp Nat.measurable_floor)

private def unitCoeff (n : ℕ) : ℝ := if n = 0 then 0 else 1

private theorem unitCoeff_sum (N : ℕ) :
    (∑ n ∈ Finset.Icc 0 N, unitCoeff n) = (N : ℝ) := by
  induction N with
  | zero => simp [unitCoeff]
  | succ N ih =>
    rw [Finset.sum_Icc_succ_top (Nat.zero_le (N + 1)), ih]
    simp [unitCoeff, Nat.cast_add, Nat.cast_one]

private theorem unitCoeff_weighted_sum (g : ℝ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 0 N, g n * unitCoeff n) =
      ∑ n ∈ Finset.Icc 1 N, g n := by
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, g n * unitCoeff n := by
      symm
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn0 : n = 0 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp [unitCoeff]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have := (Finset.mem_Icc.mp hn).1
        omega
      simp [unitCoeff, hn0]

theorem fracPlus_deriv_intervalIntegrable {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    IntervalIntegrable (fun y => fracPlus y * deriv g y) volume 1 Y := by
  have hdi : IntegrableOn (deriv g) (Icc 1 Y) :=
    (hg.continuous_deriv (by norm_num)).integrableOn_Icc
  have hi : IntegrableOn (fun y => fracPlus y * deriv g y) (Icc 1 Y) :=
    hdi.bdd_mul fracPlus_measurable.aestronglyMeasurable
      (by
        filter_upwards [ae_restrict_mem measurableSet_Icc] with y hy
        rw [Real.norm_eq_abs, abs_of_nonneg (fracPlus_bounds (by linarith [hy.1])).1]
        exact (fracPlus_bounds (by linarith [hy.1])).2.le)
  exact (intervalIntegrable_iff_integrableOn_Icc_of_le hY).mpr hi

theorem centered_deriv_intervalIntegrable {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    IntervalIntegrable (fun y => (fracPlus y - 1 / 2) * deriv g y) volume 1 Y := by
  have hd := (hg.continuous_deriv (by norm_num)).intervalIntegrable (μ := volume) 1 Y
  have hi := (fracPlus_deriv_intervalIntegrable hg hY).sub (hd.const_mul (1 / 2 : ℝ))
  simpa only [sub_mul] using hi

theorem sum_eq_integral_add_frac {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ n ∈ Finset.Icc 1 ⌊Y⌋₊, g n) =
      (∫ y in (1 : ℝ)..Y, g y) +
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) +
      g 1 - fracPlus Y * g Y := by
  have hd : IntegrableOn (deriv g) (Icc 1 Y) :=
    (hg.continuous_deriv (by norm_num)).integrableOn_Icc
  have habel := sum_mul_eq_sub_integral_mul₀ unitCoeff (by simp [unitCoeff]) Y
    (fun y _ => hg.differentiable (by norm_num) y) hd
  rw [unitCoeff_weighted_sum] at habel
  simp only [unitCoeff_sum] at habel
  rw [← intervalIntegral.integral_of_le hY] at habel
  have hfloor : IntervalIntegrable (fun y => deriv g y * (⌊y⌋₊ : ℝ)) volume 1 Y := by
    apply (intervalIntegrable_iff_integrableOn_Icc_of_le hY).mpr
    simpa only [unitCoeff_sum] using
      (integrableOn_mul_sum_Icc unitCoeff (m := 0) zero_le_one hd)
  have hx : IntervalIntegrable (fun y => y * deriv g y) volume 1 Y :=
    ((hg.continuous_deriv (by norm_num)).intervalIntegrable 1 Y).continuousOn_mul
      continuous_id.continuousOn
  have hfrac : (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) =
      (∫ y in (1 : ℝ)..Y, y * deriv g y) -
      (∫ y in (1 : ℝ)..Y, deriv g y * (⌊y⌋₊ : ℝ)) := by
    rw [← intervalIntegral.integral_sub hx hfloor]
    apply intervalIntegral.integral_congr
    intro y _
    dsimp [fracPlus]
    ring
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (1 : ℝ)) (b := Y)
    (u := fun y : ℝ => y) (u' := fun _ : ℝ => (1 : ℝ))
    (v := g) (v' := deriv g)
    (fun y _ => hasDerivAt_id y)
    (fun y _ => (hg.differentiable (by norm_num) y).hasDerivAt)
    (continuous_const.intervalIntegrable _ _)
    ((hg.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  simp only [one_mul] at hparts
  rw [hfrac]
  dsimp [fracPlus]
  linarith

theorem sum_eq_integral_add_centered {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ n ∈ Finset.Icc 1 ⌊Y⌋₊, g n) =
      (∫ y in (1 : ℝ)..Y, g y) +
      (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) +
      (1 / 2 : ℝ) * g 1 + ((1 / 2 : ℝ) - fracPlus Y) * g Y := by
  have hd := (hg.continuous_deriv (by norm_num)).intervalIntegrable (μ := volume) 1 Y
  have hcent : (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) =
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) -
        (1 / 2 : ℝ) * (g Y - g 1) := by
    simp only [sub_mul]
    rw [intervalIntegral.integral_sub (fracPlus_deriv_intervalIntegrable hg hY)
      (hd.const_mul _), intervalIntegral.integral_const_mul]
    rw [intervalIntegral.integral_deriv_eq_sub
      (fun y _ => hg.differentiable (by norm_num) y) hd]
  rw [hcent, sum_eq_integral_add_frac hg hY]
  ring

theorem centered_eq_uncentered_of_endpoints_zero {g : ℝ → ℝ}
    (hg : ContDiff ℝ 1 g) {Y : ℝ} (hY : 1 ≤ Y) (h1 : g 1 = 0) (hY0 : g Y = 0) :
    (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) =
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) := by
  have hd := (hg.continuous_deriv (by norm_num)).intervalIntegrable (μ := volume) 1 Y
  simp only [sub_mul]
  rw [intervalIntegral.integral_sub (fracPlus_deriv_intervalIntegrable hg hY)
    (hd.const_mul _), intervalIntegral.integral_const_mul,
    intervalIntegral.integral_deriv_eq_sub
      (fun y _ => hg.differentiable (by norm_num) y) hd, hY0, h1]
  ring

#print axioms fracPlus_bounds
#print axioms fracPlus_centered_abs_le
#print axioms fracPlus_deriv_intervalIntegrable
#print axioms centered_deriv_intervalIntegrable
#print axioms sum_eq_integral_add_frac
#print axioms sum_eq_integral_add_centered
#print axioms centered_eq_uncentered_of_endpoints_zero
end CenteredAbelCandidate
