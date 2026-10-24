# utf8PrevAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17a9e1c7ea96ed2eab48c1c862cb69253537a13f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0987d2465514af148b6b0dbc87ce92695a530299306285204d4ad5b1a4638832.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da21d429-8596-8977-186d-f745884935ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89e16ba0-f5dd-6506-37b4-0a08b859e3da",
  "kind": "theorem",
  "lexical_name": "utf8PrevAux_of_valid",
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
  "slug": "utf8prevaux-of-valid--d3452e81e1b5a3acf96651a0",
  "source": {
    "blob": "17a9e1c7ea96ed2eab48c1c862cb69253537a13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 302,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0987d2465514af148b6b0dbc87ce92695a530299306285204d4ad5b1a4638832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3452e81e1b5a3acf96651a07e251eed3531486a25d86a19d5a8acd25f4cf283",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0987d2465514af148b6b0dbc87ce92695a530299306285204d4ad5b1a4638832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e16ba0-f5dd-6506-37b4-0a08b859e3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem utf8PrevAux_of_valid {cs cs' : List Char} {c : Char} {i p : Nat}
    (hp : i + (utf8Len cs + c.utf8Size) = p) :
    Pos.Raw.utf8PrevAux (cs ++ c :: cs') ⟨i⟩ ⟨p⟩ = ⟨i + utf8Len cs⟩ := by
  match cs with
  | [] => simp [Pos.Raw.utf8PrevAux, ← hp, Pos.Raw.add_char_eq]
  | c'::cs =>
    simp only [Pos.Raw.utf8PrevAux, List.cons_append, utf8Len_cons, ← hp]
    rw [if_neg]
    case hnc =>
      simp only [Pos.Raw.le_iff, Pos.Raw.byteIdx_add_char]
      grind [!Char.utf8Size_pos]
    refine (utf8PrevAux_of_valid (by simp [Nat.add_assoc, Nat.add_left_comm])).trans ?_
    simp [Nat.add_assoc, Nat.add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0987d2465514af148b6b0dbc87ce92695a530299306285204d4ad5b1a4638832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0987d2465514af148b6b0dbc87ce92695a530299306285204d4ad5b1a4638832.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a9e1c7ea96ed2eab48c1c862cb69253537a13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
