# actual_gamma_boundary_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:204308c8-1452-b16b-6731-e822daf42a3c",
  "kind": "theorem",
  "lexical_name": "actual_gamma_boundary_bounds",
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
  "slug": "actual-gamma-boundary-bounds--772635b18657e44ba1b815b9",
  "source": {
    "blob": "bde6ecf4d8bd751eebdf8edd2dc5f8685fa2a8d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:772635b18657e44ba1b815b9417652058f2a96896559fa43487d57bf031bd9c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:204308c8-1452-b16b-6731-e822daf42a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gamma_boundary_bounds (A : ℝ) (hA : 40 ≤ A) :
    (7 / 16 : ℝ) ≤ Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ∧
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ 4 / 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := sourceCorrelation_sub_one_abs_le hA1 (Real.log 2)
  rw [abs_of_nonneg hL0] at hc
  have hs : 5 * Real.log 2 / A ≤ (1 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log 2) := by
    linarith [(abs_le.mp hc).1]
  have hch : sourceCorrelation explicitSecondDerivative A (Real.log 2) ≤ 1 :=
    (le_abs_self _).trans (actual_correlation_abs_le_one A _ hA1)
  have helo : 1 ≤ Real.exp (Real.log 2 / 2) := Real.one_le_exp (by linarith)
  have hehi : Real.exp (Real.log 2 / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  have hqlo : (7 / 8 : ℝ) ≤ criticalPrimeTest A (Real.log 2) := by
    unfold criticalPrimeTest
    nlinarith only [hcl, helo]
  have hqhi : criticalPrimeTest A (Real.log 2) ≤ 2 := by
    unfold criticalPrimeTest
    nlinarith only [hch, hehi, Real.exp_pos (Real.log 2 / 2)]
  have hglo := Real.one_half_lt_eulerMascheroniConstant
  have hghi := Real.eulerMascheroniConstant_lt_two_thirds
  constructor <;> nlinarith only [hqlo, hqhi, hglo, hghi]

/-- Exact cancellation retains the actual closed moment and the original Mangoldt sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde6ecf4d8bd751eebdf8edd2dc5f8685fa2a8d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
