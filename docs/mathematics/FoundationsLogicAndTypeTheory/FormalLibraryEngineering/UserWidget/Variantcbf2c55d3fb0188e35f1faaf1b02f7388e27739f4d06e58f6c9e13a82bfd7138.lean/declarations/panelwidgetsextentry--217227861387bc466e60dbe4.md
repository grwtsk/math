# PanelWidgetsExtEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14c439f0ff1d89e792ec4387130cc7e14c5cd088e6e5930d1ec5d318208dfc20",
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
  "slug": "panelwidgetsextentry--217227861387bc466e60dbe4",
  "source": {
    "blob": "6ff6cbe097ef1684ff9ee7830835e2257d984341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:217227861387bc466e60dbe41b76f5001945d3aff93c9f896b7eba5e48edf5ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14c439f0ff1d89e792ec4387130cc7e14c5cd088e6e5930d1ec5d318208dfc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–160.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff6cbe097ef1684ff9ee7830835e2257d984341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
