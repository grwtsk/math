# actual_source_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce9ce565-6f8b-7a87-cfc0-e960e4b9754c",
  "kind": "theorem",
  "lexical_name": "actual_source_continuousOn",
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
  "slug": "actual-source-continuouson--18239c73706ac1384f561039",
  "source": {
    "blob": "e8a70d442bf35b30c939c4799450a9eb8229ebc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18239c73706ac1384f56103941d856b82d24c25293bbf4b8e020a594ce1b00d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9ce565-6f8b-7a87-cfc0-e960e4b9754c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_continuousOn (q : ℝ → ComplexL2)
    (hq : ∀ A : ℝ, 1 ≤ A →
      q A =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ContinuousOn q (Ici 1) := by
  intro A hA
  have hAp : 0 < A := by change 1 ≤ A at hA; linarith
  have hsub : Ici (1 : ℝ) ⊆ Ioi 0 := fun B hB => by
    change 1 ≤ B at hB
    change 0 < B
    linarith
  have hc := ((crossSourceIntegral_continuousOn hAp).mono hsub) A hA
  have ht : Tendsto (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x))
      (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) := by
    have hec : ContinuousWithinAt (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
        normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x))
        (Ici 1) A := continuousWithinAt_const.sub (continuousWithinAt_const.mul hc)
    have hself : (∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A x) = 1 := by
      simpa [pow_two] using normalized_square_integral A hA
    simpa only [hself, mul_one, sub_self] using hec.tendsto
  have heq : (fun B : ℝ => ‖q B - q A‖ ^ 2) =ᶠ[𝓝[Ici 1] A]
      (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
        normalizedTest explicitSecondDerivative B x *
          normalizedTest explicitSecondDerivative A x)) := by
    filter_upwards [self_mem_nhdsWithin] with B hB
    rw [norm_sub_sq (𝕜 := ℂ), actual_source_norm_sq hB (q B) (hq B hB),
      actual_source_norm_sq hA (q A) (hq A hA),
      actual_source_cross_inner (q A) (q B) (hq A hA) (hq B hB)]
    change 1 - 2 * (∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x *
        normalizedTest explicitSecondDerivative A x) + 1 = _
    ring
  have ht2 : Tendsto (fun B : ℝ => ‖q B - q A‖ ^ 2) (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) :=
    ht.congr' heq.symm
  have htn : Tendsto (fun B : ℝ => ‖q B - q A‖) (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  exact tendsto_iff_norm_sub_tendsto_zero.2 htn

/-- A total scale family, using the existing literal source class at positive scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8a70d442bf35b30c939c4799450a9eb8229ebc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
