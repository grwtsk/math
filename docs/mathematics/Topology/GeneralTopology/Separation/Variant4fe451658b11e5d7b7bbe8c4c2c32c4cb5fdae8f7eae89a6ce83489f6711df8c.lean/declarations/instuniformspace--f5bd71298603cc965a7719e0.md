# instUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e1fe031c3f537d0ff091f53bcb53a0caa783c6038bbc9918d18336276c8fc3",
  "kind": "instance",
  "lexical_name": "instUniformSpace",
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
  "slug": "instuniformspace--f5bd71298603cc965a7719e0",
  "source": {
    "blob": "8041057b0f000fc21fa6ad7206c20e3699305b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5bd71298603cc965a7719e05d30c33085662fed0fc2df4fcac63046f618d0f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e1fe031c3f537d0ff091f53bcb53a0caa783c6038bbc9918d18336276c8fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instUniformSpace : UniformSpace (SeparationQuotient α) where
  uniformity := map (Prod.map mk mk) (𝓤 α)
  symm := tendsto_map' <| tendsto_map.comp tendsto_swap_uniformity
  comp := fun t ht ↦ by
    rcases comp_open_symm_mem_uniformity_sets ht with ⟨U, hU, hUo, -, hUt⟩
    refine mem_of_superset (mem_lift' <| image_mem_map hU) ?_
    simp only [subset_def, Prod.forall, mem_compRel, mem_image, Prod.ext_iff]
    rintro _ _ ⟨_, ⟨⟨x, y⟩, hxyU, rfl, rfl⟩, ⟨⟨y', z⟩, hyzU, hy, rfl⟩⟩
    have : y' ⤳ y := (mk_eq_mk.1 hy).specializes
    exact @hUt (x, z) ⟨y', this.mem_open (UniformSpace.isOpen_ball _ hUo) hxyU, hyzU⟩
  nhds_eq_comap_uniformity := surjective_mk.forall.2 fun x ↦ comap_injective surjective_mk <| by
    conv_lhs => rw [comap_mk_nhds_mk, nhds_eq_comap_uniformity, ← comap_map_mk_uniformity]
    simp only [Filter.comap_comap, Function.comp_def, Prod.map_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8041057b0f000fc21fa6ad7206c20e3699305b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
