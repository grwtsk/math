# crossSourceIntegral_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43abafa2-f69e-24e2-8f13-39a66284b87d",
  "kind": "theorem",
  "lexical_name": "crossSourceIntegral_continuousOn",
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
  "slug": "crosssourceintegral-continuouson--b8567b4621ffb546e402215a",
  "source": {
    "blob": "e8a70d442bf35b30c939c4799450a9eb8229ebc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8567b4621ffb546e402215aa50dcfd2b1e75fcd311094f847dbed98b0d38c5a",
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

Occurrence: `result:43abafa2-f69e-24e2-8f13-39a66284b87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossSourceIntegral_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (fun B : ℝ => ∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x)
      (Ioi 0) := by
  apply continuousOn_integral_of_compact_support (μ := volume) (k := Icc (-A) A) isCompact_Icc
  · exact normalizedSource_continuousOn_joint.mul
      ((normalizedTest_contDiff A hA).continuous.comp continuous_snd).continuousOn
  · intro B x _ hx
    have ha : A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have : x < 0 := by linarith
        rw [abs_of_neg this]
        linarith
      · exact le_trans hx.le (le_abs_self _)
    simp [normalizedTest_zero_of_le_abs A x hA ha]

/-- The actual source representatives determine their full real cross inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8a70d442bf35b30c939c4799450a9eb8229ebc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
