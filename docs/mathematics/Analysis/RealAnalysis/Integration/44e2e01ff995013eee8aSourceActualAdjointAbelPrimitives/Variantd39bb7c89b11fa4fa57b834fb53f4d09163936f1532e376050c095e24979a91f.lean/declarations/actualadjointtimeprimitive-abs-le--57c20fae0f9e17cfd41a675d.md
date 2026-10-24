# actualAdjointTimePrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c489a713-fb7e-d133-bc62-e6771bb574ad",
  "kind": "theorem",
  "lexical_name": "actualAdjointTimePrimitive_abs_le",
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
  "slug": "actualadjointtimeprimitive-abs-le--57c20fae0f9e17cfd41a675d",
  "source": {
    "blob": "b81cdac6df9c80ebbe1260f6688800d6981a660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57c20fae0f9e17cfd41a675d6bb8d064db4533256cef97fcc1eef080a6a53f99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c489a713-fb7e-d133-bc62-e6771bb574ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointTimePrimitive_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2 + |offset|
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hl : 0 ≤ actualTimeLower A := by
    exact Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  have hn : |∫ r in actualTimeLower A..t,
      Real.exp (r / 2) * (mangoldtLogError r - offset)| ≤
        C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2))) := by
    have hi : IntervalIntegrable (fun r : ℝ => C * Real.exp (r / 2)) volume
        (actualTimeLower A) t :=
      (by fun_prop : Continuous (fun r : ℝ => C * Real.exp (r / 2))).intervalIntegrable _ _
    have hb : ∀ᵐ r, r ∈ Ioc (actualTimeLower A) t →
        ‖Real.exp (r / 2) * (mangoldtLogError r - offset)‖ ≤ C * Real.exp (r / 2) := by
      filter_upwards with r hr
      have he : |mangoldtLogError r - offset| ≤ C := by
        dsimp [C]
        nlinarith [abs_sub (mangoldtLogError r) offset,
          mangoldtLogError_abs_le r (hl.trans hr.1.le)]
      simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
        using mul_le_mul_of_nonneg_left he (Real.exp_pos (r / 2)).le
    have h := intervalIntegral.norm_integral_le_of_norm_le ht hb hi
    rw [intervalIntegral.integral_const_mul, exp_half_integral _ _ ht] at h
    simpa only [Real.norm_eq_abs] using h
  have hp : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  unfold actualAdjointTimePrimitive
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-t / 2) *
        (C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ ≤ Real.exp (-t / 2) * (2 * C * Real.exp (t / 2)) := by
      apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
      nlinarith [mul_nonneg hC (Real.exp_pos (actualTimeLower A / 2)).le]
    _ = 2 * C := by nlinarith [hp]

/-- The actual logarithmic column has a literal measurable finite prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81cdac6df9c80ebbe1260f6688800d6981a660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
