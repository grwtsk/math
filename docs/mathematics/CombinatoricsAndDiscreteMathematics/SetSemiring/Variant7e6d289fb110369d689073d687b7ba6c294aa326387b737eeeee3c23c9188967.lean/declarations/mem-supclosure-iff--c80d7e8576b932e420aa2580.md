# mem_supClosure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81008a1c-829c-94fe-37ef-4beb1aff509d",
  "kind": "theorem",
  "lexical_name": "mem_supClosure_iff",
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
  "slug": "mem-supclosure-iff--c80d7e8576b932e420aa2580",
  "source": {
    "blob": "87758fd08c290dced41812b80bd380c6e7b59b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80d7e8576b932e420aa258011e6fb7a5d3ba0bf27de4d8f2c0e085a02312ce7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81008a1c-829c-94fe-37ef-4beb1aff509d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_supClosure_iff (hC : IsSetSemiring C) :
    s ∈ supClosure C ↔ ∃ P : Finpartition s, ↑P.parts ⊆ C where
  mp := by
    rintro ⟨S, hS, hSC, rfl⟩
    rw [sup'_eq_sup]
    clear hS
    induction S using Finset.induction with
    | empty =>
      rw [sup_empty]
      exact ⟨.empty _, hSC⟩
    | insert s S _ ih =>
      rw [coe_insert, insert_subset_iff] at hSC
      obtain ⟨hsC, hSC⟩ := hSC
      obtain ⟨P, hP⟩ := ih hSC
      rw [sup_insert, sup_comm, id]
      rcases eq_or_ne s ⊥ with rfl | hs
      · rw [sup_bot_eq]; exact ⟨P, hP⟩
      choose Q hQ using show ∀ t ∈ (P.avoid s).parts, ∃ Q : Finpartition t, ↑Q.parts ⊆ C by
        simp_rw [Finpartition.mem_avoid]
        rintro _ ⟨t, ht, -, rfl⟩
        exact hC.exists_finpartition_sdiff (hP ht) hsC
      exists P.avoid s |>.bind Q |>.extend hs disjoint_sdiff_left (sdiff_sup_self _ _)
      rw [Finpartition.extend_parts, coe_insert, insert_subset_iff, Finpartition.bind_parts,
        coe_biUnion, iUnion₂_subset_iff, Subtype.forall]
      exact ⟨hsC, fun t ht _ => hQ t ht⟩
  mpr := by
    intro ⟨P, hP⟩
    rw [← P.sup_parts, sup_id_set_eq_sUnion]
    exact supClosed_supClosure.sSup_mem
      (Finset.finite_toSet _)
      (subset_supClosure hC.empty_mem)
      (hP.trans subset_supClosure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87758fd08c290dced41812b80bd380c6e7b59b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
