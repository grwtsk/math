# actual_complete_census_moment_error_le_fifteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f82dc3f-2298-8598-7607-6c754cf48f9d",
  "kind": "theorem",
  "lexical_name": "actual_complete_census_moment_error_le_fifteen",
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
  "slug": "actual-complete-census-moment-error-le-fifteen--58850c87bc93eb105ebae6f2",
  "source": {
    "blob": "b7778df09ee0c6d1af6f734ea8e80361f4c3bc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58850c87bc93eb105ebae6f2f1ec847112e1432fe7e818ecbd30c07bd4417a16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f82dc3f-2298-8598-7607-6c754cf48f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_census_moment_error_le_fifteen {A r : ℝ}
    (hA : 8 ≤ A) (hr : 0 < r) (hr6 : r ≤ 6) :
    |actualCensus A r - (1 / r) * (testMoment A (1 / r)) ^ 2| ≤ 15 := by
  have h1 := actual_census_quadrature_price_le_fourteen hA hr hr6
  have hA1 : 1 ≤ A := by linarith
  have h2 := actual_cutoff_integral_moment_error_le_one hA1 hr
  have htriangle := abs_sub_le (actualCensus A r)
    (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)
    ((1 / r) * (testMoment A (1 / r)) ^ 2)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
