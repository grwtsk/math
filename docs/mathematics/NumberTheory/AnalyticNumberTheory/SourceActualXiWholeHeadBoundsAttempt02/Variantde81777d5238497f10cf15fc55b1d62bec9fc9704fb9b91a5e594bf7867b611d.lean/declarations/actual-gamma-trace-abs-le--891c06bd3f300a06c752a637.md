# actual_gamma_trace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03fe3d32-2a26-0a9e-fbdb-b0cc319cb136",
  "kind": "theorem",
  "lexical_name": "actual_gamma_trace_abs_le",
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
  "slug": "actual-gamma-trace-abs-le--891c06bd3f300a06c752a637",
  "source": {
    "blob": "28eb0f1117ee38e69f67478e77e07b1c44203455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891c06bd3f300a06c752a6374d6d3f6d93e3ae36271b1ec09848dcf09a7c2ae2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03fe3d32-2a26-0a9e-fbdb-b0cc319cb136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gamma_trace_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2)| ≤
      gammaTraceBudget := by
  have hc := actual_correlation_abs_le_one A (Real.log 2) hA
  rw [criticalPrimeTest, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  unfold gammaTraceBudget
  calc
    _ ≤ |Real.eulerMascheroniConstant| * (Real.exp (Real.log 2 / 2) * 1) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le) (abs_nonneg _)
    _ = _ := by ring

/-- The PLUS gamma trace retains its original sign and receives only an upper cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28eb0f1117ee38e69f67478e77e07b1c44203455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
