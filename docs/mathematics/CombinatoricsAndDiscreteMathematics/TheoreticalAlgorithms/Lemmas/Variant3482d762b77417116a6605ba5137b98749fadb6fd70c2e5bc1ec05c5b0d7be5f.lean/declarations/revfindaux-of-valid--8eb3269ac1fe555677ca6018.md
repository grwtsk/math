# revFindAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f3d5f8c7e7076e8fd91eafc6d18096fd71780e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fb96c2e-9253-55af-c5ce-dbb2981a6c85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a916896-6e5c-53c4-cc5e-f91d20139647",
  "kind": "theorem",
  "lexical_name": "revFindAux_of_valid",
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
  "slug": "revfindaux-of-valid--8eb3269ac1fe555677ca6018",
  "source": {
    "blob": "71f3d5f8c7e7076e8fd91eafc6d18096fd71780e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 332,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb3269ac1fe555677ca6018103af3214f2a3f4d4139b44a8b32b167505efc07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a916896-6e5c-53c4-cc5e-f91d20139647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revFindAux_of_valid (p) : ∀ l r,
    Legacy.revFindAux (ofList (l.reverse ++ r)) p ⟨utf8Len l⟩ =
      (l.dropWhile (!p ·)).tail?.map (⟨utf8Len ·⟩)
  | [], r => by unfold Legacy.revFindAux List.dropWhile; simp
  | c::l, r => by
    unfold Legacy.revFindAux List.dropWhile
    rw [dite_eq_right (by exact Pos.Raw.ne_of_gt add_utf8Size_pos)]
    have h1 := get_of_valid l.reverse (c::r); have h2 := prev_of_valid l.reverse c r
    simp only [utf8Len_reverse, Char.reduceDefault, List.headD_cons] at h1 h2
    simp only [List.reverse_cons, List.append_assoc, List.singleton_append,
      utf8Len_cons, h2, h1]
    cases p c <;> simp only [Bool.false_eq_true, ↓reduceIte, Bool.not_false, Bool.not_true,
      List.tail?_cons, Option.map_some]
    exact revFindAux_of_valid p l (c::r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f3d5f8c7e7076e8fd91eafc6d18096fd71780e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
