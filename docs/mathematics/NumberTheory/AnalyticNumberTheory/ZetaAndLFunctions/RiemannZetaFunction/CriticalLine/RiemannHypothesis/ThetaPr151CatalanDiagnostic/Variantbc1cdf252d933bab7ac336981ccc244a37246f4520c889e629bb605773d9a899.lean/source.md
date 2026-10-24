# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPr151CatalanDiagnostic.Variantbc1cdf252d933bab7ac336981ccc244a37246f4520c889e629bb605773d9a899

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eb43cb00722617b93aa5e058f849cb387bf07f0` · SHA-256 `6bd6fed08ec240d7f09df3dc22d654af122b35923b1dda3179c5dec3d83c0207`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMagnitudeTape.Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"febead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualMagnitudeTape.Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"febead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta_pr151_catalan_diagnostic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiKrylovNondegeneracy
import FormalResearch.RiemannHypothesis.CatalanJacobi


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMagnitudeTape.Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic

open ThetaPositiveLift

/-- Diagnostic only: the actual finite PR151 unsigned base-moment tape. -/
noncomputable def actualMagnitudeTape (L N : ℕ) (t : ℝ) (n : ℕ) : ℝ :=
  ∑ l : Fin L, thetaPhiBaseMomentMagnitude N t l.val *
    thetaPhiSignedMomentNode l.val ^ n

/-- Exact positive first moment of the actual PR151 magnitude tape. -/
theorem actualMagnitudeTape_first_positive {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t : ℝ) : 0 < actualMagnitudeTape L N t 1 := by
  unfold actualMagnitudeTape
  simp only [pow_one]
  apply Finset.sum_pos
  · intro l _
    apply mul_pos (thetaPhiBaseMomentMagnitude_pos hN t l.val)
    unfold thetaPhiSignedMomentNode
    positivity
  · exact ⟨⟨0, hL⟩, Finset.mem_univ _⟩

/-- Even rescaling the canonical free cyclic vector cannot produce the
actual positive PR151 magnitude tape: its first moment remains zero. -/
theorem actualMagnitudeTape_not_scaled_free {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t c : ℝ) :
    actualMagnitudeTape L N t ≠
      fun n => c * CatalanJacobi.cyclicCoefficient (R := ℝ) n := by
  intro h
  have hfirst := congrFun h 1
  rw [CatalanJacobi.cyclicCoefficient_one, mul_zero] at hfirst
  exact (actualMagnitudeTape_first_positive hL hN t).ne' hfirst

end FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic

set_option pp.proofs false
#print FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_first_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_first_positive
#print FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_not_scaled_free
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_not_scaled_free
```
