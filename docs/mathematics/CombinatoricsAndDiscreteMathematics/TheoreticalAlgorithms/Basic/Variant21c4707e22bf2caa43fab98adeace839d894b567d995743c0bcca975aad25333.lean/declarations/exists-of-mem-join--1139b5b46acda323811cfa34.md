# exists_of_mem_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b07833c1-5ed5-46ad-546a-1a7881feb176",
  "kind": "theorem",
  "lexical_name": "exists_of_mem_join",
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
  "slug": "exists-of-mem-join--1139b5b46acda323811cfa34",
  "source": {
    "blob": "7b136e2ec978e1a0fdd188c1d10f308eca7d5540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 714,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1139b5b46acda323811cfa3428d4dfb603e13a5e2afc119a21d4edd37e538d82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b07833c1-5ed5-46ad-546a-1a7881feb176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_mem_join {a : α} : ∀ {S : WSeq (WSeq α)}, a ∈ join S → ∃ s, s ∈ S ∧ a ∈ s := by
  suffices
    ∀ ss : WSeq α,
      a ∈ ss → ∀ s S, append s (join S) = ss → a ∈ append s (join S) → a ∈ s ∨ ∃ s, s ∈ S ∧ a ∈ s
    from fun S h => (this _ h nil S (by simp) (by simp [h])).resolve_left (notMem_nil _)
  intro ss h
  apply mem_rec_on h
  · intro b ss o s S ej m
    induction s using WSeq.recOn <;>
      [induction S using WSeq.recOn; skip; skip] <;>
      have := congr_arg Seq.destruct ej
    case nil.nil | nil.cons | nil.think | think => simp at this
    case cons =>
      simp only [cons_append, seq_destruct_cons, Option.some.injEq, Prod.mk.injEq] at this
      cases this with
      | intro b' s =>
        subst b' ss
        simp? at m ⊢ says simp only [cons_append, mem_cons_iff] at m ⊢
        rcases o with e | IH
        · simp [e]
        rcases m with e | m
        · simp [e]
        exact Or.imp_left Or.inr (IH _ _ rfl m)
  · intro ss IH s S ej m
    induction s using WSeq.recOn <;>
      [induction S using WSeq.recOn; skip; skip] <;>
      have := congr_arg Seq.destruct ej
    case nil.cons | nil.think | think => simp at this; simp_all
    case nil.nil | cons => simp at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b136e2ec978e1a0fdd188c1d10f308eca7d5540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
