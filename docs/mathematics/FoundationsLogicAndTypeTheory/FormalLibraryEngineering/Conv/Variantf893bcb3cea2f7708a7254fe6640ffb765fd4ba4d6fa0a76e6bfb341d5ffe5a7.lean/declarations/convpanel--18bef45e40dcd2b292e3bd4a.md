# ConvPanel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:183bf250d2f9d63e68c864aa9f528fec2a982941ed01af1addaa65640e1ded45",
  "kind": "def",
  "lexical_name": "ConvPanel",
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
  "slug": "convpanel--18bef45e40dcd2b292e3bd4a",
  "source": {
    "blob": "97de46c5f778c078a4af38597d8e4947c30a08c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18bef45e40dcd2b292e3bd4a27ec2fb25f238824a5653fdb9c600eec04eab927",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:183bf250d2f9d63e68c864aa9f528fec2a982941ed01af1addaa65640e1ded45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConvPanel : Component PanelWidgetProps where
  javascript := "
    import * as React from 'react'
    import { EditorContext, RpcContext, mapRpcError, useAsync } from '@leanprover/infoview'
    const e = React.createElement

    function findGoalForLocation(goals, loc) {
      for (const g of goals) {
        if (g.mvarId === loc.mvarId) return g
      }
      throw new Error('could not find goal for location', JSON.stringify(loc))
    }

    function ConvButton({pos, goals, loc}) {
      const rs = React.useContext(RpcContext)
      const ec = React.useContext(EditorContext)
      const st = useAsync(async () => {
        const g = findGoalForLocation(goals, loc)
        if (g.goalPrefix !== '| ') throw new Error('The current goal is not a conv goal.')
        return await rs.call('makeConvCommand', { cursorPos: pos, ctx: g.ctx, loc })
      }, [goals, loc])

      const onClick = () => void (async () => {
        if (st.value) {
          await ec.api.applyEdit(st.value.edit)
          await ec.revealPosition({...st.value.newCursorPos, uri: pos.uri})
        }
      })()

      const txt = st.value ? st.value.label : 'no conv'
      const style = st.value ? {} : {pointerEvents: 'none'}

      return st.state === 'resolved' ? e('button', {onClick, style}, txt)
        : st.state === 'rejected' ? e('button', {style: {color: 'red'}}, mapRpcError(st.error).message)
        : e('button', null, 'Loading..')
    }

    export default function(props) {
      const nLocs = props.selectedLocations.length
      const buttons = props.selectedLocations.map(loc =>
        e('div', null,
          e(ConvButton, {pos: props.pos, goals: props.goals, loc})))
      const inner = nLocs === 0 ?
        e('span', null, 'No actions available. You can use shift-click to select an expression in the goal state.') :
        e(React.Fragment, null, buttons)
      return e('details', {open: true}, [
        e('summary', {className: 'mv2 pointer'}, 'Conv 🔍'),
        e('div', null, inner)
      ])
    }
  "

/-! # Example usage -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de46c5f778c078a4af38597d8e4947c30a08c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
