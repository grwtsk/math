# LpAddConst_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d15335-fda7-cc53-0a0c-d25dd57fa606",
  "kind": "theorem",
  "lexical_name": "LpAddConst_lt_top",
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
  "slug": "lpaddconst-lt-top--9a9eaa53787096fc6fc5b6f5",
  "source": {
    "blob": "294c1d799ca703d41365f8e9ec8e80f149f64adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 344,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a9eaa53787096fc6fc5b6f5307f95295976016ff0ad65758a36eaa926bcfda1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d15335-fda7-cc53-0a0c-d25dd57fa606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LpAddConst_lt_top (p : ℝ≥0∞) : LpAddConst p < ∞ := by
  rw [LpAddConst]
  split_ifs with h
  · apply ENNReal.rpow_lt_top_of_nonneg _ ENNReal.ofNat_ne_top
    rw [one_div, sub_nonneg, ← ENNReal.toReal_inv, ← ENNReal.toReal_one]
    exact ENNReal.toReal_mono (by simpa using h.1.ne') (ENNReal.one_le_inv.2 h.2.le)
  · exact ENNReal.one_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294c1d799ca703d41365f8e9ec8e80f149f64adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
