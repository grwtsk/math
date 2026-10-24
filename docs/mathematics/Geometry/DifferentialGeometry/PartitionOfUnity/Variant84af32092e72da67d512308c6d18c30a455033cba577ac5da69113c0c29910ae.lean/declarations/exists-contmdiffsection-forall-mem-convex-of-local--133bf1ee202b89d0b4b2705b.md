# exists_contMDiffSection_forall_mem_convex_of_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8208f95-971e-a578-8bf3-ed39ffc5df0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8a2e2eb-b586-164a-114a-ffdfc0960ee6",
  "kind": "theorem",
  "lexical_name": "exists_contMDiffSection_forall_mem_convex_of_local",
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
  "slug": "exists-contmdiffsection-forall-mem-convex-of-local--133bf1ee202b89d0b4b2705b",
  "source": {
    "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 592,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:133bf1ee202b89d0b4b2705be07df3112e4e83591896613a63075d7e7ca8d31d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8a2e2eb-b586-164a-114a-ffdfc0960ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_contMDiffSection_forall_mem_convex_of_local
    {F_fiber : Type*} [NormedAddCommGroup F_fiber] [NormedSpace ℝ F_fiber]
    (V : M → Type*) [∀ x, AddCommGroup (V x)] [∀ x, TopologicalSpace (V x)] [∀ x, Module ℝ (V x)]
    [TopologicalSpace (TotalSpace F_fiber V)] [FiberBundle F_fiber V] [VectorBundle ℝ F_fiber V]
    (t : ∀ x, Set (V x)) (ht_conv : ∀ x, Convex ℝ (t x))
    (Hloc :
      ∀ x₀ : M, ∃ U_x₀ ∈ 𝓝 x₀, ∃ (s_loc : (x : M) → V x),
        (CMDiff[U_x₀] n (T% s_loc)) ∧ (∀ y ∈ U_x₀, s_loc y ∈ t y)) :
    ∃ s : Cₛ^n⟮I; F_fiber, V⟯, ∀ x : M, s x ∈ t x := by
  choose W h_nhds s_loc s_smooth h_mem_t using Hloc
  -- Construct an open cover from the interiors of the given neighborhoods.
  let U (x : M) : Set M := interior (W x)
  have hU_covers_univ : univ ⊆ ⋃ x, U x := by
    intro x_pt _
    simp only [mem_iUnion]
    exact ⟨x_pt, mem_interior_iff_mem_nhds.mpr (h_nhds x_pt)⟩
  -- Obtain a smooth partition of unity subordinate to this open cover.
  obtain ⟨ρ, hρU⟩ : ∃ ρ : SmoothPartitionOfUnity M I M univ, ρ.IsSubordinate U :=
    SmoothPartitionOfUnity.exists_isSubordinate
      I isClosed_univ U (fun x ↦ isOpen_interior) hU_covers_univ
  -- Define the global section `s` by taking a weighted sum of the local sections.
  let s x : V x := ∑ᶠ j, (ρ j x) • s_loc j x
  -- Prove that `s`, when viewed as a map to the total space, is smooth.
  have (j : M) : CMDiff n (T% (fun x ↦ (ρ j x) • (s_loc j x))) := by
    refine ContMDiffOn.smul_section_of_tsupport ?_ isOpen_interior (hρU j)
      ((s_smooth j).mono interior_subset)
    exact ((ρ j).contMDiff).of_le (sup_eq_left.mp rfl) |>.contMDiffOn
  have hs : CMDiff n (T% s) := by
    apply ContMDiff.finsum_section_of_locallyFinite ?_ this
    -- Future: can grind do this?
    apply ρ.locallyFinite.subset fun i x hx ↦ ?_
    rw [support]
    rw [mem_ofPred_eq] at hx ⊢
    exact left_ne_zero_of_smul hx
  -- Construct the smooth section and prove it lies in the convex sets `t x`.
  refine ⟨⟨s, hs⟩, fun x ↦ ?_⟩
  apply (ht_conv x).finsum_mem (ρ.nonneg · x) (ρ.sum_eq_one (mem_univ x))
  intro j h_ρjx_ne_zero
  have h_x_in_tsupport_ρj : x ∈ tsupport (ρ j) := subset_closure (mem_support.mpr h_ρjx_ne_zero)
  have h_x_in_Umap_j : x ∈ W j := interior_subset (hρU j h_x_in_tsupport_ρj)
  exact h_mem_t j x h_x_in_Umap_j

/-- Let `M` be a σ-compact Hausdorff finite-dimensional topological manifold. Let `t : M → Set F`
be a family of convex sets. Suppose that for each point `x : M` there exists a neighborhood
`U ∈ 𝓝 x` and a function `g : M → F` such that `g` is $C^n$ smooth on `U` and `g y ∈ t y` for all
`y ∈ U`. Then there exists a $C^n$ smooth function `g : C^n⟮I, M; 𝓘(ℝ, F), F⟯` such that `g x ∈ t x`
for all `x`.

This is a special case of `exists_contMDiffSection_forall_mem_convex_of_local` where `V` is the
trivial bundle. See also `exists_contMDiffMap_mem_convex_of_local_const`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803a8dde7798a7d126758430e4c7d5e2d933ed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
