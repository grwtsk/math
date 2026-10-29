-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ReasoningStep.Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.ReasoningStep.Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030","mathematical_subject":"Logic.ModelTheory","original_sha256":"76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Language/TerrainLocator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Language.ClaimPayload

/-!
# Exact terrain locators

A locator contains identities, never similarity scores.  Validation returns a
proof-bearing certificate or a specific rejection; no `Bool` is interpreted
as theorem evidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.ReasoningStep.Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030

namespace DAF.Language

open DAF.Universe

/-- One claimed step through a manifest edge. -/
structure ReasoningStep where
  edge : TerrainEdgeId
  source : TerrainNodeId
  target : TerrainNodeId
  relation : TerrainRelation
  deriving DecidableEq, Repr

/-- A finite chain whose steps must resolve and compose in order. -/
structure ReasoningChain where
  steps : List ReasoningStep
  deriving DecidableEq, Repr

namespace ReasoningChain

/-- Adjacent reasoning steps share their exact endpoint. -/
def StepsContinuous : List ReasoningStep → Prop
  | [] => True
  | [_] => True
  | first :: second :: remaining =>
      first.target = second.source ∧
        StepsContinuous (second :: remaining)

/-- One submitted step is exactly an edge in the immutable manifest. -/
def StepResolves (manifest : UniverseManifest) (step : ReasoningStep) : Prop :=
  ∃ edge ∈ manifest.edges,
    edge.id = step.edge ∧
      edge.source = step.source ∧
      edge.target = step.target ∧
      edge.relation = step.relation

/-- Every step resolves and the route is composable. -/
def Valid (manifest : UniverseManifest) (chain : ReasoningChain) : Prop :=
  StepsContinuous chain.steps ∧
    ∀ step ∈ chain.steps, StepResolves manifest step

/-- A claim route is nonempty and terminates at its asserted source node. -/
def ConcludesAt (chain : ReasoningChain) (node : TerrainNodeId) : Prop :=
  ∃ first remaining,
    chain.steps = first :: remaining ∧
      (first :: remaining).getLast?.map ReasoningStep.target = some node

end ReasoningChain

/-- Exact source location for one grounded language clause. -/
structure TerrainLocator where
  snapshotId : SnapshotId
  primaryNodes : Finset TerrainNodeId
  cellFaces : Finset CellFaceAddress
  reasoningChain : Option ReasoningChain
  harmonicTube : Option HarmonicTubeId
  foldRoute : List FoldId
  characterChannel : Option DirichletCharacterId
  operatorTrace : Option OperatorTraceId
  authority : ResponseAuthority
  deriving DecidableEq

/-- Finite identities available to a locator in one immutable snapshot. -/
structure TerrainLocatorContext where
  manifest : UniverseManifest
  availableCellFaces : Finset CellFaceAddress
  harmonicTubes : Finset HarmonicTubeId
  characterChannels : Finset DirichletCharacterId
  operatorTraces : Finset OperatorTraceId
  runtimeTraces : Finset RuntimeTraceId

namespace TerrainLocatorContext

def HasFold (context : TerrainLocatorContext) (id : FoldId) : Prop :=
  ∃ fold ∈ context.manifest.foldData, fold.id = id

def HasCellFace (context : TerrainLocatorContext) (face : CellFaceAddress) : Prop :=
  face ∈ context.availableCellFaces ∧ context.manifest.HasCell face.cell

def OptionalMember {α : Type} [DecidableEq α]
    (available : Finset α) : Option α → Prop
  | none => True
  | some value => value ∈ available

def OptionalReasoningChainValid
    (context : TerrainLocatorContext) : Option ReasoningChain → Prop
  | none => True
  | some chain => chain.Valid context.manifest

end TerrainLocatorContext

/-- Precise reasons for rejecting a terrain locator. -/
inductive LocatorError
  | staleSnapshot
  | emptyPrimaryNodes
  | nonexistentNode
  | nonexistentCellFace
  | inventedReasoningRoute
  | inventedFoldRoute
  | unknownHarmonicTube
  | unknownCharacterChannel
  | unknownOperatorTrace
  deriving DecidableEq, Repr

/-- Proof that every identity and route in a locator resolves. -/
structure CheckedTerrainLocator
    (context : TerrainLocatorContext)
    (locator : TerrainLocator) : Type where
  snapshotMatches : locator.snapshotId = context.manifest.snapshotId
  primaryNodesNonempty : locator.primaryNodes.Nonempty
  primaryNodesResolve :
    ∀ nodeId ∈ locator.primaryNodes, context.manifest.HasNode nodeId
  cellFacesResolve :
    ∀ face ∈ locator.cellFaces, context.HasCellFace face
  reasoningChainResolves :
    context.OptionalReasoningChainValid locator.reasoningChain
  foldRouteResolves : ∀ foldId ∈ locator.foldRoute, context.HasFold foldId
  harmonicTubeResolves :
    TerrainLocatorContext.OptionalMember
      context.harmonicTubes locator.harmonicTube
  characterChannelResolves :
    TerrainLocatorContext.OptionalMember
      context.characterChannels locator.characterChannel
  operatorTraceResolves :
    TerrainLocatorContext.OptionalMember
      context.operatorTraces locator.operatorTrace

/--
Fail-closed locator validation.  Successful output carries every proposition
checked by the decision procedure.
-/
noncomputable def validateTerrainLocator
    (context : TerrainLocatorContext)
    (locator : TerrainLocator) :
    Except LocatorError (CheckedTerrainLocator context locator) := by
  by_cases snapshotMatches : locator.snapshotId = context.manifest.snapshotId
  · by_cases primaryNodesNonempty : locator.primaryNodes.Nonempty
    · by_cases primaryNodesResolve :
        ∀ nodeId ∈ locator.primaryNodes, context.manifest.HasNode nodeId
      · by_cases cellFacesResolve :
          ∀ face ∈ locator.cellFaces, context.HasCellFace face
        · by_cases reasoningChainResolves :
            context.OptionalReasoningChainValid locator.reasoningChain
          · by_cases foldRouteResolves :
              ∀ foldId ∈ locator.foldRoute, context.HasFold foldId
            · by_cases harmonicTubeResolves :
                TerrainLocatorContext.OptionalMember
                  context.harmonicTubes locator.harmonicTube
              · by_cases characterChannelResolves :
                  TerrainLocatorContext.OptionalMember
                    context.characterChannels locator.characterChannel
                · by_cases operatorTraceResolves :
                    TerrainLocatorContext.OptionalMember
                      context.operatorTraces locator.operatorTrace
                  · exact .ok
                      { snapshotMatches
                        primaryNodesNonempty
                        primaryNodesResolve
                        cellFacesResolve
                        reasoningChainResolves
                        foldRouteResolves
                        harmonicTubeResolves
                        characterChannelResolves
                        operatorTraceResolves }
                  · exact .error .unknownOperatorTrace
                · exact .error .unknownCharacterChannel
              · exact .error .unknownHarmonicTube
            · exact .error .inventedFoldRoute
          · exact .error .inventedReasoningRoute
        · exact .error .nonexistentCellFace
      · exact .error .nonexistentNode
    · exact .error .emptyPrimaryNodes
  · exact .error .staleSnapshot

theorem checked_locator_snapshot_current
    {context : TerrainLocatorContext}
    {locator : TerrainLocator}
    (checked : CheckedTerrainLocator context locator) :
    locator.snapshotId = context.manifest.snapshotId :=
  checked.snapshotMatches

end DAF.Language
