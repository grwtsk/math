# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelationAlgebra.Variantac4597ed43aa9e5f79ac2f7e1aab9a967a29522ea1a5780268b64ca4131290ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94b1f8e2bf1c0edf25c4c36bb96e1659e9f17fbd` · SHA-256 `dbece89536288b2bec721ae3cbaca85fcb7bfe877bb0e1fd092f8e3027c5aac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticRelationType.Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SemanticRelationType.Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56","mathematical_subject":"Foundations.Unclassified","original_sha256":"92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/RelationAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Context

/-!
# Typed semantic relation laws
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticRelationType.Variant92907aa8e9e2b18e32cb4826cc83b451d5b65b2593edb74a6e426ae607457a56

namespace Mathematics.SemanticTokenization

inductive SemanticRelationType
  | adjacent
  | syntacticDependency
  | coreference
  | modifier
  | argument
  | sameConcept
  | figurativeSource
  | figurativeTarget
  | idiomMember
  | synonym
  | nearSynonym
  | contrast
  | evidenceFor
  | transportToContext
  | hasCoreConcept
  | hasLiteralReading
  | hasContextualReading
  | registerVariant
  | sameImageFamily
  | substitutableIn
deriving DecidableEq, Repr

structure RelationLaw where
  reflexive : Bool
  symmetric : Bool
  transitive : Bool
  contextSensitive : Bool
deriving Repr

structure RelationAlgebra where
  law : SemanticRelationType → RelationLaw
  sameConcept_transitive :
    (law .sameConcept).transitive = true
  nearSynonym_not_assumed_transitive :
    (law .nearSynonym).transitive = false
  sameImage_not_synonym :
    law .sameImageFamily ≠ law .synonym

namespace RelationAlgebra

def conservative : RelationAlgebra where
  law
    | .sameConcept =>
        ⟨true, true, true, true⟩
    | .synonym =>
        ⟨true, true, false, true⟩
    | .nearSynonym =>
        ⟨false, true, false, true⟩
    | .sameImageFamily =>
        ⟨false, true, false, true⟩
    | .adjacent =>
        ⟨false, false, false, true⟩
    | _ =>
        ⟨false, false, false, true⟩
  sameConcept_transitive := rfl
  nearSynonym_not_assumed_transitive := rfl
  sameImage_not_synonym := by
    intro equality
    have reflexiveEquality :=
      congrArg RelationLaw.reflexive equality
    simp at reflexiveEquality

end RelationAlgebra

structure TransitivityCertificate
    {Node : Type*}
    {ContextIndex : Type*}
    (algebra : RelationAlgebra)
    (relation : SemanticRelationType)
    (RelationHolds :
      SemanticRelationType → Node → Node → ContextIndex → Prop) where
  declared :
    (algebra.law relation).transitive = true
  sound :
    ∀ {a b c context},
      RelationHolds relation a b context →
      RelationHolds relation b c context →
      RelationHolds relation a c context

end Mathematics.SemanticTokenization
```
