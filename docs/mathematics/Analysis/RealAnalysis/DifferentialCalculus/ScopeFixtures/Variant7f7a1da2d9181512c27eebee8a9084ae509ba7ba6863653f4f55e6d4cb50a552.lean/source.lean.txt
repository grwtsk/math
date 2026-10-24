-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixtureSecondEqReflectedTest.Variant3dae2c3812cb19d95d17f1852692a066137560f2be8fe62d8e541ffdeecb4789","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dae2c3812cb19d95d17f1852692a066137560f2be8fe62d8e541ffdeecb4789","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FixtureSecondEqReflectedTest.Variant3dae2c3812cb19d95d17f1852692a066137560f2be8fe62d8e541ffdeecb4789","mathematical_subject":"Analysis.Calculus","original_sha256":"3dae2c3812cb19d95d17f1852692a066137560f2be8fe62d8e541ffdeecb4789","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/future-readout/canonical-window-native-v1/audits-v1/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBoundaryMangoldtWindow

/-! Fourteen private-audit fixtures for actual finite boundary windows. -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixtureSecondEqReflectedTest.Variant3dae2c3812cb19d95d17f1852692a066137560f2be8fe62d8e541ffdeecb4789

noncomputable section
namespace FutureWindowFixtures
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceBoundaryMangoldtWindow SourcePairing SourcePeanoBoundaryAtoms
open SourcePeanoEndpointTraces SourceMangoldtAbel SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

private theorem fixture_second_eq_reflected_test {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y =
      peanoScale A * criticalPrimeTest A (2 * A - y) := by
  rw [boundaryPeano_second_deriv hA]
  unfold boundaryKernel peanoScale criticalPrimeTest
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = A ^ 9 * Real.exp (-y / 2) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [← he]; ring

/-- The exact adapter keeps its three literal hypotheses. -/
theorem adapter_exact_scope {A Y : ℝ} (hA : 0 < A) (hY0 : 0 ≤ Y) (hY2 : Y ≤ 2 * A) :
    peanoScale A * mangoldtLogWindow (2 * A - Y) (2 * A) (criticalPrimeTest A) =
      deriv (boundaryPeano A) Y + ∫ y in 0..Y,
        (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
          deriv (deriv (deriv (boundaryPeano A))) y :=
  peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux hA hY0 hY2

/-- Equal window endpoints retain zero prefix difference. -/
theorem zero_width_window {A : ℝ} (hA : 0 < A) :
    peanoScale A * mangoldtLogWindow (2 * A) (2 * A) (criticalPrimeTest A) = 0 := by
  have h := peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux
    (Y := 0) hA le_rfl (by linarith)
  simpa only [sub_zero, intervalIntegral.integral_same,
    boundaryPeano_deriv_at_zero hA, zero_add] using h

/-- Full-window centering uses the actual zero discrepancy anchor. -/
theorem full_window_anchor {A : ℝ} (hA : 0 < A) :
    peanoScale A * mangoldtLogSum (2 * A) (criticalPrimeTest A) =
      deriv (boundaryPeano A) (2 * A) + ∫ y in 0..2 * A,
        mangoldtLogError (2 * A - y) * deriv (deriv (deriv (boundaryPeano A))) y := by
  have hzero : mangoldtLogError 0 = 0 := by
    simp [mangoldtLogError, mangoldtLogPrefix_zero]
  have h := peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux
    (Y := 2 * A) hA (by linarith) le_rfl
  simpa only [sub_self, mangoldtLogWindow_zero, hzero, sub_zero] using h

/-- The touching support value is zero. -/
theorem boundary_value_zero {A : ℝ} (hA : 0 < A) : boundaryPeano A 0 = 0 :=
  boundaryPeano_at_zero hA

/-- The touching support slope is also zero. -/
theorem boundary_slope_zero {A : ℝ} (hA : 0 < A) : deriv (boundaryPeano A) 0 = 0 :=
  boundaryPeano_deriv_at_zero hA

/-- The actual touching-support curvature vanishes. -/
theorem boundary_curvature_zero {A : ℝ} (hA : 0 < A) :
    deriv (deriv (boundaryPeano A)) 0 = 0 := by
  rw [fixture_second_eq_reflected_test hA, sub_zero,
    criticalPrimeTest_at_upper A hA, mul_zero]

/-- The third derivative keeps the single reflection minus sign. -/
theorem third_derivative_reflection_sign {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (boundaryPeano A))) y =
      -peanoScale A * deriv (criticalPrimeTest A) (2 * A - y) := by
  have he : deriv (deriv (boundaryPeano A)) =
      fun z => peanoScale A * criticalPrimeTest A (2 * A - z) :=
    funext (fixture_second_eq_reflected_test hA)
  have hg := ((criticalPrimeTest_contDiff A hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have hd := (hg.comp y hc).const_mul (peanoScale A)
  rw [he]
  exact (hd.congr_deriv (by ring)).deriv

/-- Equality with the lower threshold excludes an atom. -/
theorem lower_threshold_excluded {a b : ℝ} {n : ℕ} (hn : Real.log (n : ℝ) = a) :
    n ∉ (primePowerInventory b).filter (fun n : ℕ => a < Real.log (n : ℝ)) := by
  simp [hn]

/-- The upper logarithmic threshold retains a closed atom. -/
theorem upper_threshold_included {a b : ℝ} {n : ℕ} (hn : 2 ≤ n)
    (hlog : Real.log (n : ℝ) = b) (hab : a < b) :
    n ∈ (primePowerInventory b).filter (fun n : ℕ => a < Real.log (n : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  apply Finset.mem_filter.mpr
  constructor
  · change n ∈ Finset.Icc 2 ⌊Real.exp b⌋₊
    refine Finset.mem_Icc.mpr ⟨hn, ?_⟩
    apply (Nat.le_floor_iff (Real.exp_pos b).le).mpr
    rw [← hlog, Real.exp_log hn0]
  · simpa only [hlog] using hab

/-- A touching upper atom is present while its actual source factor is zero. -/
theorem touching_upper_atom_weight_zero {A : ℝ} (hA : 0 < A) (n : ℕ) :
    ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      deriv (deriv (boundaryPeano A)) 0 = 0 := by
  rw [boundary_curvature_zero hA, mul_zero]

/-- The actual full-prefix error is anchored at zero. -/
theorem literal_error_zero_anchor : mangoldtLogError 0 = 0 := by
  simp [mangoldtLogError, mangoldtLogPrefix_zero]

/-- Below the first atom the discrepancy is negative, not a zero forcing proxy. -/
theorem below_first_error_is_nonzero : mangoldtLogError (Real.log 2 / 2) < 0 := by
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  rw [mangoldtLogError_below_first_atom (by linarith : Real.log 2 / 2 < Real.log 2)]
  linarith

/-- Reversing a window changes its sign. -/
theorem reversed_window_sign (a b : ℝ) (F : ℝ → ℝ) :
    mangoldtLogWindow a b F = -mangoldtLogWindow b a F := by
  unfold mangoldtLogWindow
  ring

/-- The first closed atom keeps the full-Mangoldt coefficient Λ(2)/2. -/
theorem first_atom_closed_weight :
    mangoldtLogSum (Real.log 2) (fun _ => (1 : ℝ)) = Real.log 2 / 2 := by
  unfold mangoldtLogSum primePowerInventory
  rw [Real.exp_log (by norm_num : 0 < (2 : ℝ))]
  norm_num [ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]

end FutureWindowFixtures
