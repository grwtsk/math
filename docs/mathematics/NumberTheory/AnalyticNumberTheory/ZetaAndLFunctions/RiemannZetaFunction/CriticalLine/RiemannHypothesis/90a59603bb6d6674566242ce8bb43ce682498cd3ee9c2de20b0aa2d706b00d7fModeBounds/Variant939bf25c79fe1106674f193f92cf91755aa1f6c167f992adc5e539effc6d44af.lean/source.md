# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7fModeBounds.Variant939bf25c79fe1106674f193f92cf91755aa1f6c167f992adc5e539effc6d44af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ebcb53055f28c511c80ded222c9ba92b74fd301` · SHA-256 `baaeadd9e83bb512386d2311ae433eab43a66c14bc04ede7ed1683283a324414`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiModes.Variant90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/90/90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f--ModeBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiModes

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant90a59603bb6d6674566242ce8bb43ce682498cd3ee9c2de20b0aa2d706b00d7f

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section
example {t : ℝ} (ht : 0 ≤ t) : 3 < thetaModeA t := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  unfold thetaModeA
  nlinarith [Real.pi_gt_three]
example (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : thetaModeA t ≤ thetaModeY m t := by
  have ha : 0 ≤ thetaModeA t := by unfold thetaModeA; positivity
  have hn : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  unfold thetaModeY
  nlinarith [mul_nonneg ha (show 0 ≤ ((m + 1 : ℕ) : ℝ)^2 - 1 by nlinarith)]
example (y : ℝ) (hy : 3 ≤ y) : |9 + 12/(2*y-3)-4*y| ≤ 9*y := by
  have hd : 0 < 2*y-3 := by linarith
  have hdiv0 : 0 ≤ 12/(2*y-3) := by positivity
  have hdiv : 12/(2*y-3) ≤ 4 := (div_le_iff₀ hd).2 (by linarith)
  rw [abs_le]
  constructor <;> linarith
example (y : ℝ) (hy : 3 ≤ y) : |-16*y-96*y/(2*y-3)^2| ≤ 27*y := by
  have hd : 0 < (2*y-3)^2 := sq_pos_of_pos (by linarith)
  have hds : 9 ≤ (2*y-3)^2 := by nlinarith
  have hdiv0 : 0 ≤ 96*y/(2*y-3)^2 := by positivity
  have hdiv : 96*y/(2*y-3)^2 ≤ 11*y := (div_le_iff₀ hd).2 (by nlinarith [mul_nonneg (show 0≤y by linarith) (show 0≤(2*y-3)^2-9 by linarith)])
  rw [abs_le]
  constructor <;> linarith
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
