# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NegativeChecks.Variant7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85de18ed5097add890e4f97cb3f9b2fd8ec66d2b` · SHA-256 `7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Derivation
import FCRS.TheoremTransfer.Adapters.FCRSTransport
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation
import FCRS.TheoremTransfer.Adapters.OrderDual
import FCRS.TheoremTransfer.MultiSourceExample
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery

/-!
Kernel-elaborated rejection fixtures for universal theorem transfer.

Each `fail_if_success` block succeeds only when Lean rejects the forbidden
collapse.  These are type-boundary controls, not comments about intended use.
-/

namespace FCRS.TheoremTransfer.NegativeChecks

namespace OD

open Adapters.OrderDual

#check preservation_comp
#check reflection_comp
#check equivalence_comp
#check transport_theorem
#check reflect_theorem
#check transport_reflect_roundtrip
#check property_transfer_under_equivalence
#check TransferDependencyGraph.no_self_dependency
#check TransferDependencyGraph.no_payload_self_dependency
#check AssumptionDischarge
#check ExistenceEvidence
#check CertifiedTheoremAggregate
#check AggregateTransportApplication
#check ReflectionApplication
#check RoundTripEvidence
#check TransferLifecycleLedger
#check Adapters.FCRSTransport.profileRefinementPreserves
#check Adapters.FCRSTransport.fullTransportDerivationProjection
#check Adapters.FCRSTransport.graphConsequenceHolds_exact
#check Adapters.FCRSTransport.proof_graph_projection_distinct
#check Adapters.FCRSTransport.FullTransportDerivationProjection.targetDenotationArtifactExact
#check FoundationInterpretation.identity_indices_exact

/-- Forward preservation cannot be retyped as converse evidence. -/
example (_forward : PreservesTruth translation) : True := by
  fail_if_success
    exact (_forward : ReflectsTruth translation)
  trivial

/-- Preservation alone cannot be retyped as bidirectional equivalence. -/
example (_forward : PreservesTruth translation) : True := by
  fail_if_success
    exact (_forward : TranslationEquivalence translation)
  trivial

/-- Semantic equivalence does not identify the source proposition representation. -/
example : translation.mapProposition ⟨0, 1⟩ ≠ (⟨0, 1⟩ : OrderProposition) := by
  intro equality
  have leftEquality := congrArg OrderProposition.left equality
  simp [translation] at leftEquality

/-- Distinct foundation used to exercise the foundation index. -/
def classicalFoundation : Foundation where
  identity := version "negative-classical-foundation"
  kind := .ClassicalFirstOrderLogic

/-- An identity bridge cannot silently cross two different foundations. -/
example : True := by
  fail_if_success
    exact
      (FoundationInterpretation.identity leanFoundation
        (version "negative-foundation-identity") :
        FoundationInterpretation leanFoundation classicalFoundation)
  trivial

/-- A nominally different source assumption set is a different index. -/
def alternateForwardAssumptions : AssumptionSet forwardOrderTheory :=
  AssumptionSet.empty.{0, 0, 0} _
    (version "alternate-forward-assumptions")

/-- Assumption inventories cannot be exchanged by carrier coincidence. -/
example : True := by
  fail_if_success
    exact
      (translation : Translation
        forwardOrderTheory reverseOrderTheory forwardVersion reverseVersion
        alternateForwardAssumptions reverseAssumptions
        forwardScope reverseScope)
  trivial

/-- A narrower scope is not definitionally the universal source scope. -/
def zeroOnlyScope : TransferScope forwardOrderTheory where
  artifact := version "zero-only-scope"
  contains := fun object => object = (0 : Nat)

/-- Scope indices cannot be silently substituted. -/
example : True := by
  fail_if_success
    exact
      (translation : Translation
        forwardOrderTheory reverseOrderTheory forwardVersion reverseVersion
        forwardAssumptions reverseAssumptions zeroOnlyScope reverseScope)
  trivial

/-- A source theorem cannot be relabeled under a different assumption index. -/
example (_proof : 0 ≤ 0) : True := by
  fail_if_success
    exact
      (certified 0 0 _proof :
        CertifiedTheorem forwardVersion alternateForwardAssumptions)
  trivial

/-- Proof-preserved status cannot be minted from preservation plus an ID alone. -/
example : True := by
  fail_if_success
    exact
      ({
        evidenceArtifact := version "unverified-proof-map"
      } : ProofPreservationClaim translation
        (certified 0 0 (by decide)) (transported 0 0 (by decide)))
  trivial

/-- The proposition `1 ≤ 2` cannot pass through a scope containing only zero. -/
example : ¬ PropositionWithinScope forwardOrderTheory zeroOnlyScope
    (⟨1, 2⟩ : OrderProposition) := by
  intro inScope
  have oneInScope := inScope.1
  change (1 : Nat) = 0 at oneInScope
  omega

/-- Foundation interpretation cannot be minted from the proposition `True`. -/
example : True := by
  fail_if_success
    exact
      (FoundationInterpretation.interpretation
        (source := leanFoundation) (target := classicalFoundation)
        (version "caller-selected-true") True.intro)
  trivial

/-- Identity followed by identity remains classified as identity. -/
example :
    (FoundationInterpretation.comp
      (FoundationInterpretation.identity leanFoundation (version "identity-left"))
      (FoundationInterpretation.identity leanFoundation (version "identity-right"))).kind =
        .Identity := by
  rfl

/-- A nonidentity interpretation cannot carry an empty evidence inventory. -/
example : True := by
  fail_if_success
    exact
      (FoundationInterpretation.interpretation
        (source := leanFoundation) (target := classicalFoundation) {
          artifact := version "empty-external-interpretation"
          designation := "invalid empty evidence"
          sourceEvidenceArtifacts := []
          evidenceNonempty := by simp
        })
  trivial

/-- Structural composition retains the second authority as part of identity. -/
def alternateAuthorityVersion : VersionId :=
  .atomic ⟨"https://example.invalid/alternate", "same", "1", "sha256:same"⟩

def originalAuthorityVersion : VersionId :=
  .atomic ⟨"https://example.invalid/original", "same", "1", "sha256:same"⟩

example :
    VersionId.composite (version "first") alternateAuthorityVersion ≠
      VersionId.composite (version "first") originalAuthorityVersion := by
  decide

def alternatePreservationTheorem : PreservationTheorem translation where
  evidenceArtifact := version "alternate-preservation-proof"
  law := preserves

def sampleTargetTheorem : CertifiedTheorem reverseVersion reverseAssumptions :=
  transported 0 0 (by decide)

def sampleSourceTheorem : CertifiedTheorem forwardVersion forwardAssumptions :=
  certified 0 0 (by decide)

def alternateSoundnessEvidence : TransferSoundnessEvidence translation
    alternatePreservationTheorem sampleSourceTheorem sampleTargetTheorem none
    .SemanticallyPreserved :=
  .semanticallyPreserved

/-- Soundness evidence indexed by another preservation artifact cannot be substituted. -/
example : True := by
  fail_if_success
    exact (alternateSoundnessEvidence : TransferSoundnessEvidence translation
      preservationTheorem sampleSourceTheorem sampleTargetTheorem none
        .SemanticallyPreserved)
  trivial

/-- Syntactic status cannot be asserted without artifact-bearing evidence. -/
example : True := by
  fail_if_success
    exact (.syntacticallyTranslated : TransferSoundnessEvidence translation
      preservationTheorem sampleSourceTheorem sampleTargetTheorem none
        .SyntacticallyTranslated)
  trivial

/-- Structural composite identity intentionally records parenthesization. -/
example :
    VersionId.composite
        (VersionId.composite (version "assoc-a") (version "assoc-b"))
        (version "assoc-c") ≠
      VersionId.composite (version "assoc-a")
        (VersionId.composite (version "assoc-b") (version "assoc-c")) := by
  decide

def almostEverywhereProfile : QuantifierProfile := {
  orderQuantifierProfile with
  artifact := version "measure-profile"
  measureScope := .AlmostEverywhere
}

def everywhereProfile : QuantifierProfile := {
  orderQuantifierProfile with
  artifact := version "measure-profile"
  measureScope := .Everywhere
}

def finiteProfile : QuantifierProfile := {
  orderQuantifierProfile with
  artifact := version "finite-profile"
  cardinality := .Finite
}

def infiniteProfile : QuantifierProfile := {
  orderQuantifierProfile with
  artifact := version "infinite-profile"
  cardinality := .Infinite
}

/-- Finite quantification cannot silently become infinite quantification. -/
example : True := by
  fail_if_success
    exact ({
      artifact := version "invalid-cardinality-strengthening"
      sourceProfile := finiteProfile
      targetProfile := infiniteProfile
      profileExact := rfl
      unspecifiedCompatibility := .fullySpecified (by simp) (by simp)
        (.carrierEquivalent (QuantifierCarrierEquivalence.refl Nat) rfl)
        [version "finite-map-evidence"] (by simp)
    } : QuantifierTransform forwardOrderTheory reverseOrderTheory id)
  trivial

/-- Almost-everywhere cannot silently strengthen to everywhere. -/
example : True := by
  fail_if_success
    exact ({
      artifact := version "invalid-measure-strengthening"
      sourceProfile := almostEverywhereProfile
      targetProfile := everywhereProfile
      profileExact := rfl
      unspecifiedCompatibility := .fullySpecified (by simp) (by simp)
        (.carrierEquivalent (QuantifierCarrierEquivalence.refl Nat) rfl)
        [version "measure-map-evidence"] (by simp)
    } : QuantifierTransform forwardOrderTheory reverseOrderTheory id)
  trivial

/-- Equal unknown profiles still require separately typed compatibility evidence. -/
example : True := by
  fail_if_success
    exact ({
      artifact := version "missing-unknown-compatibility"
      sourceProfile := orderQuantifierProfile
      targetProfile := orderQuantifierProfile
      profileExact := rfl
    } : QuantifierTransform forwardOrderTheory reverseOrderTheory id)
  trivial

def unknownCarrierProfile : QuantifierProfile :=
  QuantifierProfile.unspecified (version "semantically-indexed-unknown-profile")

abbrev carrierTheory (Object : Type) : Theory where
  Object := Object
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := by intros; trivial
  reifyProofObject := by intros; exact ()
  propositionSupport := fun _ => .universal
  propositionProperty := fun _ _ => True

/-- An actual identity of carriers is valid evidence for an unknown profile. -/
def boolUnknownCompatibility : QuantifierUnspecifiedCompatibility
    (carrierTheory Bool) (carrierTheory Bool) id
    unknownCarrierProfile unknownCarrierProfile :=
  .evidenced (QuantifierCarrierEquivalence.refl Bool)
    rfl
    [version "bool-carrier-equivalence"] (by simp)

/-- No two-sided carrier equivalence can identify finite `Bool` with `Nat`. -/
theorem boolNatNoCarrierEquivalence :
    QuantifierCarrierEquivalence Bool Nat → False := by
  intro equivalence
  have injective : Function.Injective equivalence.toSource := by
    intro left right equality
    have mapped := congrArg equivalence.toTarget equality
    simpa only [equivalence.targetRoundTrip] using mapped
  generalize hzero : equivalence.toSource 0 = sourceZero
  generalize hone : equivalence.toSource 1 = sourceOne
  generalize htwo : equivalence.toSource 2 = sourceTwo
  cases sourceZero <;> cases sourceOne <;> cases sourceTwo
  all_goals
    first
    | exact Nat.zero_ne_one (injective (hzero.trans hone.symm))
    | exact (by decide : (0 : Nat) ≠ 2)
        (injective (hzero.trans htwo.symm))
    | exact (by decide : (1 : Nat) ≠ 2)
        (injective (hone.trans htwo.symm))

def boolSensitiveTheory : Theory where
  Object := Bool
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := by intros; trivial
  reifyProofObject := by intros; exact ()
  propositionSupport := fun _ => .universal
  propositionProperty := fun _ object => object = false

def natSensitiveTheory : Theory where
  Object := Nat
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := by intros; trivial
  reifyProofObject := by intros; exact ()
  propositionSupport := fun _ => .universal
  propositionProperty := fun _ object => object = 0

def boolToNat : Bool → Nat
  | false => 0
  | true => 1

theorem boolToNat_injective : Function.Injective boolToNat := by
  intro left right equality
  cases left <;> cases right <;> simp_all [boolToNat]

/-- A fully specified profile still cannot bypass non-nominal map semantics. -/
theorem finiteToInfiniteSpecifiedMapEvidenceImpossible
    (evidence : QuantifierSpecifiedMapEvidence
      boolSensitiveTheory natSensitiveTheory boolToNat) : False := by
  cases evidence with
  | carrierEquivalent carrierEquivalence _ =>
      exact boolNatNoCarrierEquivalence carrierEquivalence
  | propositionObjectIndependent sourceIndependent _ =>
      exact Bool.noConfusion ((sourceIndependent () false true).mp rfl)
  | explicitlyNonInjective left right distinct sameTarget =>
      exact distinct (boolToNat_injective sameTarget)

/-- Nominal evidence cannot make unknown Bool/Nat quantifiers compatible. -/
theorem boolNatUnknownCompatibilityImpossible
    (compatibility : QuantifierUnspecifiedCompatibility
      (carrierTheory Bool) (carrierTheory Nat)
      (fun value : Bool => if value then (1 : Nat) else 0)
      unknownCarrierProfile unknownCarrierProfile) : False := by
  have unknown : unknownCarrierProfile.HasUnspecified := Or.inl rfl
  cases compatibility with
  | fullySpecified sourceSpecified _ _ _ _ => exact sourceSpecified unknown
  | evidenced carrierEquivalence _ _ _ =>
      exact boolNatNoCarrierEquivalence carrierEquivalence

end OD

namespace OneWayProfile

open FCRS.Transport
open Adapters.FCRSTransport

def artifact {kind : ArtifactKind} (name : String) : ArtifactRef kind :=
  ⟨"https://example.invalid/negative", name, "1", "sha256:" ++ name⟩

def narrowProfile : IntervalProfile Unit Unit where
  version := artifact "narrow-profile"
  sourceTheorem := artifact "narrow-theorem"
  domainVersion := artifact "narrow-domain"
  lowerVersion := artifact "narrow-lower"
  upperVersion := artifact "narrow-upper"
  assumptionSet := artifact "narrow-assumptions"
  orientation := .Forward
  sourceNotation := "narrow"
  domain := fun _ => True
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := fun _ => False
  order := fun _ _ => True

def broadProfile : IntervalProfile Unit Unit where
  version := artifact "broad-profile"
  sourceTheorem := artifact "broad-theorem"
  domainVersion := artifact "broad-domain"
  lowerVersion := artifact "broad-lower"
  upperVersion := artifact "broad-upper"
  assumptionSet := artifact "broad-assumptions"
  orientation := .Forward
  sourceNotation := "broad"
  domain := fun _ => True
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := fun _ => True
  order := fun _ _ => True

def oneWayRefinement : ProfileRefines narrowProfile broadProfile where
  adapterArtifact := artifact "one-way-adapter"
  proofArtifact := artifact "one-way-proof"
  comparisonScope := broadProfile.assumptionSet
  comparisonScopeExact := rfl
  domainCoverage := by intros; trivial
  admissiblePreserved := by
    intro _ _ _ hNarrow
    exact False.elim hNarrow.2.2

theorem broadClaim : IntervalClaim broadProfile := by
  intro _ _
  exact ⟨(), True.intro, ⟨True.intro, True.intro⟩, True.intro⟩

theorem narrowClaimFalse : ¬ IntervalClaim narrowProfile := by
  intro claim
  obtain ⟨_, evidence⟩ := claim () True.intro
  exact evidence.2.2

/-- The previous lossless label was false: this valid refinement is not reflective. -/
theorem oneWayNotReflective :
    ¬ ReflectsTruth (profileRefinementTranslation oneWayRefinement) := by
  intro reflection
  have narrowClaimAt : ProfileClaimAt narrowProfile () :=
    reflection.sound () (by
      exact ⟨True.intro, by intros; contradiction⟩)
      (by intro _; exact broadClaim ())
      (AssumptionSet.empty_holds _ _)
  obtain ⟨_, evidence⟩ := narrowClaimAt True.intro
  exact evidence.2.2

def falselyLabeledLossless : InformationLossProfile where
  artifact := eraseArtifactVersion oneWayRefinement.proofArtifact
  classification := .Lossless
  declaredScope := "false declaration used by the rejection fixture"
  forgottenInformation := []
  assessmentArtifact := eraseArtifactVersion oneWayRefinement.proofArtifact

/-- A declared lossless label cannot acquire verified status without reflection. -/
theorem oneWayCannotBeVerifiedLossless
    (assessment : InformationLossAssessment
      (profileRefinementTranslation oneWayRefinement) falselyLabeledLossless) :
    ¬ assessment.IsVerifiedLossless := by
  intro verified
  cases assessment with
  | declaredMetadata => exact verified
  | verifiedPropositionReflection _ => exact verified
  | verifiedLossless _ _ reflection =>
      exact oneWayNotReflective reflection.law

def proofArtifactRef : ArtifactRef .theoremProof := artifact "typed-same"
def graphArtifactRef : ArtifactRef .graphVersion := artifact "typed-same"

/-- Equal nominal strings do not make proof and graph references comparable. -/
example : True := by
  fail_if_success
    exact versionOfArtifact proofArtifactRef = versionOfArtifact graphArtifactRef
  trivial

/-- One-way refinement now reports unknown loss instead of false losslessness. -/
example :
    (profileRefinementTranslation oneWayRefinement).informationLoss.head?.map
      InformationLossProfile.classification =
        some InformationLossClass.UnknownInformationLoss := by
  rfl

end OneWayProfile

namespace Cycle2Regression

open FCRS.Transport
open Adapters.FCRSTransport

def c2Version (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-2", name, "1", "sha256:" ++ name⟩

def c2Artifact {kind : ArtifactKind} (name : String) : ArtifactRef kind :=
  ⟨"https://example.invalid/cycle-2", name, "1", "sha256:" ++ name⟩

/-! Finding 1: one graph theory contains semantically distinct propositions. -/

def sampleGraph : CoordinateGraph .Materialized Unit Unit where
  version := c2Artifact "shared-graph"
  identityPolicy := .PairFunctional
  source := fun _ => ()
  target := fun _ => ()

def trueConsequence : GraphConsequence sampleGraph where
  consequenceArtifact := c2Artifact "shared-consequence"
  schema := c2Artifact "shared-schema"
  sensitivity := .Structural
  statement := True

def falseConsequence : GraphConsequence sampleGraph where
  consequenceArtifact := c2Artifact "shared-consequence"
  schema := c2Artifact "shared-schema"
  sensitivity := .Structural
  statement := False

def trueGraphProposition : GraphConsequenceProposition sampleGraph :=
  ⟨trueConsequence, (), ()⟩

def falseGraphProposition : GraphConsequenceProposition sampleGraph :=
  ⟨falseConsequence, (), ()⟩

example : trueConsequence.consequenceArtifact =
    falseConsequence.consequenceArtifact := rfl

example : trueGraphProposition ≠ falseGraphProposition := by
  intro equality
  have statementEquality : True = False :=
    congrArg (fun proposition => proposition.consequence.statement) equality
  exact Eq.mp statementEquality True.intro

example : (graphConsequenceTheory sampleGraph).Holds trueGraphProposition := by
  trivial

example : ¬ (graphConsequenceTheory sampleGraph).Holds falseGraphProposition := by
  exact id

/-! Finding 2: production propositions have statically nonempty support. -/

example :
    (graphConsequenceTheory sampleGraph).propositionSupport trueGraphProposition =
      .universal := rfl

def boolGraph : CoordinateGraph .Materialized Bool Unit where
  version := c2Artifact "bool-graph"
  identityPolicy := .PairFunctional
  source := fun _ => false
  target := fun _ => false

def boolGlobalConsequence : GraphConsequence boolGraph where
  consequenceArtifact := c2Artifact "bool-global-consequence"
  schema := c2Artifact "bool-global-schema"
  sensitivity := .Structural
  statement := ∀ coordinate : Bool, coordinate = coordinate

def boolGlobalProposition : GraphConsequenceProposition boolGraph :=
  ⟨boolGlobalConsequence, false, false⟩

def falseOnlyGraphScope : TransferScope (graphConsequenceTheory boolGraph) where
  artifact := c2Version "false-only-graph-scope"
  contains := fun coordinate => coordinate = false

/-- Endpoint metadata cannot launder a global semantic proposition as local. -/
example : ¬ PropositionWithinScope (graphConsequenceTheory boolGraph)
    falseOnlyGraphScope boolGlobalProposition := by
  intro support
  exact Bool.noConfusion (support true)

example :
    (profileTheory OneWayProfile.narrowProfile).propositionSupport () =
      .nonempty () [] := rfl

def boolScopeProfile : IntervalProfile Bool Unit where
  version := c2Artifact "bool-scope-profile"
  sourceTheorem := c2Artifact "bool-scope-theorem"
  domainVersion := c2Artifact "bool-scope-domain"
  lowerVersion := c2Artifact "bool-scope-lower"
  upperVersion := c2Artifact "bool-scope-upper"
  assumptionSet := c2Artifact "bool-scope-assumptions"
  orientation := .Forward
  sourceNotation := "pointwise-bool-profile"
  domain := fun _ => True
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := fun _ => True
  order := fun _ _ => True

def falseOnlyProfileScope : TransferScope (profileTheory boolScopeProfile) where
  artifact := c2Version "false-only-profile-scope"
  contains := fun input => input = false

/-- The original out-of-scope `true` input no longer passes a `false`-only scope. -/
example : ¬ PropositionWithinScope (profileTheory boolScopeProfile)
    falseOnlyProfileScope true := by
  intro inScope
  exact Bool.noConfusion inScope.1

/-! Findings 3 and 4 use a theory with true semantics but a false object property. -/

def incoherentPropertyTheory : Theory where
  Object := Bool
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := fun _ => True.intro
  reifyProofObject := fun _ => ()
  propositionSupport := fun _ => .nullary
  propositionProperty := fun _ _ => False

def c2Foundation : Foundation where
  identity := c2Version "foundation"
  kind := .DependentTypeTheory

def c2Quantifiers : QuantifierProfile :=
  {
    artifact := c2Version "quantifiers"
    cardinality := .Unrestricted
    scalarDomain := .Other
    geometry := .Discrete
    coverage := .Global
    uniformity := .Pointwise
    measureScope := .Everywhere
    existence := .Propositional
    boundedness := .Unbounded
    compactness := .Noncompact
  }

def incoherentVersion :
    MathematicalTheoryVersion incoherentPropertyTheory c2Foundation where
  artifact := c2Version "incoherent-theory"
  theoryIdentity := ⟨"https://example.invalid/cycle-2", "incoherent-theory"⟩
  signatureVersion := c2Version "signature"
  axiomSetVersion := c2Version "axioms"
  definitionSetVersion := c2Version "definitions"
  importedTheoryVersions := []
  semanticRegime := "cycle-2-regression"
  quantifierProfile := c2Quantifiers
  formalizationArtifactVersion := c2Version "formalization"
  releaseStatus := .Draft
  provenance := []

def c2Assumptions : AssumptionSet incoherentPropertyTheory :=
  AssumptionSet.empty _ (c2Version "empty-assumptions")

def c2Scope : TransferScope incoherentPropertyTheory :=
  TransferScope.universal _ (c2Version "scope")

def c2Loss : InformationLossProfile where
  artifact := c2Version "loss"
  classification := .Lossless
  declaredScope := "all booleans"
  forgottenInformation := []
  assessmentArtifact := c2Version "loss-assessment"

def constantTranslation : Translation incoherentPropertyTheory
    incoherentPropertyTheory incoherentVersion incoherentVersion
    c2Assumptions c2Assumptions c2Scope c2Scope where
  artifact := c2Version "constant-translation"
  lineage := .atomic (c2Version "constant-translation")
  lineageArtifactExact := rfl
  foundationInterpretation := .identity c2Foundation (c2Version "identity")
  mapObject := fun _ => false
  mapProposition := id
  assumptionTranslation := {
    artifact := c2Version "assumption-map"
    mapIndex := fun index => nomatch index.down
    propositionExact := fun index => nomatch index.down
  }
  targetAssumptionPartition := {
    classify := fun index => nomatch index.down
  }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := ⟨c2Version "quantifier-transform",
    c2Quantifiers, c2Quantifiers, rfl,
    .fullySpecified
      (by simp [c2Quantifiers, QuantifierProfile.HasUnspecified])
      (by simp [c2Quantifiers, QuantifierProfile.HasUnspecified])
      (.explicitlyNonInjective (false : Bool) (true : Bool)
        (by intro equality; cases equality) rfl)
      [c2Version "quantifier-compatibility"] (by simp)⟩
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [c2Loss]
  informationLossNonempty := by simp
  canonicality := []

def constantReflection : ReflectionTheorem constantTranslation where
  evidenceArtifact := c2Version "constant-reflection"
  law := ⟨by intros; trivial⟩

/-- A constant object map has no two-sided decoder on universal Bool scope. -/
theorem constantMapNotFaithful :
    ObjectFaithfulnessOnScope constantTranslation → False := by
  intro faithfulness
  have collision : (false : Bool) = true :=
    faithfulness.mapObject_injective True.intro True.intro rfl
  cases collision

/-- Reflection-only evidence cannot upgrade the constant map to lossless. -/
theorem constantMapCannotBeVerifiedLossless
    (assessment : InformationLossAssessment constantTranslation c2Loss) :
    ¬ assessment.IsVerifiedLossless := by
  intro verified
  cases assessment with
  | declaredMetadata => exact verified
  | verifiedPropositionReflection _ => exact verified
  | verifiedLossless _ faithfulness _ =>
      exact constantMapNotFaithful faithfulness

/-- Semantic coherence rejects a representation claim for an unrelated property. -/
theorem unrelatedPropertyNotRepresentationIndependent :
    RepresentationIndependenceClaim constantTranslation () → False := by
  intro claim
  have admissible := claim.canonicalRepresentation false True.intro
  have coherence := claim.semanticCoherence false false True.intro admissible
  exact coherence.mp True.intro

/-! Finding 5: semantic truth cannot coexist with an empty proof-object family. -/

theorem inhabitedTruthHasProofObject
    (theory : Theory) (proposition : theory.Proposition)
    (holds : theory.Holds proposition)
    (proofObjectsEmpty : theory.ProofObject proposition = Empty) : False := by
  have impossible : Empty := proofObjectsEmpty ▸ theory.reifyProofObject holds
  exact nomatch impossible

/-! Finding 6: every dependency separates both payload and node artifact. -/

#check TransferDependencyGraph.artifact_distinct_of_dependency

example (graph : TransferDependencyGraph) {source target : graph.Node}
    (dependency : graph.dependsOn source target) :
    (graph.node source).nodeArtifact ≠ (graph.node target).nodeArtifact :=
  graph.artifact_distinct_of_dependency dependency

/-! Finding 8: validated status cannot carry a pending-only record. -/

example : True := by
  let identity := FoundationInterpretation.identity c2Foundation
    (c2Version "foundation-identity")
  fail_if_success
    exact ({
      claimArtifact := c2Version "self-asserted-conservativity"
      status := .ValidatedByExternalExecution
      validation := .pending (c2Version "not-an-execution")
    } : FoundationConservativityClaim identity)
  trivial

/-! Finding 9: every target assumption has a typed provenance classification. -/

def everyTargetAssumptionClassified
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (targetIndex : targetAssumptions.Index) :
    TargetAssumptionClassification translation.mapProposition sourceAssumptions
      targetAssumptions translation.assumptionTranslation targetIndex :=
  translation.targetAssumptionPartition.classify targetIndex

/-! Finding 10: previously flattened native stages are pairwise addressable. -/

example : FullTTAStage.SelectedWitness ≠ .MaterializableSelection := by decide
example : FullTTAStage.ConstraintSieveEvidence ≠ .ProcedureAcceptanceEvidence := by decide
example : FullTTAStage.SieveEvidenceTheoryExact ≠ .SieveResultExact := by decide

/-! Finding 11: bridge-first construction synthesizes the only target proof. -/

#check FullNativePreservationBridge.law
#check sourceClaimBridge
#check FullNativePreservationEvidence.bridgeDistinctFromTargetProof
#check FullNativePreservationEvidence.graphConsequenceProof
#check FullNativePreservationEvidence.nativeDerivation

section ClosedNativeBridge

universe uInput uWitness uCoordinate uEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate} {Edge : Type uEdge}
variable {profile : IntervalProfile Input Witness} {input : Input}
variable {graph : CoordinateGraph .Materialized Coordinate Edge}
variable {consequence : GraphConsequence graph}
variable (capturedTargetProof : consequence.statement)

/--
An arbitrary target proof—including one projected from an older completed
derivation—cannot be closed over to mint a bridge: the bridge constructor is
module-private and no public arbitrary-law factory exists.
-/
example : True := by
  fail_if_success
    exact ({
      bridgeArtifact := c2Version "forbidden-captured-bridge"
      law := fun _sourceProof => capturedTargetProof
    } : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence))
  trivial

end ClosedNativeBridge

/-! Cycle-5 quantifier evidence is indexed by the exact object map. -/

def cycle5UnknownProfile : QuantifierProfile :=
  QuantifierProfile.unspecified (c2Version "cycle-5-unknown-profile")

def cycle5ConstantBoolMap : Bool → Bool := fun _ => false

/-- An unrelated identity equivalence cannot certify a constant map. -/
example : True := by
  fail_if_success
    exact (.evidenced (QuantifierCarrierEquivalence.refl Bool) rfl
      [c2Version "unrelated-identity-equivalence"] (by simp) :
      QuantifierUnspecifiedCompatibility incoherentPropertyTheory
        incoherentPropertyTheory cycle5ConstantBoolMap
        cycle5UnknownProfile cycle5UnknownProfile)
  trivial

/-! Cycle-5 composite realization consumes precommitted semantic checkpoints. -/

section ExactLineageCheckpoint

variable {graph : TransferDependencyGraph}
variable {source middle target : graph.Node}
variable {first second : TranslationLineage}
variable {expectedTheory expectedProposition fabricatedTheory fabricatedProposition :
  VersionId}
variable (theoryDiffers : fabricatedTheory ≠ expectedTheory)
variable (propositionDiffers : fabricatedProposition ≠ expectedProposition)
variable (middleTheoryFabricated :
  (graph.node middle).theoryVersionArtifact.identity = fabricatedTheory)
variable (middlePropositionFabricated :
  (graph.node middle).propositionArtifact = some ⟨fabricatedProposition⟩)
variable (firstRealization :
  TranslationLineageRealization graph first source middle)
variable (secondRealization :
  TranslationLineageRealization graph second middle target)

/-- Caller-chosen middle metadata cannot inhabit a differently committed lineage. -/
example : True := by
  fail_if_success
    exact (.composite middle middleTheoryFabricated middlePropositionFabricated
      firstRealization secondRealization :
      TranslationLineageRealization graph
        (.composite expectedTheory expectedProposition first second)
        source target)
  trivial

end ExactLineageCheckpoint

/-! TT-11 is target-observation-first and has no completed derivation premise. -/

#check FCRS.Transport.ReflectiveRecoveryObservation
#check FCRS.Transport.Theorems.tt11_reflectiveRecovery

section RejectedLegacyReflectiveRecoveryCall

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}
variable {derivationRef : ArtifactRef .transportDerivation}

local notation "LegacyCompletedDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/--
Semantic-correction lock: the old completed-forward-derivation premise cannot
occupy TT-11's independently observed target-occurrence slot.
-/
example
    (derivation : LegacyCompletedDerivation)
    (_provenance : ReflectiveRecoveryProvenance derivation)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (_validationDecision : AcceptanceDecision validationResult)
    (_realizationReflects : RealizationReflection specification materializedGraph)
    (_sieveReflects : SieveReflection constraint specification)
    (_coordinateReflects : InterpretationReflection profile interpretation constraint) :
    True := by
  fail_if_success
    exact FCRS.Transport.Theorems.tt11_reflectiveRecovery
      derivation _provenance validationExecution validationResult
      _validationDecision _realizationReflects _sieveReflects _coordinateReflects
  trivial

end RejectedLegacyReflectiveRecoveryCall

/-! The universal aggregate binds exact expression leaves to its fan-in DAG. -/

#check MultiSourceTheoremTransferDerivation
#check MultiSourceInferenceExpression
#check MultiSourceInferenceExpression.interpret
#check MultiSourceInferenceExpression.UsesSource
#check MultiSourceLeafDependency
#check MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#check MultiSourceTheoremTransferDerivation.sourceLeafCoverage

namespace RejectedVacuousMultiSourceFanIn

open MultiSourceExample

/-- A constant inference node with no child expressions has no source leaves. -/
def leaflessInference : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Empty)
    (premiseProposition := fun index => nomatch index)
    (version "cycle-6-leafless-inference")
    (fun index => nomatch index)
    (fun _premises => ⟨True.intro, True.intro⟩)

/-- Kernel lock: the leafless expression cannot cover even one source index. -/
theorem leaflessInference_omitsEverySource (index : Bool) :
    ¬ leaflessInference.UsesSource index := by
  simp only [leaflessInference, MultiSourceInferenceExpression.UsesSource]
  intro emptyIndex
  exact nomatch emptyIndex

/--
The cycle-6 update attack is rejected because the retained leaf-dependency
certificates cannot inhabit `UsesSource` for a leafless replacement expression.
-/
example : True := by
  fail_if_success
    let _vacuous : MultiSourceTheoremTransferDerivation
        targetVersion targetAssumptions targetScope := {
      derivation with
      jointInferenceExpression := leaflessInference
    }
  trivial

end RejectedVacuousMultiSourceFanIn

/-! Finding 12: role tags survive the formerly erasing boundary. -/

/-! Composite lineages must expose every atomic artifact on a DAG edge. -/

#check TheoremTransferDerivation.lineageRealization
#check TranslationLineageRealization.rankIncreases
#check TranslationLineageRealization.compositeHasOrderedMiddle

def sameProofRef : ArtifactRef .theoremProof := c2Artifact "nominally-same"
def sameGraphRef : ArtifactRef .graphVersion := c2Artifact "nominally-same"

example : eraseArtifactVersion sameProofRef ≠ eraseArtifactVersion sameGraphRef :=
  proof_graph_projection_distinct sameProofRef sameGraphRef

end Cycle2Regression

end FCRS.TheoremTransfer.NegativeChecks

/-!
This deliberately root-qualified, non-`FCRS` declaration is a positive lock
for the complete project-environment scan.  It is proof-producing and
axiom-free; the static checker requires it to appear in the scanned difference.
-/
theorem Cycle4ProjectRootScanWitness : True := by trivial
```
