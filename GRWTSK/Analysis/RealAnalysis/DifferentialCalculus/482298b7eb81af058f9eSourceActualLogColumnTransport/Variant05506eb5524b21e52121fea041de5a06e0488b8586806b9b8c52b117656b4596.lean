-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLogColumnPrefixAePhysicalCell.Variant482298b7eb81af058f9eb08f2ad936549e5eb01e33056dcaa6fb3cd7b9416e9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"482298b7eb81af058f9eb08f2ad936549e5eb01e33056dcaa6fb3cd7b9416e9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualLogColumnPrefixAePhysicalCell.Variant482298b7eb81af058f9eb08f2ad936549e5eb01e33056dcaa6fb3cd7b9416e9d","mathematical_subject":"Analysis.Calculus","original_sha256":"482298b7eb81af058f9eb08f2ad936549e5eb01e33056dcaa6fb3cd7b9416e9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/482298b7eb81af058f9e-SourceActualLogColumnTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdjointAbelPrimitives
import SourceActualDoubleMixedKernel
import SourceJointMangoldtWork

/-!
The literal finite physical centered columns are transported to logarithmic
coordinates with their true floor prefix. The upper singleton of every closed
physical cell is removed only AE; no closed boundary or source main is deleted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLogColumnPrefixAePhysicalCell.Variant482298b7eb81af058f9eb08f2ad936549e5eb01e33056dcaa6fb3cd7b9416e9d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualLogColumnTransport
open MeasureTheory Set Filter
open scoped BigOperators Interval
open SourceActualAdjointAbelPrimitives SourceActualDoubleMixedKernel SourceJointMangoldtWork
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
open Realization CorrelationRegularity
noncomputable section

/-- The true closed physical cell agrees with its original prefix only almost everywhere. -/
theorem actualLogColumnPrefix_ae_physical_cell (A : ℝ) {k : ℕ} (hk : 1 ≤ k) :
    ∀ᵐ u, u ∈ Ioc (k : ℝ) ((k : ℝ) + 1) →
      actualLogColumnPrefix A (Real.log u) =
        ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n := by
  have hae : ∀ᵐ u : ℝ, u ≠ (k : ℝ) + 1 := by simp [ae_iff]
  filter_upwards [hae] with u hu hm
  exact actualLogColumnPrefix_on_cell A hk ⟨hm.1.le, lt_of_le_of_ne hm.2 hu⟩

/-- The same singleton seam is preserved on each logarithmic cell. -/
theorem actualLogColumnPrefix_ae_log_cell (A : ℝ) {k : ℕ} (hk : 1 ≤ k) :
    ∀ᵐ s, s ∈ Ioc (Real.log (k : ℝ)) (Real.log ((k : ℝ) + 1)) →
      actualLogColumnPrefix A s =
        ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n := by
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have hae : ∀ᵐ s : ℝ, s ≠ Real.log ((k : ℝ) + 1) := by simp [ae_iff]
  filter_upwards [hae] with s hs hm
  have hu : Real.exp s ∈ Ico (k : ℝ) ((k : ℝ) + 1) := by
    constructor
    · calc
        _ = Real.exp (Real.log (k : ℝ)) := (Real.exp_log hk0).symm
        _ ≤ Real.exp s := Real.exp_le_exp.mpr hm.1.le
    · calc
        _ < Real.exp (Real.log ((k : ℝ) + 1)) :=
          Real.exp_lt_exp.mpr (lt_of_le_of_ne hm.2 hs)
        _ = _ := Real.exp_log (by positivity)
  simpa only [Real.log_exp] using actualLogColumnPrefix_on_cell A hk hu

/-- The physical logarithmic Jacobian is retained before summing the cells. -/
theorem actual_continuous_physical_cell_log_transport {k : ℕ} (hk : 1 ≤ k)
    (F : ℝ → ℝ) (hF : Continuous F) :
    (∫ u in (k : ℝ)..((k : ℝ) + 1), F (Real.log u) / u) =
      ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), F s := by
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have h := intervalIntegral.integral_comp_mul_deriv
    (a := (k : ℝ)) (b := (k : ℝ) + 1) (f := Real.log) (f' := fun u => 1 / u)
    (fun u hu => by
      rw [uIcc_of_le (by linarith)] at hu
      simpa only [one_div] using Real.hasDerivAt_log (hk0.trans_le hu.1).ne')
    (by
      intro u hu
      rw [uIcc_of_le (by linarith)] at hu
      exact (continuousAt_const.div continuousAt_id (hk0.trans_le hu.1).ne').continuousWithinAt)
    hF
  simpa only [Function.comp_apply, div_eq_mul_inv, one_mul] using h

private theorem prefix_F_cell_integrable (A : ℝ) {k : ℕ} (hk : 1 ≤ k)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => actualLogColumnPrefix A s * F s) volume
      (Real.log (k : ℝ)) (Real.log ((k : ℝ) + 1)) := by
  let B : ℝ := ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n
  have hi : IntervalIntegrable (fun s => B * F s) volume
      (Real.log (k : ℝ)) (Real.log ((k : ℝ) + 1)) :=
    hF.const_mul B |>.intervalIntegrable _ _
  apply hi.congr_uIoo
  intro s hs
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [uIoo_of_le (Real.log_le_log hk0 (by linarith))] at hs
  have hu : Real.exp s ∈ Ico (k : ℝ) ((k : ℝ) + 1) := by
    constructor
    · rw [← Real.exp_log hk0]
      exact (Real.exp_lt_exp.mpr hs.1).le
    · rw [← Real.exp_log (by positivity : 0 < (k : ℝ) + 1)]
      exact Real.exp_lt_exp.mpr hs.2
  have he : actualLogColumnPrefix A s = B := by
    simpa only [Real.log_exp] using actualLogColumnPrefix_on_cell A hk hu
  change B * F s = actualLogColumnPrefix A s * F s
  rw [he]

/-- Exact finite logarithmic transport preserves the terminal natural K endpoint. -/
theorem actual_finite_log_prefix_transport (A : ℝ) (K : ℕ)
    (hK : vaughanCutoff A + 1 ≤ K) (F : ℝ → ℝ) (hF : Continuous F) :
    (∑ k ∈ Finset.Ico (vaughanCutoff A + 1) K,
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
        ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), F s) =
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (K : ℝ),
        actualLogColumnPrefix A s * F s := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => Real.log (k : ℝ)) hK
    (fun k hk => by
      have hk1 : 1 ≤ k := by have := hk.1; omega
      simpa only [Nat.cast_add, Nat.cast_one] using prefix_F_cell_integrable A hk1 F hF)
  rw [← hsum]
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 : 1 ≤ k := by have := (Finset.mem_Ico.mp hk).1; omega
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [← intervalIntegral.integral_const_mul]
  simp only [Nat.cast_add, Nat.cast_one]
  apply intervalIntegral.integral_congr_ae
  rw [uIoc_of_le (Real.log_le_log hk0 (by linarith))]
  filter_upwards [actualLogColumnPrefix_ae_log_cell A hk1] with s hs hm
  rw [hs hm]

/-- All original positive physical cells transport to the same full prefix interval. -/
theorem actual_finite_physical_prefix_transport (A : ℝ) (K : ℕ)
    (hK : vaughanCutoff A + 1 ≤ K) (F : ℝ → ℝ) (hF : Continuous F) :
    (∑ k ∈ Finset.Ico (vaughanCutoff A + 1) K,
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
        ∫ u in (k : ℝ)..((k : ℝ) + 1), F (Real.log u) / u) =
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (K : ℝ),
        actualLogColumnPrefix A s * F s := by
  calc
    _ = ∑ k ∈ Finset.Ico (vaughanCutoff A + 1) K,
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
          ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), F s := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [actual_continuous_physical_cell_log_transport
        (by have := (Finset.mem_Ico.mp hk).1; omega) F hF]
    _ = _ := actual_finite_log_prefix_transport A K hK F hF

/-- The full genuine log-prefix product is interval integrable before any work rearrangement. -/
theorem actualLogColumnPrefix_mul_intervalIntegrable (A : ℝ) (K : ℕ)
    (hK : vaughanCutoff A + 1 ≤ K) (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => actualLogColumnPrefix A s * F s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (Real.log (K : ℝ)) := by
  apply IntervalIntegrable.trans_iterate_Ico (a := fun k : ℕ => Real.log (k : ℝ)) hK
  intro k hk
  have hk1 : 1 ≤ k := by have := hk.1; omega
  simpa only [Nat.cast_add, Nat.cast_one] using prefix_F_cell_integrable A hk1 F hF

private def logTimeColumnDeriv (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + s) +
      sourceCorrelation explicitSecondDerivative A (t + s) / 2)

private theorem log_source_time_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (fun x => actualLogColumnSource A x s) (logTimeColumnDeriv A t s) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + s)).hasDerivAt
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (hc.comp t ((hasDerivAt_id t).add_const s))
  convert hh using 1 <;> try rfl
  simp only [logTimeColumnDeriv, id_eq, Function.comp_apply]
  ring

private theorem logTimeColumnDeriv_contDiff {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 1 (logTimeColumnDeriv A t) := by
  have hc := sourceCorrelation_contDiff A hA
  have hd := sourceCorrelation_deriv_contDiff hA
  unfold logTimeColumnDeriv
  fun_prop

private theorem actualLogMixedDensity_continuous {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Continuous (actualLogMixedDensity A t) := by
  have hc := (sourceCorrelation_contDiff A hA).continuous
  have h2 : Continuous (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one
  unfold actualLogMixedDensity
  fun_prop

private theorem logTimeColumnDeriv_hasDerivAt {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    HasDerivAt (logTimeColumnDeriv A t) (actualLogMixedDensity A t s) s := by
  have he : (fun y => deriv (fun x => actualLogColumnSource A x y) t) =
      logTimeColumnDeriv A t :=
    funext fun y => (log_source_time_hasDerivAt hA t y).deriv
  have hm := actualLogColumnSource_mixed_derivative A hA t s
  rw [he] at hm
  have hd := ((logTimeColumnDeriv_contDiff hA t).differentiable (by norm_num) s).hasDerivAt
  rw [hm] at hd
  exact hd

private theorem timeColumn_sub_eq_neg_log_cell {A : ℝ} (hA : 0 < A)
    (t : ℝ) {k : ℕ} (hk : 1 ≤ k) :
    logTimeColumnDeriv A t (Real.log (k : ℝ)) -
      logTimeColumnDeriv A t (Real.log ((k : ℝ) + 1)) =
        -(∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), actualLogMixedDensity A t s) := by
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have hl := Real.log_le_log hk0 (show (k : ℝ) ≤ (k : ℝ) + 1 by linarith)
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hl
    (logTimeColumnDeriv_contDiff hA t).continuous.continuousOn
    (fun s _ => logTimeColumnDeriv_hasDerivAt hA t s)
    ((actualLogMixedDensity_continuous hA t).intervalIntegrable _ _)
  linarith

/-- The actual physical mixed density has the true log Jacobian, with every lower jet. -/
theorem actual_physical_mixed_cell_log_transport {A : ℝ} (hA : 0 < A)
    (t : ℝ) {k : ℕ} (hk : 1 ≤ k) :
    (∫ u in (k : ℝ)..((k : ℝ) + 1),
      Real.exp (t / 2) / (u * Real.sqrt u) *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4)) =
      ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), actualLogMixedDensity A t s := by
  rw [← actual_continuous_physical_cell_log_transport hk
    (actualLogMixedDensity A t) (actualLogMixedDensity_continuous hA t)]
  apply intervalIntegral.integral_congr
  intro u hu
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [uIcc_of_le (by linarith)] at hu
  have hu0 := hk0.trans_le hu.1
  have he : Real.exp (-Real.log u / 2) = 1 / Real.sqrt u := by
    rw [show -Real.log u / 2 = -(Real.log u / 2) by ring, Real.exp_neg,
      Real.exp_half, Real.exp_log hu0, one_div]
  dsimp only [actualLogMixedDensity]
  rw [he]
  ring

/-- The actual original test derivative is the full signed logarithmic prefix integral. -/
theorem jointMangoldtTestProfile_deriv_eq_log_prefix {A : ℝ} (hA : 0 < A)
    (hK : vaughanCutoff A + 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1)) (t : ℝ) :
    deriv (jointMangoldtTestProfile A) t =
      -(∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLogColumnPrefix A s * actualLogMixedDensity A t s) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have hpos {k : ℕ} (hk : k ∈ Finset.Ico (U + 1) K) : 1 ≤ k := by
    have := (Finset.mem_Ico.mp hk).1
    omega
  have hf : jointMangoldtTestProfile A = fun x =>
      ∑ k ∈ Finset.Ico (U + 1) K,
        B k * (actualLogColumnSource A x (Real.log (k : ℝ)) -
          actualLogColumnSource A x (Real.log ((k : ℝ) + 1))) := by
    funext x
    unfold jointMangoldtTestProfile
    dsimp only
    apply Finset.sum_congr rfl
    intro k hk
    have hk1 := hpos hk
    have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
    rw [actualLogColumnSource_at_log A x (k : ℝ) hk0,
      actualLogColumnSource_at_log A x ((k : ℝ) + 1) (by positivity)]
    simp only [B, U, Nat.cast_add, Nat.cast_one]
  have hd : HasDerivAt (fun x => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (actualLogColumnSource A x (Real.log (k : ℝ)) -
        actualLogColumnSource A x (Real.log ((k : ℝ) + 1))))
      (∑ k ∈ Finset.Ico (U + 1) K,
        B k * (logTimeColumnDeriv A t (Real.log (k : ℝ)) -
          logTimeColumnDeriv A t (Real.log ((k : ℝ) + 1)))) t := by
    apply HasDerivAt.fun_sum
    intro k _
    exact ((log_source_time_hasDerivAt hA t _).sub
      (log_source_time_hasDerivAt hA t _)).const_mul (B k)
  rw [hf, hd.deriv]
  calc
    _ = -(∑ k ∈ Finset.Ico (U + 1) K, B k *
        ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), actualLogMixedDensity A t s) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k hk
      rw [timeColumn_sub_eq_neg_log_cell hA t (hpos hk)]
      ring
    _ = _ := by
      rw [actual_finite_log_prefix_transport A K hK
        (actualLogMixedDensity A t) (actualLogMixedDensity_continuous hA t)]
      rfl

/-- Transport the literal original work and closed inventories without changing compensation. -/
theorem jointMangoldtErrorWork_eq_log_prefix {A : ℝ} (hA : 1 ≤ A)
    (hK : vaughanCutoff A + 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1)) :
    jointMangoldtErrorWork A =
      -(∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        SourceMangoldtAbel.mangoldtLogError t *
          ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
            actualLogColumnPrefix A s * actualLogMixedDensity A t s) := by
  unfold jointMangoldtErrorWork
  simp_rw [jointMangoldtTestProfile_deriv_eq_log_prefix (by linarith : 0 < A) hK]
  rw [← intervalIntegral.integral_neg]
  simp only [actualTimeLower, mul_neg]

private theorem exp_gt_square_add_one {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 + 1 < Real.exp A := by
  have hsum := Real.sum_le_exp_of_nonneg (by linarith : 0 ≤ A) 5
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have ht : 0 ≤ A - 1 := sub_nonneg.mpr hA
  have hm : 0 < (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
      (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by positivity
  have he : 1 + A + A ^ 2 / 2 + A ^ 3 / 6 + A ^ 4 / 24 - (A ^ 2 + 1) =
      (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
        (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by ring
  linarith

/-- The genuine original log-column interval is ordered at every real A at least one. -/
theorem actual_column_window_nonempty {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A + 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) := by
  let a := vaughanCutoff A + 1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ha : (a : ℝ) < Real.exp A := by
    have hc : (a : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one hA]
  have hs : ((a * a : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    rw [Nat.cast_mul, show 2 * A = A + A by ring, Real.exp_add]
    nlinarith [show (0 : ℝ) ≤ (a : ℝ) from Nat.cast_nonneg a, Real.exp_pos A]
  have hN : a * a ≤ sourceKernelCutoff A :=
    (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 hs
  exact (Nat.le_div_iff_mul_le (by dsimp [a]; omega : 0 < a)).2 hN

/-- The full actual physical work converts for every real A at least one, without a new premise. -/
theorem jointMangoldtErrorWork_eq_log_prefix_all_real {A : ℝ} (hA : 1 ≤ A) :
    jointMangoldtErrorWork A =
      -(∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        SourceMangoldtAbel.mangoldtLogError t *
          ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
            actualLogColumnPrefix A s * actualLogMixedDensity A t s) :=
  jointMangoldtErrorWork_eq_log_prefix hA (actual_column_window_nonempty hA)

end
end FormalResearch.RiemannHypothesis.SourceActualLogColumnTransport
