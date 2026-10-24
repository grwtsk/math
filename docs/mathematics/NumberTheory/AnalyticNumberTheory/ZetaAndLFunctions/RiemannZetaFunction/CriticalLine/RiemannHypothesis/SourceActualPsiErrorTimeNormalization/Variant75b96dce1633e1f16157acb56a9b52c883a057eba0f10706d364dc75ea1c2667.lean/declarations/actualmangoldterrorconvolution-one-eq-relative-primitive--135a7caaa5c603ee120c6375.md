# actualMangoldtErrorConvolution_one_eq_relative_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5282a714-6156-dd0d-cc15-58a41d068e43",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_one_eq_relative_primitive",
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
  "slug": "actualmangoldterrorconvolution-one-eq-relative-primitive--135a7caaa5c603ee120c6375",
  "source": {
    "blob": "ef26aac91e62786417054507da9bd8bc26bd9ec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant75b96dce1633e1f16157acb56a9b52c883a057eba0f10706d364dc75ea1c2667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135a7caaa5c603ee120c6375367272ddab4f0938e6c17d1c6b42bef3bea39903",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant75b96dce1633e1f16157acb56a9b52c883a057eba0f10706d364dc75ea1c2667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5282a714-6156-dd0d-cc15-58a41d068e43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_one_eq_relative_primitive
    {t : ℝ} (ht : 0 ≤ t) :
    actualMangoldtErrorConvolution 1 t = (∫ r in 0..t, actualRelativePsiTimeError r) +
      (Real.eulerMascheroniConstant + 1) * (1 - Real.exp (-t)) := by
  have hQ := actualMangoldtErrorConvolution_absolutelyContinuous 1 ht
  have hi := hQ.integral_deriv_eq_sub
  have he : (∫ r in 0..t, deriv (actualMangoldtErrorConvolution 1) r) =
      ∫ r in 0..t, actualRelativePsiTimeError r +
        (Real.eulerMascheroniConstant + 1) * Real.exp (-r) := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualMangoldtErrorConvolution_ae_hasDerivAt 1 ht] with r hr hm
    rw [(hr (uIoc_subset_uIcc hm)).deriv]
    have hr0 : 0 ≤ r := by
      have hh := uIoc_subset_uIcc hm
      rw [uIcc_of_le ht] at hh
      exact hh.1
    rw [actualRelativePsiTimeError_eq_convolution hr0]
    ring
  have hx : IntervalIntegrable (fun r : ℝ => Real.exp (-r)) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r))).intervalIntegrable _ _
  have hdx (r : ℝ) : HasDerivAt (fun r : ℝ => -Real.exp (-r)) (Real.exp (-r)) r := by
    have h := (((hasDerivAt_id r).neg).exp).neg
    exact h.congr_deriv (by ring)
  have hex : (∫ r in 0..t, Real.exp (-r)) = 1 - Real.exp (-t) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hdx r) hx]
    simp only [neg_zero, Real.exp_zero]
    ring
  rw [he, actualMangoldtErrorConvolution_at_zero] at hi
  rw [intervalIntegral.integral_add (actualRelativePsiTimeError_intervalIntegrable ht)
    (hx.const_mul _), intervalIntegral.integral_const_mul, hex] at hi
  linarith

/-- The actual finite normalization retains the endpoint one with its correct sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant75b96dce1633e1f16157acb56a9b52c883a057eba0f10706d364dc75ea1c2667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiErrorTimeNormalization/Variant75b96dce1633e1f16157acb56a9b52c883a057eba0f10706d364dc75ea1c2667.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef26aac91e62786417054507da9bd8bc26bd9ec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
