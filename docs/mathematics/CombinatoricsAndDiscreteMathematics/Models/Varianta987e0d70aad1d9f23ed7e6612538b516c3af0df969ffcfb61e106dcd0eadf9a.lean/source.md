# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Models.Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34a089e104f5f813b46ec6cc696eab67fb998b27` · SHA-256 `90ad913309bdb18c0b71143533a37bc2830110effd8b8f0a79ef5e24829fcaed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeModel.Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrototypeModel.Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/WorldModelPrototype/Models.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Registry
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic.DeriveFintype

/-!
# Five pinned prototype world models

These are integration wrappers around already-owned domain modules.  They do
not re-own or duplicate domain declarations.  Four live source digests match
the historical task pins.  Boolean quantization has advanced since that
baseline, so its wrapper retains semantic version `0.1.0`, records a distinct
representation version `0.2.0`, and pins the live digest.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeModel.Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-- Exactly the five domains admitted by the finite prototype. -/
inductive PrototypeModel
  | permutationDynamics
  | booleanQuantizedMatrices
  | hammingGroupActions
  | strictSimplicialFabric
  | finiteEditHomology
  deriving DecidableEq, Repr, Fintype

/-- Stable semantic identifier for each prototype model. -/
def prototypeModelId : PrototypeModel → WorldModelId
  | .permutationDynamics => ⟨"world-model:finite-permutation-dynamics"⟩
  | .booleanQuantizedMatrices => ⟨"world-model:boolean-quantized-matrices"⟩
  | .hammingGroupActions => ⟨"world-model:finite-hamming-group-actions"⟩
  | .strictSimplicialFabric => ⟨"world-model:strict-simplicial-fabric"⟩
  | .finiteEditHomology => ⟨"world-model:finite-edit-homology"⟩

/-- All five finite semantic wrappers use the requested semantic version. -/
def prototypeSemanticVersion (_ : PrototypeModel) : DAF.Version :=
  ⟨0, 1, 0⟩

/-- Independent version coordinates prevent a representation update from
being mislabeled as a semantic fork. -/
def prototypeVersionCoordinates (model : PrototypeModel) : VersionCoordinates where
  semantic := prototypeSemanticVersion model
  representation :=
    if model = .booleanQuantizedMatrices then ⟨0, 2, 0⟩ else ⟨0, 1, 0⟩
  implementation := ⟨0, 1, 0⟩
  checker := ⟨4, 32, 0⟩
  registry := ⟨0, 1, 0⟩

/-- Live source digest of the model-defining module. -/
def prototypeSourceDigest : PrototypeModel → ArtifactIdentity
  | .permutationDynamics =>
      ⟨"sha256:4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b"⟩
  | .booleanQuantizedMatrices =>
      ⟨"sha256:eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b"⟩
  | .hammingGroupActions =>
      ⟨"sha256:2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634"⟩
  | .strictSimplicialFabric =>
      ⟨"sha256:1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c"⟩
  | .finiteEditHomology =>
      ⟨"sha256:8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade"⟩

/-- The historical quantization pin is retained only as comparison metadata. -/
def historicalQuantizationSourceDigest : ArtifactIdentity :=
  ⟨"sha256:e59dea53303aed31dc02134267fa3acdd780de25fbb63193fecc490c88f71068"⟩

theorem live_quantization_digest_ne_historical :
    prototypeSourceDigest .booleanQuantizedMatrices ≠
      historicalQuantizationSourceDigest := by
  decide

/-- Complete semantic identity of a prototype wrapper. -/
def prototypeModelIdentity (model : PrototypeModel) :
    WorldModelVersionId where
  modelId := prototypeModelId model
  version := prototypeSemanticVersion model
  sourceDigest := prototypeSourceDigest model

/-- Domain module used by each wrapper. -/
def prototypeSourceModule : PrototypeModel → String
  | .permutationDynamics => "DAF.FiniteDynamics.Generic"
  | .booleanQuantizedMatrices => "BinaryMatrix.Quantization"
  | .hammingGroupActions => "BinaryMatrix.Symmetry"
  | .strictSimplicialFabric => "DAF.Fabric.Shape"
  | .finiteEditHomology => "FilesystemHomology.EditComplex"

/-- Finite semantic dependencies between the five wrappers. -/
def prototypeDependencies : PrototypeModel → Finset PrototypeModel
  | .permutationDynamics => ∅
  | .booleanQuantizedMatrices => ∅
  | .hammingGroupActions =>
      {.permutationDynamics, .booleanQuantizedMatrices}
  | .strictSimplicialFabric => {.booleanQuantizedMatrices}
  | .finiteEditHomology =>
      {.permutationDynamics, .strictSimplicialFabric}

/-- A topological rank proving the prototype dependency graph acyclic. -/
def prototypeRank : PrototypeModel → Nat
  | .permutationDynamics | .booleanQuantizedMatrices => 0
  | .hammingGroupActions | .strictSimplicialFabric => 1
  | .finiteEditHomology => 2

/-- Stable dependency identities without a noncomputable `Finset.toList`. -/
def prototypeDependencyIds : PrototypeModel → List WorldModelId
  | .permutationDynamics | .booleanQuantizedMatrices => []
  | .hammingGroupActions =>
      [prototypeModelId .permutationDynamics,
        prototypeModelId .booleanQuantizedMatrices]
  | .strictSimplicialFabric =>
      [prototypeModelId .booleanQuantizedMatrices]
  | .finiteEditHomology =>
      [prototypeModelId .permutationDynamics,
        prototypeModelId .strictSimplicialFabric]

theorem prototype_dependency_rank_lt
    {dependency model : PrototypeModel}
    (member : dependency ∈ prototypeDependencies model) :
    prototypeRank dependency < prototypeRank model := by
  cases model with
  | permutationDynamics => simp [prototypeDependencies] at member
  | booleanQuantizedMatrices => simp [prototypeDependencies] at member
  | hammingGroupActions =>
      simp only [prototypeDependencies, Finset.mem_insert,
        Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> decide
  | strictSimplicialFabric =>
      have : dependency = .booleanQuantizedMatrices := by
        simpa [prototypeDependencies] using member
      subst dependency
      decide
  | finiteEditHomology =>
      simp only [prototypeDependencies, Finset.mem_insert,
        Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> decide

/-- The exact finite dependency graph used by the prototype. -/
abbrev prototypeDependencyGraph : DAF.DependencyGraph :=
  DAF.DependencyGraph.ofRank PrototypeModel
    prototypeDependencies prototypeRank
    prototype_dependency_rank_lt

/-- Empty typed registry helper for wrappers without duplicated declarations. -/
def emptyRegistry (Entry : Type) : FiniteRegistry Entry :=
  FiniteRegistry.empty Entry

/-- Stable object identity exposed by a prototype wrapper. -/
def prototypeObjectId (model : PrototypeModel) : MathematicalObjectId :=
  ⟨"object:" ++ (prototypeModelId model).value⟩

/-- Stable proposition identity exposed by a prototype wrapper. -/
def prototypePropositionId (model : PrototypeModel) : PropositionId :=
  ⟨"proposition:" ++ (prototypeModelId model).value ++ ":source-typechecks"⟩

/-- Stable formal-declaration identity used by the proof-authority route. -/
def prototypeDeclarationId : PrototypeModel → FormalDeclarationId
  | .permutationDynamics =>
      ⟨"FinitePermutationDynamics.fixedPointCount_eq_sum_exactPeriodCount"⟩
  | .booleanQuantizedMatrices =>
      ⟨"BinMat.Quantizer.quotientToEffective_injective"⟩
  | .hammingGroupActions =>
      ⟨"Symmetry.coordinatePermutationHom_injective"⟩
  | .strictSimplicialFabric =>
      ⟨"DAF.Fabric.Shape.restrict_comp"⟩
  | .finiteEditHomology =>
      ⟨"FilesystemHomology.FilesystemEditPresentation.chainDifferential_sq"⟩

/-- Every wrapper names its finite-scope assumption rather than hiding it. -/
def prototypeAssumptionId (model : PrototypeModel) : AssumptionId :=
  ⟨"assumption:" ++ (prototypeModelId model).value ++ ":finite-scope"⟩

/--
Trusted-base metadata for the pinned Lean route used by a wrapper.  The source
tree is Lean-checked, but these semantic wrapper records are not yet populated
from the compiled-environment export.  Consequently the observed closure is
empty and, critically, `closureComplete` remains false.
-/
def prototypeTrustedBase (model : PrototypeModel) : TrustedBaseClosure where
  checkerId := ⟨"artifact:lean-kernel-4.32.0"⟩
  checkerVersion := "Lean 4.32.0"
  allowedAxioms := ["propext", "Classical.choice", "Quot.sound"]
  observedAxioms := []
  closureComplete := false
  evidence :=
    [⟨"artifact:axiom-audit:" ++ (prototypeModelId model).value⟩]

/-- One semantic object record per finite wrapper. -/
def prototypeObjectRecord (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.MathematicalObjectRecord where
  identity := prototypeObjectId model
  semanticVersion := prototypeSemanticVersion model
  owner := .leanSemantics
  sourceIndexEntry := none

/-- One explicit proposition record per finite wrapper. -/
def prototypePropositionRecord (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.PropositionRecord where
  identity := prototypePropositionId model
  objectId := prototypeObjectId model
  normalizedStatement :=
    "The wrapper declares a pinned Lean checker route; compiled closure binding remains open."
  assumptions := [prototypeAssumptionId model]

/-- One explicit, versioned finite-scope assumption per wrapper. -/
def prototypeAssumptionRecord (model : PrototypeModel) : AssumptionRecord where
  identity := prototypeAssumptionId model
  statement := "Reasoning is restricted to the declared finite prototype scope."
  version := prototypeSemanticVersion model
  sourceAuthority := .declarativeArtifact
  provenance := [prototypeSourceDigest model]

/-- Pending proof-authority metadata names its intended checker, source, and declaration.
It remains declarative until compiled-environment enrichment binds the closure. -/
def prototypeProofAuthorityRecord
    (model : PrototypeModel) : ProofAuthorityRecord where
  identity := "proof-authority:" ++ (prototypeModelId model).value
  propositionId := prototypePropositionId model
  declarationId := prototypeDeclarationId model
  checker := ⟨"artifact:lean-kernel-4.32.0"⟩
  trustedBase := prototypeTrustedBase model
  authority := .declarativeArtifact
  evidenceClass := .proseOrMetadata
  sourceDigest := prototypeSourceDigest model

/-- Positive finite example metadata remains attached to its owning wrapper. -/
def prototypeExampleRecord (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.ExampleRecord where
  identity := "example:" ++ (prototypeModelId model).value
  objectId := prototypeObjectId model
  propositionId := some (prototypePropositionId model)
  artifact := ⟨"artifact:example:" ++ (prototypeModelId model).value⟩

/-- Negative finite example metadata prevents a wrapper from claiming universality. -/
def prototypeCounterexampleRecord
    (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.CounterexampleRecord where
  identity := "counterexample:" ++ (prototypeModelId model).value ++ ":scope-limit"
  objectId := prototypeObjectId model
  propositionId := prototypePropositionId model
  artifact := ⟨"artifact:counterexample:" ++ (prototypeModelId model).value⟩

/-- Every wrapper retains a queryable open boundary/completeness obligation. -/
def prototypeOpenObligationRecord
    (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.ObligationRecord where
  identity := ⟨"obligation:" ++ (prototypeModelId model).value ++ ":boundary"⟩
  statement := "No canonical model boundary or complete compiled trusted-base binding is claimed."
  owner := .leanSemantics
  assumptions := [prototypeAssumptionId model]
  affectedObjects := [prototypeObjectId model]
  status := .open
  dischargeArtifact := none
  discharged_names_artifact := by simp
  supersedes := none

/-- Minimal wrapper: domain declarations remain in their defining owners. -/
def prototypeWorldModel (model : PrototypeModel) :
    MathematicalWorldModel where
  identity := prototypeModelIdentity model
  owner := .leanSemantics
  Domain := PUnit
  State := PUnit
  LocalContext := PUnit
  vocabulary :=
    { identity := ⟨"artifact:vocabulary:" ++ (prototypeModelId model).value⟩
      symbols := [prototypeSourceModule model] }
  declarationNamespace := ⟨prototypeSourceModule model⟩
  objects := FiniteRegistry.singleton (prototypeObjectRecord model)
    (fun record ↦ record.identity.value)
  propositions := FiniteRegistry.singleton (prototypePropositionRecord model)
    (fun record ↦ record.identity.value)
  assumptions := FiniteRegistry.singleton (prototypeAssumptionRecord model)
    (fun record ↦ record.identity.value)
  proofAuthorities := FiniteRegistry.singleton (prototypeProofAuthorityRecord model)
    (fun record ↦ record.identity)
  examples := FiniteRegistry.singleton (prototypeExampleRecord model)
    (fun record ↦ record.identity)
  counterexamples := FiniteRegistry.singleton (prototypeCounterexampleRecord model)
    (fun record ↦ record.identity)
  implementationRefinements := emptyRegistry _
  openObligations := FiniteRegistry.singleton (prototypeOpenObligationRecord model)
    (fun record ↦ record.identity.value)
  semanticDependencies := prototypeDependencyIds model
  trustedBaseClosure := prototypeTrustedBase model
  localState := PUnit.unit
  stabilityFunctional := fun _ => 0
  inconsistencyFunctional := fun _ => 0
  sourceAuthority := .certifiedSource
  observationAuthority := .externalCapability
  assuranceLevel := .development

/-- Every queryable wrapper exposes nonempty object, proposition, assumption,
proof-authority, example, counterexample, and obligation registries. -/
theorem prototypeWorldModel_metadata_complete (model : PrototypeModel) :
    (prototypeWorldModel model).objects.entries.length = 1 ∧
    (prototypeWorldModel model).propositions.entries.length = 1 ∧
    (prototypeWorldModel model).assumptions.entries.length = 1 ∧
    (prototypeWorldModel model).proofAuthorities.entries.length = 1 ∧
    (prototypeWorldModel model).examples.entries.length = 1 ∧
    (prototypeWorldModel model).counterexamples.entries.length = 1 ∧
    (prototypeWorldModel model).openObligations.entries.length = 1 := by
  simp [prototypeWorldModel, FiniteRegistry.singleton]

/-- The wrapper metadata does not claim a closed trusted base before exporter enrichment. -/
theorem prototypeWorldModel_trustedBase_not_declaredClosed
    (model : PrototypeModel) :
    ¬ (prototypeWorldModel model).trustedBaseClosure.DeclaredClosed := by
  simp [prototypeWorldModel, prototypeTrustedBase,
    TrustedBaseClosure.DeclaredClosed]

/-- Pending wrapper metadata is not mislabeled as a kernel proof certificate. -/
theorem prototypeWorldModel_proofAuthority_is_declarative
    (model : PrototypeModel) :
    (prototypeProofAuthorityRecord model).authority =
      AuthorityClass.declarativeArtifact :=
  rfl

theorem prototype_model_identities_injective :
    Function.Injective fun model : PrototypeModel =>
      (prototypeWorldModel model).identity := by
  intro left right equal
  cases left <;> cases right <;>
    simp [prototypeWorldModel, prototypeModelIdentity,
      prototypeModelId] at equal ⊢

/-- Complete finite world-model registry for the five wrappers. -/
def prototypeRegistry : WorldModelRegistry where
  dependencyGraph := prototypeDependencyGraph
  model := prototypeWorldModel
  identities_unique := prototype_model_identities_injective
  registryVersion :=
    { version := ⟨0, 1, 0⟩
      sourceDigest := ⟨"artifact:world-model-registry-prototype-v1"⟩ }
  deprecated := ∅
  supersedes := fun _ => none
  supersessionRank := fun _ => 0
  supersession_decreases := by simp
  semanticForks := []
  expectedSourceDigest := prototypeSourceDigest
  sourceDigest_valid := fun _ => rfl

/-- All five model slots are present in the finite registry. -/
theorem prototypeRegistry_card :
    Fintype.card prototypeRegistry.ModelId = 5 := by
  change Fintype.card PrototypeModel = 5
  decide

/-- Every wrapper resolves to its exact live source digest. -/
theorem prototypeRegistry_source_digest
    (model : prototypeRegistry.ModelId) :
    (prototypeRegistry.Version model).sourceDigest =
      prototypeSourceDigest model :=
  rfl

end DAF.Integration.WorldModelPrototype
```
