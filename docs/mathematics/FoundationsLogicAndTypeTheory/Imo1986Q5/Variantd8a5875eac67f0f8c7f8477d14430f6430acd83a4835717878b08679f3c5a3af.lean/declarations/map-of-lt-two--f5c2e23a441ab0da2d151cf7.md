# map_of_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8ca0c898f1d5733008574cd86028cdaa40521af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8a5875eac67f0f8c7f8477d14430f6430acd83a4835717878b08679f3c5a3af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39f013d-0797-c49e-8175-a0c9b2830aa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fe59db0-58e1-793a-21a4-da995ffdca15",
  "kind": "theorem",
  "lexical_name": "map_of_lt_two",
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
  "slug": "map-of-lt-two--f5c2e23a441ab0da2d151cf7",
  "source": {
    "blob": "e8ca0c898f1d5733008574cd86028cdaa40521af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantd8a5875eac67f0f8c7f8477d14430f6430acd83a4835717878b08679f3c5a3af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c2e23a441ab0da2d151cf7228443a793f21fa482a49ccf59d07c9129ee1084",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantd8a5875eac67f0f8c7f8477d14430f6430acd83a4835717878b08679f3c5a3af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe59db0-58e1-793a-21a4-da995ffdca15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_of_lt_two (hx : x < 2) : f x = 2 / (2 - x) := by
  have hx' : 0 < 2 - x := tsub_pos_of_lt hx
  have hfx : f x ≠ 0 := hf.map_ne_zero_iff.2 hx
  apply le_antisymm
  · rw [le_div_iff₀ hx', ← le_div_iff₀' hfx.bot_lt, tsub_le_iff_right, ← hf.map_eq_zero,
     hf.map_add, div_mul_cancel₀ _ hfx, hf.map_two, zero_mul]
  · rw [div_le_iff₀' hx', ← hf.map_eq_zero]
    refine (mul_eq_zero.1 ?_).resolve_right hfx
    rw [hf.map_add_rev, hf.map_eq_zero, tsub_add_cancel_of_le hx.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantd8a5875eac67f0f8c7f8477d14430f6430acd83a4835717878b08679f3c5a3af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1986Q5/Variantd8a5875eac67f0f8c7f8477d14430f6430acd83a4835717878b08679f3c5a3af.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ca0c898f1d5733008574cd86028cdaa40521af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
