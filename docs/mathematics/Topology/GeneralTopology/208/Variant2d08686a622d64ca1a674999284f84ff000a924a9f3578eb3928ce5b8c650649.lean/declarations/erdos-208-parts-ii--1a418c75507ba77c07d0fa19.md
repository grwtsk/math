# erdos_208.parts.ii

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b33330f-5d58-ac04-9c28-aa31c79d136a",
  "kind": "theorem",
  "lexical_name": "erdos_208.parts.ii",
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
  "slug": "erdos-208-parts-ii--1a418c75507ba77c07d0fa19",
  "source": {
    "blob": "587c9ef7fb4731fbda0cc97faadae945793b7891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/208/Variant2d08686a622d64ca1a674999284f84ff000a924a9f3578eb3928ce5b8c650649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a418c75507ba77c07d0fa196243ee9ad7aa62e137768c75def1dd256651bebf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/208/Variant2d08686a622d64ca1a674999284f84ff000a924a9f3578eb3928ce5b8c650649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b33330f-5d58-ac04-9c28-aa31c79d136a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_208.parts.ii : answer(sorry) ↔ ∃ (c : ℕ → ℝ), (c =o[atTop] (1 : ℕ → ℝ)) ∧ ∀ᶠ n in atTop,
      s (n + 1) - s n ≤ (1 + (c n)) * (π^2 / 6) * log (s n) / log (log (s n)) := by
  sorry

/--
In [Er79] Erdős says perhaps $s_{n+1} - s_n \ll \log s_n$, but he is 'very doubtful'.

[Er79] Erdős, Paul, __Some unconventional problems in number theory__. Math. Mag. (1979), 67-70.
-/
@[category research open, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/208/Variant2d08686a622d64ca1a674999284f84ff000a924a9f3578eb3928ce5b8c650649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/208/Variant2d08686a622d64ca1a674999284f84ff000a924a9f3578eb3928ce5b8c650649.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587c9ef7fb4731fbda0cc97faadae945793b7891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
