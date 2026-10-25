# prev_reverse_eq_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:253a97fe-9ebe-d46d-c1d6-c87a90858d5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba3ad294-067e-f3c8-3f5d-2964d9976e67",
  "kind": "theorem",
  "lexical_name": "prev_reverse_eq_next",
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
  "slug": "prev-reverse-eq-next--08002fba46fc3d04b191f40c",
  "source": {
    "blob": "968f548761284dc1e32e3166d8b3a4ffe6fcea69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08002fba46fc3d04b191f40c046d60f0d591751453496749c812c4d8190e06de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba3ad294-067e-f3c8-3f5d-2964d9976e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prev_reverse_eq_next (l : List α) (h : Nodup l) (x : α) (hx : x ∈ l) :
    prev l.reverse x (mem_reverse.mpr hx) = next l x hx := by
  obtain ⟨k, hk, rfl⟩ := nthLe_of_mem hx
  have lpos : 0 < l.length := k.zero_le.trans_lt hk
  have key : l.length - 1 - k < l.length :=
    (Nat.sub_le _ _).trans_lt (tsub_lt_self lpos Nat.succ_pos')
  rw [← nthLe_pmap l.next (fun _ h => h) (by simpa using hk)]
  simp_rw [← nthLe_reverse l k (key.trans_le (by simp)), pmap_next_eq_rotate_one _ h]
  rw [← nthLe_pmap l.reverse.prev fun _ h => h]
  · simp_rw [pmap_prev_eq_rotate_length_sub_one _ (nodup_reverse.mpr h), rotate_reverse,
      length_reverse, Nat.mod_eq_of_lt (tsub_lt_self lpos Nat.succ_pos'),
      tsub_tsub_cancel_of_le (Nat.succ_le_of_lt lpos)]
    rw [← nthLe_reverse]
    · simp [tsub_tsub_cancel_of_le (Nat.le_pred_of_lt hk)]
    · simpa using (Nat.sub_le _ _).trans_lt (tsub_lt_self lpos Nat.succ_pos')
    · simpa
#align list.prev_reverse_eq_next List.prev_reverse_eq_next

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante9b8521820f69b4607381b3bd9f9ad60bb957327d233aafca5001f9dfbcf4f2b.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `968f548761284dc1e32e3166d8b3a4ffe6fcea69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
