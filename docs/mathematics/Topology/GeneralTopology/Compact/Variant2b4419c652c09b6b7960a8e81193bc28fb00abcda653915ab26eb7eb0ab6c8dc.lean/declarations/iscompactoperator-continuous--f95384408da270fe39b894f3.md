# IsCompactOperator.continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d57121-c6ff-08d7-f5af-472fe7f822cd",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.continuous",
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
  "slug": "iscompactoperator-continuous--f95384408da270fe39b894f3",
  "source": {
    "blob": "a092fcc377f7e54eb29c593926656c7c86bb3acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95384408da270fe39b894f343ea671054d2de23be577a4335de471f7d1bb6c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d57121-c6ff-08d7-f5af-472fe7f822cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.continuous {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) :
    Continuous f := by
  letI : UniformSpace M₂ := IsTopologicalAddGroup.toUniformSpace _
  haveI : IsUniformAddGroup M₂ := isUniformAddGroup_of_addCommGroup
  -- Since `f` is linear, we only need to show that it is continuous at zero.
  -- Let `U` be a neighborhood of `0` in `M₂`.
  refine continuous_of_continuousAt_zero f fun U hU => ?_
  rw [map_zero] at hU
  -- The compactness of `f` gives us a compact set `K : Set M₂` such that `f ⁻¹' K` is a
  -- neighborhood of `0` in `M₁`.
  rcases hf with ⟨K, hK, hKf⟩
  -- But any compact set is totally bounded, hence Von-Neumann bounded. Thus, `K` absorbs `U`.
  -- This gives `r > 0` such that `∀ a : 𝕜₂, r ≤ ‖a‖ → K ⊆ a • U`.
  rcases (hK.totallyBounded.isVonNBounded 𝕜₂ hU).exists_pos with ⟨r, hr, hrU⟩
  -- Choose `c : 𝕜₂` with `r < ‖c‖`.
  rcases NormedField.exists_lt_norm 𝕜₁ r with ⟨c, hc⟩
  have hcnz : c ≠ 0 := ne_zero_of_norm_ne_zero (hr.trans hc).ne.symm
  -- We have `f ⁻¹' ((σ₁₂ c⁻¹) • K) = c⁻¹ • f ⁻¹' K ∈ 𝓝 0`. Thus, showing that
  -- `(σ₁₂ c⁻¹) • K ⊆ U` is enough to deduce that `f ⁻¹' U ∈ 𝓝 0`.
  suffices (σ₁₂ <| c⁻¹) • K ⊆ U by
    refine mem_of_superset ?_ this
    have : IsUnit c⁻¹ := hcnz.isUnit.inv
    rwa [mem_map, this.preimage_smul_setₛₗ σ₁₂, set_smul_mem_nhds_zero_iff (inv_ne_zero hcnz)]
  -- Since `σ₁₂ c⁻¹` = `(σ₁₂ c)⁻¹`, we have to prove that `K ⊆ σ₁₂ c • U`.
  rw [map_inv₀, ← subset_smul_set_iff₀ ((map_ne_zero σ₁₂).mpr hcnz)]
  -- But `σ₁₂` is isometric, so `‖σ₁₂ c‖ = ‖c‖ > r`, which concludes the argument since
  -- `∀ a : 𝕜₂, r ≤ ‖a‖ → K ⊆ a • U`.
  refine hrU (σ₁₂ c) ?_
  rw [RingHomIsometric.is_iso]
  exact hc.le

/-- Upgrade a compact `LinearMap` to a `ContinuousLinearMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant2b4419c652c09b6b7960a8e81193bc28fb00abcda653915ab26eb7eb0ab6c8dc.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a092fcc377f7e54eb29c593926656c7c86bb3acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
