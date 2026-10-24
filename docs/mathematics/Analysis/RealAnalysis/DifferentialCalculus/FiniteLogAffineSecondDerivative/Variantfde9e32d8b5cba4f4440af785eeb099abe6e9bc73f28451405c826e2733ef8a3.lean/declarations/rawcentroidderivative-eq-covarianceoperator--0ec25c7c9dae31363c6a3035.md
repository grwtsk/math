# rawCentroidDerivative_eq_covarianceOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27bed8b-f6ef-e58f-7665-9ee7c93b76e8",
  "kind": "theorem",
  "lexical_name": "rawCentroidDerivative_eq_covarianceOperator",
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
  "slug": "rawcentroidderivative-eq-covarianceoperator--0ec25c7c9dae31363c6a3035",
  "source": {
    "blob": "1e648ccaf800078b13254842bc562d628f8c30ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ec25c7c9dae31363c6a303594d97bb94214e2c08c79ff6596c0e4f0d6a7e1ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27bed8b-f6ef-e58f-7665-9ee7c93b76e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCentroidDerivative_eq_covarianceOperator
    (theta : E) :
    F.rawCentroidDerivative theta = F.covarianceOperator theta := by
  apply ContinuousLinearMap.ext
  intro u
  apply ContinuousLinearMap.ext
  intro v
  rw [F.rawCentroidDerivative_apply, F.covarianceOperator_apply]
  have hz := F.centered_weighted_sum_eq_zero theta u
  calc
    (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.statistic i v)
        =
      (∑ i : I,
          (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v) +
          (F.probability theta i *
            F.centeredStatistic theta i u) *
            F.centroid theta v) := by
        apply Finset.sum_congr rfl
        intro i hi
        rw [F.centeredStatistic_apply]
        ring
    _ =
      (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v) +
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u) *
          F.centroid theta v := by
        rw [Finset.sum_add_distrib, Finset.sum_mul]
    _ =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v := by
        rw [hz, zero_mul, add_zero]

/-- Differentiating the centroid term-by-term gives the raw centroid derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e648ccaf800078b13254842bc562d628f8c30ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
