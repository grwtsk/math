-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CovariantMixedDerivative.Varianta8ea7ce9952b9eecb34a590e4cb24d7c032e8e1381b7b02d61752b5c2669a2be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8ea7ce9952b9eecb34a590e4cb24d7c032e8e1381b7b02d61752b5c2669a2be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CovariantMixedDerivative.Varianta8ea7ce9952b9eecb34a590e4cb24d7c032e8e1381b7b02d61752b5c2669a2be","mathematical_subject":"Analysis.Calculus","original_sha256":"a8ea7ce9952b9eecb34a590e4cb24d7c032e8e1381b7b02d61752b5c2669a2be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/a8ea7ce9952b9eecb34a-SourceActualCovariantKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualDoubleMixedKernel
import FiveCesaroKernelBudget

/-!
Twisted differentiation isolates the actual correlation jets with their exact
exponential prefactor. The ordinary mixed kernels still retain their lower jets;
the explicit corrections below preserve that distinction. No signed arithmetic
primitive, adjoint boundary term or independent main term is estimated here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CovariantMixedDerivative.Varianta8ea7ce9952b9eecb34a590e4cb24d7c032e8e1381b7b02d61752b5c2669a2be

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCovariantKernel
open SourcePairing SourceActualDoubleMixedKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open RH16IndependentChallengeNext RH16FiveCesaro
noncomputable section

/-- The fixed operator (D_s+1/2)(D_t-1/2); its coefficients do not depend on A. -/
def covariantMixedDerivative (f : ℝ → ℝ → ℝ) (t s : ℝ) : ℝ :=
  deriv (fun y => deriv (fun x => f x y) t - f t y / 2) s +
    (deriv (fun x => f x s) t - f t s / 2) / 2

/-- Independently specified weighted jets of the unchanged actual correlation. -/
def actualCovariantJet (A : ℝ) (n : ℕ) (t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) (t + s)

private theorem actual_jet_hasDerivAt (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

private theorem actualJet_time_hasDerivAt (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (t s : ℝ) :
    HasDerivAt (fun x => actualCovariantJet A n x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) (t + s) / 2)) t := by
  have hd := (actual_jet_hasDerivAt A hA n hn (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  convert he.mul hd using 1 <;> try rfl
  simp only [Function.comp_apply, id_eq]
  ring

private theorem actualJet_log_hasDerivAt (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (t s : ℝ) :
    HasDerivAt (actualCovariantJet A n t)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) (t + s) -
          iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) (t + s) / 2)) s := by
  have hd := (actual_jet_hasDerivAt A hA n hn (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  convert he.mul hd using 1 <;> try rfl
  simp only [Function.comp_apply, Pi.neg_apply, id_eq]
  ring

private theorem actualJet_twisted_time (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (t s : ℝ) :
    deriv (fun x => actualCovariantJet A n x s) t - actualCovariantJet A n t s / 2 =
      actualCovariantJet A (n + 1) t s := by
  rw [(actualJet_time_hasDerivAt A hA n hn t s).deriv]
  unfold actualCovariantJet
  ring

private theorem actualJet_covariant_eq_next (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n ≤ 2) (t s : ℝ) :
    covariantMixedDerivative (actualCovariantJet A n) t s =
      actualCovariantJet A (n + 2) t s := by
  have he : (fun y => deriv (fun x => actualCovariantJet A n x y) t -
      actualCovariantJet A n t y / 2) = actualCovariantJet A (n + 1) t := by
    funext y
    exact actualJet_twisted_time A hA n (by omega) t y
  unfold covariantMixedDerivative
  rw [he, actualJet_twisted_time A hA n (by omega) t s,
    (actualJet_log_hasDerivAt A hA (n + 1) (by omega) t s).deriv]
  simp only [actualCovariantJet, show n + 1 + 1 = n + 2 by omega]
  ring

/-- The zeroth independent jet is precisely the original actual logarithmic column. -/
theorem actualCovariantJet_zero_eq_original (A t s : ℝ) :
    actualCovariantJet A 0 t s = actualLogColumnSource A t s := by
  simp only [actualCovariantJet, actualLogColumnSource, iteratedDeriv_zero]

/-- Actual global C4 regularity gives the exact twisted second jet at every real shift. -/
theorem actual_covariant_mixed_second (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogColumnSource A) t s =
      actualCovariantJet A 2 t s := by
  have he : actualLogColumnSource A = actualCovariantJet A 0 := by
    funext t s
    exact (actualCovariantJet_zero_eq_original A t s).symm
  rw [he]
  exact actualJet_covariant_eq_next A hA 0 (by norm_num) t s

/-- Repeating the same fixed twisted operator gives the actual weighted fourth jet. -/
theorem actual_twice_covariant_mixed_fourth (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s =
        actualCovariantJet A 4 t s := by
  have he : (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) =
      actualCovariantJet A 2 := by
    funext x y
    exact actual_covariant_mixed_second A hA x y
  rw [he]
  exact actualJet_covariant_eq_next A hA 2 (by norm_num) t s

/-- The genuine five curvature budget keeps the complete exponential prefactor. -/
theorem actual_covariant_mixed_second_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative (actualLogColumnSource A) t s| ≤
      Real.exp (t / 2) * Real.exp (-s / 2) * (5 / A ^ 2) := by
  rw [actual_covariant_mixed_second A (by linarith) t s]
  have hc : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s)| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA (t + s)
  simp only [actualCovariantJet, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left hc (by positivity)

/-- The actual 67 fourth-jet budget also retains the exact exponential prefactor. -/
theorem actual_twice_covariant_fourth_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s| ≤
        Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4) := by
  rw [actual_twice_covariant_mixed_fourth A (by linarith) t s]
  simp only [actualCovariantJet, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left
    (actual_correlation_iterated_fourth_abs_le_sixty_seven A (t + s) hA) (by positivity)

/-- Isolating C2 changes the ordinary mixed derivative by an actual quarter source term. -/
theorem actual_covariant_eq_ordinary_add_quarter (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogColumnSource A) t s =
      deriv (fun y => deriv (fun x => actualLogColumnSource A x y) t) s +
        actualLogColumnSource A t s / 4 := by
  rw [actual_covariant_mixed_second A hA, actualLogColumnSource_mixed_derivative A hA]
  unfold actualCovariantJet actualLogMixedDensity actualLogColumnSource
  ring

/-- Pure C4 isolation restores both lower source sectors of the ordinary repeated derivative. -/
theorem actual_twice_covariant_eq_ordinary_add_lower (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s =
        deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) s +
          actualCovariantJet A 2 t s / 2 - actualLogColumnSource A t s / 16 := by
  rw [actual_twice_covariant_mixed_fourth A hA, actualLogMixedDensity_mixed_derivative A hA]
  unfold actualCovariantJet actualLogFourthKernel actualLogColumnSource
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualCovariantKernel
