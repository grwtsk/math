# PanelWidgetInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f7dd9ab4e3e6274613d007d2c7345d166f74607e240dccb1677008daf555df8",
  "kind": "structure",
  "lexical_name": "PanelWidgetInstance",
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
  "slug": "panelwidgetinstance--9713e4930bdf0fe00754ec6a",
  "source": {
    "blob": "7a0568328191b2749f03986b08ed1a9fea94a04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9713e4930bdf0fe00754ec6acce10ff18006588d4cc5c12a8e7e63164692ba4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f7dd9ab4e3e6274613d007d2c7345d166f74607e240dccb1677008daf555df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PanelWidgetInstance extends WidgetInstance where
  /-- The syntactic span in the Lean file at which the panel widget is displayed. -/
  range? : Option Lsp.Range := none
  /-- When present, the infoview will wrap the widget
  in `<details><summary>{name}</summary>...</details>`.
  This functionality is deprecated
  but retained for backwards compatibility
  with `UserWidgetDefinition`. -/
  name? : Option String := none
  deriving Server.RpcEncodable

/-- Output of `getWidgets` RPC.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0568328191b2749f03986b08ed1a9fea94a04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
