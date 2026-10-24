# actualXiLaplace_integrableOn_of_future_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f80b49e-130c-0d0e-601f-d0699585d105",
  "kind": "theorem",
  "lexical_name": "actualXiLaplace_integrableOn_of_future_average",
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
  "slug": "actualxilaplace-integrableon-of-future-average--b53877ebec120d884191e20c",
  "source": {
    "blob": "018b783375b2c7473c330ffd2cefda523a5412e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53877ebec120d884191e20cfbd4a34e0d9a952eb793f4a3e7f901040ba4f62d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f80b49e-130c-0d0e-601f-d0699585d105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLaplace_integrableOn_of_future_average {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    IntegrableOn (fun t => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      (Ioi (Real.log 7)) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_tendsto
    (σ * ∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      (Real.log 7) (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : Real.log 7 ≤ b
    · have hg : IntervalIntegrable actualAnchoredXiTailPrimitive volume (Real.log 7) b :=
        (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn.intervalIntegrable
      exact (hg.mul_continuousOn (by fun_prop)).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · exact absolute_laplace_finite_tendsto hM hT₀ hσ haverage

/-- The genuine absolute Laplace integral retains the cumulative identity at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018b783375b2c7473c330ffd2cefda523a5412e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
