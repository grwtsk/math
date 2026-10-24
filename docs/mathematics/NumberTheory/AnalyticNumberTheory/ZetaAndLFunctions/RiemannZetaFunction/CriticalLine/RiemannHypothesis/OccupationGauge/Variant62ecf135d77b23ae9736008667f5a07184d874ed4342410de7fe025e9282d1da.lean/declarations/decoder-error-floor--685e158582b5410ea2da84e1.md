# decoder_error_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e886b12b-3fe5-50f9-eaa8-be51b2717cc5",
  "kind": "theorem",
  "lexical_name": "decoder_error_floor",
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
  "slug": "decoder-error-floor--685e158582b5410ea2da84e1",
  "source": {
    "blob": "bc4b90de93fa00505b0a9461470947763fe0843d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variant62ecf135d77b23ae9736008667f5a07184d874ed4342410de7fe025e9282d1da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685e158582b5410ea2da84e18e0cf5537f6d0ce05545dc242856a7fc9b925964",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variant62ecf135d77b23ae9736008667f5a07184d874ed4342410de7fe025e9282d1da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e886b12b-3fe5-50f9-eaa8-be51b2717cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decoder_error_floor (decode : ((Fin 2 → ℝ) → ℝ) → ℝ) :
    (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (1 / 4))) - (1 / 4)| ∨
      (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (-1 / 4))) - (-1 / 4)| := by
  have hq : occupationQueries (kernel (-1 / 4)) =
      occupationQueries (kernel (1 / 4)) := by
    simpa only [neg_div] using (complete_queries_ignore_off_diagonal_sign (1 / 4)).symm
  rw [hq]
  by_contra h
  push Not at h
  have hp := (abs_lt.mp h.1).1
  have hm := (abs_lt.mp h.2).2
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variant62ecf135d77b23ae9736008667f5a07184d874ed4342410de7fe025e9282d1da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OccupationGauge/Variant62ecf135d77b23ae9736008667f5a07184d874ed4342410de7fe025e9282d1da.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc4b90de93fa00505b0a9461470947763fe0843d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
