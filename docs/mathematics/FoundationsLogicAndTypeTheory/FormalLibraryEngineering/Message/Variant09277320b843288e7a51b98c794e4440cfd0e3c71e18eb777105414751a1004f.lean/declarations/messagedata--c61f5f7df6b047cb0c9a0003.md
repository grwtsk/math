# MessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee818aea9cf9cf7cc449b2ef92d02747c188b9053f4c04e4c7dfe78f1d34d262",
  "kind": "inductive",
  "lexical_name": "MessageData",
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
  "slug": "messagedata--c61f5f7df6b047cb0c9a0003",
  "source": {
    "blob": "5e2281389fe25ed6d76c50e2d78bed7a16b3ab36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c61f5f7df6b047cb0c9a00038928f0bc379ee6962bea2ba58f48491e17124dc0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee818aea9cf9cf7cc449b2ef92d02747c188b9053f4c04e4c7dfe78f1d34d262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MessageData where
  /-- Eagerly formatted text with info annotations.
  This constructor is inspected in various hacks. -/
  | ofFormatWithInfos : FormatWithInfos → MessageData
  | ofGoal            : MVarId → MessageData
  /-- A widget instance.

  In `ofWidget wi alt`,
  the nested message `alt` should approximate the contents of the widget
  without itself using `ofWidget wi _`.
  This is used as fallback in environments that cannot display user widgets.
  `alt` may nest any structured message,
  for example `ofGoal` to approximate a tactic state widget,
  and, if necessary, even other widget instances
  (for which approximations are computed recursively).

  Note that unlike with `Widget.savePanelWidgetInfo`,
  the infoview will not pass any additional props to the widget instance. -/
  | ofWidget          : Widget.WidgetInstance → MessageData → MessageData
  /-- `withContext ctx d` specifies the pretty printing context `(env, mctx, lctx, opts)` for the nested expressions in `d`. -/
  | withContext       : MessageDataContext → MessageData → MessageData
  | withNamingContext : NamingContext → MessageData → MessageData
  /-- Lifted `Format.nest` -/
  | nest              : Nat → MessageData → MessageData
  /-- Lifted `Format.group` -/
  | group             : MessageData → MessageData
  /-- Lifted `Format.compose` -/
  | compose           : MessageData → MessageData → MessageData
  /-- Tagged sections. `Name` should be viewed as a "kind", and is used by `MessageData` inspector functions.
    Example: an inspector that tries to find "definitional equality failures" may look for the tag "DefEqFailure". -/
  | tagged            : Name → MessageData → MessageData
  | trace (data : TraceData) (msg : MessageData) (children : Array MessageData)
  /-- A lazy message.
  The provided thunk will not be run until it is about to be displayed.
  This can save computation in cases where the message may never be seen.

  The `Dynamic` value is expected to be a `MessageData`,
  which is a workaround for the positivity restriction.

  If the thunked message is produced for a term that contains a synthetic sorry,
  `hasSyntheticSorry` should return `true`.
  This is used to filter out certain messages. -/
  | ofLazy (f : Option PPContext → BaseIO Dynamic) (hasSyntheticSorry : MetavarContext → Bool)
  /--
  Preserves the originating syntax of the message.
  -/
  | ofOriginatingSyntax : Syntax → MessageData → MessageData
  deriving Inhabited, TypeName

namespace MessageData

/-- Eagerly formatted text. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2281389fe25ed6d76c50e2d78bed7a16b3ab36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
