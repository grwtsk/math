# actualAdjointTimePrimitive_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:227b5de0-80b3-d574-03e9-e24a44163ef4",
  "kind": "theorem",
  "lexical_name": "actualAdjointTimePrimitive_eq_closed_inventory",
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
  "slug": "actualadjointtimeprimitive-eq-closed-inventory--96c93d95b9a9422e94a6bcf5",
  "source": {
    "blob": "54397761c5451e945f860739bb4ee0adddff73b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c93d95b9a9422e94a6bcf511ef4d6cba0f79d70811697fe597acf2242b7529",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:227b5de0-80b3-d574-03e9-e24a44163ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointTimePrimitive_eq_closed_inventory {A offset b : ℝ} (hA : 1 ≤ A)
    (hb : actualTimeLower A ≤ b) :
    actualAdjointTimePrimitive A offset b = Real.exp (-b / 2) *
      (2 * Real.exp (b / 2) * (mangoldtLogError b - offset) -
        2 * Real.exp (actualTimeLower A / 2) *
          (mangoldtLogError (actualTimeLower A) - offset) -
        2 * actualLongHalfMangoldtInventory A b +
        4 * (Real.exp (b / 2) - Real.exp (actualTimeLower A / 2))) := by
  have hl : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  have hF : ContDiff ℝ 1 (fun t : ℝ => 2 * Real.exp (t / 2)) := by fun_prop
  have h := mangoldtLogWindow_sub_integral (actualTimeLower A) b hl hb
    (fun t : ℝ => 2 * Real.exp (t / 2)) hF
  rw [actualHalfMangoldtWindow_eq_inventory hA hb, halfExp_deriv,
    intervalIntegral.integral_const_mul, halfExp_integral hb] at h
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (actualTimeLower A) b hb
    (fun t : ℝ => 2 * Real.exp (t / 2)) hF
  rw [halfExp_deriv] at hi
  have hio : IntervalIntegrable (fun t : ℝ => offset * Real.exp (t / 2)) volume
      (actualTimeLower A) b :=
    (by fun_prop : Continuous (fun t : ℝ => offset * Real.exp (t / 2))).intervalIntegrable _ _
  have he : (∫ t in actualTimeLower A..b,
      Real.exp (t / 2) * (mangoldtLogError t - offset)) =
      (∫ t in actualTimeLower A..b, mangoldtLogError t * Real.exp (t / 2)) -
        offset * (2 * (Real.exp (b / 2) - Real.exp (actualTimeLower A / 2))) := by
    calc
      _ = ∫ t in actualTimeLower A..b,
          mangoldtLogError t * Real.exp (t / 2) - offset * Real.exp (t / 2) := by
        apply intervalIntegral.integral_congr
        intro t _
        ring
      _ = (∫ t in actualTimeLower A..b, mangoldtLogError t * Real.exp (t / 2)) -
          ∫ t in actualTimeLower A..b, offset * Real.exp (t / 2) :=
        intervalIntegral.integral_sub hi hio
      _ = _ := by rw [intervalIntegral.integral_const_mul, halfExp_integral hb]
  unfold actualAdjointTimePrimitive
  rw [he]
  congr 1
  linarith

/-- The raw actual weighted primitive keeps its critical exponential mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54397761c5451e945f860739bb4ee0adddff73b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
