# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ee3738876f45b3b78eb614dd44670348e73fdd0` · SHA-256 `a34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Shard
import Mathlib.Data.Rel

/-!
# Complete canonical environment extraction
-/

namespace MathDiscovery.Extractor

open MathDiscovery

structure ProjectRecord where
  projectId : ProjectId
  packageId : PackageId
  scope : ExtractionScope
  discoveryMode : DiscoveryMode
  selectedModules : Array Lean.Name
  configurationDigest : Digest
  buildSystemAuthority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

structure EnvironmentExtraction where
  ledgerId : EnvironmentLedgerId
  schemaVersion : Nat
  extractorVersion : Version
  toolchain : ToolchainReceipt
  project : ProjectRecord
  config : ExtractConfig
  packages : Array PackageRecord
  modules : Array ModuleRecord
  declarations : Array DeclarationRecord
  expressions : Array ExpressionRecord
  dependencies : Array DependencyEdge
  generationRelations : Array GenerationRelation
  attributes : Array AttributeRecord
  sources : Array DeclarationSource
  trustClosures : Array TrustClosure
  rootCones : Array RootConeRecord
  diagnostics : Array ExtractionDiagnostic
  completeness : CompletenessCertificate
  digest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace EnvironmentExtraction

private def declarationIds (extraction : EnvironmentExtraction) : List DeclarationId :=
  extraction.declarations.toList.map (·.declarationId)

private def declarationNames (extraction : EnvironmentExtraction) : List Lean.Name :=
  extraction.declarations.toList.map (·.canonicalName)

private def moduleIds (extraction : EnvironmentExtraction) : List ModuleId :=
  extraction.modules.toList.map (·.moduleId)

private def expressionIds (extraction : EnvironmentExtraction) : List ExprId :=
  extraction.expressions.toList.map (·.exprId)

private def expressionChild
    (extraction : EnvironmentExtraction) (parent child : ExprId) : Prop :=
  ∃ expression ∈ extraction.expressions,
    expression.exprId = parent ∧ child ∈ expression.semanticRoot.childIds

/-- Stable declaration identifiers are unique within one canonical extraction. -/
def UniqueDeclarationIds (extraction : EnvironmentExtraction) : Prop :=
  extraction.declarationIds.Nodup

/-- Canonical declaration names are unique in one compiled Lean environment. -/
def UniqueDeclarationNames (extraction : EnvironmentExtraction) : Prop :=
  extraction.declarationNames.Nodup

/-- Module identifiers are unique. -/
def UniqueModuleIds (extraction : EnvironmentExtraction) : Prop :=
  extraction.moduleIds.Nodup

/-- Every dependency endpoint is represented by an internal or explicit external declaration record. -/
def DependencyEndpointsResolved (extraction : EnvironmentExtraction) : Prop :=
  ∀ edge ∈ extraction.dependencies,
    edge.sourceDeclarationId ∈ extraction.declarationIds ∧
    edge.targetDeclarationId ∈ extraction.declarationIds

/-- Every non-external declaration resolves to an extracted owner module. -/
def DeclarationOwnersResolved (extraction : EnvironmentExtraction) : Prop :=
  ∀ declaration ∈ extraction.declarations,
    declaration.isExternalReference = true ∨
      ∃ moduleId ∈ extraction.moduleIds,
        declaration.owningModuleId = some moduleId

/-- Module declaration lists agree exactly with declaration ownership. -/
def ModuleDeclarationListsExact (extraction : EnvironmentExtraction) : Prop :=
  ∀ module ∈ extraction.modules,
    ∀ declarationId,
      declarationId ∈ module.declarationIds ↔
        ∃ declaration ∈ extraction.declarations,
          declaration.declarationId = declarationId ∧
          declaration.owningModuleId = some module.moduleId

/-- Every expression edge and declaration root resolves in the expression ledger. -/
def ExpressionReferencesResolved (extraction : EnvironmentExtraction) : Prop :=
  extraction.expressionIds.Nodup ∧
  (∀ expression ∈ extraction.expressions,
    ∀ child ∈ expression.semanticRoot.childIds,
      child ∈ extraction.expressionIds) ∧
  ∀ declaration ∈ extraction.declarations,
    (∀ rootId, declaration.typeExprId = some rootId →
      rootId ∈ extraction.expressionIds) ∧
    (∀ rootId, declaration.valueExprId = some rootId →
      rootId ∈ extraction.expressionIds)

/-- Canonical expressions form an acyclic graph. -/
def ExpressionGraphAcyclic (extraction : EnvironmentExtraction) : Prop :=
  ∀ expressionId,
    ¬ Relation.TransGen extraction.expressionChild expressionId expressionId

def GenerationRelationsResolved (extraction : EnvironmentExtraction) : Prop :=
  ∀ relation ∈ extraction.generationRelations,
    relation.sourceDeclarationId ∈ extraction.declarationIds ∧
    relation.targetDeclarationId ∈ extraction.declarationIds

/-- Exactly one aligned trust closure exists for every declaration. -/
def TrustCoverageExact (extraction : EnvironmentExtraction) : Prop :=
  (extraction.trustClosures.toList.map (·.declarationId)).Nodup ∧
  (∀ declaration ∈ extraction.declarations,
    ∃ closure ∈ extraction.trustClosures,
      closure.declarationId = declaration.declarationId ∧
      closure.declaration = declaration.canonicalName) ∧
  ∀ closure ∈ extraction.trustClosures,
    closure.declarationId ∈ extraction.declarationIds

def SourceRecordsAligned (extraction : EnvironmentExtraction) : Prop :=
  (extraction.sources.toList.map (·.sourceRecordId)).Nodup ∧
  (∀ source ∈ extraction.sources,
    ∃ declaration ∈ extraction.declarations,
      declaration.declarationId = source.declarationId ∧
      declaration.canonicalName = source.declaration) ∧
  ∀ declaration ∈ extraction.declarations,
    ∀ sourceId, declaration.sourceRecordId = some sourceId →
      sourceId ∈ extraction.sources.toList.map (·.sourceRecordId)

def AttributesResolve (extraction : EnvironmentExtraction) : Prop :=
  (extraction.attributes.toList.map (·.attributeId)).Nodup ∧
  ∀ attributeRecord ∈ extraction.attributes,
    attributeRecord.declarationId ∈ extraction.declarationIds

private def idsOrdered (ids : List StableId) : Prop :=
  ids.Pairwise fun left right ↦ left.value ≤ right.value

def CanonicallyOrdered (extraction : EnvironmentExtraction) : Prop :=
  idsOrdered extraction.moduleIds ∧
  idsOrdered extraction.declarationIds ∧
  idsOrdered extraction.expressionIds

def DigestsValid (extraction : EnvironmentExtraction) : Prop :=
  extraction.digest.Valid ∧
  extraction.project.configurationDigest.Valid ∧
  (∀ module ∈ extraction.modules,
    module.oleanDigest.Valid ∧ module.shardDigest.Valid ∧
      module.extractionDigest.Valid) ∧
  (∀ declaration ∈ extraction.declarations,
    declaration.declarationDigest.Valid) ∧
  ∀ expression ∈ extraction.expressions,
    expression.semanticDigest.Valid

def ExtractionPolicyCompliant (extraction : EnvironmentExtraction) : Prop :=
  (extraction.config.failOnUnsupportedExtension = true →
    extraction.completeness.unsupportedExtensions.isEmpty = true) ∧
  (extraction.config.failOnMissingSource = true →
    extraction.completeness.unresolvedSources.isEmpty = true) ∧
  (extraction.config.failOnUnknownOwner = true →
    extraction.completeness.unresolvedOwners.isEmpty = true)

structure Valid (extraction : EnvironmentExtraction) : Prop where
  declarationIdsUnique : extraction.UniqueDeclarationIds
  declarationNamesUnique : extraction.UniqueDeclarationNames
  moduleIdsUnique : extraction.UniqueModuleIds
  dependencyEndpointsResolved : extraction.DependencyEndpointsResolved
  declarationOwnersResolved : extraction.DeclarationOwnersResolved
  moduleDeclarationListsExact : extraction.ModuleDeclarationListsExact
  expressionReferencesResolved : extraction.ExpressionReferencesResolved
  expressionGraphAcyclic : extraction.ExpressionGraphAcyclic
  generationRelationsResolved : extraction.GenerationRelationsResolved
  trustCoverageExact : extraction.TrustCoverageExact
  sourceRecordsAligned : extraction.SourceRecordsAligned
  attributesResolve : extraction.AttributesResolve
  canonicalOrdering : extraction.CanonicallyOrdered
  digestsValid : extraction.DigestsValid
  selectedModulesAgree :
    extraction.project.selectedModules = extraction.completeness.selectedModules
  policyCompliant : extraction.ExtractionPolicyCompliant
  completeness : extraction.completeness.Valid

end EnvironmentExtraction

end MathDiscovery.Extractor
```
