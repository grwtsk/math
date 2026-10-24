# sourceEventGain_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d38b47-ff47-aa70-9301-0cea4fef2331",
  "kind": "theorem",
  "lexical_name": "sourceEventGain_abs_le",
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
  "slug": "sourceeventgain-abs-le--f1a56ec269595561e11c4f66",
  "source": {
    "blob": "f23c38e762f139fac8807bbf1e73e6730bc01f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Varianta25e0d65db45d11a9104e8ccadd62e4de9d56b6227f1edc332b27baaedfbacb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a56ec269595561e11c4f66d79216ebba2d8df4da44451a1b6aae6cb8be9c43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Varianta25e0d65db45d11a9104e8ccadd62e4de9d56b6227f1edc332b27baaedfbacb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d38b47-ff47-aa70-9301-0cea4fef2331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEventGain_abs_le (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    |sourceEventGain A n| ≤ 4 * A := by
  by_cases hi : n ∈ primePowerInventory (2 * A)
  · have hn := (Finset.mem_Icc.mp hi).1
    have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ n))
    have hexp : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 :=
      Real.exp_le_one_iff.mpr (by linarith)
    have hw : |closedPrimeWeight A n| ≤ 1 := by
      rw [closedPrimeWeight, exponentialTest, abs_mul,
        abs_of_pos (Real.exp_pos _)]
      calc
        _ ≤ Real.exp (-Real.log (n : ℝ) / 2) * 1 :=
          mul_le_mul_of_nonneg_left
            (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log n) hA)
            (Real.exp_pos _).le
        _ ≤ 1 := by simpa only [mul_one] using hexp
    have hl : ArithmeticFunction.vonMangoldt n ≤ 2 * A :=
      ArithmeticFunction.vonMangoldt_le_log.trans (inventory_log_bounds (2 * A) n hi).2
    rw [sourceEventGain_of_mem A hi]
    simp only [abs_mul, abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    calc
      _ ≤ 2 * (ArithmeticFunction.vonMangoldt n * 1) :=
        mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left hw ArithmeticFunction.vonMangoldt_nonneg) (by norm_num)
      _ ≤ 4 * A := by linarith
  · rw [sourceEventGain_zero_of_not_mem A hi, abs_zero]
    linarith

/-- Full signed reconstruction, valid at every real scale where the native
source is used. No analytic term or higher prime power is dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Varianta25e0d65db45d11a9104e8ccadd62e4de9d56b6227f1edc332b27baaedfbacb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Varianta25e0d65db45d11a9104e8ccadd62e4de9d56b6227f1edc332b27baaedfbacb6.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23c38e762f139fac8807bbf1e73e6730bc01f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
