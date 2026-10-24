# actual_critical_mellin_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b881f4f5-7d37-3b19-9f97-38aa719e20e0",
  "kind": "theorem",
  "lexical_name": "actual_critical_mellin_norm_le",
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
  "slug": "actual-critical-mellin-norm-le--1aa38e7aae1a4f8ff9113c11",
  "source": {
    "blob": "83465f9e48f74962c04e2661bf42f86a15d2a9f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa38e7aae1a4f8ff9113c112663e5ba2bbb9eeb5812c3f66ff355c44d20d080",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b881f4f5-7d37-3b19-9f97-38aa719e20e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_mellin_norm_le (A R0 : ℝ) (s : ℂ) (hR0 : 1 ≤ R0)
    (hA : R0 ≤ A) (hs : s.re = 1 / 2) (ht : 1 ≤ R0 * |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      ((204288 : ℝ) ^ 2 * 109395 / 4096 * (1 + R0 ^ 2) ^ 2) /
        A ^ 9 / |s.im| ^ 6 := by
  have hA1 : 1 ≤ A := hR0.trans hA
  have ha : 0 < A := by linarith
  have htpos : 0 < |s.im| := by nlinarith [abs_nonneg s.im]
  have hfreq : 1 ≤ A * |s.im| := ht.trans
    (mul_le_mul_of_nonneg_right hA (abs_nonneg _))
  have hb := critical_bump_norm_le A s hA1 hs hfreq
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  have h1 : ‖s‖ ^ 2 = 1 / 4 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, hs]
    ring
  have h2 : ‖s - 1‖ ^ 2 = 1 / 4 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero, hs]
    ring
  have hsq : 1 ≤ R0 ^ 2 * s.im ^ 2 := by
    nlinarith [sq_abs s.im, sq_nonneg (R0 * |s.im| - 1)]
  have hp : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ (1 + R0 ^ 2) ^ 2 * |s.im| ^ 4 := by
    rw [h1, h2, ← sq_abs s.im]
    calc
      _ = (1 / 4 + |s.im| ^ 2) ^ 2 := by ring
      _ ≤ ((1 + R0 ^ 2) * |s.im| ^ 2) ^ 2 := by
        apply pow_le_pow_left₀ (by positivity)
        nlinarith [sq_abs s.im]
      _ = _ := by ring
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
  have hn : ‖bumpMellinWeight A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  have hinv : (sourceNormalization A)⁻¹ ≤ (4096 / 109395 : ℝ)⁻¹ :=
    inv_anti₀ (by norm_num) hZl
  calc
    _ ≤ (A / sourceNormalization A) * ((1 + R0 ^ 2) ^ 2 * |s.im| ^ 4) *
        (204288 / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by gcongr
    _ = (sourceNormalization A)⁻¹ *
        ((204288 : ℝ) ^ 2 * (1 + R0 ^ 2) ^ 2 / A ^ 9 / |s.im| ^ 6) := by
      field_simp
      <;> ring
    _ ≤ (4096 / 109395 : ℝ)⁻¹ *
        ((204288 : ℝ) ^ 2 * (1 + R0 ^ 2) ^ 2 / A ^ 9 / |s.im| ^ 6) :=
      mul_le_mul_of_nonneg_right hinv (by positivity)
    _ = _ := by norm_num; ring

end
end FormalResearch.RiemannHypothesis.ActualCriticalOrdinateBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83465f9e48f74962c04e2661bf42f86a15d2a9f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
