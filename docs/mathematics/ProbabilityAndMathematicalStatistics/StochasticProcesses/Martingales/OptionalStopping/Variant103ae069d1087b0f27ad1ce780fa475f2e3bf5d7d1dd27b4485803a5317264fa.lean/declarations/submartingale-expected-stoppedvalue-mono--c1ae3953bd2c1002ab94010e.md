# Submartingale.expected_stoppedValue_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe45de19-958c-d4b7-e28a-ed4ff778e9f8",
  "kind": "theorem",
  "lexical_name": "Submartingale.expected_stoppedValue_mono",
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
  "slug": "submartingale-expected-stoppedvalue-mono--c1ae3953bd2c1002ab94010e",
  "source": {
    "blob": "8bb4951050171b288755eaffc51c6a1e9af72019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 48,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ae3953bd2c1002ab94010e3e59ffdb7012c4c390d9179c1fd4680f1ba724e7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe45de19-958c-d4b7-e28a-ed4ff778e9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.expected_stoppedValue_mono [SigmaFiniteFiltration μ 𝒢]
    (hf : Submartingale f 𝒢 μ) (hτ : IsStoppingTime 𝒢 τ) (hπ : IsStoppingTime 𝒢 π) (hle : τ ≤ π)
    {N : ℕ} (hbdd : ∀ ω, π ω ≤ N) : μ[stoppedValue f τ] ≤ μ[stoppedValue f π] := by
  rw [← sub_nonneg, ← integral_sub', stoppedValue_sub_eq_sum' hle hbdd]
  · simp only [Finset.sum_apply]
    have : ∀ i, MeasurableSet[𝒢 i] {ω : Ω | τ ω ≤ i ∧ i < π ω} := by
      intro i
      refine (hτ i).inter ?_
      convert (hπ i).compl using 1
      ext x
      simp; rfl
    rw [integral_finset_sum]
    · refine Finset.sum_nonneg fun i _ => ?_
      rw [integral_indicator (𝒢.le _ _ (this _)), integral_sub', sub_nonneg]
      · exact hf.setIntegral_le (Nat.le_succ i) (this _)
      · exact (hf.integrable _).integrableOn
      · exact (hf.integrable _).integrableOn
    intro i _
    exact Integrable.indicator (Integrable.sub (hf.integrable _) (hf.integrable _))
      (𝒢.le _ _ (this _))
  · exact hf.integrable_stoppedValue hπ hbdd
  · exact hf.integrable_stoppedValue hτ fun ω => le_trans (hle ω) (hbdd ω)

/-- The converse direction of the optional stopping theorem, i.e. an adapted integrable process `f`
is a submartingale if for all bounded stopping times `τ` and `π` such that `τ ≤ π`, the
stopped value of `f` at `τ` has expectation smaller than its stopped value at `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb4951050171b288755eaffc51c6a1e9af72019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
