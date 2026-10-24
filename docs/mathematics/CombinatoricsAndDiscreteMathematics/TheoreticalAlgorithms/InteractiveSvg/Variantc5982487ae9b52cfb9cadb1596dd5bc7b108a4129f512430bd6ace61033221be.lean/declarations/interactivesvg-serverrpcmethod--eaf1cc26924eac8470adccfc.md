# InteractiveSvg.serverRpcMethod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:334cc95daab9df2dbf4076cdeb7bac7aeb6c3f847cf9d37d48238fc8f3827bcd",
  "kind": "def",
  "lexical_name": "InteractiveSvg.serverRpcMethod",
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
  "slug": "interactivesvg-serverrpcmethod--eaf1cc26924eac8470adccfc",
  "source": {
    "blob": "46023e34705957753372aa9b00034b7a2ee6ebd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf1cc26924eac8470adccfc1815278f575839e76e6c15d2ada97f65cb8d2db7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:334cc95daab9df2dbf4076cdeb7bac7aeb6c3f847cf9d37d48238fc8f3827bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InteractiveSvg.serverRpcMethod {State : Type} (isvg : InteractiveSvg State) (params : UpdateParams State)
  : RequestM (RequestTask (UpdateResult State)) := do

  -- Ideally, each action should have time and mouse position attached
  -- right now we just assume that all actions are uqually spaced within the frame
  let Δt := (params.elapsed - params.state.time) / params.actions.size.toFloat

  let idToData : Std.HashMap String Json := HashMap.ofList params.state.idToData

  let mut time := params.state.time
  let mut state := params.state.state
  let mut selected := params.state.selected

  let getData := λ (α : Type) [FromJson α] => do
    let id ← selected;
    let data ← idToData[id]?
    match fromJson? (α:=α) data with
    | .error _ => none
    | .ok val => some val


  let mouseStart := params.state.mousePos.map λ (i,j) => (i, j)
  let mouseEnd := params.mousePos.map λ (x,y) => (x.toInt, y.toInt)

  for action in params.actions do
    -- todo: interpolate mouse movenment!

    -- update state
    state := isvg.update time Δt action mouseStart mouseEnd selected getData state

    -- update selection
    if action.kind == ActionKind.mousedown then
      selected := action.id
    if action.kind == ActionKind.mouseup then
      selected := none

    -- update time
    time := time + Δt

  let mut svg := isvg.render time mouseStart mouseEnd state

  let svgState : SvgState State :=
    { state := state
      time := params.elapsed
      selected := selected
      mousePos := mouseEnd.map λ p => p.toPixels
      idToData := svg.idToDataList }


  -- highlight selection
  if let some id := selected then
    if let some idx := svg.idToIdx[id]? then
      svg := { elements := svg.elements.modify idx λ e => e.setStroke (1.,1.,0.) (.px 5) }


  return RequestTask.pure {
    html := <div>
        {svg.toHtml}
      </div>,
    state := svgState,
    callbackTime := some 33,
  }

end Svg
end ProofWidgets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46023e34705957753372aa9b00034b7a2ee6ebd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
