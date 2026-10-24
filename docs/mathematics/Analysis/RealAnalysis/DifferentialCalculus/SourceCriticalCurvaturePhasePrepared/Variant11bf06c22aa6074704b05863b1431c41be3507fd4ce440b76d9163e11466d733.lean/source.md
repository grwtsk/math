# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalCurvaturePhasePrepared.Variant11bf06c22aa6074704b05863b1431c41be3507fd4ce440b76d9163e11466d733

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1449968f3923672438f6573976273752656b0ac2` · SHA-256 `529af4fe655fe765b160a5d9240bfe77cbf1f2e907f6c6108ab940548b4c954d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivEqNegOfDerivPos.Variant9ae360fbfe100d68795c055719622a7f807e88a7634559045fba963ae13d66d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ae360fbfe100d68795c055719622a7f807e88a7634559045fba963ae13d66d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PairedTailTestSecondDerivEqNegOfDerivPos.Variant9ae360fbfe100d68795c055719622a7f807e88a7634559045fba963ae13d66d4","mathematical_subject":"Analysis.Calculus","original_sha256":"9ae360fbfe100d68795c055719622a7f807e88a7634559045fba963ae13d66d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle22/principal-green-readout/next-investigation/next-Lean-phase-unit-v1/SourceCriticalCurvaturePhase.prepared.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

/-!
# Actual curvature on a strict positive derivative phase

Research candidate; local/kernel/main acceptance are separate receipt gates.
The literal max formula is differentiated only where the actual critical
prime-test derivative is strictly positive. No global paired C2 regularity,
curvature sign, arithmetic estimate or uniform signed witness is asserted.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivEqNegOfDerivPos.Variant9ae360fbfe100d68795c055719622a7f807e88a7634559045fba963ae13d66d4

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

open Filter Set
open SourceCriticalSecondAbel SourcePairedTailTest SourcePairedPrimeWork SourceFirstPrimeAbel

/-- Strict positivity selects the literal positive max branch on an ambient neighborhood. -/
theorem pairedTailTest_second_deriv_eq_neg_of_deriv_pos
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u =
      -deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hpos : ∀ᶠ v in 𝓝 u, 0 < deriv (criticalPrimeTest A) v :=
    hg.continuous.continuousAt.preimage_mem_nhds (Ioi_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -deriv (criticalPrimeTest A) v) := by
    filter_upwards [hpos] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_left hv.le,
      max_eq_right (neg_nonpos.mpr hv.le), mul_zero, add_zero]
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact (hd.neg.congr_of_eventuallyEq he).deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
```
