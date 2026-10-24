# uniformSpaceOfCompactR1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31fec07ce8b35b44f92d651ed0122e6d5cfbd2b6583bc0110aec85a9cc910faa",
  "kind": "def",
  "lexical_name": "uniformSpaceOfCompactR1",
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
  "slug": "uniformspaceofcompactr1--d8338e7c2380a4f7a46942cb",
  "source": {
    "blob": "a6425f6af030fbda050508a094adaa2e5b5e5e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/OfCompactT2/Variante47e174031fec3719a22562227e4bf6f394b24652844471d8ddd5530b9bf6ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8338e7c2380a4f7a46942cb9b848f853949f5809542ee68d6702e38e5af9e88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfCompactT2/Variante47e174031fec3719a22562227e4bf6f394b24652844471d8ddd5530b9bf6ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31fec07ce8b35b44f92d651ed0122e6d5cfbd2b6583bc0110aec85a9cc910faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniformSpaceOfCompactR1 [TopologicalSpace γ] [CompactSpace γ] [R1Space γ] : UniformSpace γ where
  uniformity := 𝓝ˢ (diagonal γ)
  symm := continuous_swap.tendsto_nhdsSet fun _ => Eq.symm
  comp := by
      /-
        This is the difficult part of the proof. We need to prove that, for each neighborhood `W`
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
    have : NeBot (F ⊓ 𝓟 Vᶜ) := ⟨H⟩
    -- Hence compactness would give us a cluster point (x, y) for F ⊓ 𝓟 Vᶜ
    obtain ⟨⟨x, y⟩, hxy⟩ : ∃ p : γ × γ, ClusterPt p (F ⊓ 𝓟 Vᶜ) := exists_clusterPt_of_compactSpace _
    -- In particular (x, y) is a cluster point of 𝓟 Vᶜ, hence is not in the interior of V,
    -- so x and y are inseparable
    have clV : ClusterPt (x, y) (𝓟 <| Vᶜ) := hxy.of_inf_right
    have ninsep_xy : ¬Inseparable x y := by
      intro h
      rw [← mem_closure_iff_clusterPt, (h.prod .rfl).mem_closed_iff isClosed_closure,
        closure_compl] at clV
      apply clV
      rw [mem_interior_iff_mem_nhds]
      exact nhds_le_nhdsSet (mem_diagonal y) V_in
    -- Since γ is compact and Hausdorff, it is T₄, hence T₃.
    -- So there are closed neighborhoods V₁ and V₂ of x and y contained in
    -- disjoint open neighborhoods U₁ and U₂.
    obtain
      ⟨U₁, -, V₁, V₁_in, U₂, -, V₂, V₂_in, V₁_cl, V₂_cl, U₁_op, U₂_op, VU₁, VU₂, hU₁₂⟩ :=
      disjoint_nested_nhds_of_not_inseparable ninsep_xy
    -- We set U₃ := (V₁ ∪ V₂)ᶜ so that W := U₁ ×ˢ U₁ ∪ U₂ ×ˢ U₂ ∪ U₃ ×ˢ U₃ is an open
    -- neighborhood of Δ.
    let U₃ := (V₁ ∪ V₂)ᶜ
    have U₃_op : IsOpen U₃ := (V₁_cl.union V₂_cl).isOpen_compl
    let W := U₁ ×ˢ U₁ ∪ U₂ ×ˢ U₂ ∪ U₃ ×ˢ U₃
    have W_in : W ∈ 𝓝Δ := by
      rw [mem_nhdsSet_iff_forall]
      rintro ⟨z, z'⟩ hzz'
      refine IsOpen.mem_nhds ?_ ?_
      · apply_rules [IsOpen.union, IsOpen.prod]
      · cases hzz'
        simp only [W, U₃, mem_union, mem_prod]
        tauto_set
    -- So W ○ W ∈ F by definition of F
    have : W ○ W ∈ F := mem_lift' W_in
    -- And V₁ ×ˢ V₂ ∈ 𝓝 (x, y)
    have hV₁₂ : V₁ ×ˢ V₂ ∈ 𝓝 (x, y) := prod_mem_nhds V₁_in V₂_in
    -- But (x, y) is also a cluster point of F so (V₁ ×ˢ V₂) ∩ (W ○ W) ≠ ∅
    obtain ⟨⟨u, v⟩, ⟨u_in, v_in⟩, w, huw, hwv⟩ :=
      clusterPt_iff_nonempty.mp hxy.of_inf_left hV₁₂ this
    -- However the construction of W implies (V₁ ×ˢ V₂) ∩ (W ○ W) = ∅.
    simp only [W, U₃, mem_union, mem_prod] at huw hwv
    tauto_set
  nhds_eq_comap_uniformity x := by
    simp_rw [nhdsSet_diagonal, comap_iSup, nhds_prod_eq, comap_prod, Function.comp_def, comap_id']
    rw [iSup_split _ (Inseparable x)]
    conv_rhs =>
      congr
      · enter [1, i, 1, hi]
        rw [← hi.nhds_eq, comap_const_of_mem fun V => mem_of_mem_nhds]
      · enter [1, i, 1, hi]
        rw [(not_specializes_iff_exists_open.1 (mt Specializes.inseparable hi)).elim
          fun S hS => comap_const_of_notMem (hS.1.mem_nhds hS.2.1) hS.2.2]
    rw [iSup_subtype', @iSup_const _ _ _ _ ⟨⟨x, .rfl⟩⟩]
    simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfCompactT2/Variante47e174031fec3719a22562227e4bf6f394b24652844471d8ddd5530b9bf6ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfCompactT2/Variante47e174031fec3719a22562227e4bf6f394b24652844471d8ddd5530b9bf6ed2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6425f6af030fbda050508a094adaa2e5b5e5e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
