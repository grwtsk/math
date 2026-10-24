# sourceCorrelation_second_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06b6c92e-9e27-ec63-c341-787a0d985be3",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_second_deriv_abs_le",
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
  "slug": "sourcecorrelation-second-deriv-abs-le--cc8603a7b90d2323465f6a83",
  "source": {
    "blob": "dcb00583131d9522c9ca15a3331104c4f77dc223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8603a7b90d2323465f6a83bd57c92d21c66ea6f5b2f4b8220439bda9ce5a24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b6c92e-9e27-ec63-c341-787a0d985be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_second_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      65 / (3 * A ^ 2) := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Integrable (fun x ↦ f x ^ 2) := normalized_derivative_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) :=
    normalizedTest_deriv_product_integrable A t hA
  have nf : (∫ x, f x ^ 2) ≤ 65 / (3 * A ^ 2) :=
    EstimateSourceEnergyRefinement.normalized_derivative_energy_le A hA
  have ng : (∫ x, f (x - t) ^ 2) = ∫ x, f x ^ 2 :=
    integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, ng] at upper lower
  rw [sourceCorrelation_second_deriv_integral A t hA, abs_neg]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The actual first test derivative vanishes at both zero-extension seams and beyond. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcb00583131d9522c9ca15a3331104c4f77dc223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
