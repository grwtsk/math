-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.NormLeOfMemBallOfForallSphereNormLe.Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.NormLeOfMemBallOfForallSphereNormLe.Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Complex/AbsMax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.AbsMax

/-!
# Maximum-modulus bounds on disks

This file records a disk bound from a boundary bound on the sphere, in the form needed by
growth estimates for holomorphic functions.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.NormLeOfMemBallOfForallSphereNormLe.Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892

@[expose] public section

namespace Complex

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F]

/-- If `f` is holomorphic on the disk `‖·‖ < r` and bounded by `C` on the circle `‖·‖ = r`, then
`‖f z‖ ≤ C` for every `z` in the disk. -/
theorem norm_le_of_mem_ball_of_forall_sphere_norm_le {f : ℂ → F} {r C : ℝ} {z : ℂ}
    (hd : Differentiable ℂ f) (hrpos : 0 < r)
    (hz : z ∈ Metric.ball (0 : ℂ) r) (hsphere : ∀ u : ℂ, ‖u‖ = r → ‖f u‖ ≤ C) :
    ‖f z‖ ≤ C := by
  let U : Set ℂ := Metric.ball (0 : ℂ) r
  have hfront : ∀ u ∈ frontier U, ‖f u‖ ≤ C := by
    intro u hu
    have hur : ‖u‖ = r := by
      have hfront' : frontier (Metric.ball (0 : ℂ) r) = Metric.sphere (0 : ℂ) r := by
        simpa using (frontier_ball (x := (0 : ℂ)) (r := r) (ne_of_gt hrpos))
      have : u ∈ Metric.sphere (0 : ℂ) r := by simpa [U, hfront'] using hu
      simpa [Metric.mem_sphere, dist_zero_right] using this
    exact hsphere u hur
  exact norm_le_of_forall_mem_frontier_norm_le (f := f) (U := U) Metric.isBounded_ball
    hd.diffContOnCl hfront (subset_closure hz)

end Complex
