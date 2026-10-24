# actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fc0afb9-f3be-0df8-3196-f088cafbbf91",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le",
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
  "slug": "actualshortmangoldtblock-sub-halfprefix-log-square-abs-le--430ab90da3f8e808be58b6e4",
  "source": {
    "blob": "51cc2ae87c647ddaf6e9cb57c7c5fe51003316e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:430ab90da3f8e808be58b6e45b5def7be0aa4c635b1fbcd42d75a8457eed4174",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fc0afb9-f3be-0df8-3196-f088cafbbf91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_sub_halfPrefix_log_square_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      20 * (Real.log 4 + 4) * (Real.log A) ^ 2 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hhalf := halfPrefix_square_le hA1
  have hsum : |actualShortMangoldtBlock A -
      actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      (10 * (Real.log A) ^ 2 / A ^ 2) *
        actualMangoldtHalfClosedPrefix (2 * Real.log A) := by
    rw [halfPrefix_square_eq_sum hA1]
    unfold actualShortMangoldtBlock
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
    intro n hn
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hn0 : 0 < n := by omega
    have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
    have hnA : (n : ℝ) ≤ A ^ 2 :=
      (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
        (Nat.floor_le (sq_nonneg A))
    have hlog : Real.log (n : ℝ) ≤ 2 * Real.log A := by
      have hh := Real.log_le_log hnR hnA
      simpa only [Real.log_pow, Nat.cast_ofNat] using hh
    have hln := Real.log_nonneg hn1
    have hlogs : (Real.log (n : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
      nlinarith [Real.log_nonneg hA1]
    have hc := actualCorrelation_sub_one_abs_le_five hA (Real.log (n : ℝ))
    have hcn : |sourceCorrelation explicitSecondDerivative A (Real.log n) - 1| ≤
        10 * (Real.log A) ^ 2 / A ^ 2 := by
      calc
        _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := hc
        _ ≤ (5 / 2 : ℝ) / A ^ 2 * (4 * (Real.log A) ^ 2) :=
          mul_le_mul_of_nonneg_left hlogs (by positivity)
        _ = _ := by ring
    have hw : vonMangoldt n * closedPrimeWeight A n -
        vonMangoldt n / Real.sqrt (n : ℝ) =
        (vonMangoldt n / Real.sqrt (n : ℝ)) *
          (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1) := by
      unfold closedPrimeWeight
      rw [exponentialTest_log _ _ hn0]
      ring
    rw [hw, abs_mul, abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))]
    calc
      _ ≤ (vonMangoldt n / Real.sqrt (n : ℝ)) *
          (10 * (Real.log A) ^ 2 / A ^ 2) :=
        mul_le_mul_of_nonneg_left hcn (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))
      _ = _ := by ring
  calc
    _ ≤ (10 * (Real.log A) ^ 2 / A ^ 2) *
        actualMangoldtHalfClosedPrefix (2 * Real.log A) := hsum
    _ ≤ (10 * (Real.log A) ^ 2 / A ^ 2) * (2 * (Real.log 4 + 4) * A) :=
      mul_le_mul_of_nonneg_left hhalf (by positivity)
    _ = _ := by field_simp

/-- The entire complementary interval has a paid closed-arithmetic readout, not a cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant08c313e6399292018f4cfd0026bbe6f9625177181eaec8f042dea80eb80df11b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51cc2ae87c647ddaf6e9cb57c7c5fe51003316e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
