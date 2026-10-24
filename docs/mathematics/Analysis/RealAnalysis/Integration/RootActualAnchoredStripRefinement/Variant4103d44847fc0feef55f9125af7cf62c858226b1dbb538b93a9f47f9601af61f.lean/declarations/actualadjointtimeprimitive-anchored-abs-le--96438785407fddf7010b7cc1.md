# actualAdjointTimePrimitive_anchored_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0456ff27-925b-60d2-701e-436fc2cb03c5",
  "kind": "theorem",
  "lexical_name": "actualAdjointTimePrimitive_anchored_abs_le",
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
  "slug": "actualadjointtimeprimitive-anchored-abs-le--96438785407fddf7010b7cc1",
  "source": {
    "blob": "01d95132a503bf2b7869e3c07ce6c9625c0ef7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96438785407fddf7010b7cc1b46fb27454c3d6835af4db0cb5e73fb454bf750c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0456ff27-925b-60d2-701e-436fc2cb03c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointTimePrimitive_anchored_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp ((actualTimeLower A - t) / 2)) := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2 + |offset|
  have hl : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
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
  have he : Real.exp (-t / 2) * Real.exp (actualTimeLower A / 2) =
      Real.exp ((actualTimeLower A - t) / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualAdjointTimePrimitive
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-t / 2) *
        (C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ = _ := by
      change _ = 2 * C * (1 - Real.exp ((actualTimeLower A - t) / 2))
      nlinarith [congrArg (fun x : ℝ => 2 * C * x) hp,
        congrArg (fun x : ℝ => 2 * C * x) he]

/-- Every point in the actual clipped strip has this additional width factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant4103d44847fc0feef55f9125af7cf62c858226b1dbb538b93a9f47f9601af61f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01d95132a503bf2b7869e3c07ce6c9625c0ef7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
