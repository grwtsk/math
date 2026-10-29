-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssumptionChannel.Variantdfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AssumptionChannel.Variantdfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16","mathematical_subject":"Foundations.Unclassified","original_sha256":"dfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Dependency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-!
# Explicit reconstruction dependencies

Every edge is indexed by its semantic source element.  Historical labels and
filesystem placement are absent from the target language.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssumptionChannel.Variantdfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16

namespace Mathematics.Geometry

inductive AssumptionChannel
  | incidence
  | order
  | congruence
  | construction
  | parallel
  | continuity
  deriving DecidableEq, Repr

inductive DependencyTarget
  | assumption
      (channel : AssumptionChannel)
      (assumptionId : StableId)
  | theoremElement (elementId : ElementId)
  | kernelPrimitive (declarationName : String)
  deriving DecidableEq, Repr

inductive DependencyRole
  | statementVocabulary
  | hypothesis
  | proof
  | constructionCertificate
  deriving DecidableEq, Repr

/-- One declared edge from the type-indexed semantic source. -/
structure DependencyEdge (source : ElementId) where
  edgeId : StableId
  edgeId_valid : edgeId.Valid
  target : DependencyTarget
  role : DependencyRole

namespace DependencyEdge

/-- The edge source is determined by its type, never by a path lookup. -/
def sourceId {source : ElementId} (_ : DependencyEdge source) : ElementId :=
  source

end DependencyEdge

def incidenceAssumptionId : StableId :=
  { value := "assumption:geometry:incidence" }

def orderAssumptionId : StableId :=
  { value := "assumption:geometry:order" }

def congruenceAssumptionId : StableId :=
  { value := "assumption:geometry:congruence" }

def constructionAssumptionId : StableId :=
  { value := "assumption:geometry:construction" }

def parallelAssumptionId : StableId :=
  { value := "assumption:geometry:parallel" }

def continuityAssumptionId : StableId :=
  { value := "assumption:geometry:continuity" }

end Mathematics.Geometry
