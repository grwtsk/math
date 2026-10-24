# logarithmic_sqrt_lower_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c48fb9-86a9-3a83-993d-c8ebd2e0f1cd",
  "kind": "theorem",
  "lexical_name": "logarithmic_sqrt_lower_weight",
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
  "slug": "logarithmic-sqrt-lower-weight--9f6412041207c9eaad6ab69a",
  "source": {
    "blob": "63cb2d89740191e49b21b27186ccf0778a0d99e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 119,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6412041207c9eaad6ab69a6dcb0310c435a8ff6638fc0096eeb8404b51d12f",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c48fb9-86a9-3a83-993d-c8ebd2e0f1cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_sqrt_lower_weight :
    IntegrableOn (fun x : ℝ ↦ (-Real.log x) / Real.sqrt x) (Ioo 0 1) ∧
      (∫ x in Ioo (0 : ℝ) 1, (-Real.log x) / Real.sqrt x) = 4 := by
  let g : ℝ → ℝ := fun x ↦ (-Real.log x) / Real.sqrt x
  let h : ℝ → ℝ := fun u ↦ (-u) * Real.exp (u / 2)
  have reflection : (fun u : ℝ ↦ h (-u)) = fun u : ℝ ↦ u * Real.exp (-u / 2) := by
    funext u
    simp only [h, neg_neg]
  have reflectedAdmission := MeasurePreserving.integrableOn_comp_preimage
    (Measure.measurePreserving_neg (volume : Measure ℝ))
    (Homeomorph.neg ℝ).measurableEmbedding
    (f := h) (s := Iio 0)
  have admitted : IntegrableOn h (Iio 0) := by
    apply reflectedAdmission.mp
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_zero, reflection]
      using first_exponential_moment.1
  have reflectedValue := integral_comp_neg_Ioi 0 h
  rw [reflection, neg_zero, integral_Iic_eq_integral_Iio] at reflectedValue
  have hValue : (∫ u in Iio (0 : ℝ), h u) = 4 :=
    reflectedValue.symm.trans first_exponential_moment.2
  have image : Real.exp '' Iio (0 : ℝ) = Ioo (0 : ℝ) 1 := by
    rw [Real.image_exp_Iio, Real.exp_zero]
  have pullback : (fun u : ℝ ↦ |Real.exp u| • g (Real.exp u)) = h := by
    funext u
    rw [abs_of_pos (Real.exp_pos _), smul_eq_mul]
    exact lower_logarithmic_jacobian u
  have admission := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s := Iio (0 : ℝ)) measurableSet_Iio
    (fun u _ ↦ (Real.hasDerivAt_exp u).hasDerivWithinAt)
    (fun u _ v _ same ↦ Real.exp_injective same) g
  rw [image, pullback] at admission
  refine ⟨admission.mpr admitted, ?_⟩
  have substitution := integral_image_eq_integral_abs_deriv_smul
    (s := Iio (0 : ℝ)) measurableSet_Iio
    (fun u _ ↦ (Real.hasDerivAt_exp u).hasDerivWithinAt)
    (fun u _ v _ same ↦ Real.exp_injective same) g
  rw [image, pullback] at substitution
  exact substitution.trans hValue

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63cb2d89740191e49b21b27186ccf0778a0d99e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
