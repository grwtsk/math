# actualRelativePsiTimeError_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e3f3d1d-c93a-74f5-e1aa-e2932b56f822",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_intervalIntegrable",
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
  "slug": "actualrelativepsitimeerror-intervalintegrable--f9d2348f1e15f6207b08c175",
  "source": {
    "blob": "8f51fdbf4c78164f5bc7a356a434df8ec531a350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant50651788d10febabb12bcdfb08554e256891e280907929751af6ec8c0dff055c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d2348f1e15f6207b08c17542968d3925d8942abc52a86b085e354e7c27713b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant50651788d10febabb12bcdfb08554e256891e280907929751af6ec8c0dff055c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e3f3d1d-c93a-74f5-e1aa-e2932b56f822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualRelativePsiTimeError volume 0 b := by
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using
      mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have hf : IntervalIntegrable actualCenteredMangoldtLogError volume 0 b :=
    he.add intervalIntegrable_const
  have hq := actualMangoldtErrorConvolution_absolutelyContinuous 1 hb
  have hiq : IntervalIntegrable (actualMangoldtErrorConvolution 1) volume 0 b :=
    hq.continuousOn.intervalIntegrable
  have hiex : IntervalIntegrable
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t)) volume 0 b :=
    (by fun_prop : Continuous
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t))).intervalIntegrable _ _
  apply ((hf.sub hiq).sub hiex).congr
  filter_upwards with t ht
  exact (actualRelativePsiTimeError_eq_one_convolution (by
    simpa only [uIcc_of_le hb, mem_Icc] using ht)).symm

/-- The freshly replayed actual PNT supplies a genuine subexponential time majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant50651788d10febabb12bcdfb08554e256891e280907929751af6ec8c0dff055c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant50651788d10febabb12bcdfb08554e256891e280907929751af6ec8c0dff055c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f51fdbf4c78164f5bc7a356a434df8ec531a350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
