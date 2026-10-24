# hessian_diagonal_eq_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdbe0a32-1bfb-fbc9-fc95-e8e17050f623",
  "kind": "theorem",
  "lexical_name": "hessian_diagonal_eq_variance",
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
  "slug": "hessian-diagonal-eq-variance--8922830a40f9119b1daa13d2",
  "source": {
    "blob": "7179b53480ecba3a966c5ce7a9e636c614cfbc33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 267,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8922830a40f9119b1daa13d23f9814bb4a68216617bac3bf6a6de00e7946fab3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbe0a32-1bfb-fbc9-fc95-e8e17050f623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hessian_diagonal_eq_variance
    (theta u : E) :
    D.hessian theta u u =
      ∑ i : I,
        F.probability theta i *
          (F.centeredStatistic theta i u) ^ 2 := by
  rw [R.hessian_eq_covariance, F.covarianceForm_diagonal]

/-- The covariance/Hessian diagonal is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant36d2de1fadc52bbb83ec43d3c7acc20986bd1616a5ea65c989503703b7b6722a.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7179b53480ecba3a966c5ce7a9e636c614cfbc33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
