# complexInvo_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeee2a37bfe3b4463ae7c838acb88fd8fa27d055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a20d0b1-1165-07df-f0c4-2ca031ed0a8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d05860fd-2f1f-2e67-8f69-38a94fced183",
  "kind": "theorem",
  "lexical_name": "complexInvo_sq",
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
  "slug": "complexinvo-sq--f8dc13acb35271c0dfeecdd9",
  "source": {
    "blob": "aeee2a37bfe3b4463ae7c838acb88fd8fa27d055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8dc13acb35271c0dfeecdd952b071a39d922f9bf266eafcbdeb38ad7728cc0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d05860fd-2f1f-2e67-8f69-38a94fced183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexInvo_sq : complexInvo k ^ 2 = 1 := by
  change complexInvo k ∘ complexInvo k = id
  funext ⟨⟨x, y, z⟩, h⟩
  rw [comp_apply]
  obtain ⟨xb, _, _⟩ := zagierSet_lower_bound k h
  conv_lhs => arg 2; simp only [complexInvo]
  split_ifs with less more <;> rw [complexInvo, Subtype.mk.injEq, id_eq]
  · -- less
    simp only [show ¬(x + 2 * z + (y - x - z) < z) by linarith [less], ite_false,
      lt_add_iff_pos_left, xb, add_tsub_cancel_right, ite_true]
    rw [Nat.sub_sub, two_mul, ← tsub_add_eq_add_tsub (by linarith), ← add_assoc,
      Nat.add_sub_cancel, add_comm (x + z), Nat.sub_add_cancel less.le]
  · -- more
    push_neg at less
    simp only [show x - 2 * y + y < x + z - y by zify [less, more.le]; linarith, ite_true]
    rw [Nat.sub_add_cancel more.le, Nat.sub_right_comm, Nat.sub_sub _ _ y, ← two_mul, add_comm,
      Nat.add_sub_assoc more.le, Nat.add_sub_cancel]
  · -- middle
    push_neg at less more
    simp only [show ¬(2 * y - x + (x + z - y) < y) by zify [less, more]; linarith,
      show ¬(2 * y < 2 * y - x) by zify [more]; linarith, ite_false]
    rw [tsub_tsub_assoc (2 * y).le_refl more, tsub_self, zero_add,
      ← Nat.add_sub_assoc less, ← add_assoc, Nat.sub_add_cancel more, Nat.sub_sub _ _ y,
      ← two_mul, add_comm, Nat.add_sub_cancel]

/-- Any fixed point of `complexInvo k` must be `(1, 1, k)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeee2a37bfe3b4463ae7c838acb88fd8fa27d055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
