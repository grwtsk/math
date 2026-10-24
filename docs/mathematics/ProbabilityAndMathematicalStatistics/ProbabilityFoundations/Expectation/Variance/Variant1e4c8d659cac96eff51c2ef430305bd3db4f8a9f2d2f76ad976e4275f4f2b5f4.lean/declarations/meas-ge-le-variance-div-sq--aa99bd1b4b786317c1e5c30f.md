# meas_ge_le_variance_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e362ccad-6ef5-08a8-c876-0c1bdf2930f9",
  "kind": "theorem",
  "lexical_name": "meas_ge_le_variance_div_sq",
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
  "slug": "meas-ge-le-variance-div-sq--aa99bd1b4b786317c1e5c30f",
  "source": {
    "blob": "ad0659ef500b78f88913c5d1d3570ce665a1af31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 327,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa99bd1b4b786317c1e5c30f8d1636308c889d5e8ea26039fdc34facf95e4657",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e362ccad-6ef5-08a8-c876-0c1bdf2930f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_ge_le_variance_div_sq [IsFiniteMeasure μ] {X : Ω → ℝ} (hX : MemLp X 2 μ) {c : ℝ}
    (hc : 0 < c) : μ {ω | c ≤ |X ω - μ[X]|} ≤ ENNReal.ofReal (variance X μ / c ^ 2) := by
  rw [ENNReal.ofReal_div_of_pos (sq_pos_of_ne_zero hc.ne.symm), hX.ofReal_variance_eq]
  convert @meas_ge_le_evariance_div_sq _ _ _ _ hX.1 c.toNNReal (by simp [hc]) using 1
  · simp only [Real.coe_toNNReal', max_le_iff, abs_nonneg, and_true]
  · rw [ENNReal.ofReal_pow hc.le]
    rfl

-- Porting note: supplied `MeasurableSpace Ω` argument of `h` by unification
/-- The variance of the sum of two independent random variables is the sum of the variances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0659ef500b78f88913c5d1d3570ce665a1af31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
