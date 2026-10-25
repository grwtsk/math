# tryThisProvider

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:515cdada4ab3109d1f75d35651dc7dc56ba665ed44b81f33224af543c424541c",
  "kind": "def",
  "lexical_name": "tryThisProvider",
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
  "slug": "trythisprovider--db8345410dfa0dbe0e12c3d7",
  "source": {
    "blob": "7f62933eeebe64c6ed0135dd28b13636a908c6f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db8345410dfa0dbe0e12c3d7971bf6f0e0c1edb47aab81e438a4eff987e6f60d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:515cdada4ab3109d1f75d35651dc7dc56ba665ed44b81f33224af543c424541c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[code_action_provider] def tryThisProvider : CodeActionProvider := fun params snap => do
  let doc ← readDoc
  pure <| snap.infoTree.foldInfo (init := #[]) fun _ctx info result => Id.run do
    let .ofUserWidgetInfo { stx, widgetId := ``tryThisWidget, props } := info | result
    let some stxRange := stx.getRange? | result
    let stxRange := doc.meta.text.utf8RangeToLspRange stxRange
    unless stxRange.start.line ≤ params.range.end.line do return result
    unless params.range.start.line ≤ stxRange.end.line do return result
    let .ok range := props.getObjValAs? Lsp.Range "range" | panic! "bad type"
    let .ok suggestions := props.getObjVal? "suggestions" | panic! "bad type"
    let .ok suggestions := suggestions.getArr? | panic! "bad type"
    let mut result := result
    for h : i in [:suggestions.size] do
      let .ok newText := (suggestions[i]'h.2).getObjValAs? String "suggestion" | panic! "bad type"
      result := result.push {
        eager.title := "Try this: " ++ newText
        eager.kind? := "quickfix"
        -- Only make the first option preferred
        eager.isPreferred? := if i = 0 then true else none
        eager.edit? := some <| .ofTextEdit doc.versionedIdentifier { range, newText }
      }
    result

/-! # Formatting -/

/-- Yields `(indent, column)` given a `FileMap` and a `String.Range`, where `indent` is the number
of spaces by which the line that first includes `range` is initially indented, and `column` is the
column `range` starts at in that line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f62933eeebe64c6ed0135dd28b13636a908c6f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
