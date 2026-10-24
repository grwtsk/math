# EquicontinuousOn.comap_uniformOnFun_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c54d74f1-5ee4-3f4a-7f99-f91e335ef016",
  "kind": "theorem",
  "lexical_name": "EquicontinuousOn.comap_uniformOnFun_eq",
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
  "slug": "equicontinuouson-comap-uniformonfun-eq--24a7aefea4448e36849555b1",
  "source": {
    "blob": "3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a7aefea4448e36849555b1159bdd04c31f5a7d01db314e076dc41f77242f13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c54d74f1-5ee4-3f4a-7f99-f91e335ef016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousOn.comap_uniformOnFun_eq {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) :
    (UniformOnFun.uniformSpace X α 𝔖).comap F =
    (Pi.uniformSpace _).comap ((⋃₀ 𝔖).domRestrict ∘ F) := by
  -- Recall that the uniform structure on `X →ᵤ[𝔖] α` is the one induced by all the maps
  -- `K.domRestrict : (X →ᵤ[𝔖] α) → (K →ᵤ α)` for `K ∈ 𝔖`. Its pullback along `F`, which is
  -- the LHS of our goal, is thus the uniform structure induced by the maps
  -- `K.domRestrict ∘ F : ι → (K →ᵤ α)` for `K ∈ 𝔖`.
  have H1 : (UniformOnFun.uniformSpace X α 𝔖).comap F =
      ⨅ (K ∈ 𝔖), (UniformFun.uniformSpace _ _).comap (K.domRestrict ∘ F) := by
    simp_rw [UniformOnFun.uniformSpace, UniformSpace.comap_iInf, ← UniformSpace.comap_comap,
      UniformFun.ofFun, Equiv.coe_fn_mk, UniformOnFun.toFun, UniformOnFun.ofFun, Function.comp_def,
      UniformFun, Equiv.coe_fn_symm_mk]
  -- Now, note that a similar fact is true for the uniform structure on `X → α` induced by
  -- the map `(⋃₀ 𝔖).domRestrict : (X → α) → ((⋃₀ 𝔖) → α)`: it is equal to the one induced by
  -- all maps `K.domRestrict : (X → α) → (K → α)` for `K ∈ 𝔖`, which means that the RHS of our
  -- goal is the uniform structure induced by the maps `K.domRestrict ∘ F : ι → (K → α)`
  -- for `K ∈ 𝔖`.
  have H2 : (Pi.uniformSpace _).comap ((⋃₀ 𝔖).domRestrict ∘ F) =
      ⨅ (K ∈ 𝔖), (Pi.uniformSpace _).comap (K.domRestrict ∘ F) := by
    simp_rw [UniformSpace.comap_comap, Pi.uniformSpace_comap_restrict_sUnion (fun _ ↦ α) 𝔖,
      UniformSpace.comap_iInf]
  -- But, for `K ∈ 𝔖` fixed, we know that the uniform structures of `K →ᵤ α` and `K → α`
  -- induce, via the equicontinuous family `K.domRestrict ∘ F`, the same uniform structure on `ι`.
  have H3 : ∀ K ∈ 𝔖, (UniformFun.uniformSpace K α).comap (K.domRestrict ∘ F) =
      (Pi.uniformSpace _).comap (K.domRestrict ∘ F) := fun K hK ↦ by
    have : CompactSpace K := isCompact_iff_compactSpace.mp (𝔖_compact K hK)
    exact (equicontinuous_restrict_iff _ |>.mpr <| F_eqcont K hK).comap_uniformFun_eq
  -- Combining these three facts completes the proof.
  simp_rw [H1, H2, iInf_congr fun K ↦ iInf_congr fun hK ↦ H3 K hK]

/-- Let `X` be a topological space, `𝔖` a family of compact subsets of `X`, `α` a uniform space,
and `F : ι → (X → α)` a family which is equicontinuous on each `K ∈ 𝔖`. Then, the uniform
structures of uniform convergence on `𝔖` and pointwise convergence on `⋃₀ 𝔖` induce the same
uniform structure on `ι`.

In particular, pointwise convergence and compact convergence coincide on an equicontinuous
subset of `X → α`.

This is a version of `EquicontinuousOn.comap_uniformOnFun_eq` stated in terms of `IsUniformInducing`
for convenience. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
