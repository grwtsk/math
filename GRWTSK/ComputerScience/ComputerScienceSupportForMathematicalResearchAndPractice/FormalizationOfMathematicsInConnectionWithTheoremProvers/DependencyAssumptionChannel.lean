import Mathematics.Core.SemanticIdentity

/-!
# Explicit reconstruction dependencies

Every edge is indexed by its semantic source element.  Historical labels and
filesystem placement are absent from the target language.
-/

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
