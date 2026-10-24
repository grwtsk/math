# revFindAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9789205e-f1d9-5bbf-2e0e-54de519d1b2e",
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
  "slug": "revfindaux-of-valid--ec228968108fd8e7f6cd9453",
  "source": {
    "blob": "7a6ca8696ba692a69ac587d6a9b0f1c102ffe104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 380,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec228968108fd8e7f6cd945319b404157bfa9517da79975a8b23ff8cf5ca8e34",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9789205e-f1d9-5bbf-2e0e-54de519d1b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revFindAux_of_valid (p) : ∀ l r,
    Legacy.revFindAux (ofList (l.reverse ++ r)) p ⟨utf8Len l⟩ =
      (l.dropWhile (!p ·)).tail?.map (⟨utf8Len ·⟩)
  | [], r => by unfold Legacy.revFindAux List.dropWhile; simp
  | c::l, r => by
    unfold Legacy.revFindAux List.dropWhile
    rw [dif_neg (by exact Pos.Raw.ne_of_gt add_utf8Size_pos)]
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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a6ca8696ba692a69ac587d6a9b0f1c102ffe104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
