import Mathematics.Projects.Profile

/-! # Tao Equational Theories finite-search profile -/

namespace Mathematics.Projects.Tao

inductive ImplicationAuthority
  | leanProved
  | certifiedTransitive
  | countermodelDisproved
  | externalProverCandidate
  | conjectured
  | unresolved
  deriving DecidableEq, Repr

structure ImplicationRecord where
  sourceEquationId : StableId
  targetEquationId : StableId
  authority : ImplicationAuthority
  derivationPath : List StableId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

structure EquationalTheoriesProfile where
  base : Projects.ProjectProfile
  equationIds : List StableId
  dualityRecordIds : List StableId
  implications : List ImplicationRecord
  countermodelIds : List StableId
  closureArtifactIds : List StableId
  reductionArtifactIds : List StableId
  externalProverArtifactIds : List StableId
  generationScriptIds : List StableId
  dashboardArtifactIds : List StableId
  proofBasisIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
