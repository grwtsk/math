# actualF7_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:185419e5-f599-8ed3-13d1-ff1a28af20fe",
  "kind": "theorem",
  "lexical_name": "actualF7_abs_le",
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
  "slug": "actualf7-abs-le--dd2170344b72c39c8e5d1559",
  "source": {
    "blob": "f6f152904b673c2ef0b422dbb6dc6c7ed58a611a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpXiHeadEnvelope/Variant0b99ab330ba76d5a858251b9fba6d38a2b7e8e40050f52c55022212910b972c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2170344b72c39c8e5d15594782ddf8b7213ec506d89b95b5b55038f29dd413",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpXiHeadEnvelope/Variant0b99ab330ba76d5a858251b9fba6d38a2b7e8e40050f52c55022212910b972c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:185419e5-f599-8ed3-13d1-ff1a28af20fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualF7_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualF7 t| ≤ 2 * sharpXiEnvelopeConstant * (Real.exp (t / 2) - Real.sqrt 7) := by
  let D := sharpXiEnvelopeConstant
  have hi : IntervalIntegrable (fun r : ℝ => D * Real.exp (r / 2)) volume
      (Real.log 7) t := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact actual_timeXiDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * D * Real.exp (r / 2))
      (D * Real.exp (r / 2)) r := by
    convert (((hasDerivAt_id r).div_const (2 : ℝ)).exp.const_mul (2 * D)) using 1
    dsimp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [he, he7] at hh
  rw [actualF7_eq_time_primitive]
  simpa only [Real.norm_eq_abs, D, mul_sub] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpXiHeadEnvelope/Variant0b99ab330ba76d5a858251b9fba6d38a2b7e8e40050f52c55022212910b972c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpXiHeadEnvelope/Variant0b99ab330ba76d5a858251b9fba6d38a2b7e8e40050f52c55022212910b972c5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6f152904b673c2ef0b422dbb6dc6c7ed58a611a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
