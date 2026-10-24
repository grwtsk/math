# actualUpperEdgePrimeJumpCompensation_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f18da8e-59a5-4eb3-98ea-637cc9865683",
  "kind": "theorem",
  "lexical_name": "actualUpperEdgePrimeJumpCompensation_nonneg",
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
  "slug": "actualupperedgeprimejumpcompensation-nonneg--6c7e2c9650a14e6f26c34588",
  "source": {
    "blob": "de21df3c388d76f80d0b60f3337d6bdc373da706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 270,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c7e2c9650a14e6f26c3458833f80b48a648c56bbbbc5067f6ca494d6accfcf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f18da8e-59a5-4eb3-98ea-637cc9865683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEdgePrimeJumpCompensation_nonneg {A : ℝ} (hA : 91 ≤ A) :
    0 ≤ actualUpperEdgePrimeJumpCompensation A := by
  unfold actualUpperEdgePrimeJumpCompensation
  rw [← intervalIntegral.integral_neg]
  apply intervalIntegral.integral_nonneg (by linarith)
  intro t ht
  have hh : 0 ≤ 2 * A - t := by linarith [ht.2]
  have hh1 : 2 * A - t ≤ 1 := by linarith [ht.1]
  have hk := actualCriticalKernel_edge_upper hA hh hh1
  rw [show 2 * A - (2 * A - t) = t by ring] at hk
  have hc : sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 ≤ 0 := by
    have hZ := source_normalization_pos A (by linarith : 1 ≤ A)
    have hb : -400 * (2 * A - t) ^ 4 / (A ^ 9 * sourceNormalization A) ≤ 0 := by
      apply div_nonpos_of_nonpos_of_nonneg
      · nlinarith [pow_nonneg hh 4]
      · positivity
    exact hk.trans hb
  have hn : 0 ≤ ∑ n ∈ Finset.Ioc ⌊Real.exp t⌋₊ ⌊Real.exp (2 * A)⌋₊,
      ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
    apply Finset.sum_nonneg
    intro n _
    exact div_nonneg (ArithmeticFunction.vonMangoldt_nonneg (n := n)) (Nat.cast_nonneg n)
  have hw := mul_nonpos_of_nonneg_of_nonpos (Real.exp_pos (t / 2)).le hc
  exact neg_nonneg.mpr (mul_nonpos_of_nonneg_of_nonpos hn hw)

/-- The negative continuous edge drift has an explicit genuine critical exponential budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de21df3c388d76f80d0b60f3337d6bdc373da706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
