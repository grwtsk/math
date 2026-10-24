# IsUniformGroup.of_left_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2582cf31-9e5f-c45c-d223-10cbe8e60b15",
  "kind": "theorem",
  "lexical_name": "IsUniformGroup.of_left_right",
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
  "slug": "isuniformgroup-of-left-right--4d8208dcb266e49b0d0977ff",
  "source": {
    "blob": "d402323ea598a9e547043be96dce8346ec4d7c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 489,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8208dcb266e49b0d0977ff75e1e9c54238868ddd2c54ddf876fa73d3764d4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2582cf31-9e5f-c45c-d223-10cbe8e60b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniformGroup.of_left_right : IsUniformGroup β where
  uniformContinuous_div := by
    let φ : (β × β) × (β × β) → β := fun ⟨⟨x₁, x₂⟩, ⟨y₁, y₂⟩⟩ ↦ x₂ * y₂⁻¹ * y₁ * x₁⁻¹
    let ψ : (β × β) × (β × β) → β := fun ⟨⟨x₁, x₂⟩, ⟨y₁, y₂⟩⟩ ↦ (x₁⁻¹ * x₂) * (y₂⁻¹ * y₁)
    let g : (β × β) × (β × β) → β := fun ⟨⟨x₁, x₂⟩, ⟨y₁, y₂⟩⟩ ↦ x₁
    suffices Tendsto φ (𝓤 β ×ˢ 𝓤 β) (𝓝 1) by
      rw [UniformContinuous, uniformity_eq_comap_mul_inv_nhds_one β, tendsto_comap_iff,
        uniformity_prod_eq_prod, tendsto_map'_iff]
      simpa [Function.comp_def, div_eq_mul_inv, ← mul_assoc]
    have φ_ψ_conj : φ = g * ψ * g⁻¹ := by
      ext
      simp [φ, ψ, g, mul_assoc]
    have ψ_tendsto : Tendsto ψ (𝓤 β ×ˢ 𝓤 β) (𝓝 1) := by
      rw [← one_mul 1]
      refine .mul ?_ ?_
      · rw [uniformity_eq_comap_inv_mul_nhds_one]
        exact tendsto_comap.comp tendsto_fst
      · rw [uniformity_eq_comap_inv_mul_nhds_one_swapped]
        exact tendsto_comap.comp tendsto_snd
    exact φ_ψ_conj ▸ ψ_tendsto.conj_nhds_one g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d402323ea598a9e547043be96dce8346ec4d7c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
