# NoetherianSpace.exists_open_ne_empty_le_irreducibleComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d777c5ac0f6443be92b17babd5f1f3c7adb49272",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb17e1c2-a394-3745-ff19-226db91f3622",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb301409-a278-4b5a-6824-e3645216d9ea",
  "kind": "theorem",
  "lexical_name": "NoetherianSpace.exists_open_ne_empty_le_irreducibleComponent",
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
  "slug": "noetherianspace-exists-open-ne-empty-le-irreduciblecomponent--62f7c948a331d4898c2cb1d1",
  "source": {
    "blob": "d777c5ac0f6443be92b17babd5f1f3c7adb49272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62f7c948a331d4898c2cb1d1d337da4f02b7992056e56e9b9c42689fb3db9e23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb301409-a278-4b5a-6824-e3645216d9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoetherianSpace.exists_open_ne_empty_le_irreducibleComponent [NoetherianSpace α]
    (Z : Set α) (H : Z ∈ irreducibleComponents α) :
    ∃ o : Set α, IsOpen o ∧ o ≠ ∅ ∧ o ≤ Z := by
  classical

  let ι : Set (Set α) := irreducibleComponents α \ {Z}
  have hι : ι.Finite := NoetherianSpace.finite_irreducibleComponents.subset Set.diff_subset
  have hι' : Finite ι := by rwa [Set.finite_coe_iff]

  let U := Z \ ⋃ (x : ι), x
  have hU0 : U ≠ ∅ := fun r ↦ by
    obtain ⟨Z', hZ'⟩ := isIrreducible_iff_sUnion_isClosed.mp H.1 hι.toFinset
      (fun z hz ↦ by
        simp only [Set.Finite.mem_toFinset, Set.mem_diff, Set.mem_singleton_iff] at hz
        exact isClosed_of_mem_irreducibleComponents _ hz.1)
      (by
        rw [Set.Finite.coe_toFinset, Set.sUnion_eq_iUnion]
        rw [Set.diff_eq_empty] at r
        exact r)
    simp only [Set.Finite.mem_toFinset, Set.mem_diff, Set.mem_singleton_iff] at hZ'
    exact hZ'.1.2 <| le_antisymm (H.2 hZ'.1.1.1 hZ'.2) hZ'.2

  have hU1 : U = (⋃ (x : ι), x.1) ᶜ := by
    rw [Set.compl_eq_univ_diff]
    refine le_antisymm (Set.diff_subset_diff le_top <| subset_refl _) ?_
    rw [← Set.compl_eq_univ_diff]
    refine Set.compl_subset_iff_union.mpr (le_antisymm le_top ?_)
    rw [Set.union_comm, ← Set.sUnion_eq_iUnion, ← Set.sUnion_insert]
    rintro a -
    by_cases h : a ∈ U
    · exact ⟨U, Set.mem_insert _ _, h⟩
    · rw [Set.mem_diff, Decidable.not_and_iff_not_or_not, not_not, Set.mem_iUnion] at h
      rcases h with (h|⟨i, hi⟩)
      · refine ⟨irreducibleComponent a, Or.inr ?_, mem_irreducibleComponent⟩
        simp only [ι, Set.mem_diff, Set.mem_singleton_iff]
        refine ⟨irreducibleComponent_mem_irreducibleComponents _, ?_⟩
        rintro rfl
        exact h mem_irreducibleComponent
      · exact ⟨i, Or.inr i.2, hi⟩

  refine ⟨U, hU1 ▸ isOpen_compl_iff.mpr ?_, hU0, sdiff_le⟩
  exact isClosed_iUnion_of_finite fun i ↦ isClosed_of_mem_irreducibleComponents i.1 i.2.1

end TopologicalSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d777c5ac0f6443be92b17babd5f1f3c7adb49272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
