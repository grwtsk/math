# generalized_pole_moment_zero

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
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4a31f4d-79b7-6c0f-97f8-2075a56029b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80a3edfa-2f5f-95e7-cbad-256ed10efe7e",
  "kind": "theorem",
  "lexical_name": "generalized_pole_moment_zero",
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
  "slug": "generalized-pole-moment-zero--753928a00a6db6405f8e2afc",
  "source": {
    "blob": "96f4b4c71ba91299f9ad589a675405334844f092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753928a00a6db6405f8e2afcf97090d9e0daa024723034ac54ad5a278e8c79da",
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

Occurrence: `result:80a3edfa-2f5f-95e7-cbad-256ed10efe7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalized_pole_moment_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ t, t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  let v := normalizedTest explicitSecondDerivative A
  let f : ℝ → ℝ := fun x ↦ Real.exp (σ * x) * v x
  let g : ℝ → ℝ := fun x ↦ Real.exp (σ * x) * v (-x)
  have hv : Continuous v := (normalizedTest_contDiff A (by linarith)).continuous
  have hf : Continuous f := (Real.continuous_exp.comp
    (continuous_const.mul continuous_id)).mul hv
  have hg : Continuous g := (Real.continuous_exp.comp
    (continuous_const.mul continuous_id)).mul (hv.comp continuous_neg)
  have hcf : HasCompactSupport f :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  have hcg : HasCompactSupport g :=
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left
  have hzplus : (∫ x, f x) = 0 := weighted_normalizedTest_integral_zero A σ hA hσ
  have hzminus : (∫ x, g x) = 0 := by
    have he := integral_neg_eq_self (fun x ↦ Real.exp ((-σ) * x) * v x) volume
    have hn := weighted_normalizedTest_integral_zero A (-σ) hA (by simpa using hσ)
    simpa only [neg_mul_neg] using he.trans hn
  have heq (t : ℝ) : t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t = t * (f ⋆ g) t := by
    rw [mul_assoc]
    exact congrArg (fun z : ℝ ↦ t * z) (weighted_correlation_eq_convolution v σ t)
  simp_rw [heq]
  rw [integral_first_moment_convolution f g hf hg hcf hcg, hzplus, hzminus]
  ring

/-- The generalized positive-pole moment is a genuine zero integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant137da2e7fafecd1454ba3b6fd6e3caa863a7764ff19ba1b3a5d634d307453cf8.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f4b4c71ba91299f9ad589a675405334844f092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
