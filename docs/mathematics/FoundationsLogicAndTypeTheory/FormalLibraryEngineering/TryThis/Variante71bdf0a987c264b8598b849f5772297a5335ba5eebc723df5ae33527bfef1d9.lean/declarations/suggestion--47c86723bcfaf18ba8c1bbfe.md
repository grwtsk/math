# Suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268f4ec694fd0980d966cae001c5666e5882157943373f9e3eddd08dba7c7c05",
  "kind": "structure",
  "lexical_name": "Suggestion",
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
  "slug": "suggestion--47c86723bcfaf18ba8c1bbfe",
  "source": {
    "blob": "b54e1160df2aa69c282941fbc673d99e5eef708d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c86723bcfaf18ba8c1bbfe2cddd0efc745188849da883754508449c41e8101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268f4ec694fd0980d966cae001c5666e5882157943373f9e3eddd08dba7c7c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Suggestion where
  /-- Text to be used as a replacement via a code action. -/
  suggestion : SuggestionText
  /-- Optional info to be printed immediately before replacement text in a widget. -/
  preInfo? : Option String := none
  /-- Optional info to be printed immediately after replacement text in a widget. -/
  postInfo? : Option String := none
  /-- Optional style specification for the suggestion. If `none` (the default), the suggestion is
  styled as a text link. Otherwise, the suggestion can be styled as:
  * a status: `.error`, `.warning`, `.success`
  * a hypothesis name: `.asHypothesis`, `.asInaccessible`
  * a variable color: `.value (t : Float)`, which draws from a red-yellow-green gradient, with red
  at `0.0` and green at `1.0`.

  See `SuggestionStyle` for details.

  Note that this property is used only by the "try this" widget; it is ignored by the inline hint
  widget. -/
  style? : Option SuggestionStyle := none
  /-- How to represent the suggestion as `MessageData`. This is used only in the text of the
  widget diagnostic.
  If `none`, we use `suggestion`. Use `toMessageData` to render a `Suggestion` in this manner. -/
  messageData? : Option MessageData := none
  /-- How to construct the text that appears in the lightbulb menu from the suggestion text. If
  `none`, we use `fun ppSuggestionText => "Try this: " ++ ppSuggestionText`. Only the pretty-printed
  `suggestion : SuggestionText` is used here. -/
  toCodeActionTitle? : Option (String → String) := none
  deriving Inhabited

attribute [deprecated "The `style?` property is not used anymore." (since := "2025-08-14")] Suggestion.style?

/- Use `toMessageData` of the suggestion text. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variante71bdf0a987c264b8598b849f5772297a5335ba5eebc723df5ae33527bfef1d9.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54e1160df2aa69c282941fbc673d99e5eef708d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
