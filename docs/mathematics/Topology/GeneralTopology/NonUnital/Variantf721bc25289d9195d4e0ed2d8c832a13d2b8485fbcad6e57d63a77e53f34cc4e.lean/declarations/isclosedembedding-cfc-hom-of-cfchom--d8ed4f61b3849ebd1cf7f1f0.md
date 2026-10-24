# isClosedEmbedding_cfcₙHom_of_cfcHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 754,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c522ace2-36a9-09c8-58a4-1dcf25e89373",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cce758a-bc9b-e157-e2a9-7345f8cb4dd2",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_cfcₙHom_of_cfcHom",
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
  "slug": "isclosedembedding-cfc-hom-of-cfchom--d8ed4f61b3849ebd1cf7f1f0",
  "source": {
    "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 754,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8ed4f61b3849ebd1cf7f1f09a95162b3ef51f6cea665e08127748104ce5035d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cce758a-bc9b-e157-e2a9-7345f8cb4dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_cfcₙHom_of_cfcHom {a : A} (ha : p a) :
    IsClosedEmbedding (cfcₙHom_of_cfcHom R ha) := by
  let f : C(spectrum R a, σₙ R a) :=
    ⟨_, continuous_inclusion <| spectrum_subset_quasispectrum R a⟩
  refine (cfcHom_isClosedEmbedding ha).comp <|
    (IsUniformInducing.isUniformEmbedding ⟨?_⟩).isClosedEmbedding
  have := uniformSpace_eq_inf_precomp_of_cover (β := R) f (0 : C(Unit, σₙ R a))
    (map_continuous f).isProperMap (map_continuous 0).isProperMap <| by
      simp only [← Subtype.val_injective.image_injective.eq_iff, f, ContinuousMap.coe_mk,
        ContinuousMap.coe_zero, range_zero, image_union, image_singleton,
        quasispectrum.coe_zero, ← range_comp, val_comp_inclusion, image_univ, Subtype.range_coe,
        quasispectrum_eq_spectrum_union_zero]
  simp_rw [ContinuousMapZero.instUniformSpace, this, uniformity_comap,
    @inf_uniformity _ (.comap _ _) (.comap _ _), uniformity_comap, Filter.comap_inf,
    Filter.comap_comap]
  refine .symm <| inf_eq_left.mpr <| le_top.trans <| eq_top_iff.mp ?_
  have : ∀ U ∈ 𝓤 (C(Unit, R)), (0, 0) ∈ U := fun U hU ↦ refl_mem_uniformity hU
  convert Filter.comap_const_of_mem this with ⟨u, v⟩ <;>
  ext ⟨x, rfl⟩ <;> [exact map_zero u; exact map_zero v]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488e8af4bb20e2115bde831a4265d2e61157d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
