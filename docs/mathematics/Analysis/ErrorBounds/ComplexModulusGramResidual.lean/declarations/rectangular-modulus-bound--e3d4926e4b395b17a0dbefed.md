# rectangular_modulus_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb1b286f-045d-0792-6599-e383f1cd1539",
  "kind": "theorem",
  "lexical_name": "rectangular_modulus_bound",
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
  "slug": "rectangular-modulus-bound--e3d4926e4b395b17a0dbefed",
  "source": {
    "blob": "50f2ce40a11d73bb68f0793b49f2d3d470b63396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 63,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3d4926e4b395b17a0dbefed111211567496420434bbdc4b2692aed364060955",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb1b286f-045d-0792-6599-e383f1cd1539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangular_modulus_bound (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (gain : τ → ι → ℂ) (residual : ι → ℂ) (r : ℝ)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i)
    (columnBound : ∀ j, (∑ i, nextWeight i * ‖gain i j‖) ≤ r * weight j) :
    modulusMass nextWeight (fun i => ∑ j, gain i j * residual j) ≤
      r * modulusMass weight residual := by
  have each (i : τ) : ‖∑ j, gain i j * residual j‖ ≤
      ∑ j, ‖gain i j‖ * ‖residual j‖ := by
    simpa only [norm_mul] using
      (norm_sum_le Finset.univ (fun j => gain i j * residual j))
  unfold modulusMass
  calc
    _ ≤ ∑ i, nextWeight i * (∑ j, ‖gain i j‖ * ‖residual j‖) :=
      Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_left (each i) (nextWeightsNonnegative i)
    _ = ∑ j, (∑ i, nextWeight i * ‖gain i j‖) * ‖residual j‖ := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ ∑ j, (r * weight j) * ‖residual j‖ :=
      Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound j) (norm_nonneg _)
    _ = _ := by simp only [Finset.mul_sum, mul_assoc]

/-- The conjugate pair lift retains both indices and their relative phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f2ce40a11d73bb68f0793b49f2d3d470b63396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
