# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InteractiveSvg.Variantca4b037a57452332765ffb493d159e5f843e1243f4f7b37efd22ac591ad9a2c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `575ed2b58a4c0941e111d8371653403bfbeae1da` · SHA-256 `7aa48095e4dc18e437fafed061a9102c6cd1621b8165c971c8de0fa9103fcab6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ActionKind.Variantdfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ActionKind.Variantdfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111","mathematical_subject":"Computation.DataStructures","original_sha256":"dfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/InteractiveSvg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Data.Svg


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ActionKind.Variantdfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111

namespace ProofWidgets
open Lean

private def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ActionKind.Variantdfc1cc75a0b6cfa262a57351c8e842ef831f1773b3b9642659b64f17d8fe0111.Float.toInt (x : Float) : Int :=
  if x >= 0 then
    x.toUInt64.toNat
  else
    -((-x).toUInt64.toNat)

namespace Svg

inductive ActionKind where
  | timeout
  | mousedown
  | mouseup
  | mousemove -- [note] mouse moves only happen when mouse button is down.
  deriving ToJson, FromJson, DecidableEq

structure Action where
  kind : ActionKind
  id : Option String
  data : Option Json
  deriving ToJson, FromJson

/-- The input type `State` is any state the user wants to use and update

SvgState in addition automatically handles tracking of time, selection and custom data -/
structure SvgState (State : Type) where
  state : State
  time : Float /-- time in milliseconds -/
  selected : Option String
  mousePos : Option (Int × Int)
  idToData : List (String × Json)
deriving ToJson, FromJson

#mkrpcenc SvgState

structure UpdateParams (State : Type) where
  elapsed : Float
  actions : Array Action
  state : SvgState State
  mousePos : Option (Float × Float) -- TODO: change to Option (Int × Int) or do we want to support subpixel precision?
  deriving ToJson, FromJson

structure UpdateResult (State : Type) where
  html : Html
  state : SvgState State
  /-- Approximate number of milliseconds to wait before calling again. -/
  callbackTime : Option Float := some 33

#mkrpcenc UpdateResult

-- maybe add title, refresh rate, initial time?, custom selection rendering
structure InteractiveSvg (State : Type) where
  init : State
  frame : Svg.Frame
  update (time_ms Δt_ms : Float) (action : Action)
         (mouseStart mouseEnd : Option (Svg.Point frame))
         (selectedId : Option String) (getSelectedData : (α : Type) → [FromJson α] → Option α)
         : State → State
  render (time_ms : Float) (mouseStart mouseEnd : Option (Svg.Point frame)) : State → Svg frame

open Server RequestM Jsx in
def InteractiveSvg.serverRpcMethod {State : Type} (isvg : InteractiveSvg State) (params : UpdateParams State)
  : RequestM (RequestTask (UpdateResult State)) := do

  -- Ideally, each action should have time and mouse position attached
  -- right now we just assume that all actions are uqually spaced within the frame
  let Δt := (params.elapsed - params.state.time) / params.actions.size.toFloat

  let idToData : HashMap String Json := HashMap.ofList params.state.idToData

  let mut time := params.state.time
  let mut state := params.state.state
  let mut selected := params.state.selected

  let getData := λ (α : Type) [FromJson α] => do
    let id ← selected;
    let data ← idToData[id]
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
    if let some idx := svg.idToIdx[id] then
      svg := { elements := svg.elements.modify idx λ e => e.setStroke (1.,1.,0.) (.px 5) }


  return RequestTask.pure {
    html := Html.ofTHtml
      <div>
        {svg.toTHtml}
      </div>,
    state := svgState,
    callbackTime := some 33,
  }

end Svg
end ProofWidgets
```
