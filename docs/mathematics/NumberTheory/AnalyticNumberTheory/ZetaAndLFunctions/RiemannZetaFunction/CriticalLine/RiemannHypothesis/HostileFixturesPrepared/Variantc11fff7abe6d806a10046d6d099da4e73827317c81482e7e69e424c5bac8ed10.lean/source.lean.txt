-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalGreenReadout.Variant37e197bc66b279a87096e116cbef258d06a254a6d0afca1c7437601f6be1e5c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37e197bc66b279a87096e116cbef258d06a254a6d0afca1c7437601f6be1e5c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCriticalGreenReadout.Variant37e197bc66b279a87096e116cbef258d06a254a6d0afca1c7437601f6be1e5c8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"37e197bc66b279a87096e116cbef258d06a254a6d0afca1c7437601f6be1e5c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle22/principal-green-readout/prepared-source-v2/HostileFixtures.prepared.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalGreenReadout

/-! Private hostile scope fixtures; uncompiled and no maintained-export credit. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalGreenReadout.Variant37e197bc66b279a87096e116cbef258d06a254a6d0afca1c7437601f6be1e5c8

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalGreenReadoutFixtures

open MeasureTheory Set
open scoped Interval
open SourceCriticalGreenReadout SourceCriticalGreenTent SourcePairedTailTest

-- Both true boundary coordinates remain in the closed interval contract.
example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A,
      criticalDirichletTent (2 * A) u 0 * deriv (deriv (pairedTailTest A)) u) = 0 := by
  have hi := pairedTailTest_integrated_green_readout hA
    (show (0 : ℝ) ∈ Icc 0 (2 * A) from ⟨le_rfl, by linarith⟩)
  simpa only [pairedTailTest_at_zero hA, neg_zero] using hi

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A,
      criticalDirichletTent (2 * A) u (2 * A) * deriv (deriv (pairedTailTest A)) u) =
        0 := by
  have hi := pairedTailTest_integrated_green_readout hA
    (show 2 * A ∈ Icc 0 (2 * A) from ⟨by linarith, le_rfl⟩)
  simpa only [pairedTailTest_at_upper hA, neg_zero] using hi

-- Nonzero endpoint traces prevent replacing the generic formula with -D(s).
example : (∫ u in (0 : ℝ)..2,
    criticalDirichletTent 2 u 1 * deriv (deriv (fun x : ℝ => x ^ 2)) u) = 1 := by
  have hd : ContDiff ℝ 1 (fun x : ℝ => x ^ 2) := by fun_prop
  have htwo : ContDiff ℝ 2 (fun x : ℝ => x ^ 2) := by fun_prop
  have hderiv : ContDiff ℝ 1 (deriv (fun x : ℝ => x ^ 2)) := htwo.deriv'
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (D := fun x : ℝ => x ^ 2) (show (0 : ℝ) < 2 by norm_num)
    (show (1 : ℝ) ∈ Icc 0 2 by norm_num) hd
    hderiv.contDiffOn.absolutelyContinuousOnInterval
  norm_num at hi
  exact hi

example : (-(1 : ℝ) ^ 2) ≠ 1 := by norm_num

-- Zero endpoints can give a negative integrated coefficient for a positive tent.
example : (∫ u in (0 : ℝ)..2,
    criticalDirichletTent 2 u 1 * deriv (deriv (fun x : ℝ => x * (2 - x))) u) =
      -1 := by
  have hd : ContDiff ℝ 1 (fun x : ℝ => x * (2 - x)) := by fun_prop
  have htwo : ContDiff ℝ 2 (fun x : ℝ => x * (2 - x)) := by fun_prop
  have hderiv : ContDiff ℝ 1 (deriv (fun x : ℝ => x * (2 - x))) := htwo.deriv'
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (D := fun x : ℝ => x * (2 - x)) (show (0 : ℝ) < 2 by norm_num)
    (show (1 : ℝ) ∈ Icc 0 2 by norm_num) hd
    hderiv.contDiffOn.absolutelyContinuousOnInterval
  norm_num at hi
  exact hi

example : criticalDirichletTent 2 1 1 = (1 / 2 : ℝ) := by
  norm_num [criticalDirichletTent]

-- Dropping coordinate or length guards gives false sign/readout shortcuts.
example : criticalDirichletTent 2 (-1) 1 < 0 := by
  norm_num [criticalDirichletTent]

example (u s : ℝ) : criticalDirichletTent 0 u s = 0 := by
  simp [criticalDirichletTent]

-- The lower derivative is not an artificial zero extension.
example {A : ℝ} (hA : 1 ≤ A) : deriv (pairedTailTest A) 0 ≠ 0 := by
  rw [pairedTailTest_deriv_at_zero hA]
  norm_num

example {A : ℝ} (hA : 1 ≤ A) : deriv (pairedTailTest A) (2 * A) = 0 :=
  pairedTailTest_deriv_at_upper hA

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, deriv (deriv (pairedTailTest A)) u) = 1 / 2 :=
  (pairedTailTest_second_deriv_moments hA).1

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, u * deriv (deriv (pairedTailTest A)) u) = 0 :=
  (pairedTailTest_second_deriv_moments hA).2

example {A : ℝ} (hA : 1 ≤ A) :
    ¬ (∀ᵐ u ∂volume.restrict (Ioc 0 (2 * A)),
      0 ≤ deriv (deriv (pairedTailTest A)) u) :=
  pairedTailTest_second_deriv_not_ae_nonneg hA

-- The actual profile remains C1 with AC derivative; C2 is not required here.
example {A : ℝ} (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) 0 (2 * A) :=
  SourceCriticalSecondAbel.pairedTailTest_deriv_absolutelyContinuous hA

end FormalResearch.RiemannHypothesis.SourceCriticalGreenReadoutFixtures
