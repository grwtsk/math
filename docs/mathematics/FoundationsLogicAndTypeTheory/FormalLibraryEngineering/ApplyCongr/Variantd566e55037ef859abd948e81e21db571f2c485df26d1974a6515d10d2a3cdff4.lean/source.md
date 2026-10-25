# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantd566e55037ef859abd948e81e21db571f2c485df26d1974a6515d10d2a3cdff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f8ddf0c6a6ba444c1ba3cee63a9f236aa367fa7` · SHA-256 `e7e8683ac3c7b362b2d1ff64c5147e9a52df377eeca40a0ee27f3f0acc7d4e31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/apply_congr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ApplyCongr
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05

example (f g : ℤ → ℤ) (S : Finset ℤ) (h : ∀ m ∈ S, f m = g m) :
    Finset.sum S f = Finset.sum S g := by
  conv_lhs =>
    -- If we just call `congr` here, in the second goal we're helpless,
    -- because we are only given the opportunity to rewrite `f`.
    -- However `apply_congr` uses the appropriate `@[congr]` lemma,
    -- so we get to rewrite `f x`, in the presence of the crucial `H : x ∈ S` hypothesis.
    apply_congr
    · skip
    · simp [*]
```
