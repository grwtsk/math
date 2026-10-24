# properlyDiscontinuousSMul_iff_properSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ddfd8e54eb2bca64007989e7ec62ba0e722274d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee0e0a501f6e0f1308526a04d6b388ca21a7e986f2f8eab2c39e4554cd6e36f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32e25a9-a6bf-4f21-295c-16221c674132",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb7c253e-808e-ce03-7c2d-b62a6088ab35",
  "kind": "theorem",
  "lexical_name": "properlyDiscontinuousSMul_iff_properSMul",
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
  "slug": "properlydiscontinuoussmul-iff-propersmul--52409fb300eb1ad6b2ba5d0a",
  "source": {
    "blob": "3ddfd8e54eb2bca64007989e7ec62ba0e722274d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/ProperlyDiscontinuous/Variantee0e0a501f6e0f1308526a04d6b388ca21a7e986f2f8eab2c39e4554cd6e36f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52409fb300eb1ad6b2ba5d0a4f9ba05c7d2a65c254c1f62d8799572a88b54f6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperlyDiscontinuous/Variantee0e0a501f6e0f1308526a04d6b388ca21a7e986f2f8eab2c39e4554cd6e36f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb7c253e-808e-ce03-7c2d-b62a6088ab35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properlyDiscontinuousSMul_iff_properSMul [T2Space X] [DiscreteTopology G]
    [ContinuousConstSMul G X] [CompactlyGeneratedSpace (X × X)] :
    ProperlyDiscontinuousSMul G X ↔ ProperSMul G X := by
  constructor
  · intro h
    rw [properSMul_iff]
    -- We have to show that `f : (g, x) ↦ (g • x, x)` is proper.
    -- Continuity follows from continuity of `g • ·` and the fact that `G` has the
    -- discrete topology, thanks to `continuous_of_partial_of_discrete`.
    -- Because `X × X` is compactly generated, to show that f is proper
    -- it is enough to show that the preimage of a compact set `K` is compact.
    refine isProperMap_iff_isCompact_preimage.2
      ⟨(continuous_prod_of_discrete_left.2 continuous_const_smul).prodMk (by fun_prop),
      fun K hK ↦ ?_⟩
    -- We set `K' := pr₁(K) ∪ pr₂(K)`, which is compact because `K` is compact and `pr₁` and
    -- `pr₂` are continuous. We halso have that `K ⊆ K' × K'`, and `K` is closed because `X` is T2.
    -- Therefore `f ⁻¹ (K)` is also closed and `f ⁻¹ (K) ⊆ f ⁻¹ (K' × K')`, thus it suffices to
    -- show that `f ⁻¹ (K' × K')` is compact.
    let K' := fst '' K ∪ snd '' K
    have hK' : IsCompact K' := (hK.image continuous_fst).union (hK.image continuous_snd)
    let E := {g : G | Set.Nonempty ((g • ·) '' K' ∩ K')}
    -- The set `E` is finite because the action is properly discontinuous.
    have fin : Set.Finite E := by
      simp_rw [E, nonempty_iff_ne_empty]
      exact h.finite_disjoint_inter_image hK' hK'
    -- Therefore we can rewrite `f ⁻¹ (K' × K')` as a finite union of compact sets.
    have : (fun gx : G × X ↦ (gx.1 • gx.2, gx.2)) ⁻¹' (K' ×ˢ K') =
        ⋃ g ∈ E, {g} ×ˢ ((g⁻¹ • ·) '' K' ∩ K') := by
      ext gx
      simp only [mem_preimage, mem_prod, nonempty_def, mem_inter_iff, mem_image,
        exists_exists_and_eq_and, mem_setOf_eq, singleton_prod, iUnion_exists, biUnion_and',
        mem_iUnion, exists_prop, E]
      constructor
      · exact fun ⟨gx_mem, x_mem⟩ ↦ ⟨gx.2, x_mem, gx.1, gx_mem,
          ⟨gx.2, ⟨⟨gx.1 • gx.2, gx_mem, by simp⟩, x_mem⟩, rfl⟩⟩
      · rintro ⟨x, -, g, -, ⟨-, ⟨⟨x', x'_mem, rfl⟩, ginvx'_mem⟩, rfl⟩⟩
        exact ⟨by simpa, by simpa⟩
    -- Indeed each set in this finite union is the product of a singleton and
    -- the intersection of the compact `K'` with its image by some element `g`, and this image is
    -- compact because `g • ·` is continuous.
    have : IsCompact ((fun gx : G × X ↦ (gx.1 • gx.2, gx.2)) ⁻¹' (K' ×ˢ K')) :=
      this ▸ fin.isCompact_biUnion fun g hg ↦
        isCompact_singleton.prod <| (hK'.image <| continuous_const_smul _).inter hK'
    -- We conclude as explained above.
    exact this.of_isClosed_subset (hK.isClosed.preimage <|
      (continuous_prod_of_discrete_left.2 continuous_const_smul).prodMk (by fun_prop)) <|
      preimage_mono fun x hx ↦ ⟨Or.inl ⟨x, hx, rfl⟩, Or.inr ⟨x, hx, rfl⟩⟩
  · intro h; constructor
    intro K L hK hL
    simp_rw [← nonempty_iff_ne_empty]
    -- We want to show that a subset of `G` is finite, but as `G` has the discrete topology it
    -- is enough to show that this subset is compact.
    apply IsCompact.finite_of_discrete
    -- Now set `h : (g, x) ↦ (g⁻¹ • x, x)`, because `f` is proper by hypothesis, so is `h`.
    have : IsProperMap (fun gx : G × X ↦ (gx.1⁻¹ • gx.2, gx.2)) :=
      (IsProperMap.prodMap (Homeomorph.isProperMap (Homeomorph.inv G)) isProperMap_id).comp <|
        ProperSMul.isProperMap_smul_pair
    --But we also have that `{g | Set.Nonempty ((g • ·) '' K ∩ L)} = h ⁻¹ (K × L)`, which
    -- concludes the proof.
    have eq : {g | Set.Nonempty ((g • ·) '' K ∩ L)} =
        fst '' ((fun gx : G × X ↦ (gx.1⁻¹ • gx.2, gx.2)) ⁻¹' (K ×ˢ L)) := by
      simp_rw [nonempty_def]
      ext g; constructor
      · exact fun ⟨_, ⟨x, x_mem, rfl⟩, hx⟩ ↦ ⟨(g, g • x), ⟨by simpa, hx⟩, rfl⟩
      · rintro ⟨gx, hgx, rfl⟩
        exact ⟨gx.2, ⟨gx.1⁻¹ • gx.2, hgx.1, by simp⟩, hgx.2⟩
    exact eq ▸ IsCompact.image (this.isCompact_preimage <| hK.prod hL) continuous_fst
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperlyDiscontinuous/Variantee0e0a501f6e0f1308526a04d6b388ca21a7e986f2f8eab2c39e4554cd6e36f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperlyDiscontinuous/Variantee0e0a501f6e0f1308526a04d6b388ca21a7e986f2f8eab2c39e4554cd6e36f3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddfd8e54eb2bca64007989e7ec62ba0e722274d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
