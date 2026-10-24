# withDensityᵥ_rnDeriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84330390-5267-293d-ad76-090b0851f798",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_rnDeriv_eq",
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
  "slug": "withdensity-rnderiv-eq--f0506dd2a561a34e7b891455",
  "source": {
    "blob": "b22a2fd8433e6af553a819db0af5731f6beb56b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0506dd2a561a34e7b89145565b07e3e6e7e62fab0e36fdd92bd6c3e75158bd9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84330390-5267-293d-ad76-090b0851f798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_rnDeriv_eq (s : SignedMeasure α) (μ : Measure α) [SigmaFinite μ]
    (h : s ≪ᵥ μ.toENNRealVectorMeasure) : μ.withDensityᵥ (s.rnDeriv μ) = s := by
  rw [absolutelyContinuous_ennreal_iff, (_ : μ.toENNRealVectorMeasure.ennrealToMeasure = μ),
    totalVariation_absolutelyContinuous_iff] at h
  · ext1 i hi
    rw [withDensityᵥ_apply (integrable_rnDeriv _ _) hi, rnDeriv, integral_sub,
      withDensity_rnDeriv_toReal_eq h.1 hi, withDensity_rnDeriv_toReal_eq h.2 hi]
    · conv_rhs => rw [← s.toSignedMeasure_toJordanDecomposition]
      erw [VectorMeasure.sub_apply]
      rw [toSignedMeasure_apply_measurable hi, toSignedMeasure_apply_measurable hi]
    all_goals
      rw [← integrableOn_univ]
      refine' IntegrableOn.restrict _ MeasurableSet.univ
      refine' ⟨_, hasFiniteIntegral_toReal_of_lintegral_ne_top _⟩
      · apply Measurable.aestronglyMeasurable
        measurability
      · rw [set_lintegral_univ]
        exact (lintegral_rnDeriv_lt_top _ _).ne
  · exact equivMeasure.right_inv μ
#align measure_theory.signed_measure.with_densityᵥ_rn_deriv_eq MeasureTheory.SignedMeasure.withDensityᵥ_rnDeriv_eq

/-- The Radon-Nikodym theorem for signed measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22a2fd8433e6af553a819db0af5731f6beb56b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
