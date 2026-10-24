# removeNth_insertNth'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16eb67b3a8e3d4612b3bfefc182867c9f3625942",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72497e24-5f27-8df8-bb32-38cb70501f34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d1fd10f-317d-0f56-f545-a773ea529a65",
  "kind": "theorem",
  "lexical_name": "removeNth_insertNth'",
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
  "slug": "removenth-insertnth--23f712338d92cef9219de9cb",
  "source": {
    "blob": "16eb67b3a8e3d4612b3bfefc182867c9f3625942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 572,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f712338d92cef9219de9cbaec395ba29319c48edea8a6d9e45f3e6ab4bf5fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d1fd10f-317d-0f56-f545-a773ea529a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem removeNth_insertNth' {v : Vector α (n + 1)} :
    ∀ {i : Fin (n + 1)} {j : Fin (n + 2)},
      removeNth (j.succAbove i) (insertNth a j v) = insertNth a (i.predAbove j) (removeNth i v)
  | ⟨i, hi⟩, ⟨j, hj⟩ => by
    dsimp [insertNth, removeNth, Fin.succAbove, Fin.predAbove]
    rw [Subtype.mk_eq_mk]
    simp only [Fin.lt_iff_val_lt_val]
    split_ifs with hij
    · rcases Nat.exists_eq_succ_of_ne_zero
        (Nat.pos_iff_ne_zero.1 (lt_of_le_of_lt (Nat.zero_le _) hij)) with ⟨j, rfl⟩
      rw [← List.insertNth_removeNth_of_ge]
      · simp; rfl
      · simpa
      · simpa [Nat.lt_succ_iff] using hij
    · dsimp
      rw [← List.insertNth_removeNth_of_le i j _ _ _]
      · rfl
      · simpa
      · simpa [not_lt] using hij
#align vector.remove_nth_insert_nth' Vector.removeNth_insertNth'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16eb67b3a8e3d4612b3bfefc182867c9f3625942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
