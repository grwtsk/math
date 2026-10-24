# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefreshComponent.Variant8d03ba5311e9bf67baf518278ebdbe3446ece10a1f12fcb638c8925b742269dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5919bbd0ad0551cdc8da1c24d1c7b6be2c8cff41` · SHA-256 `3c653dc97b35966ce97a76ab7d2f5c55806a2ca8bfc536c1333ebb12b8c08271`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiboState.Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiboState.Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9","mathematical_subject":"Computation.DataStructures","original_sha256":"0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/RefreshComponent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.RefreshComponent
import ProofWidgets.Component.HtmlDisplay
import ProofWidgets.Component.OfRpcMethod
import ProofWidgets.Component.Panel.SelectionPanel

/-!
This file showcases the `RefreshComponent` using some basic examples.

We use `dbg_trace` to help see which Lean processes are active at any time.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiboState.Variant0c9f0b3a443d46685c33ab9636e32d5a1d580d133617fb3d67e1db85c5f9c1a9

open Lean.Widget ProofWidgets RefreshComponent Jsx Lean Server


/-! Example 1: Count from 1 to 10, taking one second for each count. -/

partial def countToTen : CoreM Html := do
  mkRefreshComponentM (.text "Let's count to ten!!!") fun token ↦ do
    let mut n := 0
    repeat do
      IO.sleep 1000
      dbg_trace "counted {n}"
      Core.checkSystem "count to ten"
      if n = 10 then
        token.update <| .text s!"Wie niet weg is, is gezien, ik kom!!!"
        break
      token.update <| .text s!"{n + 1}!!!"
      n := n + 1
-- If you close and reopen the infoview, the counting continues as if it was open the whole time.
#html countToTen

-- Here, we duplicate the widget using the same underlying computation
-- #html (do let x ← countToTen; return <span>{x}<br/>{x}</span>)

-- Here, we duplicate the widget and duplicate the underlying computation
-- #html (return <span>{← countToTen}<br/>{← countToTen}</span>)



/-! Example 2: Print the selected expressions one by one in an infinite loop. -/

@[server_rpc_method]
partial def cycleSelections (props : PanelWidgetProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    let some goal := props.goals[0]? | return .text "there are no goals"
    goal.ctx.val.runMetaM {} do
    mkRefreshComponentM (.text "loading...") fun token ↦ do
      let args ← props.selectedLocations.mapM (·.saveExprWithCtx)
      if h : args.size ≠ 0 then
        have : NeZero args.size := ⟨h⟩
        let mut i : Fin args.size := 0
        repeat do
          token.update <InteractiveCode fmt={← args[i].runMetaM Widget.ppExprTagged}/>
          dbg_trace "cycled through expression {i}"
          IO.sleep 1000
          Core.checkSystem "cycleSelections"
          have : NeZero args.size := ⟨by cases i; grind⟩
          i := i + 1
      else
        token.update <| .text "please select some expression"

@[widget_module]
def CycleComponent : Component PanelWidgetProps :=
  mk_rpc_widget% cycleSelections

elab stx:"cycleSelections" : tactic => do
  Widget.savePanelWidgetInfo (hash CycleComponent.javascript) (return .null) stx

-- run_meta do addPanelWidgetLocal <|
--   ← WidgetInstance.ofHash CycleComponent.javascriptHash (return .null)

example : 1 + 2 + 3 = 6 ^ 1 ∧ True := by
  constructor
  cycleSelections -- place your cursor here and select some expressions in the goals
  all_goals trivial
-- If you activate the widget multiple times, they all appear next to eachother as duplicates.



/-! Example 3: Compute the fibonacci numbers from 400000 to 400040, in parallel,
and show the results as they come up. -/

def fibo (n : Nat) : Nat := Id.run do
  let mut (a, b) := (0, 1)
  for _ in 0...n do
    (a, b) := (b, a + b)
  return a

structure FiboState where
  pending : Array (Nat × Task Html)
  results : Array (Nat × Html) := #[]

def FiboState.update (s : FiboState) : BaseIO FiboState := do
  let mut results := s.results
  let mut pending := #[]
  for (n, t) in s.pending do
    if ← IO.hasFinished t then
      results := results.push (n, t.get)
    else
      pending := pending.push (n, t)
  results := results.insertionSort  (·.1 < ·.1)
  return { results, pending }

def FiboState.render (s : FiboState) (t : Option Nat := none) : Html :=
  let header := match t with
    | some t => s!"Finished in {t}ms"
    | none => "Computing Fibonacci numbers ⏳";
  <details «open»={true}>
    <summary className="mv2 pointer">
      {.text header}
    </summary>
    {Html.element "ul" #[("style", json% { "padding-left" : "30px"})] (s.results.map (·.2))}
  </details>

def generateFibo (n : Nat) : Html :=
  <li>{.text s!"the {n}-th Fibonacci number has {(fibo n).log2} binary digits."}</li>

partial def FiboWidget : CoreM Html := do
  mkRefreshComponentM (.text "loading...") fun token ↦ do
    let pending := (400000...=400040).toArray.map fun n => (n, Task.spawn fun _ => generateFibo n)
    let t0 ← IO.monoMsNow
    let mut s : FiboState := { pending }
    repeat do
      Core.checkSystem "FiboWidget"
      while !(← s.pending.anyM (IO.hasFinished ·.2)) do
        IO.sleep 10
        Core.checkSystem "FiboWidget"
      s ← s.update
      if s.pending.isEmpty then
        token.update (s.render ((← IO.monoMsNow) - t0))
        break
      token.updateLazy ⟨fun _ => s.render⟩

-- #html FiboWidget
```
