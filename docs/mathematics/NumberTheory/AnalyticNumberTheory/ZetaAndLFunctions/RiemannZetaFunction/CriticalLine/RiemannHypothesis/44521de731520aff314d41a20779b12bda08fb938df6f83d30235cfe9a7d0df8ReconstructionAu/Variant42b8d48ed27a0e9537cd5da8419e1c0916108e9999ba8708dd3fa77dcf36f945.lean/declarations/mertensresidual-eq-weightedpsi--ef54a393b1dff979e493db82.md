# mertensResidual_eq_weightedPsi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fa51e47-7f1a-06c3-7888-6f13b458bb80",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_weightedPsi",
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
  "slug": "mertensresidual-eq-weightedpsi--ef54a393b1dff979e493db82",
  "source": {
    "blob": "8a8ee070a980c8f784c82d1223aa127b3d066b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef54a393b1dff979e493db828526a64368624331a41219caf7372a33d945a537",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa51e47-7f1a-06c3-7888-6f13b458bb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_weightedPsi (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = kernelMomentZero A +
      ∫ s in 0..2 * A, kapitzaWeight A s * normalizedPsiError s := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hstep := integral_finite_steps_deriv 0 (2 * A) (primePowerInventory (2 * A))
    (fun n => Real.log n) ArithmeticFunction.vonMangoldt
    (fun n hn => mangoldtInventory_log_bounds (2 * A) n hn) F hF
  have hraw : (∫ s in 0..2 * A, chebyshevPrimePower (Real.exp s) * deriv F s) =
      -closedPrimeMoment A := by
    have he : (∫ s in 0..2 * A, chebyshevPrimePower (Real.exp s) * deriv F s) =
        ∫ s in 0..2 * A, ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ s then deriv F s else 0) := by
      apply intervalIntegral.integral_congr
      intro s hs
      exact chebyshev_mul_eq_steps (2 * A) s (deriv F s)
        ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).2)
    rw [he, hstep]
    have hu : F (2 * A) = 0 := by
      dsimp [F, exponentialTest, C]
      rw [sourceCorrelation_upper_endpoint A hp, mul_zero]
    simp_rw [hu, zero_sub, mul_neg]
    rw [Finset.sum_neg_distrib]
    rfl
  have hi := chebyshev_mul_continuous_intervalIntegrable 0 (2 * A)
    (by linarith) (deriv F) hF.continuous_deriv_one
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have he : (fun s => kapitzaWeight A s * normalizedPsiError s) =
      fun s => -(chebyshevPrimePower (Real.exp s) * deriv F s) - kapitzaWeight A s := by
    funext s
    rw [normalizedPsiError_eq_prefix]
    dsimp only [F]
    rw [exponentialTest_deriv C hc]
    have hex : Real.exp (s / 2) * Real.exp (-s) = Real.exp (-s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [kapitzaWeight, kapitzaKernel, C]
    calc
      _ = (Real.exp (s / 2) * Real.exp (-s)) *
          chebyshevPrimePower (Real.exp s) *
          (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) -
          Real.exp (s / 2) * (sourceCorrelation explicitSecondDerivative A s / 2 -
            deriv (sourceCorrelation explicitSecondDerivative A) s) := by ring
      _ = _ := by rw [hex]; ring
  have hint := intervalIntegral.integral_sub hi.neg hw
  simp only [Pi.neg_apply] at hint
  rw [he, hint, intervalIntegral.integral_neg, hraw,
    neg_neg, mertensResidual_eq_closedPrimeMoment A hA]
  unfold kernelMomentZero
  ring

/-- Exact reconstruction of the task's nonaffine readout, including both actual endpoint samples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8ee070a980c8f784c82d1223aa127b3d066b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
