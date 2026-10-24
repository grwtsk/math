import Mathematics.Federation.GlobalId
import Mathematics.Projects.Mathlib.Profile

/-! # Mathlib declaration index -/

namespace Mathematics.Projects.Mathlib

structure DeclarationIndexEntry where
  declaration : Federation.GlobalDeclarationId
  sourceModule : String
  conceptIds : List ConceptId
  dependencyIds : List Federation.GlobalDeclarationId
  reverseDependencyIds : List Federation.GlobalDeclarationId
  instanceUseIds : List StableId
  simpUseIds : List StableId
  documentationArtifactIds : List StableId
  downstreamProjectIds : List ProjectId
  candidateRelationIds : List StableId
  lineageIds : List StableId
  reflectionEligible : Bool
  entryDigest : Digest
  deriving DecidableEq, Repr

structure DeclarationIndex where
  targetRevisionId : StableId
  entries : List DeclarationIndexEntry
  declarationIdsUnique :
    (entries.map DeclarationIndexEntry.declaration).Nodup
  indexDigest : Digest

end Mathematics.Projects.Mathlib
