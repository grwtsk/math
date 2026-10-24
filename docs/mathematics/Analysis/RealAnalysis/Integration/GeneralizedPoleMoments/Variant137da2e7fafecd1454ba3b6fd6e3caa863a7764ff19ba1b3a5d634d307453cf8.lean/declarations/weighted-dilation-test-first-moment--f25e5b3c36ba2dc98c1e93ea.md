# weighted_dilation_test_first_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a3fe26f-0f8f-78e8-601e-8e0e46f1b0eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47488d39-41e5-6cfe-ce8d-19a1df4b2303",
  "kind": "theorem",
  "lexical_name": "weighted_dilation_test_first_moment",
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
  "slug": "weighted-dilation-test-first-moment--f25e5b3c36ba2dc98c1e93ea",
  "source": {
    "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f25e5b3c36ba2dc98c1e93ea9306204d509e43e617d2a04d441402e6a25f990d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47488d39-41e5-6cfe-ce8d-19a1df4b2303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_dilation_test_first_moment (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, x * Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      2 * σ * ∫ x, Real.exp (σ * x) * scaledBump A x := by
  have hpos : 0 < A := by linarith
  have ht : (fun x ↦ x * Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (Icc (-A) A).indicator (fun x ↦ x * Real.exp (σ * x) *
        (secondInterior A x - bumpInterior A x / 4)) := by
    rw [explicit_dilationTest_eq_indicator A hpos]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  have hct : Continuous (fun x ↦ x * Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4)) :=
    (continuous_id.mul (Real.continuous_exp.comp
      (continuous_const.mul continuous_id))).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))
  have hcb : Continuous (fun x ↦ Real.exp (σ * x) * bumpInterior A x) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)
  have hd := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ test_first_primitive_has_deriv_at A σ x hσ)
    ((hct.sub (continuous_const.mul hcb)).intervalIntegrable (-A) A)
  have his : IntervalIntegrable (fun x ↦ 2 * σ *
      (Real.exp (σ * x) * bumpInterior A x)) volume (-A) A :=
    (hcb.const_mul (2 * σ)).intervalIntegrable _ _
  rw [intervalIntegral.integral_sub (hct.intervalIntegrable _ _)
    his,
    intervalIntegral.integral_const_mul] at hd
  have he : testFirstPrimitive A σ A = 0 ∧ testFirstPrimitive A σ (-A) = 0 := by
    simp [testFirstPrimitive, (polePrimitive_endpoints A σ (ne_of_gt hpos)).1,
      (polePrimitive_endpoints A σ (ne_of_gt hpos)).2,
      (bumpInterior_endpoints A (ne_of_gt hpos)).1,
      (bumpInterior_endpoints A (ne_of_gt hpos)).2]
  rw [he.1, he.2] at hd
  rw [ht, weighted_bump_eq_indicator A σ hpos,
    zeroExtension_integral _ (-A) A (by linarith),
    zeroExtension_integral _ (-A) A (by linarith)]
  linarith

/-- Normalization retains the exact simple-pole first moment of the source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f4b4c71ba91299f9ad589a675405334844f092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
