# isColoop_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daac4d59-54fa-55c5-8079-cef21325a9e1",
  "kind": "lemma",
  "lexical_name": "isColoop_tfae",
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
  "slug": "iscoloop-tfae--681545f056ae083e599aa9e7",
  "source": {
    "blob": "442cc92b4a3184df576c8466142c6a3eba4e1c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 516,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:681545f056ae083e599aa9e7e69f810b4ac57901d025aeb3f86bcb67a7deaeda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daac4d59-54fa-55c5-8079-cef21325a9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColoop_tfae (M : Matroid α) (e : α) : List.TFAE [
    M.IsColoop e,
    e ∈ M.coloops,
    M.IsCocircuit {e},
    ∀ ⦃B⦄, M.IsBase B → e ∈ B,
    (∀ ⦃C⦄, M.IsCircuit C → e ∉ C) ∧ e ∈ M.E,
    ∀ X, e ∈ M.closure X ↔ e ∈ X,
    ¬ M.Spanning (M.E \ {e}) ] := by
  tfae_have 1 ↔ 2 := Iff.rfl
  tfae_have 1 ↔ 3 := singleton_isCocircuit.symm
  tfae_have 1 ↔ 4 := by
    simp_rw [← dual_isLoop_iff_isColoop, isLoop_iff_forall_mem_compl_isBase]
    refine ⟨fun h B hB ↦ ?_, fun h B hB ↦ h hB.compl_isBase_of_dual⟩
    obtain ⟨-, heB : e ∈ B⟩ := by simpa using h (M.E \ B) hB.compl_isBase_dual
    assumption
  tfae_have 3 → 5 := fun h ↦
    ⟨fun C hC heC ↦ hC.inter_isCocircuit_ne_singleton h (e := e) (by simpa), h.subset_ground rfl⟩
  tfae_have 5 → 4 := by
    refine fun ⟨h, heE⟩ B hB ↦ by_contra fun heB ↦ ?_
    rw [← hB.closure_eq] at heE
    obtain ⟨C, -, hC, heC⟩ := (mem_closure_iff_exists_isCircuit heB).1 heE
    exact h hC heC
  tfae_have 5 ↔ 6 := by
    refine ⟨fun h X ↦ ⟨fun heX ↦ by_contra fun heX' ↦ ?_, fun heX ↦ M.mem_closure_of_mem' heX h.2⟩,
      fun h ↦ ⟨fun C hC heC ↦ ?_, M.closure_subset_ground _ <| (h {e}).2 rfl⟩⟩
    · obtain ⟨C, -, hC, heC⟩ := (mem_closure_iff_exists_isCircuit heX').1 heX
      exact h.1 hC heC
    · simpa [hC.mem_closure_sdiff_singleton_of_mem heC] using h (C \ {e})
  tfae_have 1 ↔ 7 := by
    wlog he : e ∈ M.E
    · exact iff_of_false (fun h ↦ he h.mem_ground) <| by simp [he, M.ground_spanning]
    rw [spanning_iff_compl_coindep sdiff_subset, ← dual_isLoop_iff_isColoop, ← singleton_dep,
      sdiff_sdiff_cancel_left (by simpa), ← not_indep_iff (by simpa)]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant7144979b48c1f01484caa46f05cdf3308ffa1038fd812a1f494b194d033365db.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442cc92b4a3184df576c8466142c6a3eba4e1c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
