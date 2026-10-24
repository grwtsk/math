# scaledHoleExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c6f6217b6619e4163030907098023e86eb1023c929130a153fa33c710aafedb",
  "kind": "def",
  "lexical_name": "scaledHoleExample",
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
  "slug": "scaledholeexample--e0924a67933c9e66f208578e",
  "source": {
    "blob": "f7e948e25e78e47020d6dc82ac2d7c403cfd1eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0924a67933c9e66f208578e7a353627284e9499732dc2be8d6e34d1677a3c23",
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

Occurrence: `declaration:9c6f6217b6619e4163030907098023e86eb1023c929130a153fa33c710aafedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scaledHoleExample :
    RectangleHoleConfiguration ((-6 : ℂ) - 6 * I) (6 + 6 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 2 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant9bc916d6ab0b1928b1e80cce14cd9ad3001e7e9bee3b56c916b9a153d156257a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e948e25e78e47020d6dc82ac2d7c403cfd1eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
