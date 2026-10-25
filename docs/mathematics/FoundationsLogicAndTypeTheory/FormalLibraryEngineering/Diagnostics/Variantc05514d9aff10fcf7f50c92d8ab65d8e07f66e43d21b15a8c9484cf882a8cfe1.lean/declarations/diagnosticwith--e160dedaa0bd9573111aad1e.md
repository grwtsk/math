# DiagnosticWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b32c05176d2d6ad0f6b7c16b5a0e7e359dadfdf49aa8d01a5f0dd85b9c998e86",
  "kind": "structure",
  "lexical_name": "DiagnosticWith",
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
  "slug": "diagnosticwith--e160dedaa0bd9573111aad1e",
  "source": {
    "blob": "9353793f7316dca0ba36b16a9fd6cec46e487441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e160dedaa0bd9573111aad1ed887ae56877eda15d9a934088d2898200309bf77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b32c05176d2d6ad0f6b7c16b5a0e7e359dadfdf49aa8d01a5f0dd85b9c998e86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiagnosticWith (α : Type) where
  /-- The range at which the message applies. -/
  range : Range
  /-- Extension: preserve semantic range of errors when truncating them for display purposes. -/
  fullRange? : Option Range := some range
  severity? : Option DiagnosticSeverity := none
  /--
  Extension: whether this diagnostic should not be displayed as a regular diagnostic in the editor.
  In VS Code, this means that the diagnostic does not have a squiggly and is not displayed in
  the InfoView under 'All Messages', but it is still displayed under 'Messages'.
  Defaults to `false`.
  -/
  isSilent? : Option Bool := none
  /-- The diagnostic's code, which might appear in the user interface. -/
  code? : Option DiagnosticCode := none
  /-- A human-readable string describing the source of this diagnostic, e.g. 'typescript' or 'super lint'. -/
  source? : Option String := none
  /-- Parametrised by the type of message data. LSP diagnostics use `String`,
  whereas in Lean's interactive diagnostics we use the type of widget-enriched text.
  See `Lean.Widget.InteractiveDiagnostic`. -/
  message : α
  /-- Additional metadata about the diagnostic. -/
  tags? : Option (Array DiagnosticTag) := none
  /-- Additional Lean-specific metadata about the diagnostic. -/
  leanTags? : Option (Array LeanDiagnosticTag) := none
  /-- An array of related diagnostic information, e.g. when symbol-names within a scope collide all definitions can be marked via this property. -/
  relatedInformation? : Option (Array DiagnosticRelatedInformation) := none
  /-- A data entry field that is preserved between a `textDocument/publishDiagnostics` notification and `textDocument/codeAction` request. -/
  data? : Option Json := none
  deriving Inhabited, BEq, ToJson, FromJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variantc05514d9aff10fcf7f50c92d8ab65d8e07f66e43d21b15a8c9484cf882a8cfe1.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9353793f7316dca0ba36b16a9fd6cec46e487441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
