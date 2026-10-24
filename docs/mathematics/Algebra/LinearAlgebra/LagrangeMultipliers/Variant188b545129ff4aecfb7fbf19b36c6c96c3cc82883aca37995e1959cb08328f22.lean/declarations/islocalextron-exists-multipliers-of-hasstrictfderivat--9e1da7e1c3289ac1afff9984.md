# IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e54a657-13d3-8a14-85be-6a6c9615e1f1",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt",
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
  "slug": "islocalextron-exists-multipliers-of-hasstrictfderivat--9e1da7e1c3289ac1afff9984",
  "source": {
    "blob": "853bc00edc6435c84f8e934dd8a3fdabf461b2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1da7e1c3289ac1afff9984fb2de5349dd564a9924704909e43fc21daf72ede",
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

Occurrence: `result:3e54a657-13d3-8a14-85be-6a6c9615e1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt {ι : Type*} [Fintype ι]
    {f : ι → E → ℝ} {f' : ι → E →L[ℝ] ℝ} (hextr : IsLocalExtrOn φ {x | ∀ i, f i x = f i x₀} x₀)
    (hf' : ∀ i, HasStrictFDerivAt (f i) (f' i) x₀) (hφ' : HasStrictFDerivAt φ φ' x₀) :
    ∃ (Λ : ι → ℝ) (Λ₀ : ℝ), (Λ, Λ₀) ≠ 0 ∧ (∑ i, Λ i • f' i) + Λ₀ • φ' = 0 := by
  letI := Classical.decEq ι
  replace hextr : IsLocalExtrOn φ {x | (fun i => f i x) = fun i => f i x₀} x₀ := by
    simpa only [funext_iff] using hextr
  rcases hextr.exists_linear_map_of_hasStrictFDerivAt (hasStrictFDerivAt_pi.2 fun i => hf' i)
      hφ' with
    ⟨Λ, Λ₀, h0, hsum⟩
  rcases (LinearEquiv.piRing ℝ ℝ ι ℝ).symm.surjective Λ with ⟨Λ, rfl⟩
  refine ⟨Λ, Λ₀, ?_, ?_⟩
  · simpa only [Ne, Prod.ext_iff, LinearEquiv.map_eq_zero_iff, Prod.fst_zero] using h0
  · ext x; simpa [mul_comm] using hsum x

/-- Lagrange multipliers theorem. Let `f : ι → E → ℝ` be a finite family of functions.
Suppose that `φ : E → ℝ` has a local extremum on the set `{x | ∀ i, f i x = f i x₀}` at `x₀`.
Suppose that all functions `f i` as well as `φ` are strictly differentiable at `x₀`.
Then the derivatives `f' i : E → L[ℝ] ℝ` and `φ' : E →L[ℝ] ℝ` are linearly dependent.

See also `IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt` for a version that
that states existence of Lagrange multipliers `Λ` and `Λ₀` instead of using
`¬LinearIndependent ℝ _` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variant188b545129ff4aecfb7fbf19b36c6c96c3cc82883aca37995e1959cb08328f22.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853bc00edc6435c84f8e934dd8a3fdabf461b2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
