# exists_clopen_partition_of_clopen_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfdef03d-0fa5-9e4d-a2a1-f5f2c88d9cce",
  "kind": "lemma",
  "lexical_name": "exists_clopen_partition_of_clopen_cover",
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
  "slug": "exists-clopen-partition-of-clopen-cover--df9b70e8dc11024e699e3cc6",
  "source": {
    "blob": "9c5533255509f8c895e8776c928cecebf3620b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df9b70e8dc11024e699e3cc6416214d10a5ec4142d3a4d29ed3371cf856ea42f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdef03d-0fa5-9e4d-a2a1-f5f2c88d9cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_clopen_partition_of_clopen_cover
    {X I : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X] [TotallyDisconnectedSpace X]
    [Finite I] {Z D : I → Set X}
    (Z_closed : ∀ i, IsClosed (Z i)) (D_clopen : ∀ i, IsClopen (D i))
    (Z_subset_D : ∀ i, Z i ⊆ D i) (Z_disj : univ.PairwiseDisjoint Z) :
    ∃ C : I → Set X, (∀ i, IsClopen (C i)) ∧ (∀ i, Z i ⊆ C i) ∧ (∀ i, C i ⊆ D i) ∧
    (⋃ i, D i) ⊆ (⋃ i, C i) ∧ (univ.PairwiseDisjoint C) := by
  induction I using Finite.induction_empty_option with
  | of_equiv e IH =>
    obtain ⟨C, h1, h2, h3, h4, h5⟩ := IH (Z := Z ∘ e) (D := D ∘ e)
      (fun i ↦ Z_closed (e i)) (fun i ↦ D_clopen (e i))
      (fun i ↦ Z_subset_D (e i)) (by simpa [← e.injective.injOn.pairwiseDisjoint_image])
    refine ⟨C ∘ e.symm, fun i ↦ h1 (e.symm i), fun i ↦ by simpa using h2 (e.symm i),
      fun i ↦ by simpa using h3 (e.symm i), ?_,
      by simpa [← e.symm.injective.injOn.pairwiseDisjoint_image]⟩
    simp only [Function.comp_apply, iUnion_subset_iff] at h4
    simpa [e.symm.surjective.iUnion_comp C] using fun i ↦ h4 (e.symm i)
  | h_empty => exact ⟨fun _ ↦ univ, by simp, by simp, by simp, by simp, fun i ↦ PEmpty.elim i⟩
  | @h_option I _ IH =>
    -- let `Z'` be the restriction of `Z` along `some : I → Option I`
    let Z' : I → Set X := fun i ↦ Z (some i)
    have Z'_closed (i : I) : IsClosed (Z (some i)) := Z_closed (some i)
    have Z'_disj : univ.PairwiseDisjoint (Z ∘ some) := by
      rw [← (Option.some_injective _).injOn.pairwiseDisjoint_image]
      exact PairwiseDisjoint.subset Z_disj (by simp)
    -- find `Z none ⊆ V ⊆ D none \ ⋃ Z'` using `exists_clopen_of_closed_subset_open`
    let U : Set X := D none \ ⋃ i, Z (some i)
    have U_open : IsOpen U := IsOpen.sdiff (D_clopen none).2
      (isClosed_iUnion_of_finite (fun i ↦ Z_closed (some i)))
    have Z0_subset_U : Z none ⊆ U := by
      rw [subset_sdiff]
      simpa using ⟨Z_subset_D none, fun i ↦ (by apply Z_disj; all_goals simp)⟩
    obtain ⟨V, V_clopen, Z0_subset_V, V_subset_U⟩ :=
      exists_clopen_of_closed_subset_open (Z_closed none) U_open Z0_subset_U
    have V_subset_D0 : V ⊆ D none := subset_trans V_subset_U sdiff_subset
    -- choose `Z' i ⊆ C' i ⊆ D' i = D i.succ \ V` using the inductive hypothesis
    let D' : I → Set X := fun i ↦ D (some i) \ V
    have D'_clopen (i : I) : IsClopen (D' i) := (D_clopen (some i)).diff V_clopen
    have Z'_subset_D' (i : I) : Z' i ⊆ D' i := by
      rw [subset_sdiff]
      refine ⟨by grind, Disjoint.mono_right V_subset_U ?_⟩
      exact Disjoint.mono_left (subset_iUnion_of_subset i fun _ h ↦ h) (by grind)
    obtain ⟨C', C'_clopen, Z'_subset_C', C'_subset_D', C'_cover_D', C'_disj⟩ :=
      IH Z'_closed D'_clopen Z'_subset_D' Z'_disj
    -- now choose `C0 = D none \ ⋃ C' i`
    let C0 : Set X := D none \ ⋃ i, C' i
    have : IsClopen C0 := (D_clopen none).diff (isClopen_iUnion_of_finite C'_clopen)
    have : Z none ⊆ C0 := by
      simp only [C0, subset_sdiff]
      exact ⟨by grind, Disjoint.mono_left Z0_subset_V (by simp; grind)⟩
    -- patch together to define `C none := C0`, `C (some i) := C' i`
    -- and verify the needed properties
    let C : Option I → Set X := fun i ↦ Option.casesOn i C0 C'
    refine ⟨C, ?_, ?_, ?_, ?_, ?_⟩
    all_goals try rintro (_ | i); all_goals grind
    · intro x hx
      rw [mem_iUnion] at hx ⊢
      by_cases hx0 : x ∈ C0; { exact ⟨none, hx0⟩ }
      by_cases hxD : x ∈ D none
      · have hxC' : x ∈ ⋃ i, C' i := by grind
        obtain ⟨i, hi⟩ := mem_iUnion.mp hxC'
        exact ⟨some i, hi⟩
      · obtain ⟨none | j, hi⟩ := hx; {grind}
        have hxD' : x ∈ ⋃ i, D' i := mem_iUnion.mpr ⟨j, by grind⟩
        obtain ⟨k, hk⟩ := mem_iUnion.mp <| C'_cover_D' hxD'
        exact ⟨some k, hk⟩
    · rw [Set.pairwiseDisjoint_iff]
      rintro (_ | i) _ (_ | j) _
      · simp
      · simpa [C, C0, Set.not_nonempty_iff_eq_empty, ← Set.disjoint_iff_inter_eq_empty] using
          Disjoint.mono_right (subset_iUnion C' j) disjoint_sdiff_left
      · simpa [C, C0, Set.not_nonempty_iff_eq_empty, ← Set.disjoint_iff_inter_eq_empty] using
          Disjoint.mono_left (subset_iUnion C' i) disjoint_sdiff_right
      · simpa using (Set.pairwiseDisjoint_iff.mp C'_disj) (by trivial) (by trivial)

end LocallyCompact
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5533255509f8c895e8776c928cecebf3620b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
