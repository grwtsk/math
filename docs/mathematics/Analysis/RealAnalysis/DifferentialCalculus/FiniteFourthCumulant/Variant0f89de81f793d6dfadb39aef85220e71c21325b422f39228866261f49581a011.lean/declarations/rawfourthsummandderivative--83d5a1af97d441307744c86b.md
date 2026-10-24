# rawFourthSummandDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c25306734bd4d6d77d92c0eae6d65a0ba83b04684685bab44378a9572320cb7f",
  "kind": "def",
  "lexical_name": "rawFourthSummandDerivative",
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
  "slug": "rawfourthsummandderivative--83d5a1af97d441307744c86b",
  "source": {
    "blob": "1873354064d92df2a8e604d9d6b8878a180993fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83d5a1af97d441307744c86b584bb2c127b3bee3d47de29caa388b446d01a283",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c25306734bd4d6d77d92c0eae6d65a0ba83b04684685bab44378a9572320cb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rawFourthSummandDerivative
    (theta u v w : E) (i : I) : E →L[ℝ] ℝ :=
  (F.probability theta i *
      F.centeredStatistic theta i u *
      F.centeredStatistic theta i v) •
      F.centeredStatisticDerivative theta w +
    F.centeredStatistic theta i w •
      ((F.probability theta i *
          F.centeredStatistic theta i u) •
          F.centeredStatisticDerivative theta v +
        F.centeredStatistic theta i v •
          (F.probability theta i •
              F.centeredStatisticDerivative theta u +
            F.centeredStatistic theta i u •
              F.probabilityDerivative theta i))

/-- Product-rule derivative of one third-cumulant summand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variant0f89de81f793d6dfadb39aef85220e71c21325b422f39228866261f49581a011.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1873354064d92df2a8e604d9d6b8878a180993fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
