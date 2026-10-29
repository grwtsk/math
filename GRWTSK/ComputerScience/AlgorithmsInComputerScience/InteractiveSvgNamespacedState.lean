-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.State.Variant467a2de90ea94a32069f11e25d68db01246d7a92ff06ff897a062c44772618de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"467a2de90ea94a32069f11e25d68db01246d7a92ff06ff897a062c44772618de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.State.Variant467a2de90ea94a32069f11e25d68db01246d7a92ff06ff897a062c44772618de","mathematical_subject":"Computation.DataStructures","original_sha256":"467a2de90ea94a32069f11e25d68db01246d7a92ff06ff897a062c44772618de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/InteractiveSvg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.InteractiveSvg
import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.State.Variant467a2de90ea94a32069f11e25d68db01246d7a92ff06ff897a062c44772618de

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

  update time Δt action mouseStart mouseEnd selected getData state :=
    match getData Nat, mouseEnd with
    | some id, some p => state.set! id p.toAbsolute
    | _, _ => state

  render time mouseStart mouseEnd state :=
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
              Svg.circle p (.abs 0.2) |>.setFill (0.7,0.7,0.7) |>.setId s!"circle{idx}" |>.setData idx.1
            )
        mousePointer.append circles
    }


open Server RequestM in
@[server_rpc_method]
def updateSvg (params : UpdateParams State) : RequestM (RequestTask (UpdateResult State)) := isvg.serverRpcMethod params

-- TODO: the tsx file is pretty broken
@[widget_module]
def SvgWidget : Component (UpdateResult State) where
  javascript := include_str ".." / ".." / "build" / "js" / "interactiveSvg.js"

def init : UpdateResult State := {
  html := Html.ofTHtml <div>Init!!!</div>,
  state := { state := isvg.init
             time := 0
             selected := none
             mousePos := none
             idToData := isvg.render 0 none none isvg.init |>.idToDataList}
}

#html <SvgWidget html={init.html} state={init.state}/>
