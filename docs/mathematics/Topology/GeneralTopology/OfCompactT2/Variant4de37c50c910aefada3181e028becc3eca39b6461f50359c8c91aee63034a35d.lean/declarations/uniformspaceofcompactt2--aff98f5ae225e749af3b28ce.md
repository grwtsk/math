# uniformSpaceOfCompactT2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d302dfcbd9c485a72c5dc64a479238b75edf235af5af012d190d2a72bce9c03f",
  "kind": "def",
  "lexical_name": "uniformSpaceOfCompactT2",
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
  "slug": "uniformspaceofcompactt2--aff98f5ae225e749af3b28ce",
  "source": {
    "blob": "96b445219a9245feb7ead9c4e7196e04a74ff30e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/OfCompactT2/Variant4de37c50c910aefada3181e028becc3eca39b6461f50359c8c91aee63034a35d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff98f5ae225e749af3b28cec59640deec0e7eeced2fe43bf5268bdb705c541b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfCompactT2/Variant4de37c50c910aefada3181e028becc3eca39b6461f50359c8c91aee63034a35d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d302dfcbd9c485a72c5dc64a479238b75edf235af5af012d190d2a72bce9c03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniformSpaceOfCompactT2 [TopologicalSpace γ] [CompactSpace γ] [T2Space γ] : UniformSpace γ where
  uniformity := 𝓝ˢ (diagonal γ)
  symm := continuous_swap.tendsto_nhdsSet fun _ => Eq.symm
  comp := by
    /-  This is the difficult part of the proof. We need to prove that, for each neighborhood `W`
        of the diagonal `Δ`, there exists a smaller neighborhood `V` such that `V ○ V ⊆ W`.
        -/
    set 𝓝Δ := 𝓝ˢ (diagonal γ)
    -- The filter of neighborhoods of Δ
    set F := 𝓝Δ.lift' fun s : Set (γ × γ) => s ○ s
    -- Compositions of neighborhoods of Δ
    -- If this weren't true, then there would be V ∈ 𝓝Δ such that F ⊓ 𝓟 Vᶜ ≠ ⊥
    rw [le_iff_forall_inf_principal_compl]
    intro V V_in
    by_contra H
    haveI : NeBot (F ⊓ 𝓟 Vᶜ) := ⟨H⟩
    -- Hence compactness would give us a cluster point (x, y) for F ⊓ 𝓟 Vᶜ
    obtain ⟨⟨x, y⟩, hxy⟩ : ∃ p : γ × γ, ClusterPt p (F ⊓ 𝓟 Vᶜ) := exists_clusterPt_of_compactSpace _
    -- In particular (x, y) is a cluster point of 𝓟 Vᶜ, hence is not in the interior of V,
    -- and a fortiori not in Δ, so x ≠ y
    have clV : ClusterPt (x, y) (𝓟 <| Vᶜ) := hxy.of_inf_right
    have : (x, y) ∉ interior V := by
      have : (x, y) ∈ closure Vᶜ := by rwa [mem_closure_iff_clusterPt]
      rwa [closure_compl] at this
    have diag_subset : diagonal γ ⊆ interior V := subset_interior_iff_mem_nhdsSet.2 V_in
    have x_ne_y : x ≠ y := mt (@diag_subset (x, y)) this
    -- Since γ is compact and Hausdorff, it is T₄, hence T₃.
    -- So there are closed neighborhoods V₁ and V₂ of x and y contained in
    -- disjoint open neighborhoods U₁ and U₂.
    obtain
      ⟨U₁, _, V₁, V₁_in, U₂, _, V₂, V₂_in, V₁_cl, V₂_cl, U₁_op, U₂_op, VU₁, VU₂, hU₁₂⟩ :=
      disjoint_nested_nhds x_ne_y
    -- We set U₃ := (V₁ ∪ V₂)ᶜ so that W := U₁ ×ˢ U₁ ∪ U₂ ×ˢ U₂ ∪ U₃ ×ˢ U₃ is an open
    -- neighborhood of Δ.
    let U₃ := (V₁ ∪ V₂)ᶜ
    have U₃_op : IsOpen U₃ := (V₁_cl.union V₂_cl).isOpen_compl
    let W := U₁ ×ˢ U₁ ∪ U₂ ×ˢ U₂ ∪ U₃ ×ˢ U₃
    have W_in : W ∈ 𝓝Δ := by
      rw [mem_nhdsSet_iff_forall]
      rintro ⟨z, z'⟩ (rfl : z = z')
      refine IsOpen.mem_nhds ?_ ?_
      · apply_rules [IsOpen.union, IsOpen.prod]
      · simp only [W, mem_union, mem_prod, and_self_iff]
        exact (_root_.em _).imp_left fun h => union_subset_union VU₁ VU₂ h
    -- So W ○ W ∈ F by definition of F
    have : W ○ W ∈ F := by simpa only using mem_lift' W_in
    -- And V₁ ×ˢ V₂ ∈ 𝓝 (x, y)
    have hV₁₂ : V₁ ×ˢ V₂ ∈ 𝓝 (x, y) := prod_mem_nhds V₁_in V₂_in
    -- But (x, y) is also a cluster point of F so (V₁ ×ˢ V₂) ∩ (W ○ W) ≠ ∅
    -- However the construction of W implies (V₁ ×ˢ V₂) ∩ (W ○ W) = ∅.
    -- Indeed assume for contradiction there is some (u, v) in the intersection.
    obtain ⟨⟨u, v⟩, ⟨u_in, v_in⟩, w, huw, hwv⟩ :=
      clusterPt_iff_nonempty.mp hxy.of_inf_left hV₁₂ this
    -- So u ∈ V₁, v ∈ V₂, and there exists some w such that (u, w) ∈ W and (w ,v) ∈ W.
    -- Because u is in V₁ which is disjoint from U₂ and U₃, (u, w) ∈ W forces (u, w) ∈ U₁ ×ˢ U₁.
    have uw_in : (u, w) ∈ U₁ ×ˢ U₁ :=
      (huw.resolve_right fun h => h.1 <| Or.inl u_in).resolve_right fun h =>
        hU₁₂.le_bot ⟨VU₁ u_in, h.1⟩
    -- Similarly, because v ∈ V₂, (w ,v) ∈ W forces (w, v) ∈ U₂ ×ˢ U₂.
    have wv_in : (w, v) ∈ U₂ ×ˢ U₂ :=
      (hwv.resolve_right fun h => h.2 <| Or.inr v_in).resolve_left fun h =>
        hU₁₂.le_bot ⟨h.2, VU₂ v_in⟩
    -- Hence w ∈ U₁ ∩ U₂ which is empty.
    -- So we have a contradiction
    exact hU₁₂.le_bot ⟨uw_in.2, wv_in.1⟩
  nhds_eq_comap_uniformity x := by
    simp_rw [nhdsSet_diagonal, comap_iSup, nhds_prod_eq, comap_prod, Function.comp_def, comap_id']
    rw [iSup_split_single _ x, comap_const_of_mem fun V => mem_of_mem_nhds]
    suffices ∀ y ≠ x, comap (fun _ : γ ↦ x) (𝓝 y) ⊓ 𝓝 y ≤ 𝓝 x by simpa
    intro y hxy
    simp [comap_const_of_notMem (compl_singleton_mem_nhds hxy) (not_not_intro rfl)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfCompactT2/Variant4de37c50c910aefada3181e028becc3eca39b6461f50359c8c91aee63034a35d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfCompactT2/Variant4de37c50c910aefada3181e028becc3eca39b6461f50359c8c91aee63034a35d.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b445219a9245feb7ead9c4e7196e04a74ff30e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
