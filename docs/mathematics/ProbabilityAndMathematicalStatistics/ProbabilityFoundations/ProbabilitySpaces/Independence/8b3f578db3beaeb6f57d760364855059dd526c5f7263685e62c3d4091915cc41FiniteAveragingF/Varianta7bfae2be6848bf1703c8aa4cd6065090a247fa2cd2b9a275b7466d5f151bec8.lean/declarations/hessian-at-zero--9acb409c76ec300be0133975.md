# hessian_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3cfcb8-97ed-51c1-faa4-d2bbeb565a53",
  "kind": "theorem",
  "lexical_name": "hessian_at_zero",
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
  "slug": "hessian-at-zero--9acb409c76ec300be0133975",
  "source": {
    "blob": "86d2cbc8a566d3189690970d1bfe6cde341a5ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9acb409c76ec300be0133975a6603601eca7ee82281f9fe0dd3cc580bddc8f06",
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

Occurrence: `result:7f3cfcb8-97ed-51c1-faa4-d2bbeb565a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hessian_at_zero :
    fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) 0 (1 : ℝ) (1 : ℝ) =
      3 / 16 := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  norm_num [FiniteLogAffineFamily.covarianceForm_apply,
    FiniteLogAffineFamily.centeredStatistic, FiniteLogAffineFamily.centroid_apply,
    FiniteLogAffineFamily.probability, FiniteLogAffineFamily.partition,
    FiniteLogAffineFamily.unnormalizedWeight, twoSampleFamily, Fin.sum_univ_two]

/-- The finite family's Hessian has exactly the zero direction as its null space,
at every real parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/8b3f578db3beaeb6f57d760364855059dd526c5f7263685e62c3d4091915cc41FiniteAveragingF/Varianta7bfae2be6848bf1703c8aa4cd6065090a247fa2cd2b9a275b7466d5f151bec8.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d2cbc8a566d3189690970d1bfe6cde341a5ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
