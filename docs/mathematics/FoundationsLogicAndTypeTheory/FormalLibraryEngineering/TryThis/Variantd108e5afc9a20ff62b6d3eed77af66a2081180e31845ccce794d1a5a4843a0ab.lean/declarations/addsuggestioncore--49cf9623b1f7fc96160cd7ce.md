# addSuggestionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ad92452b5539e44fe09b243c2c99775bace15b47726061692110a107669d0e5",
  "kind": "def",
  "lexical_name": "addSuggestionCore",
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
  "slug": "addsuggestioncore--49cf9623b1f7fc96160cd7ce",
  "source": {
    "blob": "3f174a8a100015c5623c0c032494c82960e3f00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49cf9623b1f7fc96160cd7cedb577012fb1aef3e11d3d2356525b3cdcad62df8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ad92452b5539e44fe09b243c2c99775bace15b47726061692110a107669d0e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addSuggestionCore (ref : Syntax) (suggestions : Array Suggestion)
    (header : String) (isInline : Bool) (origSpan? : Option Syntax := none)
    (style? : Option SuggestionStyle := none) : CoreM Unit := do
  if let some range := (origSpan?.getD ref).getRange? then
    let map ← getFileMap
    -- FIXME: this produces incorrect results when `by` is at the beginning of the line, i.e.
    -- replacing `tac` in `by tac`, because the next line will only be 2 space indented
    -- (less than `tac` which starts at column 3)
    let (indent, column) := getIndentAndColumn map range
    let suggestions ← suggestions.mapM (·.toJsonM (indent := indent) (column := column))
    let stxRange := ref.getRange?.getD range
    let stxRange :=
      { start := map.lineStart (map.toPosition stxRange.start).line
        stop := map.lineStart ((map.toPosition stxRange.stop).line + 1) }
    Widget.saveWidgetInfo ``tryThisWidget (.ofRange stxRange) (props := json% {
      suggestions: $suggestions,
      range: $(map.utf8RangeToLspRange range),
      header: $header,
      isInline: $isInline,
      style: $style?
    })


/-- Add a "try this" suggestion. This has three effects:

* An info diagnostic is displayed saying `Try this: <suggestion>`
* A widget is registered, saying `Try this: <suggestion>` with a link on `<suggestion>` to apply
  the suggestion
* A code action is added, which will apply the suggestion.

The parameters are:
* `ref`: the span of the info diagnostic
* `s`: a `Suggestion`, which contains
  * `suggestion`: the replacement text;
  * `preInfo?`: an optional string shown immediately after the replacement text in the widget
    message (only)
  * `postInfo?`: an optional string shown immediately after the replacement text in the widget
    message (only)
  * `style?`: an optional `Json` object used as the value of the `style` attribute of the
    suggestion text's element (not the whole suggestion element).
  * `messageData?`: an optional message to display in place of `suggestion` in the info diagnostic
    (only). The widget message uses only `suggestion`. If `messageData?` is `none`, we simply use
    `suggestion` instead.
* `origSpan?`: a syntax object whose span is the actual text to be replaced by `suggestion`.
  If not provided it defaults to `ref`.
* `header`: a string that begins the display. By default, it is `"Try this: "`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f174a8a100015c5623c0c032494c82960e3f00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
