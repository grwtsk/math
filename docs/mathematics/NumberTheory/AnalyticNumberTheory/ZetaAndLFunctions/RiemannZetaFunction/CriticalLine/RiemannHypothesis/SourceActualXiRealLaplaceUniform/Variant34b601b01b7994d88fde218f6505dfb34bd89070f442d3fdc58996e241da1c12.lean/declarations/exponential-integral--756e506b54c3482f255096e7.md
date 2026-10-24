# exponential_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b5f7be3-631a-b248-fc61-8058822d2d21",
  "kind": "theorem",
  "lexical_name": "exponential_integral",
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
  "slug": "exponential-integral--756e506b54c3482f255096e7",
  "source": {
    "blob": "cc82975d2ff76021dde51c01caafdc26a3eb4676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756e506b54c3482f255096e7ca77377af034fd03ba91c0932db245841581d7d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b5f7be3-631a-b248-fc61-8058822d2d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exponential_integral {δ : ℝ} (hδ : 0 < δ) {T : ℝ} :
    (∫ t in Real.log 7..T, Real.exp (-δ * t)) =
      (Real.exp (-δ * Real.log 7) - Real.exp (-δ * T)) / δ := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => Real.exp (-δ * t) / (-δ))
      (Real.exp (-δ * t)) t := by
    apply ((exponential_derivative δ t).div_const (-δ)).congr_deriv
    field_simp
  have hi : IntervalIntegrable (fun t : ℝ => Real.exp (-δ * t)) volume (Real.log 7) T :=
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-δ * t))).intervalIntegrable _ _
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi
  rw [he]
  ring

/-- Every genuine finite real Laplace integral has a bound uniform up to its initial boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc82975d2ff76021dde51c01caafdc26a3eb4676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
