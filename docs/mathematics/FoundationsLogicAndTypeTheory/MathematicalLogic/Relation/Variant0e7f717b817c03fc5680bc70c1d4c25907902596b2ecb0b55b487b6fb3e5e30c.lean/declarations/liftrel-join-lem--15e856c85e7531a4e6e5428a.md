# liftRel_join.lem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8853ec97-0fe1-121e-2995-e6c4c7607714",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb901cb-0f1a-dfd4-9c5a-cf6d74524ef9",
  "kind": "theorem",
  "lexical_name": "liftRel_join.lem",
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
  "slug": "liftrel-join-lem--15e856c85e7531a4e6e5428a",
  "source": {
    "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e856c85e7531a4e6e5428a89741ce5b4e39c4bc8401e25b826e61ea44fce52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb901cb-0f1a-dfd4-9c5a-cf6d74524ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_join.lem (R : α → β → Prop) {S T} {U : WSeq α → WSeq β → Prop}
    (ST : LiftRel (LiftRel R) S T)
    (HU :
      ∀ s1 s2,
        (∃ s t S T,
            s1 = append s (join S) ∧
              s2 = append t (join T) ∧ LiftRel R s t ∧ LiftRel (LiftRel R) S T) →
          U s1 s2)
    {a} (ma : a ∈ destruct (join S)) : ∃ b, b ∈ destruct (join T) ∧ LiftRelO R U a b := by
  obtain ⟨n, h⟩ := exists_results_of_mem ma; clear ma; revert S T ST a
  induction' n using Nat.strongRecOn with n IH
  intro S T ST a ra; simp only [destruct_join] at ra
  exact
    let ⟨o, m, k, rs1, rs2, en⟩ := of_results_bind ra
    let ⟨p, mT, rop⟩ := Computation.exists_of_liftRel_left (liftRel_destruct ST) rs1.mem
    match o, p, rop, rs1, rs2, mT with
    | none, none, _, _, rs2, mT => by
      simp only [destruct_join]
      exact ⟨none, mem_bind mT (ret_mem _), by rw [eq_of_pure_mem rs2.mem]; trivial⟩
    | some (s, S'), some (t, T'), ⟨st, ST'⟩, _, rs2, mT => by
      simp? [destruct_append]  at rs2  says simp only [destruct_join.aux, destruct_append] at rs2
      exact
        let ⟨k1, rs3, ek⟩ := of_results_think rs2
        let ⟨o', m1, n1, rs4, rs5, ek1⟩ := of_results_bind rs3
        let ⟨p', mt, rop'⟩ := Computation.exists_of_liftRel_left (liftRel_destruct st) rs4.mem
        match o', p', rop', rs4, rs5, mt with
        | none, none, _, _, rs5', mt => by
          have : n1 < n := by
            rw [en, ek, ek1]
            apply lt_of_lt_of_le _ (Nat.le_add_right _ _)
            apply Nat.lt_succ_of_le (Nat.le_add_right _ _)
          let ⟨ob, mb, rob⟩ := IH _ this ST' rs5'
          refine ⟨ob, ?_, rob⟩
          · simp +unfoldPartialApp only [destruct_join, destruct_join.aux]
            apply mem_bind mT
            simp only [destruct_append, destruct_append.aux]
            apply think_mem
            apply mem_bind mt
            exact mb
        | some (a, s'), some (b, t'), ⟨ab, st'⟩, _, rs5, mt => by
          simp?  at rs5  says simp only [destruct_append.aux] at rs5
          refine ⟨some (b, append t' (join T')), ?_, ?_⟩
          · simp +unfoldPartialApp only [destruct_join, destruct_join.aux]
            apply mem_bind mT
            simp only [destruct_append, destruct_append.aux]
            apply think_mem
            apply mem_bind mt
            apply ret_mem
          rw [eq_of_pure_mem rs5.mem]
          exact ⟨ab, HU _ _ ⟨s', t', S', T', rfl, rfl, st', ST'⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `180c51a648a169e3bf100d5cb658df48a180f8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
