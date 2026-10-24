# mode_correlation_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:216ef14f-22db-9a24-21a6-aa6900b6700b",
  "kind": "theorem",
  "lexical_name": "mode_correlation_scale",
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
  "slug": "mode-correlation-scale--bfa6f71249591e51fe220da1",
  "source": {
    "blob": "0d9a071e72df9dc3982087218e596d7c9c6d74da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa6f71249591e51fe220da13468d78916097abd2b27dc62e40205beff8a6911",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216ef14f-22db-9a24-21a6-aa6900b6700b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_correlation_scale (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) * A =
      Real.sqrt (modeWeight i * modeWeight j) / 2 := by
  have hi : 0 ≤ modeWeight i / (2*A) := div_nonneg (modeWeight_pos i).le (by positivity)
  have hj : 0 ≤ modeWeight j / (2*A) := div_nonneg (modeWeight_pos j).le (by positivity)
  have hs : ((Real.sqrt (modeWeight i / (2*A)) *
      Real.sqrt (modeWeight j / (2*A))) * A)^2 = modeWeight i * modeWeight j / 4 := by
    rw [mul_pow, mul_pow, Real.sq_sqrt hi, Real.sq_sqrt hj]
    field_simp
    ring
  have ht : (Real.sqrt (modeWeight i * modeWeight j) / 2)^2 =
      modeWeight i * modeWeight j / 4 := by
    rw [div_pow, Real.sq_sqrt (mul_nonneg (modeWeight_pos i).le (modeWeight_pos j).le)]
    norm_num
  have hp : 0 ≤ (Real.sqrt (modeWeight i / (2*A)) *
      Real.sqrt (modeWeight j / (2*A))) * A := by positivity
  have hq : 0 ≤ Real.sqrt (modeWeight i * modeWeight j) / 2 := by positivity
  nlinarith

/-- Actual normalized-mode correlation equals the positive branch on its full real domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9a071e72df9dc3982087218e596d7c9c6d74da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
