# rawCellCoefficient_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b40ec2f-282e-132e-a0e0-b5988df3a3ad",
  "kind": "theorem",
  "lexical_name": "rawCellCoefficient_boundary",
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
  "slug": "rawcellcoefficient-boundary--3a263b66e7ff849765d1dae6",
  "source": {
    "blob": "e9b41e87fad1373ae58cca821b6511804f2c4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a263b66e7ff849765d1dae61c82f7afded3bd49d20030ab5cef7033b2bfdb4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b40ec2f-282e-132e-a0e0-b5988df3a3ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCellCoefficient_boundary (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    rawCellCoefficient A j = (j + 1 : ℕ) *
      (exponentialTest (sourceCorrelation explicitSecondDerivative A) (rawCellLeft j) -
        exponentialTest (sourceCorrelation explicitSecondDerivative A) (rawCellRight A j)) := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hd := hF.continuous_deriv_one.intervalIntegrable (μ := volume)
    (rawCellLeft j) (rawCellRight A j)
  have ht := intervalIntegral.integral_deriv_eq_sub
    (fun s _ => hF.differentiable (by norm_num) s) hd
  have hn : 0 < ((j + 1 : ℕ) : ℝ) := by positivity
  have hfun : (fun s => kapitzaWeight A s * Real.exp (rawCellLeft j - s)) =
      fun s => -((j + 1 : ℕ) : ℝ) * deriv F s := by
    funext s
    have hex : Real.exp (s / 2) * Real.exp (rawCellLeft j - s) =
        (j + 1 : ℕ) * Real.exp (-s / 2) := by
      calc
        _ = Real.exp (Real.log (j + 1 : ℕ) + (-s / 2)) := by
          rw [← Real.exp_add, rawCellLeft]
          congr 1
          ring
        _ = _ := by rw [Real.exp_add, Real.exp_log hn]
    change _ = -((j + 1 : ℕ) : ℝ) * deriv (exponentialTest C) s
    rw [exponentialTest_deriv C hc]
    dsimp only [kapitzaWeight, kapitzaKernel, C]
    calc
      _ = (Real.exp (s / 2) * Real.exp (rawCellLeft j - s)) *
          (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) := by ring
      _ = _ := by rw [hex]; ring
  rw [rawCellCoefficient, hfun, intervalIntegral.integral_const_mul, ht]
  dsimp only [F, C]
  ring

/-- Canonical backward linear coefficients are the original source's Abel boundary weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b41e87fad1373ae58cca821b6511804f2c4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
