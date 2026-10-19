import Mathematics.Projects.Profile

/-! # Tao PFR blueprint-driven profile -/

namespace Mathematics.Projects.Tao

structure ParameterDependency where
  parameterId : StableId
  downstreamDeclarationIds : List StableId
  downstreamBlueprintIds : List StableId
  deriving DecidableEq, Repr

structure PFRProfile where
  base : Projects.ProjectProfile
  blueprintArtifactIds : List StableId
  blueprintGraphIds : List StableId
  theoremBlueprintMapIds : List StableId
  issueIds : List StableId
  paperReferenceIds : List StableId
  parameterDependencies : List ParameterDependency
  stageIds : List StableId
  workflowIds : List StableId
  mathlibMigrationIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
