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
