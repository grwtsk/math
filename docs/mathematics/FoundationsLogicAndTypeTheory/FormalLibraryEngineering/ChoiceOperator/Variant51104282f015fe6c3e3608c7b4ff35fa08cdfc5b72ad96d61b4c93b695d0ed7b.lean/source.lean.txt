-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChoiceOperator.Variant39142e4cb1099275c193e5fc791629ea95ad33dede86673437d427a4a26d811d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39142e4cb1099275c193e5fc791629ea95ad33dede86673437d427a4a26d811d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ChoiceOperator.Variant39142e4cb1099275c193e5fc791629ea95ad33dede86673437d427a4a26d811d","mathematical_subject":"Foundations.Unclassified","original_sha256":"39142e4cb1099275c193e5fc791629ea95ad33dede86673437d427a4a26d811d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Choice/ChoiceOperator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical proof-carrying interface for choice operators.

What is certificate-gated:
The existence of a choice operator is explicit data in `ChoiceAssumption`.

What is not claimed:
This module does not install global choice in canonical Surface mathematics.

Primary mathematical source:
Internal Surface historical choice-coverage scaffold.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChoiceOperator.Variant39142e4cb1099275c193e5fc791629ea95ad33dede86673437d427a4a26d811d

namespace Surface
namespace Legacy

universe u

abbrev Set (α : Type u) : Type u :=
  α -> Prop

structure ChoiceOperator where
  choose :
    ∀ {α : Type},
      (S : Set α) ->
      (∃ x, S x) ->
        α
  choose_mem :
    ∀ {α : Type}
      (S : Set α)
      (h : ∃ x, S x),
        S (choose S h)

structure ChoiceAssumption where
  operator : ChoiceOperator

end Legacy
end Surface
