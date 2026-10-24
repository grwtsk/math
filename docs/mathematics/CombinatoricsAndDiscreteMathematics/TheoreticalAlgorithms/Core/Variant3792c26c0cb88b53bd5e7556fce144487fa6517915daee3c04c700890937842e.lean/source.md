# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant3792c26c0cb88b53bd5e7556fce144487fa6517915daee3c04c700890937842e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9936be95c5c915529f76494de2f71ab5303f73b8` · SHA-256 `c8ea3156c463fcae651f95e2c7c159886ac76c4b135677dd943f657098223adf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectRecord.Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectRecord.Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad","mathematical_subject":"Computation.DataStructures","original_sha256":"a34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Shard
import Mathlib.Data.Rel

/-!
# Complete canonical environment extraction
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectRecord.Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad

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
