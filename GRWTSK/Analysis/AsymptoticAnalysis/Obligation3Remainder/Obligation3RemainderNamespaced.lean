-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.RemainingOccurrence.Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.RemainingOccurrence.Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/obligation3-remainder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceCollision
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIsolation
import Mathlib.Analysis.Complex.AbsMax


namespace GRWTSK.Analysis.AsymptoticAnalysis.RemainingOccurrence.Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceLaplaceRemainder
open Set Filter Metric
open scoped Topology
open SourceLaplacePrincipalPart SourceLaplaceConvergence SourceLaplaceDomain SourceLaplaceCollision
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
noncomputable section

abbrev RemainingOccurrence (p : ZeroPoint) := {o : ZeroOccurrence // o ∉ collisionSet p}

def remainder (p : ZeroPoint) (s : ℂ) : ℂ :=
  ∑' o : RemainingOccurrence p, sourceKernel (shiftedValue o.val) s

lemma boundary_norms_summable (p : ZeroPoint) (r : ℝ)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain) :
    Summable (fun o : RemainingOccurrence p ↦
      compactKernelNorm (sphere (2 * (p.val - 1 / 2)) r) o.val) :=
  (sourceKernel_compact_norms_summable _ (isCompact_sphere _ _) hD).subtype _

lemma closedDisk_norm_le_boundary (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r))
    (o : RemainingOccurrence p) (s : ℂ) (hs : s ∈ closedBall (2 * (p.val - 1 / 2)) r) :
    ‖sourceKernel (shiftedValue o.val) s‖ ≤
      compactKernelNorm (sphere (2 * (p.val - 1 / 2)) r) o.val := by
  apply Complex.norm_le_of_forall_mem_frontier_norm_le (U := ball (2 * (p.val - 1 / 2)) r)
    isBounded_ball
  · apply DifferentiableOn.diffContOnCl
    rw [closure_ball _ hr.ne']
    exact (hhol o).differentiableOn
  · intro t ht
    exact norm_le_compactKernelNorm _ (isCompact_sphere _ _) hD o.val t
      (frontier_ball_subset_sphere ht)
  · simpa only [closure_ball _ hr.ne'] using hs

lemma closedDisk_norms_summable (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r))
    (s : ℂ) (hs : s ∈ closedBall (2 * (p.val - 1 / 2)) r) :
    Summable (fun o : RemainingOccurrence p ↦ ‖sourceKernel (shiftedValue o.val) s‖) :=
  Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    (fun o ↦ closedDisk_norm_le_boundary p r hr hD hhol o s hs)
    (boundary_norms_summable p r hD)

lemma remainder_hasSumUniformlyOn_closedDisk (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r)) :
    HasSumUniformlyOn (fun o : RemainingOccurrence p ↦ sourceKernel (shiftedValue o.val))
      (remainder p) (closedBall (2 * (p.val - 1 / 2)) r) :=
  HasSumUniformlyOn.of_norm_le_summable (boundary_norms_summable p r hD)
    (fun o s hs ↦ closedDisk_norm_le_boundary p r hr hD hhol o s hs)

lemma remainder_analyticOn_ball (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r)) :
    AnalyticOnNhd ℂ (remainder p) (ball (2 * (p.val - 1 / 2)) r) := by
  have hlim := ((remainder_hasSumUniformlyOn_closedDisk p r hr hD hhol).mono
    ball_subset_closedBall).hasSumLocallyUniformlyOn
  rw [hasSumLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn] at hlim
  apply DifferentiableOn.analyticOnNhd _ isOpen_ball
  apply hlim.differentiableOn _ isOpen_ball
  exact Eventually.of_forall (fun _ ↦ DifferentiableOn.fun_sum (fun o _ s hs ↦
    (hhol o s (ball_subset_closedBall hs)).differentiableAt.differentiableWithinAt))

lemma closedDisk_supNorms_summable (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r)) :
    Summable (fun o : RemainingOccurrence p ↦
      compactKernelNorm (closedBall (2 * (p.val - 1 / 2)) r) o.val) := by
  apply Summable.of_nonneg_of_le _ _ (boundary_norms_summable p r hD)
  · intro o
    apply (norm_nonneg (sourceKernel (shiftedValue o.val) (2 * (p.val - 1 / 2)))).trans
    apply le_csSup
    · exact (isCompact_closedBall _ _).bddAbove_image (hhol o).continuousOn.norm
    · exact mem_image_of_mem _ (mem_closedBall_self hr.le)
  · intro o
    apply csSup_le (Set.Nonempty.image _ ⟨2 * (p.val - 1 / 2), mem_closedBall_self hr.le⟩)
    rintro y ⟨s, hs, rfl⟩
    exact closedDisk_norm_le_boundary p r hr hD hhol o s hs

lemma remaining_kernel_analytic_on_isolating_disk (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hlocal : ∀ s ∈ closedBall (2 * (p.val - 1 / 2)) (2 * r),
      0 < s.re ∧ (s ∈ candidateSingularities → s = 2 * (p.val - 1 / 2)))
    (o : RemainingOccurrence p) :
    AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val)) (closedBall (2 * (p.val - 1 / 2)) r) := by
  have hne : shiftedValue o.val ≠ p.val - 1 / 2 ∧
      shiftedValue o.val ≠ -(p.val - 1 / 2) := by
    simpa only [collisionSet, mem_setOf_eq, not_or] using o.property
  have hpos : 2 * (p.val - 1 / 2) ≠ 2 * shiftedValue o.val := by
    intro he
    exact hne.1 ((mul_left_cancel₀ (by norm_num : (2 : ℂ) ≠ 0) he).symm)
  have hneg : 2 * (p.val - 1 / 2) ≠ -2 * shiftedValue o.val := by
    intro he
    apply hne.2
    linear_combination (1 / 2 : ℂ) * he
  intro s hs
  apply SourceLaplaceIsolation.noncolliding_kernel_analytic _ r hlocal o.val hpos hneg s
  exact closedBall_subset_closedBall (by linarith) hs

lemma exists_remainder_disk (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    ∃ r : ℝ, 0 < r ∧
      sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain ∧
      Summable (fun o : RemainingOccurrence p ↦
        compactKernelNorm (closedBall (2 * (p.val - 1 / 2)) r) o.val) ∧
      (∀ s ∈ closedBall (2 * (p.val - 1 / 2)) r,
        Summable (fun o : RemainingOccurrence p ↦ ‖sourceKernel (shiftedValue o.val) s‖)) ∧
      HasSumUniformlyOn (fun o : RemainingOccurrence p ↦ sourceKernel (shiftedValue o.val))
        (remainder p) (closedBall (2 * (p.val - 1 / 2)) r) ∧
      AnalyticOnNhd ℂ (remainder p) (ball (2 * (p.val - 1 / 2)) r) := by
  have hc : 0 < (2 * (p.val - 1 / 2)).re := by
    simpa using mul_pos (by norm_num : (0 : ℝ) < 2) hp
  obtain ⟨r, hr, hlocal⟩ := SourceLaplaceIsolation.exists_isolating_radius _ hc
  have hD := SourceLaplaceIsolation.sphere_subset_domain _ r hr hlocal
  have hhol := remaining_kernel_analytic_on_isolating_disk p r hr hlocal
  exact ⟨r, hr, hD, closedDisk_supNorms_summable p r hr hD hhol,
    fun s hs ↦ closedDisk_norms_summable p r hr hD hhol s hs,
    remainder_hasSumUniformlyOn_closedDisk p r hr hD hhol,
    remainder_analyticOn_ball p r hr hD hhol⟩

lemma remainder_analytic_at (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ (remainder p) (2 * (p.val - 1 / 2)) := by
  obtain ⟨r, hr, _, _, _, _, hhol⟩ := exists_remainder_disk p hp
  exact hhol _ (mem_ball_self hr)

end
end SourceLaplaceRemainder
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
