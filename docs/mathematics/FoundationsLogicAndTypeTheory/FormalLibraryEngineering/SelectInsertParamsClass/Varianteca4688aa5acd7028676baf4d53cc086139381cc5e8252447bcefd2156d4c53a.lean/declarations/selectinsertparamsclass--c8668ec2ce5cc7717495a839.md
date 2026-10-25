# SelectInsertParamsClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:265ac5fec2e12738819652e0a6600e98bdbd6ca2f485ec9618ccd7ffa97be3c8",
  "kind": "class",
  "lexical_name": "SelectInsertParamsClass",
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
  "slug": "selectinsertparamsclass--c8668ec2ce5cc7717495a839",
  "source": {
    "blob": "4c7be09054beeb10c48ba162cb2c46546259f03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertParamsClass/Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8668ec2ce5cc7717495a8392fd56c9752e0afd9945208f2a9a1f45322bb7077",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertParamsClass/Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:265ac5fec2e12738819652e0a6600e98bdbd6ca2f485ec9618ccd7ffa97be3c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SelectInsertParamsClass (α : Type) where
  /-- Cursor position in the file at which the widget is being displayed. -/
  pos : α → Lsp.Position
  /-- The current tactic-mode goals. -/
  goals : α → Array Widget.InteractiveGoal
  /-- Locations currently selected in the goal state. -/
  selectedLocations : α → Array SubExpr.GoalsLocation
  /-- The range in the source document where the command will be inserted. -/
  replaceRange : α → Lsp.Range

namespace Lean.Elab
open Command Meta Parser Term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertParamsClass/Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertParamsClass/Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c7be09054beeb10c48ba162cb2c46546259f03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
