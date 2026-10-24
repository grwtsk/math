# hessian_null_parameter_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb88e206bc212b61fb3c75d36695d88d5fd1ec69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:154404cd-8f4a-7d84-79e4-4f57135f1482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0f7f370-913c-084f-cc03-80c1ce842b6b",
  "kind": "theorem",
  "lexical_name": "hessian_null_parameter_independent",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "hessian-null-parameter-independent--230075b33039282cd6ec101f",
  "source": {
    "blob": "eb88e206bc212b61fb3c75d36695d88d5fd1ec69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 97,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Variant8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:230075b33039282cd6ec101f71af59941c10c64e8f380e215203cb2b7cea6994",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Variant8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0f7f370-913c-084f-cc03-80c1ce842b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hessian_null_parameter_independent (theta eta u : ℝ) :
    (fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) theta u u = 0) ↔
      (fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) eta u u = 0) := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance,
    twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  exact twoSampleFamily.covariance_null_parameter_independent theta eta u

end

end FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures


#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.weighted_average
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.weighted_average

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.residual_eq
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.residual_eq

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.nonzero_zero_mean_residual
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.nonzero_zero_mean_residual

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.flattened_residual_energy
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.flattened_residual_energy

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_at_zero
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_at_zero

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_null_iff
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_null_iff

#print FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_null_parameter_independent
#print axioms FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures.hessian_null_parameter_independent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Variant8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Variant8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb88e206bc212b61fb3c75d36695d88d5fd1ec69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
