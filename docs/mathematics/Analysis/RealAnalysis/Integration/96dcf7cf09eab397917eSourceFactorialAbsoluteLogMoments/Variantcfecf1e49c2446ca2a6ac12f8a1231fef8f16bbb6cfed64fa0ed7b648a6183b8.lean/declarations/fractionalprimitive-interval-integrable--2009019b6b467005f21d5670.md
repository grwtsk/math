# fractionalPrimitive_interval_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:283775af-d1a0-675b-2c51-633e5bfa512a",
  "kind": "theorem",
  "lexical_name": "fractionalPrimitive_interval_integrable",
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
  "slug": "fractionalprimitive-interval-integrable--2009019b6b467005f21d5670",
  "source": {
    "blob": "478195b180bf52aecd246b29638b0c0e1fbeb4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2009019b6b467005f21d5670caecdad81d937d4c72f0e411c52cc39efa1d4c4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:283775af-d1a0-675b-2c51-633e5bfa512a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fractionalPrimitive_interval_integrable {y : ℝ} (hy : 1 ≤ y) :
    IntervalIntegrable (fun t : ℝ => Int.fract t / t) volume 1 y := by
  have hc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 y) :=
    continuousOn_id.inv₀ (fun t ht => by
      simpa only [id_eq] using (ne_of_gt (by linarith [ht.1] : 0 < t)))
  have hi : IntervalIntegrable (fun t : ℝ => t⁻¹) volume 1 y :=
    hc.intervalIntegrable_of_Icc hy
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mpr
  have hii := (intervalIntegrable_iff_integrableOn_Icc_of_le hy).mp hi
  have h := hii.bdd_mul (measurable_fract.aestronglyMeasurable.restrict) (by
    filter_upwards with t
    simpa only [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg t)]
      using (Int.fract_lt_one t).le)
  change Integrable (fun t : ℝ => Int.fract t / t) (volume.restrict (Icc 1 y))
  simpa only [div_eq_mul_inv] using h

/-- Upper signed growth is bounded without assigning a sign to the actual defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478195b180bf52aecd246b29638b0c0e1fbeb4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
