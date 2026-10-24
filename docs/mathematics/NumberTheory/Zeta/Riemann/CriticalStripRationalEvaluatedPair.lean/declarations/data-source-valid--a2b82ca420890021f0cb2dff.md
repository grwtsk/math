# Data.source_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f1b6de9-683f-924d-49f7-7c4913530ddf",
  "kind": "theorem",
  "lexical_name": "Data.source_valid",
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
  "slug": "data-source-valid--a2b82ca420890021f0cb2dff",
  "source": {
    "blob": "e2901c1183b0d7d4ddc5468f49b9cecde6a19271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2b82ca420890021f0cb2dff3b1735bac26d1862ae01f3c80a4a97d455f7d6f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1b6de9-683f-924d-49f7-7c4913530ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Data.source_valid {A : Data} {N : ℕ} {x y : ℚ}
    (hN : 1 ≤ N) (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2) :
    (A.witness N x y).SourceTailValid (pairCenter y) (pairOffset x) := by
  have hp := endpoints_in_band y hx hx1
  apply Witness.sourceTailValid_of_C1 (T := |(y : ℝ)|)
    (abs_nonneg _) hN (offset_ne_zero hoff) hp.1 hp.2
  · exact (sourceValue_cast N y).le
  · exact (sourceSecant_cast N y).le

/-- Actual finite-model evaluation from both validated power lists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2901c1183b0d7d4ddc5468f49b9cecde6a19271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
