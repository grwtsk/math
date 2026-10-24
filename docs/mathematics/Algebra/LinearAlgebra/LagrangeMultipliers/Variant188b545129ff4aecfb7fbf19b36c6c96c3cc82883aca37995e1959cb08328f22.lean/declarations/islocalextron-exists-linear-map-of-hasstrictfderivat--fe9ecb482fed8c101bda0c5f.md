# IsLocalExtrOn.exists_linear_map_of_hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:854e2ab1-d725-1d8a-ef70-38c375c6a940",
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
  "slug": "islocalextron-exists-linear-map-of-hasstrictfderivat--fe9ecb482fed8c101bda0c5f",
  "source": {
    "blob": "853bc00edc6435c84f8e934dd8a3fdabf461b2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe9ecb482fed8c101bda0c5ff63cb4a86393caf3c305a7363184a5a2686f7966",
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

Occurrence: `result:854e2ab1-d725-1d8a-ef70-38c375c6a940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–89.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853bc00edc6435c84f8e934dd8a3fdabf461b2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
