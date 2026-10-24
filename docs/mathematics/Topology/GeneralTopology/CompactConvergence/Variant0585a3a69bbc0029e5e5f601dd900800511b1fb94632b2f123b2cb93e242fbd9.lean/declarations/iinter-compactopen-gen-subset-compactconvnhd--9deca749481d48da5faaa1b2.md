# iInter_compactOpen_gen_subset_compactConvNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e9c83e-1a83-650a-a00e-00c7b9cf79ad",
  "kind": "theorem",
  "lexical_name": "iInter_compactOpen_gen_subset_compactConvNhd",
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
  "slug": "iinter-compactopen-gen-subset-compactconvnhd--9deca749481d48da5faaa1b2",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9deca749481d48da5faaa1b2a3ee38e7069468e95bf3123ac49acd6106618749",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e9c83e-1a83-650a-a00e-00c7b9cf79ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInter_compactOpen_gen_subset_compactConvNhd (hK : IsCompact K) (hV : V ∈ 𝓤 β) :
    ∃ (ι : Sort (u₁ + 1)) (_ : Fintype ι) (C : ι → Set α) (_hC : ∀ i, IsCompact (C i))
      (U : ι → Set β) (_hU : ∀ i, IsOpen (U i)),
      (f ∈ ⋂ i, CompactOpen.gen (C i) (U i)) ∧
        ⋂ i, CompactOpen.gen (C i) (U i) ⊆ compactConvNhd K V f := by
  obtain ⟨W, hW₁, hW₄, hW₂, hW₃⟩ := comp_open_symm_mem_uniformity_sets hV
  obtain ⟨Z, hZ₁, hZ₄, hZ₂, hZ₃⟩ := comp_open_symm_mem_uniformity_sets hW₁
  let U : α → Set α := fun x => f ⁻¹' ball (f x) Z
  have hU : ∀ x, IsOpen (U x) := fun x => f.continuous.isOpen_preimage _ (isOpen_ball _ hZ₄)
  have hUK : K ⊆ ⋃ x : K, U (x : K) := by
    intro x hx
    simp only [exists_prop, mem_iUnion, iUnion_coe_set, mem_preimage]
    exact ⟨(⟨x, hx⟩ : K), by simp [hx, mem_ball_self (f x) hZ₁]⟩
  obtain ⟨t, ht⟩ := hK.elim_finite_subcover _ (fun x : K => hU x.val) hUK
  let C : t → Set α := fun i => K ∩ closure (U ((i : K) : α))
  have hC : K ⊆ ⋃ i, C i := by
    rw [← K.inter_iUnion, subset_inter_iff]
    refine' ⟨Subset.rfl, ht.trans _⟩
    simp only [SetCoe.forall, Subtype.coe_mk, iUnion_subset_iff]
    exact fun x hx₁ hx₂ => subset_iUnion_of_subset (⟨_, hx₂⟩ : t) (by simp [subset_closure])
  have hfC : ∀ i : t, C i ⊆ f ⁻¹' ball (f ((i : K) : α)) W := by
    simp only [← image_subset_iff, ← mem_preimage]
    rintro ⟨⟨x, hx₁⟩, hx₂⟩
    have hZW : closure (ball (f x) Z) ⊆ ball (f x) W := by
      intro y hy
      obtain ⟨z, hz₁, hz₂⟩ := UniformSpace.mem_closure_iff_ball.mp hy hZ₁
      exact ball_mono hZ₃ _ (mem_ball_comp hz₂ ((mem_ball_symmetry hZ₂).mp hz₁))
    calc
      f '' (K ∩ closure (U x)) ⊆ f '' closure (U x) := image_subset _ (inter_subset_right _ _)
      _ ⊆ closure (f '' U x) := f.continuous.continuousOn.image_closure
      _ ⊆ closure (ball (f x) Z) := by
        apply closure_mono
        simp only [image_subset_iff]
        rfl
      _ ⊆ ball (f x) W := hZW

  refine'
    ⟨t, t.fintypeCoeSort, C, fun i => hK.inter_right isClosed_closure, fun i =>
      ball (f ((i : K) : α)) W, fun i => isOpen_ball _ hW₄, by simp [CompactOpen.gen, hfC],
      fun g hg x hx => hW₃ (mem_compRel.mpr _)⟩
  simp only [mem_iInter, CompactOpen.gen, mem_setOf_eq, image_subset_iff] at hg
  obtain ⟨y, hy⟩ := mem_iUnion.mp (hC hx)
  exact ⟨f y, (mem_ball_symmetry hW₂).mp (hfC y hy), mem_preimage.mp (hg y hy)⟩
#align continuous_map.Inter_compact_open_gen_subset_compact_conv_nhd ContinuousMap.iInter_compactOpen_gen_subset_compactConvNhd

/-- The compact-open topology is equal to the compact-convergence topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
