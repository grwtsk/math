# lt_iff_toList_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe52ac5e-fbaa-edf3-a9a7-2be58ad7ab1d",
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
  "slug": "lt-iff-tolist-lt--d152b5b8ac570c11e1e69cc1",
  "source": {
    "blob": "4c3c9e60a5045ca0553361be03fc613a037b5170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d152b5b8ac570c11e1e69cc14f403d882ef1046f1cff9aef889a515fe77f5c32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe52ac5e-fbaa-edf3-a9a7-2be58ad7ab1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_iff_toList_lt : ∀ {s₁ s₂ : String}, s₁ < s₂ ↔ s₁.toList < s₂.toList
  | ⟨s₁⟩, ⟨s₂⟩ => show ltb ⟨⟨s₁⟩, 0⟩ ⟨⟨s₂⟩, 0⟩ ↔ s₁ < s₂ by
    induction s₁ generalizing s₂ <;> cases s₂
    · unfold ltb; decide
    · rename_i c₂ cs₂; apply iff_of_true
      · unfold ltb
        simp [Iterator.hasNext, Char.utf8Size_pos]
      · apply List.nil_lt_cons
    · rename_i c₁ cs₁ ih; apply iff_of_false
      · unfold ltb
        simp [Iterator.hasNext]
      · apply not_lt_of_lt; apply List.nil_lt_cons
    · rename_i c₁ cs₁ ih c₂ cs₂; unfold ltb
      simp only [Iterator.hasNext, Pos.byteIdx_zero, endPos, utf8ByteSize, utf8ByteSize.go,
        add_pos_iff, Char.utf8Size_pos, or_true, decide_eq_true_eq, ↓reduceIte, Iterator.curr, get,
        utf8GetAux, Iterator.next, next, Bool.ite_eq_true_distrib]
      split_ifs with h
      · subst c₂
        suffices ltb ⟨⟨c₁ :: cs₁⟩, (0 : Pos) + c₁⟩ ⟨⟨c₁ :: cs₂⟩, (0 : Pos) + c₁⟩ =
          ltb ⟨⟨cs₁⟩, 0⟩ ⟨⟨cs₂⟩, 0⟩ by rw [this]; exact (ih cs₂).trans List.lex_cons_iff.symm
        apply ltb_cons_addChar
      · refine ⟨List.Lex.rel, fun e ↦ ?_⟩
        cases e <;> rename_i h'
        · assumption
        · contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3c9e60a5045ca0553361be03fc613a037b5170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
