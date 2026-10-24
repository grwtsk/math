# IsOpen.exists_contMDiff_support_eq

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
      "line": 705,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:610cfaf8-d9e6-30f5-5d27-f95a6b8e9ed0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a921336e-2eec-327d-965b-3ba999b636fc",
  "kind": "theorem",
  "lexical_name": "IsOpen.exists_contMDiff_support_eq",
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
  "slug": "isopen-exists-contmdiff-support-eq--d0f6b1b3d7aebd663c2170e4",
  "source": {
    "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 705,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f6b1b3d7aebd663c2170e4f4fc74005df254e4a49d2541773cc98493610490",
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

Occurrence: `result:a921336e-2eec-327d-965b-3ba999b636fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.exists_contMDiff_support_eq {s : Set M} (hs : IsOpen s) :
    ∃ f : M → ℝ, f.support = s ∧ CMDiff n f ∧ ∀ x, 0 ≤ f x := by
  rcases SmoothPartitionOfUnity.exists_isSubordinate_chartAt_source I M with ⟨f, hf⟩
  have A : ∀ (c : M), ∃ g : H → ℝ,
      g.support = (chartAt H c).target ∩ (chartAt H c).symm ⁻¹' s ∧
      CMDiff n g ∧ Set.range g ⊆ Set.Icc 0 1 := by
    intro i
    apply IsOpen.exists_contMDiff_support_eq_aux
    exact OpenPartialHomeomorph.isOpen_inter_preimage_symm _ hs
  choose g g_supp g_diff hg using A
  have h'g : ∀ c x, 0 ≤ g c x := fun c x ↦ (hg c (mem_range_self (f := g c) x)).1
  have h''g : ∀ c x, 0 ≤ f c x * g c (chartAt H c x) :=
    fun c x ↦ mul_nonneg (f.nonneg c x) (h'g c _)
  refine ⟨fun x ↦ ∑ᶠ c, f c x * g c (chartAt H c x), ?_, ?_, ?_⟩
  · refine support_eq_iff.2 ⟨fun x hx ↦ ?_, fun x hx ↦ ?_⟩
    · apply ne_of_gt
      have B : ∃ c, 0 < f c x * g c (chartAt H c x) := by
        obtain ⟨c, hc⟩ : ∃ c, 0 < f c x := f.exists_pos_of_mem (mem_univ x)
        refine ⟨c, mul_pos hc ?_⟩
        apply lt_of_le_of_ne (h'g _ _) (Ne.symm _)
        rw [← mem_support, g_supp, ← mem_preimage, preimage_inter]
        have Hx : x ∈ tsupport (f c) := subset_tsupport _ (ne_of_gt hc)
        simp [(chartAt H c).left_inv (hf c Hx), hx, (chartAt H c).map_source (hf c Hx)]
      apply finsum_pos (fun c ↦ h''g c x) B
      apply (f.locallyFinite.point_finite x).subset
      apply compl_subset_compl.2
      rintro c (hc : f c x = 0)
      simpa only [mul_eq_zero] using! Or.inl hc
    · apply finsum_eq_zero_of_forall_eq_zero
      intro c
      by_cases Hx : x ∈ tsupport (f c)
      · suffices g c (chartAt H c x) = 0 by simp only [this, mul_zero]
        rw [← notMem_support, g_supp, ← mem_preimage, preimage_inter]
        contrapose hx
        simp only [mem_inter_iff, mem_preimage, (chartAt H c).left_inv (hf c Hx)] at hx
        exact hx.2
      · have : x ∉ support (f c) := by contrapose Hx; exact subset_tsupport _ Hx
        rw [notMem_support] at this
        simp [this]
  · apply SmoothPartitionOfUnity.contMDiff_finsum_smul
    intro c x hx
    apply (g_diff c (chartAt H c x)).comp
    exact contMDiffAt_of_mem_maximalAtlas (IsManifold.chart_mem_maximalAtlas _)
      (hf c hx)
  · intro x
    apply finsum_nonneg (fun c ↦ h''g c x)

/-- Given an open set `s` containing a closed set `t` in a finite-dimensional real manifold, there
exists a smooth function with support equal to `s`, taking values in `[0,1]`, and equal to `1`
exactly on `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803a8dde7798a7d126758430e4c7d5e2d933ed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
