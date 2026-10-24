# uniformEquivProdArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c448fcfdcc53af6ecd032cd2e929965c5ae93863907014b1bcd44dffeabcd21",
  "kind": "def",
  "lexical_name": "uniformEquivProdArrow",
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
  "slug": "uniformequivprodarrow--c6c5d6f701ec08c576c7bf48",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 999,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6c5d6f701ec08c576c7bf48f43f00d2a3963c5ffa554d21ea2eab5510e3836d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c448fcfdcc53af6ecd032cd2e929965c5ae93863907014b1bcd44dffeabcd21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 999–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def uniformEquivProdArrow [UniformSpace γ] :
    (α →ᵤ[𝔖] β × γ) ≃ᵤ (α →ᵤ[𝔖] β) × (α →ᵤ[𝔖] γ) :=
  -- Denote `φ` this bijection. We want to show that
  -- `comap φ (𝒱(α, β, 𝔖, uβ) × 𝒱(α, γ, 𝔖, uγ)) = 𝒱(α, β × γ, 𝔖, uβ × uγ)`.
  -- But `uβ × uγ` is defined as `comap fst uβ ⊓ comap snd uγ`, so we just have to apply
  -- `UniformOnFun.inf_eq` and `UniformOnFun.comap_eq`,
  -- which leaves us to check that some square commutes.
  -- We could also deduce this from `UniformFun.uniformEquivProdArrow`,
  -- but it turns out to be more annoying.
  ((UniformOnFun.ofFun 𝔖).symm.trans <| (Equiv.arrowProdEquivProdArrow _ _ _).trans <|
    (UniformOnFun.ofFun 𝔖).prodCongr (UniformOnFun.ofFun 𝔖)).toUniformEquivOfIsUniformInducing <| by
      constructor
      rw [uniformity_prod, comap_inf, comap_comap, comap_comap]
      have H := @UniformOnFun.inf_eq α (β × γ) 𝔖
        (UniformSpace.comap Prod.fst ‹_›) (UniformSpace.comap Prod.snd ‹_›)
      apply_fun (fun u ↦ @uniformity (α →ᵤ[𝔖] β × γ) u) at H
      convert H.symm using 1
      rw [UniformOnFun.comap_eq, UniformOnFun.comap_eq]
      erw [inf_uniformity]
      rw [uniformity_comap, uniformity_comap]
      rfl
-- the relevant diagram commutes by definition

variable (𝔖) (δ : ι → Type*) [∀ i, UniformSpace (δ i)] in
/-- The natural bijection between `α → Π i, δ i` and `Π i, α → δ i`, upgraded to a uniform
isomorphism between `α →ᵤ[𝔖] (Π i, δ i)` and `Π i, α →ᵤ[𝔖] δ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
