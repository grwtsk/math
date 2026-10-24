# separationSetoid.uniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e09ea2e87d649f3134cfc36811118cd880b9bc6bb26a2e11a04e75bd33d0702",
  "kind": "instance",
  "lexical_name": "separationSetoid.uniformSpace",
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
  "slug": "separationsetoid-uniformspace--b563cd6058a794902c51a3a8",
  "source": {
    "blob": "fbf215bfb5ba000afee27bfe16348a9b24912d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b563cd6058a794902c51a3a8c54bf7484895ab84f70df905514559c24f212a8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e09ea2e87d649f3134cfc36811118cd880b9bc6bb26a2e11a04e75bd33d0702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance separationSetoid.uniformSpace {α : Type u} [UniformSpace α] :
    UniformSpace (Quotient (separationSetoid α)) where
  toTopologicalSpace := instTopologicalSpaceQuotient
  uniformity := map (fun p : α × α => (⟦p.1⟧, ⟦p.2⟧)) (𝓤 α)
  refl := le_trans (by simp [Quotient.exists_rep]) (Filter.map_mono refl_le_uniformity)
  symm := tendsto_map' <| tendsto_map.comp tendsto_swap_uniformity
  comp s hs := by
    rcases comp_open_symm_mem_uniformity_sets hs with ⟨U, hU, hUo, -, hUs⟩
    refine' mem_of_superset (mem_lift' <| image_mem_map hU) ?_
    simp only [subset_def, Prod.forall, mem_compRel, mem_image, Prod.ext_iff]
    rintro _ _ ⟨_, ⟨⟨x, y⟩, hxyU, rfl, rfl⟩, ⟨⟨y', z⟩, hyzU, hy, rfl⟩⟩
    have : y' ⤳ y := separationRel_iff_specializes.1 (Quotient.exact hy)
    exact @hUs (x, z) ⟨y', this.mem_open (UniformSpace.isOpen_ball _ hUo) hxyU, hyzU⟩
  isOpen_uniformity s := isOpen_coinduced.trans <| by
    simp only [_root_.isOpen_uniformity, forall_quotient_iff, mem_map', mem_setOf_eq]
    refine forall₂_congr fun x _ => ⟨fun h => ?_, fun h => mem_of_superset h ?_⟩
    · rcases comp_mem_uniformity_sets h with ⟨t, ht, hts⟩
      refine mem_of_superset ht fun (y, z) hyz hyx => @hts (x, z) ⟨y, ?_, hyz⟩ rfl
      exact Quotient.exact hyx.symm _ ht
    · exact fun y hy hyx => hy <| congr_arg _ hyx
#align uniform_space.separation_setoid.uniform_space UniformSpace.separationSetoid.uniformSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf215bfb5ba000afee27bfe16348a9b24912d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
