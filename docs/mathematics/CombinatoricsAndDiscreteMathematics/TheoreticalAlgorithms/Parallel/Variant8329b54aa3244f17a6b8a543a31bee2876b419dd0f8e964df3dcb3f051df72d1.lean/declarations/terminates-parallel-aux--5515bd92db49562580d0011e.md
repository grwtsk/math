# terminates_parallel.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ff2ce35-ff29-f82d-6cdd-5189fb905bdc",
  "kind": "theorem",
  "lexical_name": "terminates_parallel.aux",
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
  "slug": "terminates-parallel-aux--5515bd92db49562580d0011e",
  "source": {
    "blob": "b563c6ddd5afd3e7822f3389bd6f4cac4f1185af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5515bd92db49562580d0011ebe072157a7eed4efd419578287f2650c4bad29b7",
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

Occurrence: `result:5ff2ce35-ff29-f82d-6cdd-5189fb905bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminates_parallel.aux :
    ∀ {l : List (Computation α)} {S c},
      c ∈ l → Terminates c → Terminates (corec parallel.aux1 (l, S)) := by
  have lem1 :
    ∀ l S, (∃ a : α, parallel.aux2 l = Sum.inl a) → Terminates (corec parallel.aux1 (l, S)) := by
    intro l S e
    cases' e with a e
    have : corec parallel.aux1 (l, S) = return a := by
      apply destruct_eq_pure
      simp [parallel.aux1]
      rw [e]
    rw [this]
    -- Porting note: This line is required.
    exact ret_terminates a
  intro l S c m T
  revert l S
  apply @terminatesRecOn _ _ c T _ _
  · intro a l S m
    apply lem1
    induction' l with c l IH <;> simp at m
    cases' m with e m
    · rw [← e]
      simp [parallel.aux2]
      cases' List.foldr (fun c o =>
        match o with
        | Sum.inl a => Sum.inl a
        | Sum.inr ls => rmap (fun c' => c' :: ls) (destruct c)) (Sum.inr List.nil) l with a' ls
      exacts [⟨a', rfl⟩, ⟨a, rfl⟩]
    · cases' IH m with a' e
      simp [parallel.aux2]
      simp [parallel.aux2] at e
      rw [e]
      exact ⟨a', rfl⟩
  · intro s IH l S m
    have H1 : ∀ l', parallel.aux2 l = Sum.inr l' → s ∈ l' := by
      induction' l with c l IH' <;> intro l' e' <;> simp at m
      cases' m with e m <;> simp [parallel.aux2] at e'
      · rw [← e] at e'
        -- Porting note: `revert e'` & `intro e'` are required.
        revert e'
        cases' List.foldr (fun c o =>
            match o with
            | Sum.inl a => Sum.inl a
            | Sum.inr ls => rmap (fun c' => c' :: ls) (destruct c))
          (Sum.inr []) l with a' ls <;> intro e' <;> [injection e'; injection e' with e']
        rw [← e']
        simp
      · induction' e : List.foldr (fun c o =>
            match o with
            | Sum.inl a => Sum.inl a
            | Sum.inr ls => rmap (fun c' => c' :: ls) (destruct c))
          (Sum.inr List.nil) l with a' ls <;> erw [e] at e'
        · contradiction
        have := IH' m _ e
        simp [parallel.aux2] at e'
        -- Porting note: `revert e'` & `intro e'` are required.
        revert e'
        cases destruct c <;> intro e' <;> [injection e'; injection e' with h']
        rw [← h']
        simp [this]
    induction' h : parallel.aux2 l with a l'
    · exact lem1 _ _ ⟨a, h⟩
    · have H2 : corec parallel.aux1 (l, S) = think _ := by
        apply destruct_eq_think
        simp [parallel.aux1]
        rw [h]
      rw [H2]
      refine @Computation.think_terminates _ _ ?_
      have := H1 _ h
      rcases Seq.destruct S with (_ | ⟨_ | c, S'⟩) <;> simp [parallel.aux1] <;> apply IH <;>
        simp [this]
#align computation.terminates_parallel.aux Computation.terminates_parallel.aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b563c6ddd5afd3e7822f3389bd6f4cac4f1185af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
