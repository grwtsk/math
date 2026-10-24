# LSeries.abscissaOfAbsConv_logMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a24abfc1-d003-b91b-e4a5-f2bbc72aba3f",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_logMul",
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
  "slug": "lseries-abscissaofabsconv-logmul--0be6f193e3ed46a62f0ea5ee",
  "source": {
    "blob": "df4570e0aad7d9cc41e0bc21d5bab221ccc89e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0be6f193e3ed46a62f0ea5eefce99bdfc38db4614a50072e4c3c99e05019e90b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a24abfc1-d003-b91b-e4a5-f2bbc72aba3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_logMul {f : ℕ → ℂ} :
    abscissaOfAbsConv (logMul f) = abscissaOfAbsConv f := by
  apply le_antisymm <;> refine abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable' fun s hs ↦ ?_
  · exact LSeriesSummable_logMul_of_lt_re <| by simp [hs]
  · refine (LSeriesSummable_of_abscissaOfAbsConv_lt_re <| by simp [hs])
      |>.norm.of_norm_bounded_eventually_nat (‖term (logMul f) s ·‖) ?_
    filter_upwards [Filter.eventually_ge_atTop <| max 1 (Nat.ceil (Real.exp 1))] with n hn
    simp only [term_of_ne_zero (show n ≠ 0 by omega), logMul, norm_mul, mul_div_assoc,
      ← natCast_log, norm_real]
    refine le_mul_of_one_le_left (norm_nonneg _) (.trans ?_ <| Real.le_norm_self _)
    simpa using Real.log_le_log (Real.exp_pos 1) <| Nat.ceil_le.mp <| (le_max_right _ _).trans hn

/-!
### Higher derivatives of L-series
-/

/-- The abscissa of absolute convergence of the point-wise product of a power of `log` and `f`
is the same as that of `f`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Deriv/Variant6f0afe62120df47e017cf631a999561dfc6b9c6091ed07fe5311c01c562a3034.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4570e0aad7d9cc41e0bc21d5bab221ccc89e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
