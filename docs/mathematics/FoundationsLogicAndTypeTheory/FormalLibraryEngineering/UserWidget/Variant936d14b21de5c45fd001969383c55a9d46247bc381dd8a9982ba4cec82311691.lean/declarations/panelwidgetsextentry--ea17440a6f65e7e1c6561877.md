# PanelWidgetsExtEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56d67ad291e48511975eb1ee022442e7020aea910776f946078de66ad6518d8f",
  "kind": "inductive",
  "lexical_name": "PanelWidgetsExtEntry",
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
  "slug": "panelwidgetsextentry--ea17440a6f65e7e1c6561877",
  "source": {
    "blob": "7a0568328191b2749f03986b08ed1a9fea94a04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea17440a6f65e7e1c6561877ef2578766e9132ec0c0409796478eb542f699f89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56d67ad291e48511975eb1ee022442e7020aea910776f946078de66ad6518d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PanelWidgetsExtEntry where
  | «global» (n : Name)
  | «local» (wi : WidgetInstance)

/-- Keeps track of panel widget instances that should be displayed.

Instances can be registered for display global
(i.e., persisted in `.olean`s) and locally (not persisted)

For globally displayed widgets
we cannot store a `WidgetInstance` in the persistent state
because it contains a `StateM` closure.
Instead, we add a global constant of type `WidgetInstance`
to the environment, and store its name in the extension.

For locally displayed ones, we just store a `WidgetInstance`
in the extension directly.
This is okay because it is never persisted.

The (persistent) entries are then of the form `(h, n)`
where `h` is a hash stored in the `moduleRegistry`
and `n` is the name of a `WidgetInstance` global constant.

The extension state maps each `h` as above
to a list of entries that can be either global or local ones.
Each element of the state indicates that the widget module `h`
should be displayed with the given `WidgetInstance` as its arguments.

This is similar to a parametric attribute, except that:
- parametric attributes map at most one parameter to one tagged declaration,
  whereas we may display multiple instances of a single widget module; and
- parametric attributes use the same type for local and global entries,
  which we cannot do owing to the closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0568328191b2749f03986b08ed1a9fea94a04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
