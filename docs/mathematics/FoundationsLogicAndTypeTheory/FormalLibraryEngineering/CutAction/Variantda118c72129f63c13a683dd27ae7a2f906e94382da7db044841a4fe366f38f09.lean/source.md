# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutAction.Variantda118c72129f63c13a683dd27ae7a2f906e94382da7db044841a4fe366f38f09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef48be7968cf4dc0ad15af71358db684a80723a4` · SHA-256 `d39889ff85532bd1c601a0ebd7fc31d0ccf7f551fdbb8720315138b6ac5c6999`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutAutomorphismAction.Variant1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CutAutomorphismAction.Variant1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5","mathematical_subject":"Foundations.Unclassified","original_sha256":"1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Symmetry/CutAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite-cut symmetry action
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutAutomorphismAction.Variant1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5

namespace Mathematics.StratifiedBoundary

structure CutAutomorphismAction
    (GroupElement State : Type u) where
  identityElement : GroupElement
  act : GroupElement → State → State
  identityAction :
    ∀ state,
      act identityElement state = state
  actionCompositionRef : String

end Mathematics.StratifiedBoundary
```
