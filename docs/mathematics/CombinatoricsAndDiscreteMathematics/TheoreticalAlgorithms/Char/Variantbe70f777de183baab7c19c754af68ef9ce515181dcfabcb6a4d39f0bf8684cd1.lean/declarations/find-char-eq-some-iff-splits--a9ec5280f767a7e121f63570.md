# find?_char_eq_some_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d1983f1e95c14c2d4ab99cdb43c6591b0814b86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59bc0a68-fa0f-86c6-f0f9-a79e3a88df6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86b9e141-f550-f45e-57e6-069507aadf6e",
  "kind": "theorem",
  "lexical_name": "find?_char_eq_some_iff_splits",
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
  "slug": "find-char-eq-some-iff-splits--a9ec5280f767a7e121f63570",
  "source": {
    "blob": "9d1983f1e95c14c2d4ab99cdb43c6591b0814b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ec5280f767a7e121f63570d6f8026eeaaf7c23593f8e446208b26e3acb1324",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b9e141-f550-f45e-57e6-069507aadf6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_char_eq_some_iff_splits {c : Char} {s : Slice} {pos : s.Pos} :
    s.find? c = some pos ↔ ∃ t u, pos.Splits t (singleton c ++ u) ∧ c ∉ t.toList := by
  rw [find?_char_eq_some_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨h, hget, hmin⟩
    refine ⟨_, _, hget ▸ pos.splits_next_right h, fun hmem => ?_⟩
    obtain ⟨pos', hlt, hpget⟩ := (hget ▸ pos.splits_next_right h).mem_toList_left_iff.mp hmem
    exact absurd hpget (hmin _ hlt)
  · rintro ⟨t, u, hs, hnotin⟩
    have hne := hs.ne_endPos_of_singleton
    exact ⟨hne, (singleton_append_inj.mp (hs.eq_right (pos.splits_next_right hne))).1.symm,
      fun pos' hlt hget => hnotin (hs.mem_toList_left_iff.mpr ⟨pos', hlt, hget⟩)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d1983f1e95c14c2d4ab99cdb43c6591b0814b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
