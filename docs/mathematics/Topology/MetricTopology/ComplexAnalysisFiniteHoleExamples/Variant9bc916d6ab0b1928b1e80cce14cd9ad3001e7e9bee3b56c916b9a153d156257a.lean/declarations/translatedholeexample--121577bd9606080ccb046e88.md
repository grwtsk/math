# translatedHoleExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e79facafc30448ddaa8dc214ce94f441ad32f674d1b20c0a36d87f3e546b0709",
  "kind": "def",
  "lexical_name": "translatedHoleExample",
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
  "slug": "translatedholeexample--121577bd9606080ccb046e88",
  "source": {
    "blob": "f7e948e25e78e47020d6dc82ac2d7c403cfd1eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:121577bd9606080ccb046e886d7cfb1c4b2b64e68caad8a1ade372d7c330fb5e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e79facafc30448ddaa8dc214ce94f441ad32f674d1b20c0a36d87f3e546b0709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def translatedHoleExample :
    RectangleHoleConfiguration ((-1 : ℂ) - 2 * I) (5 + 4 * I) :=
  RectangleHoleConfiguration.singleton _ _ (2 + I) 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- A uniformly enlarged rectangle and central disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e948e25e78e47020d6dc82ac2d7c403cfd1eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
