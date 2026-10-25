# invariantCardinalRank_of_finitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8570868f98f591d05e52625f1bd3daafd926363c522a9ecb6ae7db1422dd3faa",
  "kind": "instance",
  "lexical_name": "invariantCardinalRank_of_finitary",
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
  "slug": "invariantcardinalrank-of-finitary--48efbde9c46bac3b8abc6a11",
  "source": {
    "blob": "a04736db6d95382d1f7821cde07f570306d2c8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48efbde9c46bac3b8abc6a113142da7cf0e789df3f087e2035d384a5c9072660",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8570868f98f591d05e52625f1bd3daafd926363c522a9ecb6ae7db1422dd3faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance invariantCardinalRank_of_finitary [Finitary M] : InvariantCardinalRank M := by
  suffices aux : ∀ ⦃B B'⦄ ⦃N : Matroid α⦄, Finitary N → N.IsBase B → N.IsBase B' →
      #(B \ B' : Set α) ≤ #(B' \ B : Set α) from
    ⟨fun I J X hI hJ ↦ (aux (restrict_finitary X) hI.isBase_restrict hJ.isBase_restrict).antisymm
      (aux (restrict_finitary X) hJ.isBase_restrict hI.isBase_restrict)⟩
  intro B B' N hfin hB hB'
  by_cases h : (B' \ B).Finite
  · rw [← cast_ncard h, ← cast_ncard, hB.ncard_diff_comm hB']
    exact (hB'.diff_finite_comm hB).mp h
  rw [← Set.Infinite, ← infinite_coe_iff] at h
  have (a : α) (ha : a ∈ B' \ B) : ∃ S : Set α, Finite S ∧ S ⊆ B ∧ ¬ N.Indep (insert a S) := by
    have := (hB.insert_dep ⟨hB'.subset_ground ha.1, ha.2⟩).1
    contrapose! this
    exact Finitary.indep_of_forall_finite _ fun J hJ fin ↦ (this (J \ {a}) fin.diff.to_subtype <|
      diff_singleton_subset_iff.mpr hJ).subset (subset_insert_diff_singleton ..)
  choose S S_fin hSB dep using this
  let U := ⋃ a : ↥(B' \ B), S a a.2
  suffices B \ B' ⊆ U by
    refine (mk_le_mk_of_subset this).trans <| (mk_iUnion_le ..).trans
      <| (mul_le_max_of_aleph0_le_left (by simp)).trans ?_
    simp only [sup_le_iff, le_refl, true_and]
    exact ciSup_le' fun e ↦ (lt_aleph0_of_finite _).le.trans <| by simp
  rw [← diff_inter_self_eq_diff, diff_subset_iff, inter_comm]
  have hUB : (B ∩ B') ∪ U ⊆ B :=
    union_subset inter_subset_left (iUnion_subset fun e ↦ (hSB e.1 e.2))
  by_contra hBU
  have ⟨a, ha, ind⟩ := hB.exists_insert_of_ssubset ⟨hUB, hBU⟩ hB'
  have : a ∈ B' \ B := ⟨ha.1, fun haB ↦ ha.2 (.inl ⟨haB, ha.1⟩)⟩
  refine dep a this (ind.subset <| insert_subset_insert <| .trans ?_ subset_union_right)
  exact subset_iUnion_of_subset ⟨a, this⟩ subset_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04736db6d95382d1f7821cde07f570306d2c8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
