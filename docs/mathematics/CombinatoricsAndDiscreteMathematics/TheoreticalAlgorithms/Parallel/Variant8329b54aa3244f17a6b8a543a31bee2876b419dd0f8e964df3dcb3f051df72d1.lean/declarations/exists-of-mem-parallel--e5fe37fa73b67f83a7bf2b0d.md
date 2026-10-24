# exists_of_mem_parallel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:259cf6f8-ce9c-3203-264a-371a3a4efd4e",
  "kind": "theorem",
  "lexical_name": "exists_of_mem_parallel",
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
  "slug": "exists-of-mem-parallel--e5fe37fa73b67f83a7bf2b0d",
  "source": {
    "blob": "b563c6ddd5afd3e7822f3389bd6f4cac4f1185af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fe37fa73b67f83a7bf2b0dc15b808a575c4c789fe1461127653c64b5758ba1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:259cf6f8-ce9c-3203-264a-371a3a4efd4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_mem_parallel {S : WSeq (Computation α)} {a} (h : a ∈ parallel S) :
    ∃ c ∈ S, a ∈ c := by
  suffices
    ∀ C, a ∈ C → ∀ (l : List (Computation α)) (S),
      corec parallel.aux1 (l, S) = C → ∃ c, (c ∈ l ∨ c ∈ S) ∧ a ∈ c from
    let ⟨c, h1, h2⟩ := this _ h [] S rfl
    ⟨c, h1.resolve_left <| List.not_mem_nil _, h2⟩
  let F : List (Computation α) → Sum α (List (Computation α)) → Prop := by
    intro l a
    cases' a with a l'
    exact ∃ c ∈ l, a ∈ c
    exact ∀ a', (∃ c ∈ l', a' ∈ c) → ∃ c ∈ l, a' ∈ c
  have lem1 : ∀ l : List (Computation α), F l (parallel.aux2 l) := by
    intro l
    induction' l with c l IH <;> simp only [parallel.aux2, List.foldr]
    · intro a h
      rcases h with ⟨c, hn, _⟩
      exact False.elim <| List.not_mem_nil _ hn
    · simp only [parallel.aux2] at IH
      -- Porting note: `revert IH` & `intro IH` are required.
      revert IH
      cases' List.foldr (fun c o =>
        match o with
        | Sum.inl a => Sum.inl a
        | Sum.inr ls => rmap (fun c' => c' :: ls) (destruct c)) (Sum.inr List.nil) l with a ls <;>
        intro IH <;>
        simp only [parallel.aux2]
      · rcases IH with ⟨c', cl, ac⟩
        refine' ⟨c', List.Mem.tail _ cl, ac⟩
      · induction' h : destruct c with a c' <;> simp only [rmap]
        · refine' ⟨c, List.mem_cons_self _ _, _⟩
          rw [destruct_eq_pure h]
          apply ret_mem
        · intro a' h
          rcases h with ⟨d, dm, ad⟩
          simp at dm
          cases' dm with e dl
          · rw [e] at ad
            refine' ⟨c, List.mem_cons_self _ _, _⟩
            rw [destruct_eq_think h]
            exact think_mem ad
          · cases' IH a' ⟨d, dl, ad⟩ with d dm
            cases' dm with dm ad
            exact ⟨d, List.Mem.tail _ dm, ad⟩
  intro C aC
  -- Porting note: `revert e'` & `intro e'` are required.
  apply memRecOn aC <;> [skip; intro C' IH] <;> intro l S e <;> have e' := congr_arg destruct e <;>
    have := lem1 l <;> simp only [parallel.aux1, corec_eq, destruct_pure, destruct_think] at e' <;>
    revert this e' <;> cases' parallel.aux2 l with a' l' <;> intro this e' <;>
    [injection e' with h'; injection e'; injection e'; injection e' with h']
  · rw [h'] at this
    rcases this with ⟨c, cl, ac⟩
    exact ⟨c, Or.inl cl, ac⟩
  · induction' e : Seq.destruct S with a <;> rw [e] at h'
    · exact
        let ⟨d, o, ad⟩ := IH _ _ h'
        let ⟨c, cl, ac⟩ := this a ⟨d, o.resolve_right (WSeq.not_mem_nil _), ad⟩
        ⟨c, Or.inl cl, ac⟩
    · cases' a with o S'
      cases' o with c <;> simp [parallel.aux1] at h' <;> rcases IH _ _ h' with ⟨d, dl | dS', ad⟩
      · exact
          let ⟨c, cl, ac⟩ := this a ⟨d, dl, ad⟩
          ⟨c, Or.inl cl, ac⟩
      · refine' ⟨d, Or.inr _, ad⟩
        rw [Seq.destruct_eq_cons e]
        exact Seq.mem_cons_of_mem _ dS'
      · simp at dl
        cases' dl with dc dl
        · rw [dc] at ad
          refine' ⟨c, Or.inr _, ad⟩
          rw [Seq.destruct_eq_cons e]
          apply Seq.mem_cons
        · exact
            let ⟨c, cl, ac⟩ := this a ⟨d, dl, ad⟩
            ⟨c, Or.inl cl, ac⟩
      · refine' ⟨d, Or.inr _, ad⟩
        rw [Seq.destruct_eq_cons e]
        exact Seq.mem_cons_of_mem _ dS'
#align computation.exists_of_mem_parallel Computation.exists_of_mem_parallel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b563c6ddd5afd3e7822f3389bd6f4cac4f1185af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
