# exists_of_mem_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2d6818ba3873036e9d2d9f04e1da0ed162bee1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 683,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e51b3d-ba12-a205-38bd-8ffe3e2386d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:460191dd-132e-1049-a041-7580cfdcf1a2",
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
  "slug": "exists-of-mem-join--896208286b2d646c1bdca010",
  "source": {
    "blob": "f2d6818ba3873036e9d2d9f04e1da0ed162bee1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:896208286b2d646c1bdca010e0b95f6527ada9307aad5db43d1cd1edd7132bea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:460191dd-132e-1049-a041-7580cfdcf1a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_mem_join {a : α} : ∀ {S : WSeq (WSeq α)}, a ∈ join S → ∃ s, s ∈ S ∧ a ∈ s := by
  suffices
    ∀ ss : WSeq α,
      a ∈ ss → ∀ s S, append s (join S) = ss → a ∈ append s (join S) → a ∈ s ∨ ∃ s, s ∈ S ∧ a ∈ s
    from fun S h => (this _ h nil S (by simp) (by simp [h])).resolve_left (notMem_nil _)
  intro ss h; apply mem_rec_on h <;> [intro b ss o; intro ss IH] <;> intro s S
  · induction' s using WSeq.recOn with b' s s <;>
      [induction' S using WSeq.recOn with s S S; skip; skip] <;>
      intro ej m <;> simp at ej <;> have := congr_arg Seq.destruct ej <;>
      simp at this; cases this
    substs b' ss
    simp? at m ⊢ says simp only [cons_append, mem_cons_iff] at m ⊢
    rcases o with e | IH
    · simp [e]
    rcases m with e | m
    · simp [e]
    exact Or.imp_left Or.inr (IH _ _ rfl m)
  · induction' s using WSeq.recOn with b' s s <;>
      [induction' S using WSeq.recOn with s S S; skip; skip] <;>
      intro ej m <;> simp at ej <;> have := congr_arg Seq.destruct ej <;> simp at this <;>
      subst ss
    · apply Or.inr
      simp only [join_cons, nil_append, mem_think, mem_cons_iff, exists_eq_or_imp] at m ⊢
      exact IH s S rfl m
    · apply Or.inr
      simp? at m says simp only [join_think, nil_append, mem_think] at m
      rcases (IH nil S (by simp) (by simp [m])).resolve_left (notMem_nil _) with ⟨s, sS, as⟩
      exact ⟨s, by simp [sS], as⟩
    · simp only [think_append, mem_think] at m IH ⊢
      apply IH _ _ rfl m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d6818ba3873036e9d2d9f04e1da0ed162bee1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
