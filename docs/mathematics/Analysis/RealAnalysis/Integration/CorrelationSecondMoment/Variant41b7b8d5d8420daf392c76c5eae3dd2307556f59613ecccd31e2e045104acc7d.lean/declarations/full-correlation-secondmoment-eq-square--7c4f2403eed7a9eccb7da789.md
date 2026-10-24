# full_correlation_secondMoment_eq_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5432b4778206a3762151b3f9a743298f61e7dceb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a510c780-bf70-9cc5-1d28-f166e567359b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25e259f8-943e-a9c0-f2a5-11827af00292",
  "kind": "theorem",
  "lexical_name": "full_correlation_secondMoment_eq_square",
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
  "slug": "full-correlation-secondmoment-eq-square--7c4f2403eed7a9eccb7da789",
  "source": {
    "blob": "5432b4778206a3762151b3f9a743298f61e7dceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c4f2403eed7a9eccb7da789b0f15a630ac3a79973fddc2eb82465fd93021879",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e259f8-943e-a9c0-f2a5-11827af00292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_correlation_secondMoment_eq_square (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) =
        (∫ x : ℝ, x * Real.exp (x / 2) *
          normalizedTest explicitSecondDerivative A x) ^ 2 := by
  let v := normalizedTest explicitSecondDerivative A
  let f : ℝ → ℝ := fun x ↦ Real.exp (x / 2) * v x
  let g : ℝ → ℝ := fun x ↦ Real.exp (x / 2) * v (-x)
  have he : Continuous (fun x : ℝ ↦ Real.exp (x / 2)) := by fun_prop
  have hv : Continuous v := (normalizedTest_contDiff A (by linarith)).continuous
  have hf : Continuous f := he.mul hv
  have hg : Continuous g := he.mul (hv.comp continuous_neg)
  have hcf : HasCompactSupport f :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  have hcg : HasCompactSupport g :=
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left
  have hfi : (∫ x, f x) = 0 := positive_pole_zero A hA
  have hgi : (∫ x, g x) = 0 := by
    have hr := integral_neg_eq_self
      (fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) volume
    simpa only [neg_neg, negative_pole_zero A hA] using hr
  have hgf : g = f := by
    funext x
    exact congrArg (Real.exp (x / 2) * ·) (normalizedTest_even A hA x)
  have hm : (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = ∫ t, t ^ 2 * (f ⋆ g) t := by
    apply integral_congr_ae
    filter_upwards [] with t
    rw [mul_assoc]
    have h := weighted_correlation_eq_convolution v (1 / 2) t
    simpa only [one_div, inv_mul_eq_div, correlation, sourceCorrelation, f, g, v] using
      congrArg (t ^ 2 * ·) h
  rw [hm, secondMoment_convolution_integral f g hf hg hcf hcg, hfi, hgi, hgf]
  simp only [mul_zero, zero_mul, zero_add, add_zero]
  have hfirst : (∫ x, x * f x) = ∫ x : ℝ, x * Real.exp (x / 2) * v x := by
    apply integral_congr_ae
    filter_upwards [] with x
    dsimp [f]
    ring
  rw [hfirst]
  ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment

#check FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.full_correlation_secondMoment_eq_square

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.normalizedTest_even
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.secondMoment_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.secondMoment_convolution_integral
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.weighted_normalizedTest_firstMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.weighted_correlation_secondMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondMoment.full_correlation_secondMoment_eq_square
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant41b7b8d5d8420daf392c76c5eae3dd2307556f59613ecccd31e2e045104acc7d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5432b4778206a3762151b3f9a743298f61e7dceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
