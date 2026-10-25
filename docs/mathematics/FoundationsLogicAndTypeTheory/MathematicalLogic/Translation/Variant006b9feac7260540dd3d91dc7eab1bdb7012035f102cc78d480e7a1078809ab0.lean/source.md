# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Translation.Variant006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `198183b8a7758a2612c4359cfc6911f0023b62a0` · SHA-256 `006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.ActiveRegion

/-!
# Typed, relation-specific model translations

A translation records its assumptions, versions, authority, provenance, proof
transport, and unsupported scope. Unsupported relation compositions are not
silently totalized.
-/

universe u v w

namespace Surface.ContinuousAssurance.WorldModel

/-- Declared semantic strength of a model translation. -/
inductive ModelTranslationRelation
  | exactEquivalence
  | conservativeInterpretation
  | faithfulInterpretation
  | soundAbstraction
  | definitionalExtension
  | theoremTransport
  | executableRefinement
  | observationalCorrespondence
  | illustrativeProjection
  deriving DecidableEq, Repr

/-- Optional, separately declared counterexample transport. -/
structure CounterexampleTransport (Source : Type u) (Target : Type v) where
  sourceCounterexample : Source → Prop
  targetCounterexample : Target → Prop
  map : Source → Target
  transport : ∀ x, sourceCounterexample x → targetCounterexample (map x)

namespace CounterexampleTransport

/-- Compose declared counterexample transports through an explicit middle-scope bridge. -/
def compose
    {Source : Type u} {Middle : Type v} {Target : Type w}
    (first : CounterexampleTransport Source Middle)
    (second : CounterexampleTransport Middle Target)
    (middleScope : ∀ value,
      first.targetCounterexample value → second.sourceCounterexample value) :
    CounterexampleTransport Source Target where
  sourceCounterexample := first.sourceCounterexample
  targetCounterexample := second.targetCounterexample
  map := fun value => second.map (first.map value)
  transport := fun value counterexample =>
    second.transport (first.map value)
      (middleScope (first.map value) (first.transport value counterexample))

/-- TRN-08: a declared scoped counterexample survives typed composition. -/
theorem compose_transport
    {Source : Type u} {Middle : Type v} {Target : Type w}
    (first : CounterexampleTransport Source Middle)
    (second : CounterexampleTransport Middle Target)
    (middleScope : ∀ value,
      first.targetCounterexample value → second.sourceCounterexample value)
    (value : Source)
    (counterexample : first.sourceCounterexample value) :
    second.targetCounterexample
      ((first.compose second middleScope).map value) :=
  (first.compose second middleScope).transport value counterexample

end CounterexampleTransport

/-- A theorem-bearing transport wrapped in `Type` so its presence is optional. -/
structure TranslationProofTransport
    (Source : Type u) (Target : Type v)
    (objectMap : Source → Target)
    (sourceProposition : Source → Prop)
    (targetProposition : Target → Prop) : Type (max u v) where
  proof : ∀ x, sourceProposition x → targetProposition (objectMap x)

/-- Typed translation between two object languages. -/
structure ModelTranslation (Source : Type u) (Target : Type v) where
  identity : TranslationId
  sourceModel : WorldModelVersionId
  targetModel : WorldModelVersionId
  relation : ModelTranslationRelation
  sourceContext : AssumptionContext
  targetContext : AssumptionContext
  objectMap : Source → Target
  sourceProposition : Source → Prop
  targetProposition : Target → Prop
  proofTransport : Option
    (TranslationProofTransport Source Target objectMap
      sourceProposition targetProposition)
  counterexampleTransport : Option (CounterexampleTransport Source Target)
  preservesTyping : Prop
  preservesDeclaredMeaning : Prop
  assumptionsMapped : Prop
  sourceAuthority : AuthorityClass
  targetAuthority : AuthorityClass
  authorityNonIncreasing : AuthorityNonIncreasing sourceAuthority targetAuthority
  provenance : List ArtifactIdentity
  provenancePreserved : Prop
  versionCompatible : Prop
  unsupportedScope : List ObligationId

/-- A heterogeneous translation package used only where a finite surgery must
carry updates between differently typed model pairs.  Source and target types
remain present instead of being reduced to an untyped artifact identifier. -/
structure AnyModelTranslation where
  Source : Type u
  Target : Type v
  translation : ModelTranslation Source Target

/-!
## Relation-specific certificates

`ModelTranslation` is the serializable transport record.  A semantic relation
claim is usable only after constructing the matching certificate below.  In
particular, writing `relation := exactEquivalence` does not manufacture an
inverse, and writing `relation := theoremTransport` does not manufacture a
proof transport.
-/

/-- Exact equivalence evidence contains both inverse laws. -/
structure ExactEquivalenceEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .exactEquivalence
  inverse : Target → Source
  left_inverse : Function.LeftInverse inverse translation.objectMap
  right_inverse : Function.RightInverse inverse translation.objectMap

/-- Faithful interpretations must actually be injective. -/
structure FaithfulInterpretationEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .faithfulInterpretation
  injective : Function.Injective translation.objectMap

/-- A sound abstraction names the exact soundness proposition and its proof. -/
structure SoundAbstractionEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .soundAbstraction
  Sound : Prop
  sound : Sound
  lossProfile : List ObligationId

/-- Theorem transport requires a typed proof transformer for this exact map. -/
structure TheoremTransportEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .theoremTransport
  transport : TranslationProofTransport Source Target translation.objectMap
    translation.sourceProposition translation.targetProposition

/-- Executable refinement remains conditional on an explicit refinement theorem. -/
structure ExecutableRefinementEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .executableRefinement
  refinementConclusion : Prop
  refinementProof : refinementConclusion
  implementationEvidence : ArtifactIdentity

/-- Observational correspondence names and proves its observation law. -/
structure ObservationalCorrespondenceEvidence
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) where
  relation_eq : translation.relation = .observationalCorrespondence
  correspondence : Prop
  correspondenceProof : correspondence

/-- A certified translation has evidence matching its declared relation. -/
inductive CertifiedModelTranslation
    {Source : Type u} {Target : Type v}
    (translation : ModelTranslation Source Target) : Type (max u v) where
  | exact (evidence : ExactEquivalenceEvidence translation)
  | conservative
      (relation_eq : translation.relation = .conservativeInterpretation)
      (transport : TranslationProofTransport Source Target translation.objectMap
        translation.sourceProposition translation.targetProposition)
  | faithful (evidence : FaithfulInterpretationEvidence translation)
  | sound (evidence : SoundAbstractionEvidence translation)
  | definitional
      (relation_eq : translation.relation = .definitionalExtension)
      (transport : TranslationProofTransport Source Target translation.objectMap
        translation.sourceProposition translation.targetProposition)
  | theoremTransport (evidence : TheoremTransportEvidence translation)
  | executable (evidence : ExecutableRefinementEvidence translation)
  | observational (evidence : ObservationalCorrespondenceEvidence translation)
  | illustrative (relation_eq : translation.relation = .illustrativeProjection)

/-- Certified exact translations expose an actual two-sided inverse. -/
theorem exact_certificate_has_inverse
    {Source : Type u} {Target : Type v}
    {translation : ModelTranslation Source Target}
    (certificate : ExactEquivalenceEvidence translation) :
    ∃ inverse : Target → Source,
      Function.LeftInverse inverse translation.objectMap ∧
      Function.RightInverse inverse translation.objectMap :=
  ⟨certificate.inverse, certificate.left_inverse, certificate.right_inverse⟩

/-- Certified theorem transport exposes the typed proof transformer. -/
theorem theorem_transport_certificate_has_proof
    {Source : Type u} {Target : Type v}
    {translation : ModelTranslation Source Target}
    (certificate : TheoremTransportEvidence translation) :
    ∀ x, translation.sourceProposition x →
      translation.targetProposition (translation.objectMap x) :=
  certificate.transport.proof

/-- Explicit partial relation-composition table. Exact equivalence is neutral. -/
def composeRelation :
    ModelTranslationRelation → ModelTranslationRelation →
      Option ModelTranslationRelation
  | .exactEquivalence, relation => some relation
  | relation, .exactEquivalence => some relation
  | .conservativeInterpretation, .conservativeInterpretation =>
      some .conservativeInterpretation
  | .faithfulInterpretation, .faithfulInterpretation =>
      some .faithfulInterpretation
  | .soundAbstraction, .soundAbstraction => some .soundAbstraction
  | .definitionalExtension, .definitionalExtension =>
      some .definitionalExtension
  | .theoremTransport, .theoremTransport => some .theoremTransport
  | .executableRefinement, .executableRefinement =>
      some .executableRefinement
  | .observationalCorrespondence, .observationalCorrespondence =>
      some .observationalCorrespondence
  | .illustrativeProjection, .illustrativeProjection =>
      some .illustrativeProjection
  | _, _ => none

/-- Why two translation steps cannot be composed. -/
inductive TranslationCompositionObstruction
  | unsupportedRelations
      (first second : ModelTranslationRelation)
  | versionMismatch
      (firstTarget secondSource : WorldModelVersionId)
  | assumptionMismatch
      (firstTarget secondSource : ArtifactIdentity)
  | missingMeaningBridge
  deriving Repr

/-- Typed result: a composed translation or an explicit obstruction. -/
inductive TranslationCompositionResult
    (Source : Type u) (Target : Type w) where
  | composed (translation : ModelTranslation Source Target)
  | obstructed (obstruction : TranslationCompositionObstruction)

namespace ModelTranslation

/-- Identity exact translation. -/
def identityTranslation
    (model : WorldModelVersionId)
    (context : AssumptionContext)
    (authority : AuthorityClass)
    (identity : TranslationId)
    (Object : Type u)
    (predicate : Object → Prop) :
    ModelTranslation Object Object where
  identity := identity
  sourceModel := model
  targetModel := model
  relation := .exactEquivalence
  sourceContext := context
  targetContext := context
  objectMap := id
  sourceProposition := predicate
  targetProposition := predicate
  proofTransport := some ⟨fun _ proof ↦ proof⟩
  counterexampleTransport := none
  preservesTyping := True
  preservesDeclaredMeaning := True
  assumptionsMapped := True
  sourceAuthority := authority
  targetAuthority := authority
  authorityNonIncreasing := Nat.le_refl _
  provenance := []
  provenancePreserved := True
  versionCompatible := True
  unsupportedScope := []

/-- TRN-01: identity translation is the identity function. -/
@[simp]
theorem identity_apply
    (model : WorldModelVersionId)
    (context : AssumptionContext)
    (authority : AuthorityClass)
    (identityId : TranslationId)
    (Object : Type u)
    (predicate : Object → Prop)
    (x : Object) :
    (identityTranslation model context authority identityId Object predicate).objectMap x = x :=
  rfl

/-- Build an exact translation from an actual equivalence and proposition law. -/
def ofEquiv
    (identity : TranslationId)
    (sourceModel targetModel : WorldModelVersionId)
    (sourceContext targetContext : AssumptionContext)
    (authority : AuthorityClass)
    (equiv : Source ≃ Target)
    (sourcePredicate : Source → Prop)
    (targetPredicate : Target → Prop)
    (meaning : ∀ x, sourcePredicate x ↔ targetPredicate (equiv x)) :
    ModelTranslation Source Target where
  identity := identity
  sourceModel := sourceModel
  targetModel := targetModel
  relation := .exactEquivalence
  sourceContext := sourceContext
  targetContext := targetContext
  objectMap := equiv
  sourceProposition := sourcePredicate
  targetProposition := targetPredicate
  proofTransport := some ⟨fun x proof ↦ (meaning x).mp proof⟩
  counterexampleTransport := none
  preservesTyping := True
  preservesDeclaredMeaning := True
  assumptionsMapped := True
  sourceAuthority := authority
  targetAuthority := authority
  authorityNonIncreasing := Nat.le_refl _
  provenance := []
  provenancePreserved := True
  versionCompatible := True
  unsupportedScope := []

/-- TRN-02: exact equivalence maps have a left inverse. -/
theorem ofEquiv_inverse_apply
    (identity : TranslationId)
    (sourceModel targetModel : WorldModelVersionId)
    (sourceContext targetContext : AssumptionContext)
    (authority : AuthorityClass)
    (equiv : Source ≃ Target)
    (sourcePredicate : Source → Prop)
    (targetPredicate : Target → Prop)
    (meaning : ∀ x, sourcePredicate x ↔ targetPredicate (equiv x))
    (x : Source) :
    equiv.symm
      ((ofEquiv identity sourceModel targetModel sourceContext targetContext
        authority equiv sourcePredicate targetPredicate meaning).objectMap x) = x :=
  equiv.symm_apply_apply x

/-- TRN-02: exact equivalence maps also have a right inverse. -/
theorem ofEquiv_apply_inverse
    (identity : TranslationId)
    (sourceModel targetModel : WorldModelVersionId)
    (sourceContext targetContext : AssumptionContext)
    (authority : AuthorityClass)
    (equiv : Source ≃ Target)
    (sourcePredicate : Source → Prop)
    (targetPredicate : Target → Prop)
    (meaning : ∀ x, sourcePredicate x ↔ targetPredicate (equiv x))
    (y : Target) :
    (ofEquiv identity sourceModel targetModel sourceContext targetContext
      authority equiv sourcePredicate targetPredicate meaning).objectMap
        (equiv.symm y) = y :=
  equiv.apply_symm_apply y

/--
Compose two translations only after supplying the middle-version, context,
meaning, authority, and relation compatibility proofs.
-/
def compose
    (first : ModelTranslation Source Target)
    (second : ModelTranslation Target Result)
    (identity : TranslationId)
    (resultRelation : ModelTranslationRelation)
    (relationComposes :
      composeRelation first.relation second.relation = some resultRelation)
    (versionsMatch : first.targetModel = second.sourceModel)
    (contextsMatch : first.targetContext.identity = second.sourceContext.identity)
    (middleMeaning :
      ∀ x, first.targetProposition x ↔ second.sourceProposition x)
    (authoritiesMatch : first.targetAuthority = second.sourceAuthority) :
    ModelTranslation Source Result where
  identity := identity
  sourceModel := first.sourceModel
  targetModel := second.targetModel
  relation := resultRelation
  sourceContext := first.sourceContext
  targetContext := second.targetContext
  objectMap := fun x ↦ second.objectMap (first.objectMap x)
  sourceProposition := first.sourceProposition
  targetProposition := second.targetProposition
  proofTransport :=
    match first.proofTransport, second.proofTransport with
    | some firstProof, some secondProof => some ⟨fun x proof ↦
        secondProof.proof (first.objectMap x)
          ((middleMeaning (first.objectMap x)).mp
            (firstProof.proof x proof))⟩
    | _, _ => none
  counterexampleTransport := none
  preservesTyping := first.preservesTyping ∧ second.preservesTyping
  preservesDeclaredMeaning :=
    first.preservesDeclaredMeaning ∧ second.preservesDeclaredMeaning
  assumptionsMapped := first.assumptionsMapped ∧ second.assumptionsMapped
  sourceAuthority := first.sourceAuthority
  targetAuthority := second.targetAuthority
  authorityNonIncreasing := by
    have firstAuthority := first.authorityNonIncreasing
    rw [authoritiesMatch] at firstAuthority
    exact Nat.le_trans second.authorityNonIncreasing firstAuthority
  provenance := first.provenance ++ second.provenance
  provenancePreserved := first.provenancePreserved ∧ second.provenancePreserved
  versionCompatible := first.versionCompatible ∧ second.versionCompatible ∧
    first.targetModel = second.sourceModel ∧
    first.targetContext.identity = second.sourceContext.identity
  unsupportedScope := first.unsupportedScope ++ second.unsupportedScope

/-- TRN-06: composition cannot increase authority. -/
theorem compose_authority_nonIncreasing
    (first : ModelTranslation Source Target)
    (second : ModelTranslation Target Result)
    (identity : TranslationId)
    (resultRelation : ModelTranslationRelation)
    (relationComposes)
    (versionsMatch)
    (contextsMatch)
    (middleMeaning)
    (authoritiesMatch) :
    AuthorityNonIncreasing
      (compose first second identity resultRelation relationComposes
        versionsMatch contextsMatch middleMeaning authoritiesMatch).sourceAuthority
      (compose first second identity resultRelation relationComposes
        versionsMatch contextsMatch middleMeaning authoritiesMatch).targetAuthority :=
  (compose first second identity resultRelation relationComposes
    versionsMatch contextsMatch middleMeaning authoritiesMatch).authorityNonIncreasing

end ModelTranslation

/-- TRN-04: illustrative projection followed by theorem transport is rejected. -/
theorem illustrative_then_theoremTransport_rejected :
    composeRelation .illustrativeProjection .theoremTransport = none :=
  rfl

/-- TRN-09: unequal endpoint versions yield a typed mismatch obstruction. -/
def versionMismatchObstruction
    (firstTarget secondSource : WorldModelVersionId)
    (_mismatch : firstTarget ≠ secondSource) :
    TranslationCompositionObstruction :=
  .versionMismatch firstTarget secondSource

end Surface.ContinuousAssurance.WorldModel
```
