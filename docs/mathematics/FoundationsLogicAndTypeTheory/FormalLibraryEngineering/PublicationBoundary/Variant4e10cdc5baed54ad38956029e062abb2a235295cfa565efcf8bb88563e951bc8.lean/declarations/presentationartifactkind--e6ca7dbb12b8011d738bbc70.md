# PresentationArtifactKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6248e4643a9cef57f2608c73ecdbee8ee3c7f7a9729c5e25fd36d9c2669df9b7",
  "kind": "inductive",
  "lexical_name": "PresentationArtifactKind",
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
  "slug": "presentationartifactkind--e6ca7dbb12b8011d738bbc70",
  "source": {
    "blob": "7a8302038cb3d5c29683f127257ec4bd7226a28b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicationBoundary/Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6ca7dbb12b8011d738bbc70bf6d14d427c1c4f013f795628595fa444fe176f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicationBoundary/Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6248e4643a9cef57f2608c73ecdbee8ee3c7f7a9729c5e25fd36d9c2669df9b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PresentationArtifactKind where
  | generatedDeclarationAtlas
  | conventionalMathematicalManuscript
  | formalizationAppendix
deriving DecidableEq, Repr

/--
Publication boundary for the `lean-formal-latex` output.

The generated project is a declaration atlas and documentation artifact. It is
not a conventional mathematical manuscript, not a paper proof, and not the
authoritative formal source.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicationBoundary/Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PublicationBoundary/Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8302038cb3d5c29683f127257ec4bd7226a28b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
