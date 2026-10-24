# actualUpperEdgePrimeJump_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1477f21-c17f-c78f-9735-faac6f83c951",
  "kind": "theorem",
  "lexical_name": "actualUpperEdgePrimeJump_intervalIntegrable",
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
  "slug": "actualupperedgeprimejump-intervalintegrable--a06a892b103cbbc0a82c1d33",
  "source": {
    "blob": "ccb75457335681669f86eea810665dec771b88b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 230,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant0c51136227401a6aa396ad1e628f66022388a6a9edc678062e3571150487f247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a06a892b103cbbc0a82c1d338296ac568c509bd7f3ad0b436688a28916112929",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant0c51136227401a6aa396ad1e628f66022388a6a9edc678062e3571150487f247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1477f21-c17f-c78f-9735-faac6f83c951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEdgePrimeJump_intervalIntegrable {A : ℝ} (hA : 91 ≤ A) :
    IntervalIntegrable (fun t =>
      (∑ n ∈ Finset.Ioc ⌊Real.exp t⌋₊ ⌊Real.exp (2 * A)⌋₊,
        ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)))
      volume (2 * A - 1) (2 * A) := by
  have hi := actualMangoldtErrorConvolution_intervalIntegrable 0 (by linarith : 0 ≤ 2 * A)
  simp only [zero_mul, Real.exp_zero, mul_one] at hi
  have hg : IntervalIntegrable actualCenteredMangoldtLogError volume (2 * A - 1) (2 * A) :=
    hi.mono_set (by
      rw [uIcc_of_le (by linarith : 0 ≤ 2 * A), uIcc_of_le (by linarith : 2 * A - 1 ≤ 2 * A)]
      exact Icc_subset_Icc (by linarith) le_rfl)
  have hs : IntervalIntegrable (fun t : ℝ => actualCenteredMangoldtLogError (2 * A) -
      actualCenteredMangoldtLogError t + (2 * A - t)) volume (2 * A - 1) (2 * A) :=
    (intervalIntegrable_const.sub hg).add
      ((continuous_const.sub continuous_id).intervalIntegrable _ _)
  have hj := hs.mul_continuousOn
    (critical_kernel_continuous A (by linarith)).continuousOn
  apply hj.congr
  rw [uIoc_of_le (by linarith : 2 * A - 1 ≤ 2 * A)]
  intro t ht
  dsimp only
  have he := actualCenteredError_increment_eq_closed ht.2
  unfold actualClosedMangoldtIncrement at he
  congr 1
  linarith

/-- Exact drift and actual positive jumps are retained together in this edge sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant0c51136227401a6aa396ad1e628f66022388a6a9edc678062e3571150487f247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant0c51136227401a6aa396ad1e628f66022388a6a9edc678062e3571150487f247.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb75457335681669f86eea810665dec771b88b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
