# criticalWeight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad9dd3e2-7e4f-7ffa-46dc-016c68469689",
  "kind": "theorem",
  "lexical_name": "criticalWeight_hasDerivAt",
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
  "slug": "criticalweight-hasderivat--181e18491dff4bf76e2ab0df",
  "source": {
    "blob": "55e35b671e3716a378ea08bad41336edc43494a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181e18491dff4bf76e2ab0df97666b11c6a5315bc0f77edf59ab4a51cecea26b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9dd3e2-7e4f-7ffa-46dc-016c68469689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeight_hasDerivAt (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (criticalWeight A)
      ((deriv (unitCorrelation A) (Real.log x / A) / A -
        unitCorrelation A (Real.log x / A) / 2) / (x * Real.sqrt x)) x := by
  have hK := unitCorrelation_contDiff A hA
  have hCt : ContDiff ℝ 1 (fun t : ℝ ↦ unitCorrelation A (t/A)) :=
    hK.comp (contDiff_id.div_const A)
  have hF := exponentialTest_contDiff (fun t ↦ unitCorrelation A (t/A)) hCt
  have hdF := ((contDiff_one_iff_deriv.mp hF).1 (Real.log x)).hasDerivAt
  have hKC := ((contDiff_one_iff_deriv.mp hK).1 (Real.log x/A)).hasDerivAt
  have hKt := hKC.comp (Real.log x) ((hasDerivAt_id (Real.log x)).div_const A)
  have hD : deriv (fun t ↦ unitCorrelation A (t/A)) (Real.log x) =
      deriv (unitCorrelation A) (Real.log x/A) / A := by
    simpa only [Function.comp_def, id_eq, div_eq_mul_inv, one_mul] using hKt.deriv
  rw [exponentialTest_deriv (fun t ↦ unitCorrelation A (t/A)) hCt, hD] at hdF
  have hd := hdF.comp x (Real.hasDerivAt_log hx.ne')
  have hexp : Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx]
    ring
  have hd' := hd.congr_of_eventuallyEq (f₁ := criticalWeight A) ?_
  · have hcoef : Real.exp (-Real.log x/2) *
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) * x⁻¹ =
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) / (x * Real.sqrt x) := by
      rw [hexp]
      ring
    rw [hcoef] at hd'
    exact hd'
  · filter_upwards [eventually_gt_nhds hx] with z hz
    dsimp [exponentialTest, criticalWeight]
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hz]
    ring

end
end EstimateCriticalPrimeError
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e35b671e3716a378ea08bad41336edc43494a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
