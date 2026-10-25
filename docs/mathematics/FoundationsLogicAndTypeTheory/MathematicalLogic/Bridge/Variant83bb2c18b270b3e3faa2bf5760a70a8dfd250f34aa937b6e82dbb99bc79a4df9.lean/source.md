# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Bridge.Variant83bb2c18b270b3e3faa2bf5760a70a8dfd250f34aa937b6e82dbb99bc79a4df9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbec4ce27de3695ec7c742580622746d6675c658` · SHA-256 `4ddb0380cb3ad6c5f87d1e92d8c05b4c3ce4f86f668b16a387b44adb751e2851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExactBridge.Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ExactBridge.Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7","mathematical_subject":"Logic.Foundations","original_sha256":"cda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Federation/Bridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.ProjectFiber

/-! # Proof-bearing bridges between project fibers -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExactBridge.Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7

namespace Mathematics.Federation

universe u v

/-- Exact two-sided bridge; construction requires both inverse laws. -/
structure ExactBridge (Source : Type u) (Target : Type v) where
  bridgeId : StableId
  forward : Source → Target
  backward : Target → Source
  leftInverse : Function.LeftInverse backward forward
  rightInverse : Function.RightInverse backward forward
  certificateDigest : Digest

namespace ExactBridge

theorem forward_injective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Injective bridge.forward :=
  bridge.leftInverse.injective

theorem forward_surjective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Surjective bridge.forward :=
  bridge.rightInverse.surjective

end ExactBridge

end Mathematics.Federation
```
