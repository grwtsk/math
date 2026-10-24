# IsLocalExtrOn.exists_linear_map_of_hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f497cd710587d4e191e5cd8092441a80cf5db620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11e6585d-ba83-5efd-94a0-f3a69e28f0d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52c5da15-33bf-1943-8fdc-f9bc0b730474",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.exists_linear_map_of_hasStrictFDerivAt",
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
  "slug": "islocalextron-exists-linear-map-of-hasstrictfderivat--fb819e9bd0ba8a9bedd61d96",
  "source": {
    "blob": "f497cd710587d4e191e5cd8092441a80cf5db620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb819e9bd0ba8a9bedd61d96bcbe8758bde5c0ef667e9e5de833dde23c8846ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c5da15-33bf-1943-8fdc-f9bc0b730474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalExtrOn.exists_linear_map_of_hasStrictFDerivAt
    (hextr : IsLocalExtrOn φ {x | f x = f x₀} x₀) (hf' : HasStrictFDerivAt f f' x₀)
    (hφ' : HasStrictFDerivAt φ φ' x₀) :
    ∃ (Λ : Module.Dual ℝ F) (Λ₀ : ℝ), (Λ, Λ₀) ≠ 0 ∧ ∀ x, Λ (f' x) + Λ₀ • φ' x = 0 := by
  rcases Submodule.exists_le_ker_of_lt_top _
      (lt_top_iff_ne_top.2 <| hextr.range_ne_top_of_hasStrictFDerivAt hf' hφ') with
    ⟨Λ', h0, hΛ'⟩
  set e : ((F →ₗ[ℝ] ℝ) × ℝ) ≃ₗ[ℝ] F × ℝ →ₗ[ℝ] ℝ :=
    ((LinearEquiv.refl ℝ (F →ₗ[ℝ] ℝ)).prodCongr (LinearMap.ringLmapEquivSelf ℝ ℝ ℝ).symm).trans
      (LinearMap.coprodEquiv ℝ)
  rcases e.surjective Λ' with ⟨⟨Λ, Λ₀⟩, rfl⟩
  refine ⟨Λ, Λ₀, e.map_ne_zero_iff.1 h0, fun x => ?_⟩
  convert LinearMap.congr_fun (LinearMap.range_le_ker_iff.1 hΛ') x using 1
  -- squeezed `simp [mul_comm]` to speed up elaboration
  simp only [e, smul_eq_mul, LinearEquiv.trans_apply, LinearEquiv.prodCongr_apply,
    LinearEquiv.refl_apply, LinearMap.ringLmapEquivSelf_symm_apply, LinearMap.coprodEquiv_apply,
    ContinuousLinearMap.coe_prod, LinearMap.coprod_comp_prod, LinearMap.add_apply,
    LinearMap.coe_comp, ContinuousLinearMap.coe_coe, Function.comp_apply, LinearMap.coe_smulRight,
    Module.End.one_apply, mul_comm]

/-- Lagrange multipliers theorem: if `φ : E → ℝ` has a local extremum on the set `{x | f x = f x₀}`
at `x₀`, and both `f : E → ℝ` and `φ` are strictly differentiable at `x₀`, then there exist
`a b : ℝ` such that `(a, b) ≠ 0` and `a • f' + b • φ' = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f497cd710587d4e191e5cd8092441a80cf5db620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
