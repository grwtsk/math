# CodeAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee7ce6f87c2bd40a4a849ccd0415b259f39c92a47351c0b1059ca8eb1727ef35",
  "kind": "structure",
  "lexical_name": "CodeAction",
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
  "slug": "codeaction--27edff4b20100d011e93908c",
  "source": {
    "blob": "c114ac6fba2477f00a556daa24af81f2b9893b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variant66c65a8f43242e8705ffe8cf125ba13f2548432708329d26709f31ca53455b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27edff4b20100d011e93908c31366dc48b7fc9868e558289c1f532e2b059e7bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variant66c65a8f43242e8705ffe8cf125ba13f2548432708329d26709f31ca53455b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee7ce6f87c2bd40a4a849ccd0415b259f39c92a47351c0b1059ca8eb1727ef35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CodeAction extends WorkDoneProgressParams, PartialResultParams where
  /-- A short, human-readable, title for this code action. -/
  title        : String
  /-- The kind of the code action. -/
  kind?        : Option CodeActionKind := none
  /-- The diagnostics that this code action resolves. -/
  diagnostics? : Option (Array Diagnostic) := none
  /-- Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted by keybindings. -/
  isPreferred? : Option Bool := none
  /-- Marks that the code action cannot currently be applied. -/
  disabled?    : Option CodeActionDisabled := none
  /-- The workspace edit this code action performs. -/
  edit?        : Option WorkspaceEdit := none
  /-- A command this code action executes.

  If a code action provides an edit and a command, first the edit is executed and then the command. -/
  command?     : Option Command := none
  /-- A data entry field that is preserved on a code action between a `textDocument/codeAction` and a `codeAction/resolve` request.
  In particular, for Lean-created commands we expect `data` to have a `uri : DocumentUri` field so that `FileSource` can be implemented.
   -/
  data?        : Option Json := none
  deriving ToJson, FromJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variant66c65a8f43242e8705ffe8cf125ba13f2548432708329d26709f31ca53455b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variant66c65a8f43242e8705ffe8cf125ba13f2548432708329d26709f31ca53455b6d.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c114ac6fba2477f00a556daa24af81f2b9893b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
