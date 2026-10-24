# actualAdjointTimePrimitive_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6138f22f-0f54-dc43-f41d-5b7217684a83",
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
  "slug": "actualadjointtimeprimitive-eq-closed-inventory--fb6a6413106d082ff641e5b5",
  "source": {
    "blob": "6d776daa523bfcdcf4c0c08f09760ce9107705ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variant8e4a76aca03e246a7dfba0b8b7dc542400479acf16056dc5211c04c7fde4ad8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb6a6413106d082ff641e5b5f0bdeb9f74ded00e9b497b13547eb6d2ce6a45c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variant8e4a76aca03e246a7dfba0b8b7dc542400479acf16056dc5211c04c7fde4ad8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6138f22f-0f54-dc43-f41d-5b7217684a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–108.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variant8e4a76aca03e246a7dfba0b8b7dc542400479acf16056dc5211c04c7fde4ad8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variant8e4a76aca03e246a7dfba0b8b7dc542400479acf16056dc5211c04c7fde4ad8f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d776daa523bfcdcf4c0c08f09760ce9107705ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
