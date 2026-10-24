# lt_iff_toList_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "638478d3e396f9f4b2bb55abd3fa912353c114b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae880dd3d37cebb17fb3f4aaf9d2943ec3bee0b29194785a85dcd1a2256971ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2433fcd2-b004-28bb-b9e4-0a0bd821d200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da5f9d8-239c-c289-161f-787d6f2f40ea",
  "kind": "theorem",
  "lexical_name": "lt_iff_toList_lt",
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
  "slug": "lt-iff-tolist-lt--73ca8d27be9bddb8dc81a8a6",
  "source": {
    "blob": "638478d3e396f9f4b2bb55abd3fa912353c114b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantae880dd3d37cebb17fb3f4aaf9d2943ec3bee0b29194785a85dcd1a2256971ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ca8d27be9bddb8dc81a8a69d32070a46351c99506c37afccdcf24dd26f82ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantae880dd3d37cebb17fb3f4aaf9d2943ec3bee0b29194785a85dcd1a2256971ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da5f9d8-239c-c289-161f-787d6f2f40ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_iff_toList_lt : ∀ {s₁ s₂ : String}, s₁ < s₂ ↔ s₁.toList < s₂.toList
  | s₁, s₂ => show ltb ⟨s₁, 0⟩ ⟨s₂, 0⟩ ↔ s₁.toList < s₂.toList by
    obtain ⟨s₁, rfl⟩ := s₁.exists_eq_ofList
    obtain ⟨s₂, rfl⟩ := s₂.exists_eq_ofList
    simp only [String.toList_ofList]
    induction s₁ generalizing s₂ <;> cases s₂
    · unfold ltb; decide
    · rename_i c₂ cs₂; apply iff_of_true
      · unfold ltb
        simp [Legacy.Iterator.hasNext, Char.utf8Size_pos]
      · apply List.nil_lt_cons
    · rename_i c₁ cs₁ ih; apply iff_of_false
      · unfold ltb
        simp [Legacy.Iterator.hasNext]
      · apply not_lt_of_gt; apply List.nil_lt_cons
    · rename_i c₁ cs₁ ih c₂ cs₂; unfold ltb
      simp only [Legacy.Iterator.hasNext, Pos.Raw.byteIdx_zero, rawEndPos_ofList, utf8Len_cons,
        add_pos_iff, Char.utf8Size_pos, or_true, decide_true, ↓reduceIte, Legacy.Iterator.curr,
        Pos.Raw.get, String.toList_ofList, Pos.Raw.utf8GetAux, Legacy.Iterator.next, Pos.Raw.next,
        Bool.ite_eq_true_distrib, decide_eq_true_eq]
      split_ifs with h
      · subst c₂
        suffices ltb ⟨ofList (c₁ :: cs₁), (0 : Pos.Raw) + c₁⟩
            ⟨ofList (c₁ :: cs₂), (0 : Pos.Raw) + c₁⟩ =
              ltb ⟨ofList cs₁, 0⟩ ⟨ofList cs₂, 0⟩ by
          rw [this]; exact (ih cs₂).trans List.lex_cons_iff.symm
        apply ltb_cons_addChar
      · refine ⟨List.Lex.rel, fun e ↦ ?_⟩
        cases e <;> rename_i h'
        · assumption
        · contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantae880dd3d37cebb17fb3f4aaf9d2943ec3bee0b29194785a85dcd1a2256971ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantae880dd3d37cebb17fb3f4aaf9d2943ec3bee0b29194785a85dcd1a2256971ad.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638478d3e396f9f4b2bb55abd3fa912353c114b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
