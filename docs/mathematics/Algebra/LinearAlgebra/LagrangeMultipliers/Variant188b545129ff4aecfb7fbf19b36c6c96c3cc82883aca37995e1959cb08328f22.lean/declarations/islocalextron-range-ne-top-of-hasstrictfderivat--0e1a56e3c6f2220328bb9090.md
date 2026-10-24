# IsLocalExtrOn.range_ne_top_of_hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b15d6ed-c588-66a6-8534-ad0a1357b0ed",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.range_ne_top_of_hasStrictFDerivAt",
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
  "slug": "islocalextron-range-ne-top-of-hasstrictfderivat--0e1a56e3c6f2220328bb9090",
  "source": {
    "blob": "853bc00edc6435c84f8e934dd8a3fdabf461b2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1a56e3c6f2220328bb90902f213aabb5ee622b5fab4a098dab64d8d485bde1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b15d6ed-c588-66a6-8534-ad0a1357b0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalExtrOn.range_ne_top_of_hasStrictFDerivAt
    (hextr : IsLocalExtrOn φ {x | f x = f x₀} x₀) (hf' : HasStrictFDerivAt f f' x₀)
    (hφ' : HasStrictFDerivAt φ φ' x₀) : LinearMap.range (f'.prod φ') ≠ ⊤ := by
  intro htop
  set fφ := fun x => (f x, φ x)
  have A : map φ (𝓝[f ⁻¹' {f x₀}] x₀) = 𝓝 (φ x₀) := by
    change map (Prod.snd ∘ fφ) (𝓝[fφ ⁻¹' {p | p.1 = f x₀}] x₀) = 𝓝 (φ x₀)
    rw [← map_map, nhdsWithin, map_inf_principal_preimage,
      (hf'.prodMk hφ').map_nhds_eq_of_surj htop]
    exact map_snd_nhdsWithin _
  exact hextr.not_nhds_le_map A.ge

/-- Lagrange multipliers theorem: if `φ : E → ℝ` has a local extremum on the set `{x | f x = f x₀}`
at `x₀`, both `f : E → F` and `φ` are strictly differentiable at `x₀`, and the codomain of `f` is
a complete space, then there exist `Λ : dual ℝ F` and `Λ₀ : ℝ` such that `(Λ, Λ₀) ≠ 0` and
`Λ (f' x) + Λ₀ • φ' x = 0` for all `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853bc00edc6435c84f8e934dd8a3fdabf461b2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
