# Equicontinuous.tendsto_uniformFun_iff_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86892cdd-a228-d7a4-91a1-981435b24acb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e823abd-1136-51d3-bce1-1e2bdf09901f",
  "kind": "theorem",
  "lexical_name": "Equicontinuous.tendsto_uniformFun_iff_pi",
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
  "slug": "equicontinuous-tendsto-uniformfun-iff-pi--bbfa64dd534ff23dcb19480a",
  "source": {
    "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbfa64dd534ff23dcb19480aca07fc31e62e45ae620b80d4839f41d4345eb2f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e823abd-1136-51d3-bce1-1e2bdf09901f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equicontinuous.tendsto_uniformFun_iff_pi [CompactSpace X]
    (F_eqcont : Equicontinuous F) (ℱ : Filter ι) (f : X → α) :
    Tendsto (UniformFun.ofFun ∘ F) ℱ (𝓝 <| UniformFun.ofFun f) ↔
    Tendsto F ℱ (𝓝 f) := by
  -- Assume `ℱ` is non trivial.
  rcases ℱ.eq_or_neBot with rfl | ℱ_ne
  · simp
  constructor <;> intro H
  -- The forward direction is always true, the interesting part is the converse.
  · exact UniformFun.uniformContinuous_toFun.continuous.tendsto _|>.comp H
  -- To prove it, assume that `F` tends to `f` *pointwise* along `ℱ`.
  · set S : Set (X → α) := closure (range F)
    set 𝒢 : Filter S := comap (↑) (map F ℱ)
    -- We would like to use `Equicontinuous.comap_uniformFun_eq`, but applying it to `F` is not
    -- enough since `f` has no reason to be in the range of `F`.
    -- Instead, we will apply it to the inclusion `(↑) : S → (X → α)` where `S` is the closure of
    -- the range of `F` *for the product topology*.
    -- We know that `S` is still equicontinuous...
    have hS : S.Equicontinuous := closure' (by rwa [equicontinuous_iff_range] at F_eqcont)
      continuous_id
    -- ... hence, as announced, the product topology and uniform convergence topology
    -- coincide on `S`.
    have ind : IsInducing (UniformFun.ofFun ∘ (↑) : S → X →ᵤ α) :=
      hS.inducing_uniformFun_iff_pi.mpr ⟨rfl⟩
    -- By construction, `f` is in `S`.
    have f_mem : f ∈ S := mem_closure_of_tendsto H range_mem_map
    -- To conclude, we just have to translate our hypothesis and goal as statements about
    -- `S`, on which we know the two topologies at play coincide.
    -- For this, we define a filter on `S` by `𝒢 := comap (↑) (map F ℱ)`, and note that
    -- it satisfies `map (↑) 𝒢 = map F ℱ`. Thus, both our hypothesis and our goal
    -- can be rewritten as `𝒢 ≤ 𝓝 f`, where the neighborhood filter in the RHS corresponds
    -- to one of the two topologies at play on `S`. Since they coincide, we are done.
    have h𝒢ℱ : map (↑) 𝒢 = map F ℱ := Filter.map_comap_of_mem
      (Subtype.range_coe ▸ mem_of_superset range_mem_map subset_closure)
    have H' : Tendsto id 𝒢 (𝓝 ⟨f, f_mem⟩) := by
      rwa [tendsto_id', nhds_induced, ← map_le_iff_le_comap, h𝒢ℱ]
    rwa [ind.tendsto_nhds_iff, comp_id, ← tendsto_map'_iff, h𝒢ℱ] at H'

/-- Let `X` be a topological space, `𝔖` a family of compact subsets of `X`, `α` a uniform space,
and `F : ι → (X → α)` a family which is equicontinuous on each `K ∈ 𝔖`. Then, the uniform
structures of uniform convergence on `𝔖` and pointwise convergence on `⋃₀ 𝔖` induce the same
uniform structure on `ι`.

In particular, pointwise convergence and compact convergence coincide on an equicontinuous
subset of `X → α`.

Consider using `EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'` and
`EquicontinuousOn.inducing_uniformOnFun_iff_pi'` instead to avoid rewriting instances,
as well as their unprimed versions in case `𝔖` covers `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3069f071cbafced3f95c479d48b9d209b2213cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
