# ServerCapabilities

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60b3ea239ae5e9d0a2d9b3ac6bfe84ae3e429e238ef7a811a6c806b22d469820",
  "kind": "structure",
  "lexical_name": "ServerCapabilities",
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
  "slug": "servercapabilities--6fff670008782a6a5f758d44",
  "source": {
    "blob": "1ab226977b90f835362caf34d1e87e0681d3a4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Capabilities/Variant2ecc94e156235cee737d4265137f80dbdb3163212d7416d8c508bd7ce51de9c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fff670008782a6a5f758d4426b5cd44d85e4b7416133cfdce41691ada1acdf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Capabilities/Variant2ecc94e156235cee737d4265137f80dbdb3163212d7416d8c508bd7ce51de9c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60b3ea239ae5e9d0a2d9b3ac6bfe84ae3e429e238ef7a811a6c806b22d469820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ServerCapabilities where
  textDocumentSync?         : Option TextDocumentSyncOptions := none
  completionProvider?       : Option CompletionOptions       := none
  hoverProvider             : Bool                           := false
  documentHighlightProvider : Bool                           := false
  documentSymbolProvider    : Bool                           := false
  definitionProvider        : Bool                           := false
  declarationProvider       : Bool                           := false
  typeDefinitionProvider    : Bool                           := false
  referencesProvider        : Bool                           := false
  callHierarchyProvider     : Bool                           := false
  renameProvider?           : Option RenameOptions           := none
  workspaceSymbolProvider   : Bool                           := false
  foldingRangeProvider      : Bool                           := false
  semanticTokensProvider?   : Option SemanticTokensOptions   := none
  codeActionProvider?       : Option CodeActionOptions       := none
  inlayHintProvider?        : Option InlayHintOptions        := none
  signatureHelpProvider?    : Option SignatureHelpOptions    := none
  colorProvider?            : Option DocumentColorOptions    := none
  experimental?             : Option LeanServerCapabilities  := none
  deriving ToJson, FromJson

end Lsp
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Capabilities/Variant2ecc94e156235cee737d4265137f80dbdb3163212d7416d8c508bd7ce51de9c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Capabilities/Variant2ecc94e156235cee737d4265137f80dbdb3163212d7416d8c508bd7ce51de9c1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab226977b90f835362caf34d1e87e0681d3a4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
