# actualXiLogStep_error_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a74ed8fc-526e-08c8-59d3-17567a44f510",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_error_integral_abs_le",
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
  "slug": "actualxilogstep-error-integral-abs-le--8b0592e7d8a69351e58ab691",
  "source": {
    "blob": "507f05db476f9504eab1a8872462dfb832e0eea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Varianta37cbfcd23f9373d31b20cf30fc55460b0ae2f2cc831594693ce34ccc92b2292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b0592e7d8a69351e58ab6916e18dd4f0270d0ead60f8f2370990e85a514b395",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Varianta37cbfcd23f9373d31b20cf30fc55460b0ae2f2cc831594693ce34ccc92b2292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a74ed8fc-526e-08c8-59d3-17567a44f510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_error_integral_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t -
      actualIntegerXiTailLogStep t|) ≤ actualXiLogStepErrorConstant := by
  have he : IntervalIntegrable (fun t => Real.sqrt 2 * actualXiCellOscillationConstant *
      Real.exp (-t / 2)) volume (Real.log 7) T := by
    exact (by fun_prop : Continuous (fun t : ℝ => Real.sqrt 2 *
      actualXiCellOscillationConstant * Real.exp (-t / 2))).intervalIntegrable _ _
  have h := intervalIntegral.integral_mono_on hT
    (actualXiLogStep_error_intervalIntegrable hT).abs he (fun t ht =>
      actualXiLogStep_error_abs_le ht.1)
  rw [error_envelope_integral] at h
  have hse : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    have hh := sqrt_exp_half (Real.log 7)
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using hh.symm
  have he7 : Real.exp (-Real.log 7 / 2) = 1 / Real.sqrt 7 := by
    rw [show -Real.log 7 / 2 = -(Real.log 7 / 2) by ring, Real.exp_neg, hse]
    simp only [one_div]
  rw [he7] at h
  apply h.trans
  unfold actualXiLogStepErrorConstant
  calc
    _ ≤ 2 * Real.sqrt 2 * actualXiCellOscillationConstant * (1 / Real.sqrt 7) :=
      mul_le_mul_of_nonneg_left (sub_le_self _ (Real.exp_pos _).le)
        (mul_nonneg (mul_nonneg (by norm_num) (Real.sqrt_nonneg _)) cell_constant_nonneg)
    _ = _ := by ring

/-- Absolute primitive averages differ by only the genuine finite discretization cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Varianta37cbfcd23f9373d31b20cf30fc55460b0ae2f2cc831594693ce34ccc92b2292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Varianta37cbfcd23f9373d31b20cf30fc55460b0ae2f2cc831594693ce34ccc92b2292.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507f05db476f9504eab1a8872462dfb832e0eea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
