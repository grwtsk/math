# terminates_parallel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af6c3c16-6fe3-60cc-bc0d-600744ce849d",
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
  "slug": "terminates-parallel--6c635828503d96d6326b8530",
  "source": {
    "blob": "1f4e626e79e7c178de53f14ea3aca1673b7add92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c635828503d96d6326b8530ef842b55e370fb5e1e1013c0f3c353cece962bb6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6c3c16-6fe3-60cc-bc0d-600744ce849d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–186.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant6463d76f95861fd796547a819f035f84fb1122888c90cb0575010e51f1f817fa.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4e626e79e7c178de53f14ea3aca1673b7add92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
