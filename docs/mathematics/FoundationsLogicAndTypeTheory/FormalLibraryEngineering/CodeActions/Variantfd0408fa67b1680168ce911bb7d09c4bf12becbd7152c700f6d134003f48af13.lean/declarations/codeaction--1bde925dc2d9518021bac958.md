# CodeAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ad301d5912debe815949a85951102ec7e233ec24304c1b5fb39c8c447948e34",
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
  "slug": "codeaction--1bde925dc2d9518021bac958",
  "source": {
    "blob": "4a19f51ba610750a956f80d7a9ee063651b90a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bde925dc2d9518021bac958cdf319d06be553ecd6dd5595e30bb316d26ae3d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ad301d5912debe815949a85951102ec7e233ec24304c1b5fb39c8c447948e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–133.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a19f51ba610750a956f80d7a9ee063651b90a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
