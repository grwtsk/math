# next_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62853a44-a882-af1b-f683-8e7b08460503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0ac608c-a468-e18a-7891-3422e6f01640",
  "kind": "theorem",
  "lexical_name": "next_getElem",
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
  "slug": "next-getelem--1bb9351b6e1096fa591ce94e",
  "source": {
    "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb9351b6e1096fa591ce94ed7521c395d8bf1f8ec8dd999c25d84075c4b3101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ac608c-a468-e18a-7891-3422e6f01640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_getElem (l : List α) (h : Nodup l) (i : Nat) (hi : i < l.length) :
    next l l[i] (get_mem _ _) =
      (l[(i + 1) % l.length]'(Nat.mod_lt _ (i.zero_le.trans_lt hi))) :=
  match l, h, i, hi with
  | [], _, i, hi => by simp at hi
  | [_], _, _, _ => by simp
  | x::y::l, _h, 0, h0 => by
    have h₁ : (x :: y :: l)[0] = x := by simp
    rw [next_cons_cons_eq' _ _ _ _ _ h₁]
    simp
  | x::y::l, hn, i+1, hi => by
    have hx' : (x :: y :: l)[i+1] ≠ x := by
      intro H
      suffices (i + 1 : ℕ) = 0 by simpa
      rw [nodup_iff_injective_get] at hn
      refine Fin.val_eq_of_eq (@hn ⟨i + 1, hi⟩ ⟨0, by simp⟩ ?_)
      simpa using H
    have hi' : i ≤ l.length := Nat.le_of_lt_succ (Nat.succ_lt_succ_iff.1 hi)
    rcases hi'.eq_or_lt with (hi' | hi')
    · subst hi'
      rw [next_getLast_cons]
      · simp [hi', get]
      · rw [getElem_cons_succ]; exact get_mem _ _
      · exact hx'
      · simp [getLast_eq_getElem]
      · exact hn.of_cons
    · rw [next_ne_head_ne_getLast _ _ _ _ _ hx']
      · simp only [getElem_cons_succ]
        rw [next_getElem (y::l), ← getElem_cons_succ (a := x)]
        · congr
          dsimp
          rw [Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 hi'),
            Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 (Nat.succ_lt_succ_iff.2 hi'))]
        · simp [Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 hi'), hi']
        · exact hn.of_cons
      · rw [getLast_eq_getElem]
        intro h
        have := nodup_iff_injective_get.1 hn h
        simp at this; simp [this] at hi'
      · rw [getElem_cons_succ]; exact get_mem _ _

@[deprecated (since := "2025-02-015")] alias next_get := next_getElem

-- Unused variable linter incorrectly reports that `h` is unused here.
set_option linter.unusedVariables false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
