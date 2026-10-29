import Mathematics.SemanticTokenization.Context

/-!
# Typed semantic relation laws
-/

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
