# IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt_1d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f960dca-5475-da27-87b2-3b636bb0fc39",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt_1d",
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
  "slug": "islocalextron-exists-multipliers-of-hasstrictfderivat-1d--382b150fc7b429dbc254741f",
  "source": {
    "blob": "853bc00edc6435c84f8e934dd8a3fdabf461b2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:382b150fc7b429dbc254741f774208a3b0f2f8b130d711477740920e3ec3d7d6",
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

Occurrence: `result:4f960dca-5475-da27-87b2-3b636bb0fc39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt_1d {f : E → ℝ} {f' : E →L[ℝ] ℝ}
    (hextr : IsLocalExtrOn φ {x | f x = f x₀} x₀) (hf' : HasStrictFDerivAt f f' x₀)
    (hφ' : HasStrictFDerivAt φ φ' x₀) : ∃ a b : ℝ, (a, b) ≠ 0 ∧ a • f' + b • φ' = 0 := by
  obtain ⟨Λ, Λ₀, hΛ, hfΛ⟩ := hextr.exists_linear_map_of_hasStrictFDerivAt hf' hφ'
  refine ⟨Λ 1, Λ₀, ?_, ?_⟩
  · contrapose! hΛ
    simp only [Prod.mk_eq_zero] at hΛ ⊢
    refine ⟨LinearMap.ext fun x => ?_, hΛ.2⟩
    simpa [hΛ.1] using Λ.map_smul x 1
  · ext x
    have H₁ : Λ (f' x) = f' x * Λ 1 := by
      simpa only [mul_one, Algebra.id.smul_eq_mul] using Λ.map_smul (f' x) 1
    have H₂ : f' x * Λ 1 + Λ₀ * φ' x = 0 := by simpa only [Algebra.id.smul_eq_mul, H₁] using hfΛ x
    simpa [mul_comm] using H₂

/-- Lagrange multipliers theorem, 1d version. Let `f : ι → E → ℝ` be a finite family of functions.
Suppose that `φ : E → ℝ` has a local extremum on the set `{x | ∀ i, f i x = f i x₀}` at `x₀`.
Suppose that all functions `f i` as well as `φ` are strictly differentiable at `x₀`.
Then the derivatives `f' i : E → L[ℝ] ℝ` and `φ' : E →L[ℝ] ℝ` are linearly dependent:
there exist `Λ : ι → ℝ` and `Λ₀ : ℝ`, `(Λ, Λ₀) ≠ 0`, such that `∑ i, Λ i • f' i + Λ₀ • φ' = 0`.

See also `IsLocalExtrOn.linear_dependent_of_hasStrictFDerivAt` for a version that
states `¬LinearIndependent ℝ _` instead of existence of `Λ` and `Λ₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853bc00edc6435c84f8e934dd8a3fdabf461b2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
