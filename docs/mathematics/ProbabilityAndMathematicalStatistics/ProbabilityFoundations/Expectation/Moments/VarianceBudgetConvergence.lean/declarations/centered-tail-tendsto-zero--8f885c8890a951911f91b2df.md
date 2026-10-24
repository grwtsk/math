# centered_tail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03e5576a-8800-57e2-49f6-b7a8710c666f",
  "kind": "theorem",
  "lexical_name": "centered_tail_tendsto_zero",
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
  "slug": "centered-tail-tendsto-zero--8f885c8890a951911f91b2df",
  "source": {
    "blob": "742824137da63aee8e62dbeae335baa34a6892ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f885c8890a951911f91b2df94bd88c033ce1208d318f36783a928e289e1baa2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/VarianceBudgetConvergence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e5576a-8800-57e2-49f6-b7a8710c666f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_tail_tendsto_zero (Y : ℕ → Ω → ℝ) (budget : ℕ → ℝ)
    (hY : ∀ n, MemLp (Y n) 2 μ) (hbound : ∀ n, Var[Y n; μ] ≤ budget n)
    (hbudget : Tendsto budget atTop (𝓝 0)) (ε : ℝ) (hε : 0 < ε) :
    Tendsto (fun n => μ {ω | ε ≤ |Y n ω - μ[Y n]|}) atTop (𝓝 0) := by
  have upper : Tendsto (fun n => ENNReal.ofReal (budget n / ε ^ 2)) atTop (𝓝 0) := by
    have h := ENNReal.continuous_ofReal.continuousAt.tendsto.comp (hbudget.div_const (ε ^ 2))
    simpa only [Function.comp_def, zero_div, ENNReal.ofReal_zero] using h
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds upper (fun _ => bot_le)
  intro n
  exact (meas_ge_le_variance_div_sq (hY n) hε).trans
    (ENNReal.ofReal_le_ofReal (div_le_div_of_nonneg_right (hbound n) (sq_nonneg ε)))
end GRWTSK.Probability.Moments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/VarianceBudgetConvergence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742824137da63aee8e62dbeae335baa34a6892ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
