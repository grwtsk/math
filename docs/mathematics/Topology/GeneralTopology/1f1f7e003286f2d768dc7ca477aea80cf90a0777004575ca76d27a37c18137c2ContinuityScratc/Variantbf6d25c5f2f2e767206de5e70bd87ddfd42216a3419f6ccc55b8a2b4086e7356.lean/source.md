# Complete source: GRWTSK.Topology.GeneralTopology.1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc.Variantbf6d25c5f2f2e767206de5e70bd87ddfd42216a3419f6ccc55b8a2b4086e7356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b823b902d8e4a8e71c302746717defe739ed7e1d` · SHA-256 `844993cd40fbc8c41ad0bb23da93aad8ebfee5338c3f27d40c8a70e029271a9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ThetaPhiTermEqGaussians.Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ThetaPhiTermEqGaussians.Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/1f/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2--ContinuityScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.Analysis.Normed.Group.FunctionSeries


namespace GRWTSK.Topology.GeneralTopology.ThetaPhiTermEqGaussians.Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set
noncomputable section

theorem thetaPhiTerm_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTerm m t =
      (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
        HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m -
      (3 * Real.pi * Real.exp (5 * t)) *
        HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
  have he : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, he]
  ring

/-- Explicit summable bound on any compact coordinate interval. -/
def thetaPhiCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  (2 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m +
    (3 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

theorem thetaPhiCompactBound_summable (a b : ℝ) : Summable (thetaPhiCompactBound a b) := by
  exact ((HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * a))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (9 * b))).add
    ((HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * a))).mul_left
      (3 * Real.pi * Real.exp (5 * b)))

theorem thetaPhiTerm_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTerm m t‖ ≤ thetaPhiCompactBound a b m := by
  rw [thetaPhiTerm_eq_gaussians]
  refine (norm_sub_le _ _).trans ?_
  have h4 : 0 ≤ HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity)]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith [ht.1]))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  have hF (k : ℕ) : HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m :=
    mul_le_mul_of_nonneg_left hG (by positivity)
  unfold thetaPhiCompactBound
  apply add_le_add
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 4) h4 (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 2) h2 (by positivity)

theorem continuous_thetaPhiTerm (m : ℕ) : Continuous (thetaPhiTerm m) := by
  unfold thetaPhiTerm
  fun_prop

theorem continuousOn_thetaPhi_Icc (a b : ℝ) : ContinuousOn thetaPhi (Icc a b) := by
  exact continuousOn_tsum (fun m => (continuous_thetaPhiTerm m).continuousOn)
    (thetaPhiCompactBound_summable a b) (fun m _ ht => thetaPhiTerm_norm_le_compactBound ht m)

theorem continuous_thetaPhi : Continuous thetaPhi := by
  rw [continuous_iff_continuousAt]
  intro t
  exact (continuousOn_thetaPhi_Icc (t - 1) (t + 1)).continuousAt
    (Icc_mem_nhds (by linarith) (by linarith))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
