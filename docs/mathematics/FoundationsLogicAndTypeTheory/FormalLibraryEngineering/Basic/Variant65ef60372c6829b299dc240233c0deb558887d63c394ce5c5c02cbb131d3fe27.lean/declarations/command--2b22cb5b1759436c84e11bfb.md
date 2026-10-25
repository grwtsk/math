# Command

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25482614ed3d7bde2b1150fbe5afae45d9a6419b8319f6c91ffb16897e20bf1f",
  "kind": "structure",
  "lexical_name": "Command",
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
  "slug": "command--2b22cb5b1759436c84e11bfb",
  "source": {
    "blob": "ee3c970c401054f3f7fcda360e52f1dd8661e02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b22cb5b1759436c84e11bfbfe8e908f75242f1fa6d226da035aa68a73f3bea3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25482614ed3d7bde2b1150fbe5afae45d9a6419b8319f6c91ffb16897e20bf1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Command where
  /-- Title of the command, like `save`. -/
  title : String
  /-- The identifier of the actual command handler. -/
  command : String
  /-- Arguments that the command handler should be invoked with. -/
  arguments? : Option (Array Json) := none
  deriving ToJson, FromJson

/-- A snippet is a string that gets inserted into a document,
and can afterwards be edited by the user in a structured way.

Snippets contain instructions that
specify how this structured editing should proceed.
They are expressed in a domain-specific language
based on one from TextMate,
including the following constructs:
- Designated positions for subsequent user input,
  called "tab stops" after their most frequently-used keybinding.
  They are denoted with `$1`, `$2`, and so forth.
  `$0` denotes where the cursor should be positioned after all edits are completed,
  defaulting to the end of the string.
  Snippet tab stops are unrelated to tab stops used for indentation.
- Tab stops with default values, called _placeholders_, written `${1:default}`.
  The default may itself contain a tab stop or a further placeholder
  and multiple options to select from may be provided
  by surrounding them with `|`s and separating them with `,`,
  as in `${1|if $2 then $3 else $4,if let $2 := $3 then $4 else $5|}`.
- One of a set of predefined variables that are replaced with their values.
  This includes the current line number (`$TM_LINE_NUMBER`)
  or the text that was selected when the snippet was invoked (`$TM_SELECTED_TEXT`).
- Formatting instructions to modify variables using regular expressions
  or a set of predefined filters.

The full syntax and semantics of snippets,
including the available variables and the rules for escaping control characters,
are described in the [LSP specification](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#snippet_syntax). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c970c401054f3f7fcda360e52f1dd8661e02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
