# zero_index_weight_transport_guard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b76c406-3e94-0662-93a0-0ce49f990cd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ee145fd-d6ac-d9da-b821-36d78d9dcce8",
  "kind": "theorem",
  "lexical_name": "zero_index_weight_transport_guard",
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
  "slug": "zero-index-weight-transport-guard--9cb4a76551aec3f9a5759456",
  "source": {
    "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cb4a76551aec3f9a5759456e235064dbce544da81233e08dcbe2874455fbdd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee145fd-d6ac-d9da-b821-36d78d9dcce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_index_weight_transport_guard (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeWeight A 0 ≠ criticalPrimeTest A (Real.log (0 : ℝ)) / (0 : ℝ) := by
  have hw : closedPrimeWeight A 0 = 1 := by
    simp only [closedPrimeWeight, exponentialTest, Nat.cast_zero, Real.log_zero,
      neg_zero, zero_div, Real.exp_zero, one_mul]
    exact EstimateCorrelation.actual_correlation_at_zero A hA
  rw [hw, div_zero]
  norm_num

/-- The original closed prime-power moment is exactly the full-Mangoldt test sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500519b52a22d8540a5314963a4d95c2373e62b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
