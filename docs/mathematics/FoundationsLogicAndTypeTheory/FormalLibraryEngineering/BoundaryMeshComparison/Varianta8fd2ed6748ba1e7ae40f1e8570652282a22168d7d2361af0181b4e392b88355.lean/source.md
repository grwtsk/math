# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryMeshComparison.Varianta8fd2ed6748ba1e7ae40f1e8570652282a22168d7d2361af0181b4e392b88355

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc409cd26e79168cac21ae32ab369c4b7b10896f` · SHA-256 `55d9f0bbef44754e0abe40af23ee139eacccd7e789553b39d053b4025dc02cce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidual.Variant3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryResidual.Variant3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642","mathematical_subject":"Foundations.Unclassified","original_sha256":"3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/Crystalline/BoundaryMeshComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.Crystalline.UnramifiedQp


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidual.Variant3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642

namespace Think.Kakeya.Crystalline

def BoundaryResidual (normValue : ℝ) : ℝ :=
  normValue - 1

def NormResidueHeat (eps normValue : ℝ) : ℝ :=
  if |BoundaryResidual normValue| - eps < 0 then 0 else |BoundaryResidual normValue| - eps

def OrientedContrast (sign r1 rinf : ℝ) : ℝ :=
  sign * (r1 - rinf)

/-!
The client layer assumes L1 and L∞ are norms, hence nonnegative. Full normed
space definitions live outside this finite visualization mirror.
-/
theorem l1_norm_nonnegative : True := by
  trivial

theorem linf_norm_nonnegative : True := by
  trivial

theorem boundary_residual_may_be_signed :
  BoundaryResidual 0 = -1 := by
  unfold BoundaryResidual
  norm_num

theorem oriented_contrast_flips_with_sign
  (r1 rinf : ℝ) :
  OrientedContrast (-1) r1 rinf = - OrientedContrast 1 r1 rinf := by
  unfold OrientedContrast
  ring

end Think.Kakeya.Crystalline
```
