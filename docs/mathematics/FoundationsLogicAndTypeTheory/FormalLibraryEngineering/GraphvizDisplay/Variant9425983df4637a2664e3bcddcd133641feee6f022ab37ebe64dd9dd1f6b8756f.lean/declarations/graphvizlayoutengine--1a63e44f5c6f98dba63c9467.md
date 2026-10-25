# GraphvizLayoutEngine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a58e104181ca50379cebbf88f9dfec8d07bb11d1cb8311d8747cee1beae2bdc4",
  "kind": "inductive",
  "lexical_name": "GraphvizLayoutEngine",
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
  "slug": "graphvizlayoutengine--1a63e44f5c6f98dba63c9467",
  "source": {
    "blob": "009d2812e6198fce991f617b96a12ebbfb2c6766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphvizDisplay/Variant9425983df4637a2664e3bcddcd133641feee6f022ab37ebe64dd9dd1f6b8756f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a63e44f5c6f98dba63c94674988bdd3e6e56c7c46cb1346c5eb2891887f0d81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphvizDisplay/Variant9425983df4637a2664e3bcddcd133641feee6f022ab37ebe64dd9dd1f6b8756f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a58e104181ca50379cebbf88f9dfec8d07bb11d1cb8311d8747cee1beae2bdc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GraphvizLayoutEngine where
  | circo | dot | fdp | sfdp | neato | osage | patchwork | twopi
  deriving Inhabited, FromJson, ToJson

/-- Options passed to the d3-graphviz renderer.
See https://github.com/magjac/d3-graphviz#selection_graphviz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphvizDisplay/Variant9425983df4637a2664e3bcddcd133641feee6f022ab37ebe64dd9dd1f6b8756f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphvizDisplay/Variant9425983df4637a2664e3bcddcd133641feee6f022ab37ebe64dd9dd1f6b8756f.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009d2812e6198fce991f617b96a12ebbfb2c6766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
