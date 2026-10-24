# Pos.Splits.mem_toList_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32bd888af7d5f08e855dafca56877a0b19f054ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bef2d929-a15b-60ab-8a69-9da081bc3be2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76717550-ef20-40c2-14f6-93805c78680c",
  "kind": "theorem",
  "lexical_name": "Pos.Splits.mem_toList_left_iff",
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
  "slug": "pos-splits-mem-tolist-left-iff--4734346d005ff8bf10596af6",
  "source": {
    "blob": "32bd888af7d5f08e855dafca56877a0b19f054ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4734346d005ff8bf10596af63f23033c780b58a465eae63aa9a506706c802f89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76717550-ef20-40c2-14f6-93805c78680c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Splits.mem_toList_left_iff {s : Slice} {pos : s.Pos} {t u : String} {c : Char}
    (hs : pos.Splits t u) :
    c ∈ t.toList ↔ ∃ pos', ∃ (h : pos' < pos), pos'.get (Pos.ne_endPos_of_lt h) = c := by
  rw [hs.eq_left pos.splits, mem_toList_copy_iff_exists_get]
  refine ⟨?_, ?_⟩
  · rintro ⟨p, hp, hpget⟩
    have hlt : Pos.ofSliceTo p < pos := by
      simpa using Pos.ofSliceTo_lt_ofSliceTo_iff.mpr ((Pos.lt_endPos_iff _).mpr hp)
    exact ⟨_, hlt, by rwa [Pos.get_eq_get_ofSliceTo] at hpget⟩
  · rintro ⟨pos', hlt, hget⟩
    exact ⟨pos.sliceTo pos' (Std.le_of_lt hlt),
      by simpa [← Pos.ofSliceTo_inj] using Std.ne_of_lt hlt,
      by rw [Slice.Pos.get_eq_get_ofSliceTo]; simpa using hget⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32bd888af7d5f08e855dafca56877a0b19f054ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
