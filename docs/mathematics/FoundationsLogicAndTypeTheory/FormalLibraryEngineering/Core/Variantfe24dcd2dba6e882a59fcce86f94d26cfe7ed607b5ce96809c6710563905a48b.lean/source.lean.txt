-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LayerEquivalence.Variant6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LayerEquivalence.Variant6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d","mathematical_subject":"Foundations.Unclassified","original_sha256":"6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Logic/Layer/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Bridge.Continuous


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LayerEquivalence.Variant6f563c7f97ba282521bf98aff83ea6865c7187cd7973f730b2721075e878d62d

namespace Think.Logic

/-! Single adjacent layer equivalence. -/

structure LayerEquivalence where
  Source : Type
  Target : Type
  forward : Source → Target
  reverse : Target → Source
  sourceRoundTrip : ∀ x : Source, reverse (forward x) = x
  targetRoundTrip : ∀ y : Target, forward (reverse y) = y
  continuity : ContinuityCertificate
  receiptHash : String
  claimBearing : Bool

theorem LayerEquivalence.forward_injective
  (E : LayerEquivalence) :
  Injective E.forward :=
by
  intro x y h
  calc
    x = E.reverse (E.forward x) := (E.sourceRoundTrip x).symm
    _ = E.reverse (E.forward y) := by rw [h]
    _ = y := E.sourceRoundTrip y

theorem LayerEquivalence.forward_surjective
  (E : LayerEquivalence) :
  Surjective E.forward :=
by
  intro y
  exact ⟨E.reverse y, E.targetRoundTrip y⟩

theorem LayerEquivalence.forward_bijective
  (E : LayerEquivalence) :
  Bijective E.forward :=
by
  exact ⟨LayerEquivalence.forward_injective E,
         LayerEquivalence.forward_surjective E⟩

end Think.Logic
