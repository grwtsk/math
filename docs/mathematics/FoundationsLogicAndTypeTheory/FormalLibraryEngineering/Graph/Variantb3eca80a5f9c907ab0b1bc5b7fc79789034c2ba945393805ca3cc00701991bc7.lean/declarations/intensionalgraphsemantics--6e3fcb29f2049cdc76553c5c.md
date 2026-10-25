# IntensionalGraphSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e6495359c30ddaf1bb31fc7aa459efea7cad8c85af82de94b83c61418310b30",
  "kind": "structure",
  "lexical_name": "IntensionalGraphSemantics",
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
  "slug": "intensionalgraphsemantics--6e3fcb29f2049cdc76553c5c",
  "source": {
    "blob": "652380dbe0c46e91c27ba54249084c923ffbeb29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e3fcb29f2049cdc76553c5c19667add44fd21cc1ae98ef07b3930d556723693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e6495359c30ddaf1bb31fc7aa459efea7cad8c85af82de94b83c61418310b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntensionalGraphSemantics
    {Coordinate : Type uCoordinate} {Edge : Type uEdge}
    (specification : SieveSpecification Coordinate)
    (graph : CoordinateGraph .Intensional Coordinate Edge) where
  evidenceArtifact : ArtifactRef .intensionalSemantics
  realize :
    ∀ {source target},
      specification.accepts source target →
        EdgeOccurrence graph source target
  reflects :
    ∀ {source target},
      EdgeOccurrence graph source target →
        specification.accepts source target

namespace IntensionalGraphSemantics

/-- Derived extensional characterization of intensional edge membership. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variantb3eca80a5f9c907ab0b1bc5b7fc79789034c2ba945393805ca3cc00701991bc7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652380dbe0c46e91c27ba54249084c923ffbeb29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
