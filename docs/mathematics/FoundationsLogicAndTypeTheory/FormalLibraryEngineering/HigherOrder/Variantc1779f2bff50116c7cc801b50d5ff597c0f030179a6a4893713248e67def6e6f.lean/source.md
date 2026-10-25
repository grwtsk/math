# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HigherOrder.Variantc1779f2bff50116c7cc801b50d5ff597c0f030179a6a4893713248e67def6e6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea3acb85fa326853ce03bc9ba646ea063333ee5d` · SHA-256 `70190b33e2cf3b504bc26814a765e8b96ee8721837963dce110ba8484d18c5d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MapPurePrime.Variantd5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MapPurePrime.Variantd5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/HigherOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.HigherOrder


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MapPurePrime.Variantd5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f

set_option autoImplicit true
namespace HigherOrderTest

@[higher_order map_comp_pure]
theorem map_pure' {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
  {α β : Type u} (g : α → β) (x : α) : g <$> (pure x : f α) = pure (g x) := map_pure g x

example {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
    {α β : Type u} (g : α → β) : Functor.map g ∘ (pure : α → f α) = pure ∘ g := by
  apply map_comp_pure

end HigherOrderTest
```
