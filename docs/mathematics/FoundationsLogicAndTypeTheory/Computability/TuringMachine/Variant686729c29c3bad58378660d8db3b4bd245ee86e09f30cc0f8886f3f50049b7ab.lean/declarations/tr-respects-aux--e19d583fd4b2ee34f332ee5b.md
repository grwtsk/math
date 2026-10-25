# tr_respects_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2549,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89c122ad-3a0e-2fe2-57c1-6e57e010f057",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f68931a-5d67-862b-ec43-2a7caecb7519",
  "kind": "theorem",
  "lexical_name": "tr_respects_aux₂",
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
  "slug": "tr-respects-aux--e19d583fd4b2ee34f332ee5b",
  "source": {
    "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2637,
    "line": 2549,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19d583fd4b2ee34f332ee5ba9952278a5bb7421066c5b74e779d0f65f24c5de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f68931a-5d67-862b-ec43-2a7caecb7519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2549–2637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects_aux₂ {k : K} {q : Stmt₂₁} {v : σ} {S : ∀ k, List (Γ k)}
    {L : ListBlank (∀ k, Option (Γ k))}
    (hL : ∀ k, L.map (proj k) = ListBlank.mk ((S k).map some).reverse) (o : StAct₂ k) :
    let v' := stVar v (S k) o
    let Sk' := stWrite v (S k) o
    let S' := update S k Sk'
    ∃ L' : ListBlank (∀ k, Option (Γ k)),
      (∀ k, L'.map (proj k) = ListBlank.mk ((S' k).map some).reverse) ∧
        TM1.stepAux (trStAct q o) v
            ((Tape.move Dir.right)^[(S k).length] (Tape.mk' ∅ (addBottom L))) =
          TM1.stepAux q v' ((Tape.move Dir.right)^[(S' k).length] (Tape.mk' ∅ (addBottom L'))) := by
  dsimp only; simp; cases o <;> simp only [stWrite, stVar, trStAct, TM1.stepAux]
  case push f =>
    have := Tape.write_move_right_n fun a : Γ' ↦ (a.1, update a.2 k (some (f v)))
    refine'
      ⟨_, fun k' ↦ _, by
        -- Porting note: `rw [...]` to `erw [...]; rfl`.
        -- https://github.com/leanprover-community/mathlib4/issues/5164
        erw [Tape.move_right_n_head, List.length, Tape.mk'_nth_nat, this,
          addBottom_modifyNth fun a ↦ update a k (some (f v)), Nat.add_one, iterate_succ']
        rfl⟩
    refine' ListBlank.ext fun i ↦ _
    rw [ListBlank.nth_map, ListBlank.nth_modifyNth, proj, PointedMap.mk_val]
    by_cases h' : k' = k
    · subst k'
      split_ifs with h
        <;> simp only [List.reverse_cons, Function.update_same, ListBlank.nth_mk, List.map]
      -- Porting note: `le_refl` is required.
      · rw [List.getI_eq_get, List.get_append_right'] <;>
          simp only [h, List.get_singleton, List.length_map, List.length_reverse, Nat.succ_pos',
            List.length_append, lt_add_iff_pos_right, List.length, le_refl]
      rw [← proj_map_nth, hL, ListBlank.nth_mk]
      cases' lt_or_gt_of_ne h with h h
      · rw [List.getI_append]
        simpa only [List.length_map, List.length_reverse] using h
      · rw [gt_iff_lt] at h
        rw [List.getI_eq_default, List.getI_eq_default] <;>
          simp only [Nat.add_one_le_iff, h, List.length, le_of_lt, List.length_reverse,
            List.length_append, List.length_map]
    · split_ifs <;> rw [Function.update_noteq h', ← proj_map_nth, hL]
      rw [Function.update_noteq h']
  case peek f =>
    rw [Function.update_eq_self]
    use L, hL; rw [Tape.move_left_right]; congr
    cases e : S k; · rfl
    rw [List.length_cons, iterate_succ', Function.comp, Tape.move_right_left,
      Tape.move_right_n_head, Tape.mk'_nth_nat, addBottom_nth_snd, stk_nth_val _ (hL k), e,
      List.reverse_cons, ← List.length_reverse, List.get?_concat_length]
    rfl
  case pop f =>
    cases' e : S k with hd tl
    · simp only [Tape.mk'_head, ListBlank.head_cons, Tape.move_left_mk', List.length,
        Tape.write_mk', List.head?, iterate_zero_apply, List.tail_nil]
      rw [← e, Function.update_eq_self]
      exact ⟨L, hL, by rw [addBottom_head_fst, cond]⟩
    · refine'
        ⟨_, fun k' ↦ _, by
          erw [List.length_cons, Tape.move_right_n_head, Tape.mk'_nth_nat, addBottom_nth_succ_fst,
            cond, iterate_succ', Function.comp, Tape.move_right_left, Tape.move_right_n_head,
            Tape.mk'_nth_nat, Tape.write_move_right_n fun a : Γ' ↦ (a.1, update a.2 k none),
            addBottom_modifyNth fun a ↦ update a k none, addBottom_nth_snd,
            stk_nth_val _ (hL k), e,
            show (List.cons hd tl).reverse.get? tl.length = some hd by
              rw [List.reverse_cons, ← List.length_reverse, List.get?_concat_length],
            List.head?, List.tail]⟩
      refine' ListBlank.ext fun i ↦ _
      rw [ListBlank.nth_map, ListBlank.nth_modifyNth, proj, PointedMap.mk_val]
      by_cases h' : k' = k
      · subst k'
        split_ifs with h <;> simp only [Function.update_same, ListBlank.nth_mk, List.tail]
        · rw [List.getI_eq_default]
          · rfl
          rw [h, List.length_reverse, List.length_map]
        rw [← proj_map_nth, hL, ListBlank.nth_mk, e, List.map, List.reverse_cons]
        cases' lt_or_gt_of_ne h with h h
        · rw [List.getI_append]
          simpa only [List.length_map, List.length_reverse] using h
        · rw [gt_iff_lt] at h
          rw [List.getI_eq_default, List.getI_eq_default] <;>
            simp only [Nat.add_one_le_iff, h, List.length, le_of_lt, List.length_reverse,
              List.length_append, List.length_map]
      · split_ifs <;> rw [Function.update_noteq h', ← proj_map_nth, hL]
        rw [Function.update_noteq h']
#align turing.TM2to1.tr_respects_aux₂ Turing.TM2to1.tr_respects_aux₂

variable (M : Λ → TM2.Stmt Γ Λ σ)  -- Porting note: Unfolded `Stmt₂`.

/-- The TM2 emulator machine states written as a TM1 program.
This handles the `go` and `ret` states, which shuttle to and from a stack top. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean#L2549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30890dff70be24bc3f7b22ac2b7a36e25d3765ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
