# sum_tail_le_covariance_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb2e11fe-8d53-b8fb-f514-ed0a9045cc80",
  "kind": "theorem",
  "lexical_name": "sum_tail_le_covariance_budget",
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
  "slug": "sum-tail-le-covariance-budget--6f81c23b554626404040e562",
  "source": {
    "blob": "1c49ae90144e6520060bc1268c0d25e8df9a577c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 13,
    "path": "GRWTSK/Probability/Moments/FiniteCovarianceTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f81c23b554626404040e56209cba6935a6f5e41d1e149bbacbf60d3edcc4539",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteCovarianceTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2e11fe-8d53-b8fb-f514-ed0a9045cc80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_tail_le_covariance_budget (X : ι → Ω → ℝ) (C δ ε : ℝ)
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hdiag : ∀ i, Var[X i; μ] ≤ C)
    (hoff : ∀ i j, i ≠ j → cov[X i, X j; μ] ≤ δ) (hε : 0 < ε) :
    μ {ω | ε ≤ |(∑ i, X i ω) - μ[fun z => ∑ i, X i z]|} ≤
      ENNReal.ofReal (((Fintype.card ι : ℝ) * C +
        (Fintype.card ι : ℝ) * ((Fintype.card ι : ℝ) - 1) * δ) / ε ^ 2) := by
  have hs : MemLp (fun ω => ∑ i, X i ω) 2 μ := by
    simpa using memLp_finsetSum Finset.univ (fun i _ => hX i)
  exact (meas_ge_le_variance_div_sq hs hε).trans
    (ENNReal.ofReal_le_ofReal (div_le_div_of_nonneg_right
      (variance_sum_le_covariance_budget X C δ hX hdiag hoff) (sq_nonneg ε)))

/-- The average has an actual expectation-centered probability bound.
Its off-diagonal term only vanishes when independently controlled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteCovarianceTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Probability/Moments/FiniteCovarianceTail.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c49ae90144e6520060bc1268c0d25e8df9a577c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
