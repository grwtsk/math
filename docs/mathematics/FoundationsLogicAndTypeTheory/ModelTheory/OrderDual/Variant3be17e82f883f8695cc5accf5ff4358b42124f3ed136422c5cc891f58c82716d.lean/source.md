# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.OrderDual.Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77f136c34bd224eb3f930c4ee3df28ab0a85927b` · SHA-256 `3f0528af1702bb2dc6ed9158384ab345d87cf5b6f15a63033560a26d44553e69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.OrderProposition.Variant34308f2ee436130ca08219f07650157ebd1ed82b7563ccc465a97fe3769c34d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34308f2ee436130ca08219f07650157ebd1ed82b7563ccc465a97fe3769c34d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.OrderProposition.Variant34308f2ee436130ca08219f07650157ebd1ed82b7563ccc465a97fe3769c34d8","mathematical_subject":"Logic.ModelTheory","original_sha256":"34308f2ee436130ca08219f07650157ebd1ed82b7563ccc465a97fe3769c34d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Adapters/OrderDual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Core

/-!
A second, mathematically distinct adapter: reversal into an order-dual theory.

The source and target proposition types are the same data carrier, but their
`Holds` interpretations differ.  The translation swaps endpoints.  Forward
and reverse laws are proved separately, demonstrating that the universal
kernel is not tied to the arithmetic/coordinate/sieve/graph pipeline.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.OrderProposition.Variant34308f2ee436130ca08219f07650157ebd1ed82b7563ccc465a97fe3769c34d8

namespace FCRS.TheoremTransfer.Adapters.OrderDual

/-- Local immutable identifier helper for the checked example. -/
def version (name : String) : VersionId :=
  .atomic ⟨"https://w3id.org/reflexive", name, "1.0.0",
    "sha256:" ++ name ++ "-v1"⟩

/-- A proposition records an ordered pair without assigning semantics to it. -/
structure OrderProposition where
  left : Nat
  right : Nat
deriving Repr, DecidableEq

/-- Ordinary natural-number order theory. -/
def forwardOrderTheory : Theory where
  Object := Nat
  Proposition := OrderProposition
  Holds := fun proposition => proposition.left ≤ proposition.right
  ProofObject := fun proposition => PLift (proposition.left ≤ proposition.right)
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun proposition =>
    .nonempty proposition.left [proposition.right]
  propositionProperty := fun proposition _ =>
    proposition.left ≤ proposition.right

/-- Order-dual theory: the interpretation of a pair reverses its direction. -/
def reverseOrderTheory : Theory where
  Object := Nat
  Proposition := OrderProposition
  Holds := fun proposition => proposition.right ≤ proposition.left
  ProofObject := fun proposition => PLift (proposition.right ≤ proposition.left)
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun proposition =>
    .nonempty proposition.left [proposition.right]
  propositionProperty := fun proposition _ =>
    proposition.right ≤ proposition.left

/-- Both example theories are formalized in the same exact Lean foundation. -/
def leanFoundation : Foundation where
  identity := version "order-dual-lean-foundation"
  kind := .DependentTypeTheory

def orderQuantifierProfile : QuantifierProfile where
  artifact := version "order-dual-quantifier-profile"
  cardinality := .Infinite
  scalarDomain := .Integer
  geometry := .Discrete
  coverage := .Global
  uniformity := .Pointwise
  measureScope := .Everywhere
  existence := .Propositional
  boundedness := .Unbounded
  compactness := .Noncompact

def forwardVersion :
    MathematicalTheoryVersion forwardOrderTheory leanFoundation where
  artifact := version "natural-order-theory"
  theoryIdentity := ⟨"https://w3id.org/reflexive", "natural-order-theory"⟩
  signatureVersion := version "natural-order-signature"
  axiomSetVersion := version "natural-order-axioms"
  definitionSetVersion := version "natural-order-definitions"
  importedTheoryVersions := []
  semanticRegime := "Natural-number preorder"
  quantifierProfile := orderQuantifierProfile
  formalizationArtifactVersion := version "order-dual-adapter"
  releaseStatus := .Released
  provenance := [version "lean-nat-order"]

def reverseVersion :
    MathematicalTheoryVersion reverseOrderTheory leanFoundation where
  artifact := version "natural-order-dual-theory"
  theoryIdentity := ⟨"https://w3id.org/reflexive", "natural-order-dual-theory"⟩
  signatureVersion := version "natural-order-dual-signature"
  axiomSetVersion := version "natural-order-dual-axioms"
  definitionSetVersion := version "natural-order-dual-definitions"
  importedTheoryVersions := []
  semanticRegime := "Order-dual natural-number preorder"
  quantifierProfile := orderQuantifierProfile
  formalizationArtifactVersion := version "order-dual-adapter"
  releaseStatus := .Released
  provenance := [forwardVersion.artifact]

def forwardAssumptions : AssumptionSet forwardOrderTheory :=
  AssumptionSet.empty.{0, 0, 0} _
    (version "natural-order-empty-assumptions")

def reverseAssumptions : AssumptionSet reverseOrderTheory :=
  AssumptionSet.empty.{0, 0, 0} _
    (version "natural-order-dual-empty-assumptions")

def forwardScope : TransferScope forwardOrderTheory :=
  TransferScope.universal _ (version "natural-order-scope")

def reverseScope : TransferScope reverseOrderTheory :=
  TransferScope.universal _ (version "natural-order-dual-scope")

/-- Swap endpoints while leaving mathematical objects unchanged. -/
def translation : Translation
    forwardOrderTheory reverseOrderTheory forwardVersion reverseVersion
    forwardAssumptions reverseAssumptions forwardScope reverseScope where
  artifact := version "order-dual-translation"
  lineage := .atomic (version "order-dual-translation")
  lineageArtifactExact := rfl
  foundationInterpretation := FoundationInterpretation.identity
    leanFoundation (version "order-dual-foundation-identity")
  mapObject := fun object => object
  mapProposition := fun proposition =>
    ⟨proposition.right, proposition.left⟩
  assumptionTranslation := {
    artifact := version "order-dual-assumption-translation"
    mapIndex := fun index => nomatch index.down
    propositionExact := by
      intro index
      exact nomatch index.down
  }
  targetAssumptionPartition := {
    classify := fun index => nomatch index.down
  }
  scopeTranslation := {
    mapsScope := by
      intro _ _
      trivial
  }
  propositionScopeTranslation := by
    intro _ _
    exact ⟨True.intro, by intros; trivial⟩
  quantifierTransform := {
    artifact := version "order-dual-quantifier-transform"
    sourceProfile := orderQuantifierProfile
    targetProfile := orderQuantifierProfile
    profileExact := rfl
    unspecifiedCompatibility := .fullySpecified
      (by simp [orderQuantifierProfile, QuantifierProfile.HasUnspecified])
      (by simp [orderQuantifierProfile, QuantifierProfile.HasUnspecified])
      (.carrierEquivalent (QuantifierCarrierEquivalence.refl Nat) rfl)
      [version "order-dual-quantifier-map-evidence"]
      (by simp)
  }
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := version "order-dual-loss-profile"
    classification := .Lossless
    declaredScope := "all natural-number order propositions"
    forgottenInformation := []
    assessmentArtifact := version "order-dual-loss-assessment"
  }]
  informationLossNonempty := by simp
  canonicality := [{
    artifact := version "order-dual-canonicality"
    canonicality := .Canonical
    conclusionDependence := .ChoiceIndependent
  }]

/-- Forward preservation is independently kernel checked. -/
theorem preserves : PreservesTruth translation := by
  refine { sound := ?_ }
  intro proposition _sourceInScope sourceProof _targetAssumptions
  exact sourceProof (AssumptionSet.empty_holds _ _)

/-- Reverse reflection is a separate kernel proof. -/
theorem reflects : ReflectsTruth translation := by
  refine { sound := ?_ }
  intro proposition _sourceInScope targetProof _sourceAssumptions
  exact targetProof (AssumptionSet.empty_holds _ _)

def preservationTheorem : PreservationTheorem translation where
  evidenceArtifact := version "order-dual-preservation-proof"
  law := preserves

def reflectionTheorem : ReflectionTheorem translation where
  evidenceArtifact := version "order-dual-reflection-proof"
  law := reflects

theorem equivalent : TranslationEquivalence translation where
  preserves := preserves
  reflects := reflects

def equivalenceWitness : EquivalenceWitness translation where
  witnessArtifact := version "order-dual-equivalence-witness"
  preservation := preservationTheorem
  reflection := reflectionTheorem
  law := equivalent

/-- A generic certified order theorem before transfer. -/
def certified
    (left right : Nat) (proof : left ≤ right) :
    CertifiedTheorem forwardVersion forwardAssumptions where
  theoremArtifact := version "source-order-theorem"
  propositionArtifact := version "source-order-proposition"
  proofArtifact := version "source-order-proof"
  proposition := ⟨left, right⟩
  proofObject := fun _ => ⟨proof⟩

/-- The target theorem is produced only by the explicit preservation bridge. -/
def transported
    (left right : Nat) (proof : left ≤ right) :
    CertifiedTheorem reverseVersion reverseAssumptions :=
  transport_theorem translation preservationTheorem (certified left right proof)
    (by
      exact ⟨True.intro, by intros; trivial⟩)

/-- Round trip exposes logical equivalence, never proposition equality. -/
theorem roundTripEvidence (proposition : OrderProposition) :
    (forwardAssumptions.Holds → forwardOrderTheory.Holds proposition) ↔
      (reverseAssumptions.Holds →
        reverseOrderTheory.Holds (translation.mapProposition proposition)) :=
  transport_reflect_roundtrip equivalent proposition (by
    exact ⟨True.intro, by intros; trivial⟩)

/-- Equality is an explicit regime for property transfer in this example. -/
def equalityRegime : EquivalenceRegime forwardOrderTheory where
  artifact := version "natural-order-equality-regime"
  kind := .Equality
  equivalent := Eq
  reflexive := fun _ => rfl
  symmetric := Eq.symm
  transitive := Eq.trans

/-- Every object property respects literal equality. -/
def equalityInvariant (property : Nat → Prop) :
    PropertyInvariant equalityRegime property where
  artifact := version "equality-property-invariant"
  preserved := by
    intro left right hEqual
    cases hEqual
    exact Iff.rfl

/-- Property movement names and consumes the exact equality regime. -/
theorem transferPropertyUnderEquality
    (property : Nat → Prop) {left right : Nat}
    (hEqual : equalityRegime.equivalent left right)
    (holds : property left) : property right :=
  property_transfer_under_equivalence
    (equalityInvariant property) hEqual holds

end FCRS.TheoremTransfer.Adapters.OrderDual
```
