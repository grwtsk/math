# hessian_null_parameter_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c922b57c-ba58-3157-7ba7-7ced42ea8654",
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
  "slug": "hessian-null-parameter-independent--20665097d21753569b7a3d52",
  "source": {
    "blob": "86d2cbc8a566d3189690970d1bfe6cde341a5ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 105,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20665097d21753569b7a3d52a603bd52473c6af6117bf63347233c99a88597ad",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c922b57c-ba58-3157-7ba7-7ced42ea8654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–136.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d2cbc8a566d3189690970d1bfe6cde341a5ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
