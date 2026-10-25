# SizeState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0987b04eca39e4cb2040b35795b4660d835b811023524a9a6aebcd1cb3cc6bb",
  "kind": "structure",
  "lexical_name": "SizeState",
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
  "slug": "sizestate--a5c01a8893f5f479060a1c7a",
  "source": {
    "blob": "a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5c01a8893f5f479060a1c7a00eb0376392fa1dac5ffe3e60ce9db576767c3ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0987b04eca39e4cb2040b35795b4660d835b811023524a9a6aebcd1cb3cc6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SizeState where
  /--
  Contains terms of the form `USize.toBitVec e` and `ISize.toBitVec e` that we will translate to
  constant width `BitVec`.
  -/
  relevantTerms : Std.HashSet Expr := {}
  /--
  Contains all hypotheses that contain terms from `relevantTerms`
  -/
  relevantHyps : Std.HashSet FVarId := {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
