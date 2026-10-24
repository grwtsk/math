# lowerCrossingTime_lt_upperCrossingTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50c73e40-a620-5a99-1925-e7896879b487",
  "kind": "theorem",
  "lexical_name": "lowerCrossingTime_lt_upperCrossingTime",
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
  "slug": "lowercrossingtime-lt-uppercrossingtime--1d885298227d99496f5520c7",
  "source": {
    "blob": "1d855d7a34126d0b80caf8ce38f3d19ed2df20d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 241,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d885298227d99496f5520c714512b07dd7d60b4af061b81fdd9a27a2aa34755",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c73e40-a620-5a99-1925-e7896879b487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerCrossingTime_lt_upperCrossingTime (hab : a < b)
    (hn : upperCrossingTime a b f N (n + 1) ω ≠ N) :
    lowerCrossingTime a b f N n ω < upperCrossingTime a b f N (n + 1) ω := by
  refine lt_of_le_of_ne lowerCrossingTime_le_upperCrossingTime_succ fun h =>
    not_le.2 hab <| le_trans (stoppedValue_upperCrossingTime hn) ?_
  simp only [stoppedValue]
  rw [← h]
  exact stoppedValue_lowerCrossingTime (h.symm ▸ hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Varianta80277adfdf1602d781b47d9fe07488969ad53a778a89a6dc26eef783259f728.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d855d7a34126d0b80caf8ce38f3d19ed2df20d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
