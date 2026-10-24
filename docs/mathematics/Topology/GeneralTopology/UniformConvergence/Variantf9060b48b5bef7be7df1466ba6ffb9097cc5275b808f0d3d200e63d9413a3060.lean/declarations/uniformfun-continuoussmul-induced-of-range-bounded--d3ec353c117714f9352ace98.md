# UniformFun.continuousSMul_induced_of_range_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7417890a-d3fd-ab6b-3fff-577304f52499",
  "kind": "lemma",
  "lexical_name": "UniformFun.continuousSMul_induced_of_range_bounded",
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
  "slug": "uniformfun-continuoussmul-induced-of-range-bounded--d3ec353c117714f9352ace98",
  "source": {
    "blob": "96e13c0b433559b8454804c8dbe1465fba1841dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergence/Variantf9060b48b5bef7be7df1466ba6ffb9097cc5275b808f0d3d200e63d9413a3060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ec353c117714f9352ace985bbb5e1142030a409bddec1f143824ae75abd533",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergence/Variantf9060b48b5bef7be7df1466ba6ffb9097cc5275b808f0d3d200e63d9413a3060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7417890a-d3fd-ab6b-3fff-577304f52499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformFun.continuousSMul_induced_of_range_bounded (φ : hom)
    (hφ : IsInducing (ofFun ∘ φ)) (h : ∀ u : H, Bornology.IsVonNBounded 𝕜 (Set.range (φ u))) :
    ContinuousSMul 𝕜 H := by
  have : IsTopologicalAddGroup H :=
    let ofFun' : (α → E) →+ (α →ᵤ E) := AddMonoidHom.id _
    IsInducing.isTopologicalAddGroup (ofFun'.comp (φ : H →+ (α → E))) hφ
  have hb : (𝓝 (0 : H)).HasBasis (· ∈ 𝓝 (0 : E)) fun V ↦ {u | ∀ x, φ u x ∈ V} := by
    simp only [hφ.nhds_eq_comap, Function.comp_apply, map_zero]
    exact UniformFun.hasBasis_nhds_zero.comap _
  apply ContinuousSMul.of_basis_zero hb
  · intro U hU
    have : Tendsto (fun x : 𝕜 × E ↦ x.1 • x.2) (𝓝 0) (𝓝 0) :=
      continuous_smul.tendsto' _ _ (zero_smul _ _)
    rcases ((Filter.basis_sets _).prod_nhds (Filter.basis_sets _)).tendsto_left_iff.1 this U hU
      with ⟨⟨V, W⟩, ⟨hV, hW⟩, hVW⟩
    refine ⟨V, hV, W, hW, Set.smul_subset_iff.2 fun a ha u hu x ↦ ?_⟩
    rw [map_smul]
    exact hVW (Set.mk_mem_prod ha (hu x))
  · intro c U hU
    have : Tendsto (c • · : E → E) (𝓝 0) (𝓝 0) :=
      (continuous_const_smul c).tendsto' _ _ (smul_zero _)
    refine ⟨_, this hU, fun u hu x ↦ ?_⟩
    simpa only [map_smul] using! hu x
  · intro u U hU
    simp only [Set.mem_ofPred_eq, map_smul, Pi.smul_apply]
    simpa only [Set.mapsTo_range_iff] using (h u hU).eventually_nhds_zero (mem_of_mem_nhds hU)

/-- Let `E` be a TVS, `𝔖 : Set (Set α)` and `H` a submodule of `α →ᵤ[𝔖] E`. If the image of any
`S ∈ 𝔖` by any `u ∈ H` is bounded (in the sense of `Bornology.IsVonNBounded`), then `H`,
equipped with the topology of `𝔖`-convergence, is a TVS.

For convenience, we don't literally ask for `H : Submodule (α →ᵤ[𝔖] E)`. Instead, we prove the
result for any vector space `H` equipped with a linear inducing to `α →ᵤ[𝔖] E`, which is often
easier to use. We also state the `Submodule` version as
`UniformOnFun.continuousSMul_submodule_of_image_bounded`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergence/Variantf9060b48b5bef7be7df1466ba6ffb9097cc5275b808f0d3d200e63d9413a3060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergence/Variantf9060b48b5bef7be7df1466ba6ffb9097cc5275b808f0d3d200e63d9413a3060.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e13c0b433559b8454804c8dbe1465fba1841dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
