# sacScore_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb18f90-52ce-49af-d839-879e8b9de69f",
  "kind": "theorem",
  "lexical_name": "sacScore_le_one",
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
  "slug": "sacscore-le-one--d83dff31f5c0b92ec6be10de",
  "source": {
    "blob": "2d00ee9c03cd9f493f70e5c4d08c5ded99110181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 527,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d83dff31f5c0b92ec6be10dea4aee36df32ee3cbc19728436c5d4eb826a1f926",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb18f90-52ce-49af-d839-879e8b9de69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sacScore_le_one {n : Nat} (H : Bits n → Bits n) :
    sacScore H ≤ 1 := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn]
    have hden : (0 : ℚ) ≤ ((n * n : Nat) : ℚ) := by positivity
    have hquot :
        0 ≤ (∑ i : Fin n, ∑ j : Fin n,
          |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) :=
      div_nonneg (bias_sum_nonneg H) hden
    linarith

/-- The absolute-bias score equals one exactly at strict SAC balance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d00ee9c03cd9f493f70e5c4d08c5ded99110181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
