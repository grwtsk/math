# exists_countable_union_perfect_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f9a4555-6f34-753c-649f-4e97c82ac0ac",
  "kind": "theorem",
  "lexical_name": "exists_countable_union_perfect_of_isClosed",
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
  "slug": "exists-countable-union-perfect-of-isclosed--4e5d24b3a4d08155cfc94f87",
  "source": {
    "blob": "f1351ebd74f06d465d1f865aaa588a6f47ae4bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5d24b3a4d08155cfc94f87807da6c1ebf467d7b7ca149c345f7f77fc8db06e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9a4555-6f34-753c-649f-4e97c82ac0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_countable_union_perfect_of_isClosed [SecondCountableTopology α]
    (hclosed : IsClosed C) : ∃ V D : Set α, V.Countable ∧ Perfect D ∧ C = V ∪ D := by
  obtain ⟨b, bct, _, bbasis⟩ := TopologicalSpace.exists_countable_basis α
  let v := { U ∈ b | (U ∩ C).Countable }
  let V := ⋃ U ∈ v, U
  let D := C \ V
  have Vct : (V ∩ C).Countable := by
    simp only [iUnion_inter, mem_sep_iff]
    apply Countable.biUnion
    · exact Countable.mono (inter_subset_left _ _) bct
    · exact inter_subset_right _ _
  refine' ⟨V ∩ C, D, Vct, ⟨_, _⟩, _⟩
  · refine' hclosed.sdiff (isOpen_biUnion fun _ ↦ _)
    exact fun ⟨Ub, _⟩ ↦ IsTopologicalBasis.isOpen bbasis Ub
  · rw [preperfect_iff_nhds]
    intro x xD E xE
    have : ¬(E ∩ D).Countable := by
      intro h
      obtain ⟨U, hUb, xU, hU⟩ : ∃ U ∈ b, x ∈ U ∧ U ⊆ E :=
        (IsTopologicalBasis.mem_nhds_iff bbasis).mp xE
      have hU_cnt : (U ∩ C).Countable := by
        apply @Countable.mono _ _ (E ∩ D ∪ V ∩ C)
        · rintro y ⟨yU, yC⟩
          by_cases h : y ∈ V
          · exact mem_union_right _ (mem_inter h yC)
          · exact mem_union_left _ (mem_inter (hU yU) ⟨yC, h⟩)
        exact Countable.union h Vct
      have : U ∈ v := ⟨hUb, hU_cnt⟩
      apply xD.2
      exact mem_biUnion this xU
    by_contra' h
    exact absurd (Countable.mono h (Set.countable_singleton _)) this
  · rw [inter_comm, inter_union_diff]
#align exists_countable_union_perfect_of_is_closed exists_countable_union_perfect_of_isClosed

/-- Any uncountable closed set in a second countable space contains a nonempty perfect subset.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variant7ef23810ec88084f968f0d2116e0181ed8d86dc788e98fd5bfd2aacde91e7b4d.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1351ebd74f06d465d1f865aaa588a6f47ae4bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
