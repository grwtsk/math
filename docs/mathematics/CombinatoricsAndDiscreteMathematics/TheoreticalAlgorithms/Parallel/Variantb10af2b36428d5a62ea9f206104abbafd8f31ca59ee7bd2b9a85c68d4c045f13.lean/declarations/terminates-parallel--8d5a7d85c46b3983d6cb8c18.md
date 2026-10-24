# terminates_parallel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3660e0c742bd7132dcdcee493defe81142a60b4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cba4ff1-5fe6-47db-d8a3-3d9cdaa933a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acfd724a-6710-9d94-10a2-59e50e5a78df",
  "kind": "theorem",
  "lexical_name": "terminates_parallel",
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
  "slug": "terminates-parallel--8d5a7d85c46b3983d6cb8c18",
  "source": {
    "blob": "3660e0c742bd7132dcdcee493defe81142a60b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d5a7d85c46b3983d6cb8c180e7e7f18c35521cf082c4e9127961f14b74f7096",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acfd724a-6710-9d94-10a2-59e50e5a78df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminates_parallel {S : WSeq (Computation α)} {c} (h : c ∈ S) [T : Terminates c] :
    Terminates (parallel S) := by
  suffices
    ∀ (n) (l : List (Computation α)) (S c),
      c ∈ l ∨ some (some c) = Seq.get? S n → Terminates c → Terminates (corec parallel.aux1 (l, S))
    from
    let ⟨n, h⟩ := h
    this n [] S c (Or.inr h) T
  intro n; induction' n with n IH <;> intro l S c o T
  · rcases o with a | a
    · exact terminates_parallel.aux a T
    have H : Seq.destruct S = some (some c, Seq.tail S) := by simp [Seq.destruct, (· <$> ·), ← a]
    induction' h : parallel.aux2 l with a l'
    · have C : corec parallel.aux1 (l, S) = pure a := by
        apply destruct_eq_pure
        rw [corec_eq, parallel.aux1]
        rw [h]
        simp only [rmap]
      rw [C]
      infer_instance
    · have C : corec parallel.aux1 (l, S) = _ := destruct_eq_think (by
        simp only [corec_eq, rmap, parallel.aux1.eq_1]
        rw [h, H])
      rw [C]
      refine @Computation.think_terminates _ _ ?_
      apply terminates_parallel.aux _ T
      simp
  · rcases o with a | a
    · exact terminates_parallel.aux a T
    induction' h : parallel.aux2 l with a l'
    · have C : corec parallel.aux1 (l, S) = pure a := by
        apply destruct_eq_pure
        rw [corec_eq, parallel.aux1]
        rw [h]
        simp only [rmap]
      rw [C]
      infer_instance
    · have C : corec parallel.aux1 (l, S) = _ := destruct_eq_think (by
        simp only [corec_eq, rmap, parallel.aux1.eq_1]
        rw [h])
      rw [C]
      refine @Computation.think_terminates _ _ ?_
      have TT : ∀ l', Terminates (corec parallel.aux1 (l', S.tail)) := by
        intro
        apply IH _ _ _ (Or.inr _) T
        rw [a, Seq.get?_tail]
      induction' e : Seq.get? S 0 with o
      · have D : Seq.destruct S = none := by
          dsimp [Seq.destruct]
          rw [e]
          rfl
        rw [D]
        simp only
        have TT := TT l'
        rwa [Seq.destruct_eq_none D, Seq.tail_nil] at TT
      · have D : Seq.destruct S = some (o, S.tail) := by
          dsimp [Seq.destruct]
          rw [e]
          rfl
        rw [D]
        cases o <;> simp [parallel.aux1, TT]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variantb10af2b36428d5a62ea9f206104abbafd8f31ca59ee7bd2b9a85c68d4c045f13.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3660e0c742bd7132dcdcee493defe81142a60b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
