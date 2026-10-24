# paperSources

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e5a83a0ca2cca3084084268142880ff8d38d8bfe55caba246d1052d56143cbb",
  "kind": "def",
  "lexical_name": "paperSources",
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
  "slug": "papersources--17cd12fdd0c15a93bc2c197b",
  "source": {
    "blob": "cbf8f50bad21324e7d7767762eb43dcf9c5fbca5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variant99f351f78498ad382bdc6915dde25ba5df13aaf0ba728262ccaa6081d86dffb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17cd12fdd0c15a93bc2c197b0e493009f59095427c832dad443d37d0c973ea4b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variant99f351f78498ad382bdc6915dde25ba5df13aaf0ba728262ccaa6081d86dffb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e5a83a0ca2cca3084084268142880ff8d38d8bfe55caba246d1052d56143cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def paperSources : List PaperSource := [
  { paperId := "1407.2975v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1407.2975v1.pdf"
    theoremLikeTargets := 16
    frameworkPrimitives := 0
    openMentions := 2 },
  { paperId := "1408.3951v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1408.3951v1.pdf"
    theoremLikeTargets := 92
    frameworkPrimitives := 50
    openMentions := 3 },
  { paperId := "1808.01536v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1808.01536v3.pdf"
    theoremLikeTargets := 43
    frameworkPrimitives := 12
    openMentions := 0 },
  { paperId := "1810.13309v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1810.13309v3.pdf"
    theoremLikeTargets := 28
    frameworkPrimitives := 16
    openMentions := 3 },
  { paperId := "1909.02324v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/1909.02324v3.pdf"
    theoremLikeTargets := 38
    frameworkPrimitives := 7
    openMentions := 9 },
  { paperId := "2004.08934v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2004.08934v3.pdf"
    theoremLikeTargets := 66
    frameworkPrimitives := 44
    openMentions := 5 },
  { paperId := "2005.11530v2"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2005.11530v2.pdf"
    theoremLikeTargets := 59
    frameworkPrimitives := 13
    openMentions := 11 },
  { paperId := "2012.11811v4"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2012.11811v4.pdf"
    theoremLikeTargets := 31
    frameworkPrimitives := 16
    openMentions := 8 },
  { paperId := "2211.10505v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2211.10505v1.pdf"
    theoremLikeTargets := 80
    frameworkPrimitives := 38
    openMentions := 3 },
  { paperId := "2408.15968v2"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2408.15968v2.pdf"
    theoremLikeTargets := 94
    frameworkPrimitives := 58
    openMentions := 1 },
  { paperId := "2410.12632v1"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2410.12632v1.pdf"
    theoremLikeTargets := 16
    frameworkPrimitives := 4
    openMentions := 2 },
  { paperId := "2506.04934v3"
    pdfPath := "/Users/local/Head/Think/docs/papers/trip/2506.04934v3.pdf"
    theoremLikeTargets := 41
    frameworkPrimitives := 46
    openMentions := 0 }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variant99f351f78498ad382bdc6915dde25ba5df13aaf0ba728262ccaa6081d86dffb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variant99f351f78498ad382bdc6915dde25ba5df13aaf0ba728262ccaa6081d86dffb2.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf8f50bad21324e7d7767762eb43dcf9c5fbca5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
