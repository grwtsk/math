# hasFDerivAt_centeredStatistic_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f350fc9-7460-8b8a-0701-d11ce5cd91ac",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_centeredStatistic_apply",
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
  "slug": "hasfderivat-centeredstatistic-apply--b4e49fa24d357fb5b25ad509",
  "source": {
    "blob": "2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e49fa24d357fb5b25ad5097d4024e727c7c6cf8b3f7ca734bc79253680a400",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f350fc9-7460-8b8a-0701-d11ce5cd91ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_centeredStatistic_apply
    (theta : E) (i : I) (u : E) :
    HasFDerivAt
      (fun x => F.centeredStatistic x i u)
      (F.centeredStatisticDerivative theta u)
      theta := by
  have hcentroid :
      HasFDerivAt
        (fun x => F.centroid x u)
        (F.covarianceSlice theta u)
        theta :=
    (ContinuousLinearMap.apply ℝ ℝ u).hasFDerivAt.comp
      theta (F.hasFDerivAt_centroid theta)
  have hconst :
      HasFDerivAt
        (fun _ : E => F.statistic i u)
        (0 : E →L[ℝ] ℝ)
        theta :=
    hasFDerivAt_const _ _
  have h := hconst.sub hcentroid
  rw [zero_sub] at h
  exact h

/-- One scalar summand of the covariance in fixed directions u and v. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
