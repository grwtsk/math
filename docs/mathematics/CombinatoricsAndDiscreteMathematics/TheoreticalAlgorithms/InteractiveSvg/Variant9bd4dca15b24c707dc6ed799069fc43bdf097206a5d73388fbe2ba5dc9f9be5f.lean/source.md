# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InteractiveSvg.Variant9bd4dca15b24c707dc6ed799069fc43bdf097206a5d73388fbe2ba5dc9f9be5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c88456eeb989c38d75fb465b7ef6bcc11c9b83` · SHA-256 `9bd4dca15b24c707dc6ed799069fc43bdf097206a5d73388fbe2ba5dc9f9be5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import ProofWidgets.Component.InteractiveSvg
public meta import ProofWidgets.Component.HtmlDisplay

public meta section

open Lean
open ProofWidgets Svg Jsx

abbrev State := Array (Float × Float)

def isvg : InteractiveSvg State where
  init := #[(-0.5, -0.5), (0.5, -0.5), (0.5, 0.5), (-0.5, 0.5)]

  frame :=
    { xmin := -1
      ymin := -1
      xSize := 2
      width := 400
      height := 400 }

  update _time _Δt _action _mouseStart mouseEnd _selected getData state :=
    match getData Nat, mouseEnd with
    | some id, some p => state.set! id p.toAbsolute
    | _, _ => state

  render _time mouseStart mouseEnd state :=
    {
      elements :=
        let mousePointer :=
          match mouseStart, mouseEnd with
          | some s, some e =>
            #[
              Svg.circle e (.px 5) |>.setFill (1.,1.,1.),
              Svg.line s e |>.setStroke (1.,1.,1.) (.px 2)
            ]
          | _, _ => #[]
        let circles := (state.mapIdx fun idx (p : Float × Float) =>
              Svg.circle p (.abs 0.2) |>.setFill (0.7,0.7,0.7) |>.setId s!"circle{idx}" |>.setData idx
            )
        mousePointer.append circles
    }

open Server RequestM in
@[server_rpc_method]
def updateSvg (params : UpdateParams State) : RequestM (RequestTask (UpdateResult State)) := isvg.serverRpcMethod params

@[widget_module]
def SvgWidget : Component (UpdateResult State) where
  javascript := include_str ".." / ".." / "widget" / "js" / "interactiveSvg.js"

def init : UpdateResult State := {
  html := <div>Init!!!</div>,
  state := { state := isvg.init
             time := 0
             selected := none
             mousePos := none
             idToData := isvg.render 0 none none isvg.init |>.idToDataList}
}

#html <SvgWidget html={init.html} state={init.state}/>
```
