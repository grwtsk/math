import Mathematics.Ingestion.GeneratedAncestry
import Mathematics.Reflection.Outcome

/-!
# Target-native reflection sovereignty

Reflection is expressed in the destination project's own source and identity
system.  Every result is reconstructed and re-ingested; a foreign model
ontology is never written directly into the target.
-/

namespace Mathematics.Reflection

structure TargetNativeRealization where
  realizationId : StableId
  targetProjectId : ProjectId
  sourcePointIds : List ElementId
  targetSourceAddressIds : List StableId
  targetDescriptorIds : List StableId
  reconstructionDigest : Digest
  deriving DecidableEq, Repr

structure SovereignReflection where
  candidate : Candidate
  realization : TargetNativeRealization
  outcome : Outcome
  generatedAncestry : Ingestion.GeneratedAncestry
  target_project_exact :
    realization.targetProjectId =
      candidate.targetSnapshot.identity.projectId
  outcome_candidate_exact :
    outcome.candidateId = candidate.candidateId
  generated_target_exact :
    generatedAncestry.outputAddress.sourceObject.project =
      realization.targetProjectId
  reflectionDigest : Digest

/-- Every reflected artifact is expressed at the target project. -/
theorem SovereignReflection.target_native
    (reflection : SovereignReflection) :
    reflection.generatedAncestry.outputAddress.sourceObject.project =
      reflection.candidate.targetSnapshot.identity.projectId := by
  rw [reflection.generated_target_exact,
    reflection.target_project_exact]

end Mathematics.Reflection
