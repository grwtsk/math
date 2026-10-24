# actualXiFiniteRealLaplace_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93886dbd-7b8a-128c-881f-a8b74f6da6dd",
  "kind": "theorem",
  "lexical_name": "actualXiFiniteRealLaplace_abel",
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
  "slug": "actualxifinitereallaplace-abel--200b997d8c3a99662719bf44",
  "source": {
    "blob": "12ea6b6c7d9cc616ab7a4546b3b9638da1eafaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant8dfcd84d20cebe3ec90839defcc28965c5bcf253b5b017e8b9b7706f86fd5f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200b997d8c3a99662719bf441e5be0af7728c2f63a6e5382986450ec9fa697ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant8dfcd84d20cebe3ec90839defcc28965c5bcf253b5b017e8b9b7706f86fd5f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93886dbd-7b8a-128c-881f-a8b74f6da6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiFiniteRealLaplace_abel (σ : ℝ) {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)) =
      actualDampedXiFinitePrimitive T * Real.exp (-(σ - 1 / 2) * T) +
        (σ - 1 / 2) * ∫ t in Real.log 7..T,
          actualDampedXiFinitePrimitive t * Real.exp (-(σ - 1 / 2) * t) := by
  let δ := σ - 1 / 2
  have hq : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-δ * t)) := by fun_prop
  have ha := (actualDampedXiFinitePrimitive_absolutelyContinuous hT).integral_deriv_mul_eq_sub
    hq.contDiffOn.absolutelyContinuousOnInterval
  rw [actualDampedXiFinitePrimitive_at_lower, zero_mul, sub_zero] at ha
  have hefun (t : ℝ) : (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2)) *
      Real.exp (-δ * t) = actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    dsimp only [δ]
    ring
  have he : (∫ t in Real.log 7..T,
      actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) +
        -δ * (actualDampedXiFinitePrimitive t * Real.exp (-δ * t))) =
          actualDampedXiFinitePrimitive T * Real.exp (-δ * T) := by
    rw [← ha]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualDampedXiFinitePrimitive_ae_hasDerivAt hT] with t ht hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv, (exponential_derivative δ t).deriv, hefun]
    ring
  have hiF : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      volume (Real.log 7) T :=
    ((actualAnchoredXiTailPrimitive_absolutelyContinuous hT).continuousOn.mul
      (by fun_prop : Continuous (fun t : ℝ => Real.exp (-σ * t))).continuousOn).intervalIntegrable
  have hiJ : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t * Real.exp (-δ * t))
      volume (Real.log 7) T :=
    ((actualDampedXiFinitePrimitive_absolutelyContinuous hT).continuousOn.mul
      hq.continuous.continuousOn).intervalIntegrable
  rw [intervalIntegral.integral_add hiF (hiJ.const_mul (-δ)),
    intervalIntegral.integral_const_mul] at he
  change _ = _ + δ * _
  linarith

/-- Returning to the undamped actual primitive reinstates the exponential weight and both terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant8dfcd84d20cebe3ec90839defcc28965c5bcf253b5b017e8b9b7706f86fd5f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant8dfcd84d20cebe3ec90839defcc28965c5bcf253b5b017e8b9b7706f86fd5f0e.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ea6b6c7d9cc616ab7a4546b3b9638da1eafaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
