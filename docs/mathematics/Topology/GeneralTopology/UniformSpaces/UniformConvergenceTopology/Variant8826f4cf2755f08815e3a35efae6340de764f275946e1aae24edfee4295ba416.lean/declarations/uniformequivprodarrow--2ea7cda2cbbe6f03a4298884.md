# uniformEquivProdArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24749cff1166441d96eabf281588462fba0e84a5bee4a7caa37536834fd75665",
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
  "slug": "uniformequivprodarrow--2ea7cda2cbbe6f03a4298884",
  "source": {
    "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 888,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ea7cda2cbbe6f03a4298884bc1c45b05962628cc8f181f80ba09ed7781cf6b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24749cff1166441d96eabf281588462fba0e84a5bee4a7caa37536834fd75665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–916.

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
  ((UniformOnFun.ofFun 𝔖).symm.trans <|
    (Equiv.arrowProdEquivProdArrow _ _ _).trans <|
      (UniformOnFun.ofFun 𝔖).prodCongr (UniformOnFun.ofFun 𝔖)).toUniformEquivOfUniformInducing $ by
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
#align uniform_on_fun.uniform_equiv_prod_arrow UniformOnFun.uniformEquivProdArrow

-- the relevant diagram commutes by definition
variable (𝔖) (δ : ι → Type*) [∀ i, UniformSpace (δ i)]

/-- The natural bijection between `α → Π i, δ i` and `Π i, α → δ i`, upgraded to a uniform
isomorphism between `α →ᵤ[𝔖] (Π i, δ i)` and `Π i, α →ᵤ[𝔖] δ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
