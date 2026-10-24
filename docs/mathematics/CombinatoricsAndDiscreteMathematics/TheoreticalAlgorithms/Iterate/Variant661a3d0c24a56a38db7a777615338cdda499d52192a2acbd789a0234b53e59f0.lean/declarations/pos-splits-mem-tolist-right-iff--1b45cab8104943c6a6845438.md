# Pos.Splits.mem_toList_right_iff

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
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82075888-9bff-72af-7270-00b1e18c40eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baabf7d5-a07f-aa35-199c-06c70d851fad",
  "kind": "theorem",
  "lexical_name": "Pos.Splits.mem_toList_right_iff",
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
  "slug": "pos-splits-mem-tolist-right-iff--1b45cab8104943c6a6845438",
  "source": {
    "blob": "32bd888af7d5f08e855dafca56877a0b19f054ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b45cab8104943c6a68454387c38318c05f83ba415f2d93048b55311a41bfe05",
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

Occurrence: `result:baabf7d5-a07f-aa35-199c-06c70d851fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Splits.mem_toList_right_iff {s : String} {pos : s.Pos} {t u : String} {c : Char}
    (hs : pos.Splits t u) :
    c ∈ u.toList ↔ ∃ pos', ∃ (_ : pos ≤ pos') (h : pos' ≠ s.endPos), pos'.get h = c := by
  rw [hs.eq_right pos.splits, Slice.mem_toList_copy_iff_exists_get]
  refine ⟨?_, ?_⟩
  · rintro ⟨p, hp, hpget⟩
    exact ⟨Pos.ofSliceFrom p, Pos.le_ofSliceFrom,
      fun h => hp (Pos.ofSliceFrom_inj.mp (h.trans Pos.ofSliceFrom_endPos.symm)),
      by rwa [Pos.get_eq_get_ofSliceFrom] at hpget⟩
  · rintro ⟨pos', hle, hne, hget⟩
    exact ⟨pos.sliceFrom pos' hle,
      fun h => hne (by simpa using congrArg Pos.ofSliceFrom h),
      by rw [Pos.get_eq_get_ofSliceFrom]; simpa using hget⟩

/--
A list of all positions strictly before {name}`p`, ordered from largest to smallest.

This function is not meant to be used in actual programs. Actual programs should use
{name}`Slice.revPositionsFrom` and {name}`Slice.revPositions`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant661a3d0c24a56a38db7a777615338cdda499d52192a2acbd789a0234b53e59f0.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32bd888af7d5f08e855dafca56877a0b19f054ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
