# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.04CollapsedCompositeDag.Variantea68514117df3895372bf53a97d2312a478c04a0cf2f5383106e7bda3a72848d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5a144f118d84d6b455b9d0b5eedf04ae6e1945b` · SHA-256 `b1db4b29fd6f1830443933cb40e1648824e7c1b866f72bed863b8279433eb30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TwoNode.Variantafad427b207387d9e47dd4bbbce31a1114d72d474bc25893e94cbbfe7a63f54a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afad427b207387d9e47dd4bbbce31a1114d72d474bc25893e94cbbfe7a63f54a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.TwoNode.Variantafad427b207387d9e47dd4bbbce31a1114d72d474bc25893e94cbbfe7a63f54a","mathematical_subject":"Logic.ModelTheory","original_sha256":"afad427b207387d9e47dd4bbbce31a1114d72d474bc25893e94cbbfe7a63f54a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-3/reproductions/04_collapsed_composite_dag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TwoNode.Variantafad427b207387d9e47dd4bbbce31a1114d72d474bc25893e94cbbfe7a63f54a

namespace FCRS.TheoremTransfer.Cycle3DagWitness

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-3", name, "1", "sha256:" ++ name⟩

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
  theoryIdentity := ⟨"https://example.invalid/cycle-3", "unit-theory"⟩
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
  quantifierTransform := ⟨v (name ++ "-quantifiers"), quantifiers, quantifiers, rfl⟩
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

def first : Translation U U theoryVersion theoryVersion assumptions assumptions scope scope :=
  atomicTranslation "first"

def second : Translation U U theoryVersion theoryVersion assumptions assumptions scope scope :=
  atomicTranslation "second"

def composed : Translation U U theoryVersion theoryVersion assumptions assumptions scope scope :=
  first.comp second

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

inductive OnlyDependency : TwoNode → TwoNode → Type where
  | edge : OnlyDependency .source .target

def graphNode : TwoNode → TransferNode
  | .source => {
      nodeArtifact := ⟨.roleTagged "cycle-3-two-node" 0 (v "source-node")⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨theoryVersion.artifact⟩
      theoremArtifact := some ⟨sourceTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨sourceTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "cycle-3-two-node" 1 (v "target-node")⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨theoryVersion.artifact⟩
      theoremArtifact := some ⟨targetTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨targetTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }

def twoNodeGraph : TransferDependencyGraph where
  Node := TwoNode
  node := graphNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  dependsOn := OnlyDependency
  edge := fun {_ _} dependency => match dependency with
    | .edge => ⟨v "summary-edge", .Preserves, composed.artifact,
        composedPreservation.evidenceArtifact⟩
  dependencyRank := fun | .source => 0 | .target => 1
  rankIncreases := by intro _ _ dependency; cases dependency; decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-- A composite lineage is accepted in a derivation whose DAG has only endpoints. -/
def collapsedCompositeDerivation :
    TheoremTransferDerivation composed composedPreservation where
  derivationArtifact := v "collapsed-composite-derivation"
  sourceTheorem := sourceTheorem
  sourcePropositionInScope := sourceInScope
  targetTheorem := targetTheorem
  targetTheoremExact := rfl
  targetPropositionInScope := True.intro
  dependencyGraph := twoNodeGraph
  sourceNode := .source
  targetNode := .target
  dependency := .edge
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
  lifecycle :=
    ⟨v "lifecycle", [.Draft], by simp, [v "lifecycle-evidence"], by simp⟩
  equivalenceRegime := none
  soundnessLevel := .SemanticallyPreserved
  soundnessEvidence := .semanticallyPreserved

example : composed.lineage = .composite first.lineage second.lineage := rfl

#check collapsedCompositeDerivation

end FCRS.TheoremTransfer.Cycle3DagWitness
```
