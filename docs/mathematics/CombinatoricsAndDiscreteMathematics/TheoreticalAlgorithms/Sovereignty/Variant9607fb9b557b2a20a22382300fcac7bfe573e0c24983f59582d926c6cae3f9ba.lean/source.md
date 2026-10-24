# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sovereignty.Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcb5ea19df1daeface2807238b6bae023fd3d5e7` · SHA-256 `9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
