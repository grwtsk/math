# martingale_of_condExp_sub_eq_zero_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fd2749e-60ca-c6cd-94a4-26bcabd369e5",
  "kind": "theorem",
  "lexical_name": "martingale_of_condExp_sub_eq_zero_nat",
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
  "slug": "martingale-of-condexp-sub-eq-zero-nat--d1b2b02e04251118769592db",
  "source": {
    "blob": "ea1b0afa81bb24d14de7568155f206e4b7b7dd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 436,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b2b02e04251118769592db5d7fbfb40ddb75d3908c9f06a3461be65705ac94",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fd2749e-60ca-c6cd-94a4-26bcabd369e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem martingale_of_condExp_sub_eq_zero_nat [IsFiniteMeasure μ] {f : ℕ → Ω → ℝ}
    (hadp : Adapted 𝒢 f) (hint : ∀ i, Integrable (f i) μ)
    (hf : ∀ i, μ[f (i + 1) - f i|𝒢 i] =ᵐ[μ] 0) : Martingale f 𝒢 μ := by
  refine martingale_iff.2 ⟨supermartingale_of_condExp_sub_nonneg_nat hadp hint fun i => ?_,
    submartingale_of_condExp_sub_nonneg_nat hadp hint fun i => (hf i).symm.le⟩
  rw [← neg_sub]
  refine (EventuallyEq.trans ?_ (condExp_neg ..).symm).le
  filter_upwards [hf i] with x hx
  simpa only [Pi.zero_apply, Pi.neg_apply, zero_eq_neg]

@[deprecated (since := "2025-01-21")]
alias martingale_of_condexp_sub_eq_zero_nat := martingale_of_condExp_sub_eq_zero_nat

-- Note that one cannot use `Submartingale.zero_le_of_predictable` to prove the other two
-- corresponding lemmas without imposing more restrictions to the ordering of `E`
/-- A predictable submartingale is a.e. greater equal than its initial state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant7053fd51a43abb979b4129ab8ab495c899f0ce32a8d6184d5a296f704a8f8ab1.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1b0afa81bb24d14de7568155f206e4b7b7dd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
