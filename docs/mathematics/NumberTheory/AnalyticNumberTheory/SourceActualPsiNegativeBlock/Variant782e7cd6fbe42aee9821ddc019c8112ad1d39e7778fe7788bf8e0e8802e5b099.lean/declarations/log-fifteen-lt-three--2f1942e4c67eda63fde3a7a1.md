# log_fifteen_lt_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be72bd8-b095-8c01-b7c9-6aff5c7c9851",
  "kind": "theorem",
  "lexical_name": "log_fifteen_lt_three",
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
  "slug": "log-fifteen-lt-three--2f1942e4c67eda63fde3a7a1",
  "source": {
    "blob": "663f62ff65817f44a2afc18ba2b681245f88b7bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1942e4c67eda63fde3a7a16b458a3b85ed8ab05d3a04c33a914db9a23c9acf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be72bd8-b095-8c01-b7c9-6aff5c7c9851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_fifteen_lt_three : Real.log (15 : ℝ) < 3 := by
  have he1 := Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1)
  have he1b : (5 / 2 : ℝ) ≤ Real.exp 1 := by nlinarith
  have hcube : (5 / 2 : ℝ) ^ 3 ≤ (Real.exp 1) ^ 3 := by gcongr
  have he3 : Real.exp (3 : ℝ) = (Real.exp 1) ^ 3 := by
    rw [show (3 : ℝ) = 1 + 1 + 1 by norm_num, Real.exp_add, Real.exp_add]
    ring
  have he15 : (15 : ℝ) < Real.exp 3 := by rw [he3]; nlinarith
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 15)).mpr he15

/-- The actual discrepancy is uniformly negative before, but not including, prime seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663f62ff65817f44a2afc18ba2b681245f88b7bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
