# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.03EndpointOnlyLineage.Variant602adf3ad66a3bb74b750010c370e15265c7329a0460de53a0dd240b679779f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `141e050eb98a57d89e9ddcfada89c88bbf4994e6` · SHA-256 `379c066a5a2c498e21fd32e5713423b2333f9e435e441aab9da66e9a954b120d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TwoNode.Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.TwoNode.Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3","mathematical_subject":"Logic.ModelTheory","original_sha256":"1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-4/reproductions/03_endpoint_only_lineage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TwoNode.Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3

namespace FCRS.TheoremTransfer.Cycle4LineageWitness

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-4", name, "1", "sha256:" ++ name⟩

def U : Theory where
  Object := Unit
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := fun _ => True.intro
  reifyProofObject := fun _ => ()
  propositionSupport := fun _ => .nullary
  propositionProperty := fun _ _ => True

def foundation : Foundation := ⟨v "foundation", .DependentTypeTheory⟩
def quantifiers : QuantifierProfile := QuantifierProfile.unspecified (v "quantifiers")

def theoryVersion : MathematicalTheoryVersion U foundation where
  artifact := v "theory-version"
  theoryIdentity := ⟨"https://example.invalid/cycle-4", "unit-theory"⟩
  signatureVersion := v "signature"
  axiomSetVersion := v "axioms"
  definitionSetVersion := v "definitions"
  importedTheoryVersions := []
  semanticRegime := "unit"
  quantifierProfile := quantifiers
  formalizationArtifactVersion := v "formalization"
  releaseStatus := .Draft
  provenance := []

def assumptions : AssumptionSet U :=
  AssumptionSet.empty.{0, 0, 0} U (v "assumptions")
def scope : TransferScope U := TransferScope.universal U (v "scope")

def atomicTranslation (name : String) : Translation U U theoryVersion theoryVersion
    assumptions assumptions scope scope where
  artifact := v name
  lineage := .atomic (v name)
  lineageArtifactExact := rfl
  foundationInterpretation := .identity foundation (v (name ++ "-foundation"))
  mapObject := id
  mapProposition := id
  assumptionTranslation := {
    artifact := v (name ++ "-assumptions")
    mapIndex := fun i => nomatch i.down
    propositionExact := fun i => nomatch i.down
  }
  targetAssumptionPartition := { classify := fun i => nomatch i.down }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := {
    artifact := v (name ++ "-quantifiers")
    sourceProfile := quantifiers
    targetProfile := quantifiers
    profileExact := rfl
    unspecifiedCompatibility := .evidenced
      [v (name ++ "-quantifier-compatibility")] (by simp)
  }
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := v (name ++ "-loss")
    classification := .Lossless
    declaredScope := "unit"
    forgottenInformation := []
    assessmentArtifact := v (name ++ "-loss-assessment")
  }]
  informationLossNonempty := by simp
  canonicality := []

def first : Translation U U theoryVersion theoryVersion
    assumptions assumptions scope scope := atomicTranslation "first"
def second : Translation U U theoryVersion theoryVersion
    assumptions assumptions scope scope := atomicTranslation "second"
def composed : Translation U U theoryVersion theoryVersion
    assumptions assumptions scope scope := first.comp second

theorem atomicPreserves (name : String) : PreservesTruth (atomicTranslation name) := by
  refine ⟨?_⟩
  intro _ _ sourceProof _
  exact sourceProof (AssumptionSet.empty_holds _ _)

def firstPreservation : PreservationTheorem first :=
  ⟨v "first-proof", atomicPreserves "first"⟩

def secondPreservation : PreservationTheorem second :=
  ⟨v "second-proof", atomicPreserves "second"⟩

def composedPreservation : PreservationTheorem composed :=
  firstPreservation.comp secondPreservation

def sourceTheorem : CertifiedTheorem theoryVersion assumptions where
  theoremArtifact := v "source-theorem"
  propositionArtifact := v "source-proposition"
  proofArtifact := v "source-proof"
  proposition := ()
  proofObject := fun _ => ()

theorem sourceInScope : PropositionWithinScope U scope sourceTheorem.proposition :=
  True.intro

def targetTheorem : CertifiedTheorem theoryVersion assumptions :=
  transport_theorem composed composedPreservation sourceTheorem sourceInScope

inductive TwoNode where
  | source
  | target
deriving DecidableEq

/-! Three parallel edges still connect only the two endpoint nodes. -/
inductive EndpointDependency : TwoNode → TwoNode → Type where
  | summary : EndpointDependency .source .target
  | firstComponent : EndpointDependency .source .target
  | secondComponent : EndpointDependency .source .target

def graphNode : TwoNode → TransferNode
  | .source => {
      nodeArtifact := ⟨.roleTagged "cycle-4-two-node" 0 (v "source-node")⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨theoryVersion.artifact⟩
      theoremArtifact := some ⟨sourceTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨sourceTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "cycle-4-two-node" 1 (v "target-node")⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨theoryVersion.artifact⟩
      theoremArtifact := some ⟨targetTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨targetTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }

def endpointGraph : TransferDependencyGraph where
  Node := TwoNode
  node := graphNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  dependsOn := EndpointDependency
  edge := fun {_ _} dependency => match dependency with
    | .summary => ⟨v "summary-edge", .Preserves, composed.artifact,
        composedPreservation.evidenceArtifact⟩
    | .firstComponent => ⟨v "first-edge", .Preserves, first.artifact,
        firstPreservation.evidenceArtifact⟩
    | .secondComponent => ⟨v "second-edge", .Preserves, second.artifact,
        secondPreservation.evidenceArtifact⟩
  dependencyRank := fun | .source => 0 | .target => 1
  rankIncreases := by intro _ _ dependency; cases dependency <;> decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-!
All atomic artifacts occur on edges, but there is still no middle node, middle
theory version, or middle proposition.  Thus occurrence coverage does not
enforce the required intermediate provenance model.
-/
def endpointOnlyCompositeDerivation :
    TheoremTransferDerivation composed composedPreservation where
  derivationArtifact := v "endpoint-only-composite-derivation"
  sourceTheorem := sourceTheorem
  sourcePropositionInScope := sourceInScope
  targetTheorem := targetTheorem
  targetTheoremExact := rfl
  targetPropositionInScope := True.intro
  dependencyGraph := endpointGraph
  sourceNode := .source
  targetNode := .target
  dependency := .summary
  lineageEdgeCoverage := by
    intro artifact membership
    change artifact ∈ [v "first", v "second"] at membership
    have cases : artifact = first.artifact ∨ artifact = second.artifact := by
      simpa [first, second, atomicTranslation] using membership
    rcases cases with firstExact | secondExact
    · subst artifact
      exact ⟨.source, .target, .firstComponent, Or.inl rfl⟩
    · subst artifact
      exact ⟨.source, .target, .secondComponent, Or.inl rfl⟩
  sourceTheoryVersionExact := rfl
  targetTheoryVersionExact := rfl
  sourceTheoremArtifactExact := rfl
  targetTheoremArtifactExact := rfl
  sourcePropositionArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := rfl
  bridgeArtifactExact := rfl
  evidenceArtifactExact := rfl
  declaredInformationLoss := composed.informationLoss
  informationLossExact := rfl
  informationLossAssessment := by intros; exact .declaredMetadata _
  declaredCanonicality := composed.canonicality
  canonicalityExact := rfl
  lifecycle := ⟨v "lifecycle", [.Draft], by simp,
    [v "lifecycle-evidence"], by simp⟩
  equivalenceRegime := none
  soundnessLevel := .SemanticallyPreserved
  soundnessEvidence := .semanticallyPreserved

#check endpointOnlyCompositeDerivation

end FCRS.TheoremTransfer.Cycle4LineageWitness
```
