# lt_iff_toList_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46b50b14-6d6d-8a3a-b984-fe171c355110",
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
  "slug": "lt-iff-tolist-lt--8692b3c29c270c56e76e6c57",
  "source": {
    "blob": "7f8959f19c0591c13ea7198090b0c8881d13c2a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8692b3c29c270c56e76e6c574868a162b1170839ddd5e3c4037f7e375d074833",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b50b14-6d6d-8a3a-b984-fe171c355110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_iff_toList_lt : ∀ {s₁ s₂ : String}, s₁ < s₂ ↔ s₁.toList < s₂.toList
| ⟨s₁⟩, ⟨s₂⟩ => show ltb ⟨⟨s₁⟩, 0⟩ ⟨⟨s₂⟩, 0⟩ ↔ s₁ < s₂ by
  induction s₁ generalizing s₂ <;> cases s₂
  · simp
  · rename_i c₂ cs₂; apply iff_of_true
    · rw [ltb]; simp; apply ne_false_of_eq_true; apply decide_eq_true
      simp [endPos, utf8ByteSize, utf8ByteSize.go, csize_pos]
    · apply List.nil_lt_cons
  · rename_i c₁ cs₁ ih; apply iff_of_false
    · rw [ltb]; simp
    · apply not_lt_of_lt; apply List.nil_lt_cons
  · rename_i c₁ cs₁ ih c₂ cs₂; rw [ltb]
    simp [Iterator.hasNext, endPos, utf8ByteSize, utf8ByteSize.go, csize_pos, Iterator.curr, get,
          utf8GetAux, Iterator.next, next]
    split_ifs with h
    · subst c₂
      suffices ltb ⟨⟨c₁ :: cs₁⟩, ⟨csize c₁⟩⟩ ⟨⟨c₁ :: cs₂⟩, ⟨csize c₁⟩⟩ = ltb ⟨⟨cs₁⟩, 0⟩ ⟨⟨cs₂⟩, 0⟩
        by rw [Pos.zero_addChar_eq, this]; exact (ih cs₂).trans List.Lex.cons_iff.symm
      rw [← Pos.zero_addChar_eq]
      apply ltb_cons_addChar
    · refine ⟨List.Lex.rel, fun e ↦ ?_⟩
      cases e <;> rename_i h'
      · contradiction
      · assumption
#align string.lt_iff_to_list_lt String.lt_iff_toList_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta94effb978804799c6a590b255525d6e0fdf455bc795700e99765500ded31eb0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8959f19c0591c13ea7198090b0c8881d13c2a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
