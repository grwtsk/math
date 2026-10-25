# RuntimeBindingDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4850376d7c5c122e0bc92e4fd054f45bf9c14adb4defa2187ecd14cdf91ec448",
  "kind": "structure",
  "lexical_name": "RuntimeBindingDescriptor",
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
  "slug": "runtimebindingdescriptor--71ae03b8c3a15a61f503787b",
  "source": {
    "blob": "c874efc0d8e260626ea3ff9e7313207aa225a5f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A55a49d4223fcb4e6/Variant8df9e1888fcd4d1172831648c7c95a3d828e9676f3022642ccce1cefa5882619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71ae03b8c3a15a61f503787b69491a6589e16add2ba279a216c7e93877c834ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A55a49d4223fcb4e6/Variant8df9e1888fcd4d1172831648c7c95a3d828e9676f3022642ccce1cefa5882619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4850376d7c5c122e0bc92e4fd054f45bf9c14adb4defa2187ecd14cdf91ec448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RuntimeBindingDescriptor where
  id : RuntimeBindingId
  conceptId : ConceptId
  operationId : StableId
  inputSchema : StableId
  outputSchema : StableId
  failureSchema : StableId
  refinementDeclaration : Option StableId
  sourceDigest : Digest
  authority : RuntimeAuthority
  deriving DecidableEq

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A55a49d4223fcb4e6/Variant8df9e1888fcd4d1172831648c7c95a3d828e9676f3022642ccce1cefa5882619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A55a49d4223fcb4e6/Variant8df9e1888fcd4d1172831648c7c95a3d828e9676f3022642ccce1cefa5882619.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c874efc0d8e260626ea3ff9e7313207aa225a5f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
