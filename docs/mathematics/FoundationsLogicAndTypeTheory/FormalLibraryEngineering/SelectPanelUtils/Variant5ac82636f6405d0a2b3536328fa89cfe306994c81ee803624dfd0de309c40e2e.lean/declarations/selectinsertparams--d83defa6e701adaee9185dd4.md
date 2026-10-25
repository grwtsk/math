# SelectInsertParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ef6ee87a302de0b65f362f5903086109a4e89d453b5ad2bcf30cf3fc289fd2",
  "kind": "structure",
  "lexical_name": "SelectInsertParams",
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
  "slug": "selectinsertparams--d83defa6e701adaee9185dd4",
  "source": {
    "blob": "8aedc8c0f0f418087cf0b584e8fdd942abb8b5ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d83defa6e701adaee9185dd4d96fffbc3644092f1267ca44ab2bfc8b4750db6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ef6ee87a302de0b65f362f5903086109a4e89d453b5ad2bcf30cf3fc289fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SelectInsertParams where
  /-- Cursor position in the file at which the widget is being displayed. -/
  pos : Lsp.Position
  /-- The current tactic-mode goals. -/
  goals : Array Widget.InteractiveGoal
  /-- Locations currently selected in the goal state. -/
  selectedLocations : Array SubExpr.GoalsLocation
  /-- The range in the source document where the command will be inserted. -/
  replaceRange : Lsp.Range
  deriving SelectInsertParamsClass, RpcEncodable

open scoped Jsx in open SelectInsertParamsClass Lean.SubExpr in
/-- Helper function to create a widget allowing to select parts of the main goal
and then display a link that will insert some tactic call.

The main argument is `mkCmdStr` which is a function creating the link text and the tactic call text.
The `helpMsg` argument is displayed when nothing is selected and `title` is used as a panel title.
The `onlyGoal` argument says whether the selected has to be in the goal. Otherwise it
can be in the local context.
The `onlyOne` argument says whether one should select only one sub-expression.
In every cases, all selected subexpressions should be in the main goal or its local context.

The last arguments `params` should not be provided so that the output
has type `Params → RequestM (RequestTask Html)` and can be fed to the `mk_rpc_widget%`
elaborator.

Note that the `pos` and `goalType` arguments to `mkCmdStr` could be extracted for the `Params`
argument but that extraction would happen in every example, hence it is factored out here.
We also make sure `mkCmdStr` is executed in the right context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aedc8c0f0f418087cf0b584e8fdd942abb8b5ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
