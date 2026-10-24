# LocalToGlobalCarlesonData.levelContribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52856b96dfd976fd41e4dbe77c3b0c84c4995ec639934857fc27a61a2511da0a",
  "kind": "def",
  "lexical_name": "LocalToGlobalCarlesonData.levelContribution",
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
  "slug": "localtoglobalcarlesondata-levelcontribution--bc5f4e097d7679b26d93b086",
  "source": {
    "blob": "9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc5f4e097d7679b26d93b0864546336064889ef00ae426d8298f7ec0d5ff1913",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52856b96dfd976fd41e4dbe77c3b0c84c4995ec639934857fc27a61a2511da0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocalToGlobalCarlesonData.levelContribution
    (data : LocalToGlobalCarlesonData) (level : data.Depth) :
    EuclideanSpace ℂ data.Interval :=
  ∑ node : data.Node,
    if data.depth node = level then data.contribution node else 0

/-- Sum of every node contribution. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant2127df67bdb06896550620855a49c7d003037ae82a9209a8a969c945bd4972a5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9715f8fdd91cd80cbd623b7e2cfb1bbf6f8f92d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
