# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Profile.Variantba5028ceb9e7f91c7ed42dd6b4394a19af8b7d885b920ea50ea76ccd75cd162b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f4681d61159a5411ad355f1f2d5d39fa896cd3e` · SHA-256 `75284100e4a487e013186b9f0cfbfc91bb48b27ae59182c494ffbe1ddb53a243`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalNotationProfile.Variant9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OrdinalNotationProfile.Variant9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a","mathematical_subject":"Logic.SetTheory","original_sha256":"9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Ordinal notation profile

All semantic operations are conditional on a versioned profile and its proof
fields.  A syntactically populated code is not thereby part of the profile.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalNotationProfile.Variant9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a

namespace Mathematics.StratifiedBoundary

structure OrdinalNotationProfile (Semantic : Type u) where
  profileId : String
  constructorSetRef : String
  normalizationAlgorithmRef : String
  comparisonAlgorithmRef : String
  supportedFragmentRef : String
  denotes : OrdinalTally → Semantic
  admits : OrdinalTally → Prop
  normalize : OrdinalTally → OrdinalTally
  normalize_admitted :
    ∀ {code}, admits code → admits (normalize code)
  normalize_sound :
    ∀ {code}, admits code →
      denotes (normalize code) = denotes code
  normalize_idempotent :
    ∀ {code}, admits code →
      normalize (normalize code) = normalize code

theorem ordinalTally_normalization_sound
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.denotes (profile.normalize code) =
      profile.denotes code :=
  profile.normalize_sound admitted

theorem ordinalTally_normalization_idempotent
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.normalize (profile.normalize code) =
      profile.normalize code :=
  profile.normalize_idempotent admitted

end Mathematics.StratifiedBoundary
```
