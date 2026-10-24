# terminates_parallel.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42e25b3c0a7d8fc103f5ee25cedc8d50c65ff2c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6e2df58ac200d7344c96af52cc93f0fba7355c8a417a49affc3cf2de4e5da0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ff89060-87a1-3094-eeed-86bc008ab4ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cf89162-f95f-0e9d-17c2-58817e3fa402",
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
  "slug": "terminates-parallel-aux--36d11bcb51540a59e975f1ca",
  "source": {
    "blob": "42e25b3c0a7d8fc103f5ee25cedc8d50c65ff2c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantc6e2df58ac200d7344c96af52cc93f0fba7355c8a417a49affc3cf2de4e5da0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d11bcb51540a59e975f1ca00cb32bc122b6f7e381624da3983ee689cd38440",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantc6e2df58ac200d7344c96af52cc93f0fba7355c8a417a49affc3cf2de4e5da0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cf89162-f95f-0e9d-17c2-58817e3fa402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem terminates_parallel.aux :
    ∀ {l : List (Computation α)} {S c},
      c ∈ l → Terminates c → Terminates (corec parallel.aux1 (l, S)) := by
  have lem1 :
    ∀ l S, (∃ a : α, parallel.aux2 l = Sum.inl a) → Terminates (corec parallel.aux1 (l, S)) := by
    intro l S e
    obtain ⟨a, e⟩ := e
    have : corec parallel.aux1 (l, S) = return a := by
      apply destruct_eq_pure
      simp only [parallel.aux1, rmap, corec_eq]
      rw [e]
    rw [this]
    exact ret_terminates a
  intro l S c m T
  revert l S
  apply @terminatesRecOn _ _ c T _ _
  · intro a l S m
    apply lem1
    induction l with | nil => simp at m | cons c l IH => ?_
    simp only [List.mem_cons] at m
    rcases m with e | m
    · rw [← e]
      simp only [parallel.aux2, rmap, List.foldr_cons, destruct_pure]
      split <;> simp
    · obtain ⟨a', e⟩ := IH m
      simp only [parallel.aux2, rmap, List.foldr_cons] at ⊢ e
      rw [e]
      exact ⟨a', rfl⟩
  · intro s IH l S m
    have H1 (l') (e' : parallel.aux2 l = Sum.inr l') : s ∈ l' := by
      induction l generalizing l' with | nil => simp at m | cons c l IH' => ?_
      simp only [List.mem_cons] at m
      rcases m with e | m <;> simp only [parallel.aux2, rmap, List.foldr_cons] at e'
      · rw [← e] at e'
        -- Porting note: `revert e'` is required.
        revert e'
        split
        · simp
        · simp only [destruct_think, Sum.inr.injEq]
          rintro rfl
          simp
      · rcases e : List.foldr (fun c o =>
            match o with
            | Sum.inl a => Sum.inl a
            | Sum.inr ls => rmap (fun c' => c' :: ls) (destruct c))
          (Sum.inr List.nil) l with a' | ls <;> simp only [rmap] at e <;> rw [e] at e'
        · contradiction
        have := IH' m _ e
        grind
    rcases h : parallel.aux2 l with a | l'
    · exact lem1 _ _ ⟨a, h⟩
    · have H2 : corec parallel.aux1 (l, S) = think _ := destruct_eq_think (by
        simp only [parallel.aux1, rmap, corec_eq]
        rw [h])
      rw [H2]
      refine @Computation.think_terminates _ _ ?_
      have := H1 _ h
      rcases Seq.destruct S with (_ | ⟨_ | c, S'⟩) <;> apply IH <;> simp [this]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantc6e2df58ac200d7344c96af52cc93f0fba7355c8a417a49affc3cf2de4e5da0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantc6e2df58ac200d7344c96af52cc93f0fba7355c8a417a49affc3cf2de4e5da0e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e25b3c0a7d8fc103f5ee25cedc8d50c65ff2c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
