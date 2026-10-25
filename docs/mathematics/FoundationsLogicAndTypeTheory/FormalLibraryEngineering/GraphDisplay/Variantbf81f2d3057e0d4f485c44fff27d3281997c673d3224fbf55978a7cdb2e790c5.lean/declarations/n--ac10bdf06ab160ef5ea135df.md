# $n

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c391cf06062c631a442cf9bb77376a7ae7b11327eef6bc8ca4954d6e45c124a",
  "kind": "abbrev",
  "lexical_name": "$n",
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
  "slug": "n--ac10bdf06ab160ef5ea135df",
  "source": {
    "blob": "7c1f7a13821dbf75900cbc3b51bb6b497811cf6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphDisplay/Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac10bdf06ab160ef5ea135df4954f7ba356d823299a055cdc21c9dba4fdccd34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphDisplay/Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c391cf06062c631a442cf9bb77376a7ae7b11327eef6bc8ca4954d6e45c124a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    abbrev $n := @$(mkIdent <| `ForceGraphDisplay ++ n.getId))

#reexport mkCircle
#reexport BoundingShape
#reexport Vertex
#reexport Edge
#reexport ForceCenterParams
#reexport ForceCollideParams
#reexport ForceLinkParams
#reexport ForceManyBodyParams
#reexport ForceXParams
#reexport ForceYParams
#reexport ForceRadialParams
#reexport ForceParams
#reexport Props

end GraphDisplay

@[deprecated ForceGraphDisplay (since := "2026-06-25")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphDisplay/Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GraphDisplay/Variantbf81f2d3057e0d4f485c44fff27d3281997c673d3224fbf55978a7cdb2e790c5.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1f7a13821dbf75900cbc3b51bb6b497811cf6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
