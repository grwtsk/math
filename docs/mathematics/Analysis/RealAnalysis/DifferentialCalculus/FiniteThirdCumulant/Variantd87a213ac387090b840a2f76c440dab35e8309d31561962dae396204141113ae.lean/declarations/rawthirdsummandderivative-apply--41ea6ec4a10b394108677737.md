# rawThirdSummandDerivative_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a504dcb-cc73-1f60-b799-ab6d60cfa5d0",
  "kind": "theorem",
  "lexical_name": "rawThirdSummandDerivative_apply",
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
  "slug": "rawthirdsummandderivative-apply--41ea6ec4a10b394108677737",
  "source": {
    "blob": "2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ea6ec4a10b3941086777379093898488017febe52f489d6f52b2f77b6e81c0",
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

Occurrence: `result:5a504dcb-cc73-1f60-b799-ab6d60cfa5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawThirdSummandDerivative_apply
    (theta u v w : E) (i : I) :
    F.rawThirdSummandDerivative theta u v i w =
      F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v *
          F.centeredStatistic theta i w
        -
      F.covarianceOperator theta w v *
          (F.probability theta i *
            F.centeredStatistic theta i u)
        -
      F.covarianceOperator theta w u *
          (F.probability theta i *
            F.centeredStatistic theta i v) := by
  simp [rawThirdSummandDerivative, centeredStatisticDerivative,
    covarianceSlice, probabilityDerivative, smul_eq_mul]
  ring

/-- Evaluation formula for the raw third derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variantd87a213ac387090b840a2f76c440dab35e8309d31561962dae396204141113ae.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3091cd7cd8cba65153b6b9ac567fa9eb0118b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
