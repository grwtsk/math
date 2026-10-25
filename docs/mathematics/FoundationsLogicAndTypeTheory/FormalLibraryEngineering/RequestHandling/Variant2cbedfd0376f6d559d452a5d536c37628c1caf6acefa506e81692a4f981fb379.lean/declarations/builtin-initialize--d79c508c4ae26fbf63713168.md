# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63cb8d85181ec3f3c97c4391643c594d50498f756bace70072d277c7f1ef7713",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--d79c508c4ae26fbf63713168",
  "source": {
    "blob": "9cf41c96dba2d38db15494ad8af2694071c3d991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d79c508c4ae26fbf637131689132d7108d1592fc7d53d0c62a672b289c0b7271",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63cb8d85181ec3f3c97c4391643c594d50498f756bace70072d277c7f1ef7713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerLspRequestHandler
    "textDocument/waitForDiagnostics"
    WaitForDiagnosticsParams
    WaitForDiagnostics
    handleWaitForDiagnostics
  registerLspRequestHandler
    "textDocument/completion"
    CompletionParams
    ResolvableCompletionList
    handleCompletion
    (serialize? := some (·.compressFast))
  registerLspRequestHandler
    "completionItem/resolve"
    CompletionItem
    CompletionItem
    handleCompletionItemResolve
  registerLspRequestHandler
    "textDocument/hover"
    HoverParams
    (Option Hover)
    handleHover
  registerLspRequestHandler
    "textDocument/declaration"
    TextDocumentPositionParams
    (Array LeanLocationLink)
    (handleDefinition GoToKind.declaration)
  registerLspRequestHandler
    "textDocument/definition"
    TextDocumentPositionParams
    (Array LeanLocationLink)
    (handleDefinition GoToKind.definition)
  registerLspRequestHandler
    "textDocument/typeDefinition"
    TextDocumentPositionParams
    (Array LeanLocationLink)
    (handleDefinition GoToKind.type)
  registerLspRequestHandler
    "textDocument/documentHighlight"
    DocumentHighlightParams
    DocumentHighlightResult
    handleDocumentHighlight
  registerLspRequestHandler
    "textDocument/documentSymbol"
    DocumentSymbolParams
    DocumentSymbolResult
    handleDocumentSymbol
  registerLspRequestHandler
    "textDocument/foldingRange"
    FoldingRangeParams
    (Array FoldingRange)
    handleFoldingRange
  registerLspRequestHandler
    "textDocument/signatureHelp"
    SignatureHelpParams
    (Option SignatureHelp)
    handleSignatureHelp
  registerLspRequestHandler
    "textDocument/documentColor"
    DocumentColorParams
    (Array ColorInformation)
    handleDocumentColor
  registerLspRequestHandler
    "$/lean/plainGoal"
    PlainGoalParams
    (Option PlainGoal)
    handlePlainGoal
  registerLspRequestHandler
    "$/lean/plainTermGoal"
    PlainTermGoalParams
    (Option PlainTermGoal)
    handlePlainTermGoal

end Lean.Server.FileWorker
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cf41c96dba2d38db15494ad8af2694071c3d991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
