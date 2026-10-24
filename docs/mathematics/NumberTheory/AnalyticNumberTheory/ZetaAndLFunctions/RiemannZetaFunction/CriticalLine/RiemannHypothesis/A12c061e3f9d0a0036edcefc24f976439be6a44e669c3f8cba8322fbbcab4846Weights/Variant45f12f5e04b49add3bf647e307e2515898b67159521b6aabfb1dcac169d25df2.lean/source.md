# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights.Variant45f12f5e04b49add3bf647e307e2515898b67159521b6aabfb1dcac169d25df2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `577af35470b84f2b36c526c6a5b4d3e599621725` · SHA-256 `69a618eea67bc38006f96f2dbdd8337c1b0a8e258ad3b6877ae2164482504fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaModeWeight.Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaModeWeight.Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a1/a12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846--Weights.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaModeWeight.Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

def thetaModeWeight (m : ℕ) (t : ℝ) : ℝ := thetaPhiTerm m t / thetaPhi t

lemma thetaModeWeight_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaModeWeight m t :=
  div_pos (thetaPhiTerm_positive m ht) (thetaPhi_positive t ht)

lemma thetaModeWeight_summable (t : ℝ) : Summable (fun m => thetaModeWeight m t) :=
  (thetaPhi_summable t).div_const _

lemma thetaModeWeight_sum_one {t : ℝ} (ht : 0 ≤ t) :
    ∑' m, thetaModeWeight m t = 1 := by
  simp only [thetaModeWeight, tsum_div_const]
  change thetaPhi t / thetaPhi t = 1
  exact div_self (thetaPhi_positive t ht).ne'

lemma thetaPhiTerm_zero_le {t : ℝ} (ht : 0 ≤ t) : thetaPhiTerm 0 t ≤ thetaPhi t :=
  (thetaPhi_summable t).le_tsum 0 (fun m _ => (thetaPhiTerm_positive m ht).le)

lemma thetaModeWeight_le_modeRatio (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeWeight m t ≤ thetaPhiTerm m t / thetaPhiTerm 0 t := by
  unfold thetaModeWeight
  exact div_le_div_of_nonneg_left (thetaPhiTerm_positive m ht).le
    (thetaPhiTerm_positive 0 ht) (thetaPhiTerm_zero_le ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
