# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant1cbce4f4a402de2035930d422918a336abc00aaff49f90a340ca15e401f08416

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4b7b8b38efc61437ad39a387481069d59332df3` · SHA-256 `35ccdd746c9f6c8d698b06ae8f43531457d5639c1b36d686876f5945c36b7827`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetDet4SingleMode.Variant57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiJetDet4SingleMode.Variant57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFour

/-!
# Dominant-mode certificate for the rank-four theta Wronskian

The normalized source jet is a rapidly convergent sum of Gaussian modes.  This
module isolates its first mode and proves the corresponding order-four Hankel
determinant exactly.  The resulting polynomial is strictly positive throughout
the actual theta-source region.

This is an exact structural certificate for the dominant mode only.  It does
not prove positivity after the remaining modes are restored.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetDet4SingleMode.Variant57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Exact determinant of the first normalized theta mode. -/
theorem thetaPhiJetDet4_single_mode (y : ℝ) :
    thetaPhiJetDet4 (fun k => thetaPhiJetPolynomial7 k y) =
      201326592 * y ^ 6 *
        (16 * y ^ 4 - 96 * y ^ 3 + 360 * y ^ 2 - 840 * y + 945) := by
  dsimp [thetaPhiJetDet4, thetaPhiJetPolynomial7]
  ring

/-- The quartic factor in the dominant-mode determinant is strictly positive
once the mode coordinate is at least three. -/
theorem thetaPhiJetDet4_single_mode_quartic_pos {y : ℝ} (hy : 3 ≤ y) :
    0 < 16 * y ^ 4 - 96 * y ^ 3 + 360 * y ^ 2 - 840 * y + 945 := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have hyx : y = x + 3 := by
    dsimp [x]
    ring
  rw [hyx]
  have h :
      16 * (x + 3) ^ 4 - 96 * (x + 3) ^ 3 + 360 * (x + 3) ^ 2 -
          840 * (x + 3) + 945 =
        16 * x ^ 4 + 96 * x ^ 3 + 360 * x ^ 2 + 456 * x + 369 := by
    ring
  rw [h]
  positivity

/-- The exact dominant-mode rank-four determinant is strictly positive on
the entire region y >= 3. -/
theorem thetaPhiJetDet4_single_mode_pos {y : ℝ} (hy : 3 ≤ y) :
    0 < thetaPhiJetDet4 (fun k => thetaPhiJetPolynomial7 k y) := by
  rw [thetaPhiJetDet4_single_mode]
  have hy0 : 0 < y := lt_of_lt_of_le (by norm_num) hy
  have hq := thetaPhiJetDet4_single_mode_quartic_pos hy
  positivity

/-- The actual first theta mode lies in the positive dominant-mode region for
every nonnegative source coordinate. -/
theorem thetaPhiJetDet4_dominant_mode_pos {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaPhiJetDet4
      (fun k => thetaPhiJetPolynomial7 k (thetaModeA t)) := by
  apply thetaPhiJetDet4_single_mode_pos
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  unfold thetaModeA
  exact (le_of_lt Real.pi_gt_three).trans
    (le_mul_of_one_le_right Real.pi_pos.le he)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
