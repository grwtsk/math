# actualXiFiniteRealLaplace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b547abd5-e908-2f23-8ed4-afa2d1ed2999",
  "kind": "theorem",
  "lexical_name": "actualXiFiniteRealLaplace_abs_le",
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
  "slug": "actualxifinitereallaplace-abs-le--7b201f5846e6d415bb2b8b54",
  "source": {
    "blob": "7fe38da116e21d527e8fe4ebe533152db8042ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant5b4e817e075be1237562d5d7d9e28200696575f26d242576849ae897bb93dfaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b201f5846e6d415bb2b8b549da763a4388d815f7530dc5c8e691fc3d511662e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant5b4e817e075be1237562d5d7d9e28200696575f26d242576849ae897bb93dfaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b547abd5-e908-2f23-8ed4-afa2d1ed2999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiFiniteRealLaplace_abs_le {σ T : ℝ} (hσ : 1 / 2 < σ)
    (hT : Real.log 7 ≤ T) :
    |∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)| ≤
      actualDampedXiFiniteBudget * Real.exp (-(σ - 1 / 2) * Real.log 7) := by
  let δ := σ - 1 / 2
  have hδ : 0 < δ := by dsimp only [δ]; linarith
  have hC : 0 ≤ actualDampedXiFiniteBudget := by
    unfold actualDampedXiFiniteBudget actualXiExponentialEnvelopeConstant
    positivity
  have hi : IntervalIntegrable (fun t : ℝ => actualDampedXiFiniteBudget * Real.exp (-δ * t))
      volume (Real.log 7) T := (by fun_prop : Continuous
        (fun t : ℝ => actualDampedXiFiniteBudget * Real.exp (-δ * t))).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t => actualDampedXiFinitePrimitive t * Real.exp (-δ * t)) hT
    (Eventually.of_forall (fun t ht => by
      rw [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
      exact mul_le_mul_of_nonneg_right (actualDampedXiFinitePrimitive_abs_le_budget ht.1.le)
        (Real.exp_pos _).le)) hi
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exponential_integral hδ] at hh
  have hbulk : δ * |∫ t in Real.log 7..T,
      actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| ≤
        actualDampedXiFiniteBudget *
          (Real.exp (-δ * Real.log 7) - Real.exp (-δ * T)) := by
    apply (mul_le_mul_of_nonneg_left hh hδ.le).trans_eq
    field_simp
  have hhead : |actualDampedXiFinitePrimitive T * Real.exp (-δ * T)| ≤
      actualDampedXiFiniteBudget * Real.exp (-δ * T) := by
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (actualDampedXiFinitePrimitive_abs_le_budget hT)
      (Real.exp_pos _).le
  rw [actualXiFiniteRealLaplace_abel σ hT]
  change |actualDampedXiFinitePrimitive T * Real.exp (-δ * T) + δ * _| ≤ _
  have ha := abs_add_le (actualDampedXiFinitePrimitive T * Real.exp (-δ * T))
    (δ * ∫ t in Real.log 7..T, actualDampedXiFinitePrimitive t * Real.exp (-δ * t))
  have hsecond : |δ * ∫ t in Real.log 7..T,
      actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| =
        δ * |∫ t in Real.log 7..T, actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| := by
    rw [abs_mul, abs_of_pos hδ]
  rw [hsecond] at ha
  linarith

/-- Positive-real embedding identifies the SAME literal actual complex Laplace integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant5b4e817e075be1237562d5d7d9e28200696575f26d242576849ae897bb93dfaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant5b4e817e075be1237562d5d7d9e28200696575f26d242576849ae897bb93dfaf.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe38da116e21d527e8fe4ebe533152db8042ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
