import Surface.ContinuousAssurance.Transformation

/-!
# Literature translations and semantic identities

External literature can motivate a formal construction, but it never becomes
Lean theorem authority merely by being cited.  These records keep the source
artifact, locator, altered assumptions, translation strength, and remaining
obligations explicit.  In particular, the bounded known-maximal-state model is
a sound abstraction of an unbounded query interface, not an asserted exact
equivalence.
-/

namespace Surface.ContinuousAssurance

/-- Stable semantic identity of a mathematical object. -/
structure MathematicalObjectId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one representation of a mathematical object. -/
structure RepresentationId where
  value : String
  deriving DecidableEq, Repr

/-- Exact name of a formal declaration in its defining module. -/
structure FormalDeclarationId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of an open proof, implementation, or governance obligation. -/
structure ObligationId where
  value : String
  deriving DecidableEq, Repr

/-- The semantic strength claimed for a translation. -/
inductive TranslationRelation
  | exactEquivalence
  | soundAbstraction
  | executableRefinement
  | observationalRealization
  deriving DecidableEq, Repr

/-- Honest progress status for an external-source translation. -/
inductive FormalizationStatus
  | formalized
  | conditionallyFormalized
  | external
  | unresolved
  deriving DecidableEq, Repr

/-- A content-addressed external publication. -/
structure LiteratureArtifact where
  citation : String
  digest : EvidenceDigest
  authority : AuthorityClass
  external_authority : authority = .externalCapability
  deriving Repr

/-- Translation of one located external statement into a project object. -/
structure LiteratureTranslationRecord where
  identifier : String
  source : LiteratureArtifact
  sourceLocator : String
  targetObject : MathematicalObjectId
  targetDeclaration : Option FormalDeclarationId
  relation : TranslationRelation
  preservedContent : List String
  alteredOrDiscardedAssumptions : List String
  targetAuthority : AuthorityClass
  authorityNonPromotion : targetAuthority ≠ .kernelTrustedBase
  status : FormalizationStatus
  openObligations : List ObligationId

/-- The source of every literature translation remains external. -/
theorem LiteratureTranslationRecord.source_is_external
    (record : LiteratureTranslationRecord) :
    record.source.authority = .externalCapability :=
  record.source.external_authority

/-- A translation record cannot silently classify its target as the kernel. -/
theorem LiteratureTranslationRecord.target_not_kernel
    (record : LiteratureTranslationRecord) :
    record.targetAuthority ≠ .kernelTrustedBase :=
  record.authorityNonPromotion

/-- Explicit record of the finite known-maximal-state adaptation. -/
structure KnownMaximalStateAdaptation where
  source : LiteratureArtifact
  sourceDomainDescription : String
  targetObject : MathematicalObjectId
  fixedReferenceOrTotalRuleset : String
  relation : TranslationRelation
  relation_is_sound_abstraction : relation = .soundAbstraction
  changedAssumptions : List String
  openObligations : List ObligationId

/-- The bounded-global adaptation is deliberately not labeled equivalent. -/
theorem KnownMaximalStateAdaptation.not_exact_equivalence
    (adaptation : KnownMaximalStateAdaptation) :
    adaptation.relation ≠ .exactEquivalence := by
  rw [adaptation.relation_is_sound_abstraction]
  decide

end Surface.ContinuousAssurance
