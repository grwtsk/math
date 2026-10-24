# exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dedf2e90-f14a-98b2-a013-ab39ddbff147",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b2688b7-4063-9518-3dad-4d1a79141e65",
  "kind": "theorem",
  "lexical_name": "exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset",
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
  "slug": "exists-nhds-hasantitonebasis-absconvex-open-add-closure-subset--657015f01edc35daaa240f43",
  "source": {
    "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 289,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:657015f01edc35daaa240f432e4c36cc208e86616caccb7c00ed12c5a50886ae",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2688b7-4063-9518-3dad-4d1a79141e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset [FirstCountableTopology E] :
    ∃ x : ℕ → Set E, (𝓝 (0 : E)).HasAntitoneBasis x ∧
      ∀ n, IsOpen (x n) ∧ AbsConvex 𝕜 (x n) ∧ x (n + 1) + x (n + 1) ⊆ x n ∧
        closure (x (n + 1)) ⊆ x n := by
  obtain ⟨u, hu_basis, -⟩ := IsTopologicalAddGroup.exists_antitone_basis_nhds_zero E
  have hu_zero (n : ℕ) : 0 ∈ interior (u n) :=
    mem_interior_iff_mem_nhds.mpr (hu_basis.mem_of_mem trivial)
  let v (n : ℕ) := absConvexHull 𝕜 (interior (u n))
  have hv_open (n : ℕ) : IsOpen (v n) := isOpen_interior.absConvexHull 𝕜 (hu_zero n)
  have hv_nhds (n : ℕ) : v n ∈ 𝓝 0 := (hv_open n).mem_nhds (subset_absConvexHull (hu_zero n))
  have hv_basis : (𝓝 0).HasAntitoneBasis v := by
    refine ⟨hu_basis.to_hasBasis ?_ ?_,
      fun _ _ hij ↦ absConvexHull_mono (interior_mono (hu_basis.antitone hij))⟩
    · intro n _
      obtain ⟨W, ⟨hW_nhds, hW_abs⟩, hWn⟩ :=
        (nhds_hasBasis_absConvex 𝕜 E).mem_iff.mp (hu_basis.mem_of_mem trivial)
      obtain ⟨m, hm⟩ := hu_basis.mem_iff.mp hW_nhds
      exact ⟨m, trivial, (absConvexHull_min (interior_subset.trans hm) hW_abs).trans hWn⟩
    · intro n _
      obtain ⟨m, hm⟩ := hu_basis.mem_iff.mp (isOpen_interior.mem_nhds (hu_zero n))
      exact ⟨m, trivial, hm.trans subset_absConvexHull⟩
  obtain ⟨φ, -, hφ_add, hφ_basis⟩ := hv_basis.subbasis_with_rel
    (r := fun i j ↦ v j + v j ⊆ v i) fun m ↦ by
      obtain ⟨W, hW_open, hW_zero, hW_add⟩ := exists_open_nhds_zero_add_subset (hv_nhds m)
      obtain ⟨N, hN⟩ := hv_basis.mem_iff.mp (hW_open.mem_nhds hW_zero)
      filter_upwards [Filter.eventually_ge_atTop N] with M hM
      exact (add_subset_add ((hv_basis.antitone hM).trans hN)
        ((hv_basis.antitone hM).trans hN)).trans hW_add
  exact ⟨v ∘ φ, hφ_basis, fun n ↦ ⟨hv_open (φ n), absConvex_absConvexHull, hφ_add (by simp),
    (closure_subset_add_self_of_mem_nhds_zero (hv_nhds (φ (n + 1)))).trans
        (hφ_add n.lt_succ_self)⟩⟩

end NontriviallyNormedField

section

variable [AddCommGroup E] [Module ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74a6ea41957e30db1e11d1b98604b25f5a3589b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
