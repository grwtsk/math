# closedInterior_eq_interior_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26d9bd4e-3a73-927e-695b-e73680fb2681",
  "kind": "theorem",
  "lexical_name": "closedInterior_eq_interior_union",
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
  "slug": "closedinterior-eq-interior-union--25916d2510acf6abfff141c9",
  "source": {
    "blob": "7ad06735d7ccbc4a48f226c875c5799ed4eb37e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 698,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25916d2510acf6abfff141c9b5b2ab58110232af3419cc69731a09dae9daef15",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d9bd4e-3a73-927e-695b-e73680fb2681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedInterior_eq_interior_union [IsOrderedAddMonoid k] [ZeroLEOneClass k] {n : ℕ}
    [NeZero n] (s : Simplex k P n) :
    s.closedInterior = s.interior ∪ ⋃ i : Fin (n + 1), (s.faceOpposite i).closedInterior := by
  apply Set.Subset.antisymm
  · intro p hp
    obtain hp' := Set.mem_of_mem_of_subset hp s.closedInterior_subset_affineSpan
    obtain ⟨w, hw1, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype hp'
    rw [Set.mem_union, or_iff_not_imp_left]
    intro h
    rw [affineCombination_mem_closedInterior_iff hw1] at hp
    simp_rw [affineCombination_mem_interior_iff hw1, Set.mem_Ioo] at h
    push +distrib Not at h
    obtain ⟨j, hj⟩ : ∃ j : Fin (n + 1), w j = 0 := by
      obtain ⟨i, hi | hi⟩ := h
      · exact ⟨i, le_antisymm hi (hp i).1⟩
      · have hi1 : w i = 1 := le_antisymm (hp i).2 hi
        rw [← hi1, ← Finset.sum_erase_add _ _ (show i ∈ Finset.univ by simp), add_eq_right,
          Finset.sum_eq_zero_iff_of_nonneg (fun j _ ↦ (hp j).1)] at hw1
        exact ⟨i + 1, hw1 _ (by simp)⟩
    refine Set.mem_iUnion.mpr ⟨j, ?_⟩
    rw [faceOpposite, affineCombination_mem_closedInterior_face_iff_mem_Icc _ _ hw1]
    exact ⟨fun k _ ↦ hp k, by simpa using hj⟩
  · refine Set.union_subset s.interior_subset_closedInterior (Set.iUnion_subset fun i ↦ ?_)
    exact s.closedInterior_faceOpposite_subset_closedInterior i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad06735d7ccbc4a48f226c875c5799ed4eb37e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
