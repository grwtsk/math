# Suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c83b4f451a83eb865bf92190e7bccdf26ef857813cb6110970fbdc47031e390d",
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
  "slug": "suggestion--6959cddb70d90a9a541b66ab",
  "source": {
    "blob": "3f174a8a100015c5623c0c032494c82960e3f00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6959cddb70d90a9a541b66abf4378b48a2a2257541b6fff6b023fe1f4551d075",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c83b4f451a83eb865bf92190e7bccdf26ef857813cb6110970fbdc47031e390d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–291.

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

  See `SuggestionStyle` for details. -/
  style? : Option SuggestionStyle := none
  /-- How to represent the suggestion as `MessageData`. This is used only in the info diagnostic.
  If `none`, we use `suggestion`. Use `toMessageData` to render a `Suggestion` in this manner. -/
  messageData? : Option MessageData := none
  deriving Inhabited

/-- Converts a `Suggestion` to `Json` in `CoreM`. We need `CoreM` in order to pretty-print syntax.

If `w := none`, then `w := getInputWidth (← getOptions)` is used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f174a8a100015c5623c0c032494c82960e3f00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
