# findAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74380ca0-e4d7-a373-6dd4-99cc1947bcc2",
  "kind": "theorem",
  "lexical_name": "findAux_of_valid",
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
  "slug": "findaux-of-valid--fe38fd091467db60aae7318a",
  "source": {
    "blob": "8d24ed7e4d78c3b89091bcb71a0a403ed8b40c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 317,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant23477857f8d3c1b77e4b717cd91326cd0d322a46fbe77fac41b9f268f08eacc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe38fd091467db60aae7318afa4c6ee5bb4a9071a51049e7e3b99289c6d92f62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant23477857f8d3c1b77e4b717cd91326cd0d322a46fbe77fac41b9f268f08eacc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74380ca0-e4d7-a373-6dd4-99cc1947bcc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findAux_of_valid (p) : ∀ l m r,
    Legacy.findAux (ofList (l ++ m ++ r)) p ⟨utf8Len l + utf8Len m⟩ ⟨utf8Len l⟩ =
    ⟨utf8Len l + utf8Len (m.takeWhile (!p ·))⟩
  | l, [], r => by unfold Legacy.findAux List.takeWhile; simp
  | l, c::m, r => by
    unfold Legacy.findAux List.takeWhile
    rw [dite_eq_left (by exact Nat.lt_add_of_pos_right add_utf8Size_pos)]
    have h1 := get_of_valid l (c::m++r); have h2 := next_of_valid l c (m++r)
    simp only [List.cons_append, Char.reduceDefault, List.headD_cons] at h1 h2
    simp only [List.append_assoc, List.cons_append, h1, utf8Len_cons, h2]
    cases p c
    · simp only [Bool.false_eq_true, ↓reduceIte, Bool.not_false, utf8Len_cons]
      have foo := findAux_of_valid p (l++[c]) m r
      simp only [List.append_assoc, List.cons_append, utf8Len_append,
        utf8Len_cons, utf8Len_nil, Nat.zero_add, List.nil_append] at foo
      rw [Nat.add_right_comm, Nat.add_assoc] at foo
      rw [foo, Nat.add_right_comm, Nat.add_assoc]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant23477857f8d3c1b77e4b717cd91326cd0d322a46fbe77fac41b9f268f08eacc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant23477857f8d3c1b77e4b717cd91326cd0d322a46fbe77fac41b9f268f08eacc2.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d24ed7e4d78c3b89091bcb71a0a403ed8b40c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
