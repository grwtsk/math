# actualXiComplexLaplace_integrableOn_of_future_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0613f53f-6e61-a403-9174-8febd9b7a86e",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_integrableOn_of_future_average",
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
  "slug": "actualxicomplexlaplace-integrableon-of-future-average--915d21bb5b629e3bbaf0ff3c",
  "source": {
    "blob": "85f64fd556bd9deb467d1f428e5f4b339b40788b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiConditionalComplexLaplace/Variantfb2f59960b172b9bf1bb6ba9479cae5794c107f75445498254b8c1d66a46b9c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:915d21bb5b629e3bbaf0ff3cf629d1df11555a9434d6baec611fcb90aaa701d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiConditionalComplexLaplace/Variantfb2f59960b172b9bf1bb6ba9479cae5794c107f75445498254b8c1d66a46b9c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0613f53f-6e61-a403-9174-8febd9b7a86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_integrableOn_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hr := (actualXiLaplace_integrableOn_of_future_average hM hT₀ hz haverage).norm
  have hc : ContinuousOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) :=
    ((Complex.continuous_ofReal.comp_continuousOn primitive_continuousOn_Ici).mul
      (by fun_prop)).mono Ioi_subset_Ici_self
  apply hr.mono' (hc.aestronglyMeasurable measurableSet_Ioi)
  filter_upwards [] with t
  exact (actualXiComplexLaplaceKernel_norm_eq z t).le

/-- The same literal transform keeps the proved real finite-prefix payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiConditionalComplexLaplace/Variantfb2f59960b172b9bf1bb6ba9479cae5794c107f75445498254b8c1d66a46b9c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiConditionalComplexLaplace/Variantfb2f59960b172b9bf1bb6ba9479cae5794c107f75445498254b8c1d66a46b9c4.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85f64fd556bd9deb467d1f428e5f4b339b40788b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
