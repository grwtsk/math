# actualInitialPrimeMellin_sharp_strip_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee8d5eaf-4b2a-088a-e859-ce5b9105f3c0",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_sharp_strip_norm_le",
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
  "slug": "actualinitialprimemellin-sharp-strip-norm-le--c941f3dbce17b92f1b801e74",
  "source": {
    "blob": "36ccdbea6b7e9095956a28e2a195b536b378f9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 187,
    "path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c941f3dbce17b92f1b801e744318a7abf4d67decdc6c00085c82c3c92a236572",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee8d5eaf-4b2a-088a-e859-ce5b9105f3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_sharp_strip_norm_le (A : ℝ) (s : ℂ) (hA : 91 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 4 ≤ |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      4500000 * Real.exp A / (A ^ 9 * |s.im| ^ 6) := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have htpos : 0 < |s.im| := by linarith
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  let e : ℝ := (6 : ℝ) ^ 6 / 91 ^ 6
  let k : ℝ := 395 ^ 2 * (1 + e) ^ 2 * (17 / 16)
  have he := exp_neg_large_le hA
  have hpair : Real.exp (A / 2) + Real.exp (-A / 2) =
      (1 + Real.exp (-A)) * Real.exp (A / 2) := by
    have hprod : Real.exp (-A) * Real.exp (A / 2) = Real.exp (-A / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [add_mul, one_mul, hprod]
  have hb := actual_bump_strip_high_norm_le A s hA hs ht
  rw [hpair] at hb
  have hb' : ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      395 * (1 + e) * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5) := by
    apply hb.trans
    apply div_le_div_of_nonneg_right _ (by positivity)
    dsimp only [e]
    have hsum : 1 + Real.exp (-A) ≤ 1 + (6 : ℝ) ^ 6 / 91 ^ 6 := by linarith
    have h := mul_le_mul_of_nonneg_left hsum
      (by norm_num : (0 : ℝ) ≤ 395)
    simpa only [mul_assoc] using
      mul_le_mul_of_nonneg_right h (Real.exp_pos (A / 2)).le
  have he2 : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hb2 := pow_le_pow_left₀
    (norm_nonneg (bumpLaplace ((A : ℂ) * (s - 1 / 2)))) hb' 2
  have hb2' : ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 ≤
      395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10) := by
    simpa only [div_pow, mul_pow, he2, ← pow_mul] using hb2
  have ht2 : 16 ≤ s.im ^ 2 := by
    have h := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 4) ht 2
    nlinarith [sq_abs s.im]
  have hfour : |s.im| ^ 4 = s.im ^ 4 := by
    calc
      _ = (|s.im| ^ 2) ^ 2 := by ring
      _ = (s.im ^ 2) ^ 2 := by rw [sq_abs]
      _ = _ := by ring
  have hpole : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ (17 / 16 : ℝ) * |s.im| ^ 4 := by
    have h := pole_norm_joint_strip_le s hs (by linarith : 1 ≤ |s.im|)
    have hp := mul_nonneg (sq_nonneg s.im) (sub_nonneg.mpr ht2)
    rw [hfour]
    nlinarith only [h, hp]
  have hn : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  have hk : k ≤ 4500000 * (4096 / 109395 : ℝ) := by norm_num [k, e]
  have hcoeff : k / sourceNormalization A ≤ 4500000 := by
    apply (div_le_iff₀ hZ).mpr
    exact hk.trans (mul_le_mul_of_nonneg_left hZl (by norm_num))
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        (395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10)) :=
      mul_le_mul_of_nonneg_left hb2' (by positivity)
    _ ≤ (A / sourceNormalization A) * ((17 / 16 : ℝ) * |s.im| ^ 4) *
        (395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10)) := by
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      exact mul_le_mul_of_nonneg_left hpole (by positivity)
    _ = (k / sourceNormalization A) * (Real.exp A / (A ^ 9 * |s.im| ^ 6)) := by
      dsimp [k]
      field_simp
    _ ≤ 4500000 * (Real.exp A / (A ^ 9 * |s.im| ^ 6)) :=
      mul_le_mul_of_nonneg_right hcoeff (by positivity)
    _ = _ := by ring

end RH16ActualSharpZeroTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ccdbea6b7e9095956a28e2a195b536b378f9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
