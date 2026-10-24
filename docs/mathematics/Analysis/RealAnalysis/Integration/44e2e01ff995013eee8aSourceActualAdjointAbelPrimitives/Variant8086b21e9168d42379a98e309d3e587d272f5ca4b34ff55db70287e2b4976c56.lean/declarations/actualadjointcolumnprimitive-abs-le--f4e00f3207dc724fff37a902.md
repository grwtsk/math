# actualAdjointColumnPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bfd2ae8-de0e-7be3-c2da-f47d89dfd7c4",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_abs_le",
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
  "slug": "actualadjointcolumnprimitive-abs-le--f4e00f3207dc724fff37a902",
  "source": {
    "blob": "d31f2c5844cf54b223ce90a262b822d69a748d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e00f3207dc724fff37a902d9de7389e986e65c72956e965848f34acc2c7290",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfd2ae8-de0e-7be3-c2da-f47d89dfd7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_abs_le {A s : ℝ} (hA : 1 ≤ A)
    (hs : actualTimeLower A ≤ s) (hsb : s ≤ actualColumnUpper A) :
    |actualAdjointColumnPrimitive A s| ≤ 2 * ((vaughanCutoff A : ℝ) - 1) := by
  let C : ℝ := (vaughanCutoff A : ℝ) - 1
  have hC : 0 ≤ C := by
    have h := vaughanCutoff_pos A hA
    have hc : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by exact_mod_cast h
    dsimp [C]
    linarith
  have hi : IntervalIntegrable (fun r : ℝ => C * Real.exp (-r / 2)) volume
      s (actualColumnUpper A) :=
    (by fun_prop : Continuous (fun r : ℝ => C * Real.exp (-r / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ r, r ∈ Ioc s (actualColumnUpper A) →
      ‖Real.exp (-r / 2) * actualLogColumnPrefix A r‖ ≤ C * Real.exp (-r / 2) := by
    filter_upwards with r hr
    simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
      using mul_le_mul_of_nonneg_left (actualLogColumnPrefix_abs_le hA (hs.trans hr.1.le))
        (Real.exp_pos (-r / 2)).le
  have hn := intervalIntegral.norm_integral_le_of_norm_le hsb hb hi
  rw [intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hsb] at hn
  have hp : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  unfold actualAdjointColumnPrimitive
  rw [intervalIntegral.integral_symm, abs_mul, abs_of_pos (Real.exp_pos _), abs_neg]
  rw [Real.norm_eq_abs] at hn
  calc
    _ ≤ Real.exp (s / 2) *
        (C * (2 * (Real.exp (-s / 2) - Real.exp (-actualColumnUpper A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ ≤ Real.exp (s / 2) * (2 * C * Real.exp (-s / 2)) := by
      apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
      nlinarith [mul_nonneg hC (Real.exp_pos (-actualColumnUpper A / 2)).le]
    _ = 2 * C := by nlinarith [hp]

/-- Lower time anchoring is exact; no upper time trace is discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31f2c5844cf54b223ce90a262b822d69a748d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
