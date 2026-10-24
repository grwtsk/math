# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExprGraph.Variant25e5d27688126668d459e965283ea0b5a9c9943f5672dc592fcd76a0a2f5b0db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd29a26941561ab77210569b32b7e018ac5fb3fe` · SHA-256 `80e107adda789e4f02dd20e0600425fbd86fb1ca70369acf9d2702c93ef30085`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElabExprGraphCmd.Varianta7e730767b2e365e05533fa017b1c2310b7995418f693fb1c865ecc496ab666a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7e730767b2e365e05533fa017b1c2310b7995418f693fb1c865ecc496ab666a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ElabExprGraphCmd.Varianta7e730767b2e365e05533fa017b1c2310b7995418f693fb1c865ecc496ab666a","mathematical_subject":"Computation.DataStructures","original_sha256":"a7e730767b2e365e05533fa017b1c2310b7995418f693fb1c865ecc496ab666a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Graph/ExprGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.ForceGraphDisplay
public meta import ProofWidgets.Component.HtmlDisplay
public meta import Lean.Util.FoldConsts


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElabExprGraphCmd.Varianta7e730767b2e365e05533fa017b1c2310b7995418f693fb1c865ecc496ab666a

public meta section

open ProofWidgets Jsx

/-- Display the graph of all constants appearing in a given constant. -/
syntax (name := exprGraphCmd) "#expr_graph" ident : command

open Lean Elab Command in
@[command_elab exprGraphCmd]
def elabExprGraphCmd : CommandElab := fun
  | stx@`(#expr_graph $i:ident) => runTermElabM  fun _ => do
    let env ← getEnv
    let c ← realizeGlobalConstNoOverloadWithInfo i
    let some c := env.find? c | throwError "internal error"
    let nodes : NameSet := c.getUsedConstantsAsSet
    let mut edges : Std.HashSet (String × String) := {}
    for a in nodes do for b in nodes do
      let some bb := env.find? b | continue
      if bb.getUsedConstantsAsSet.contains a then
        edges := edges.insert (toString a, toString b)
    let mut nodesWithInfos : Array ForceGraphDisplay.Vertex := #[]
    let mut maxRadius := 10
    for node in nodes.toArray do
      let some c := env.find? node | continue
      let doc? ← findDocString? env node
      let ee ← Lean.Widget.ppExprTagged c.type
      let us ← Meta.mkFreshLevelMVarsFor c
      let e ← Lean.Widget.ppExprTagged (.const node us)
      let node := toString node
      let rx := node.length * 3
      maxRadius := Nat.max maxRadius rx
      let newNode : ForceGraphDisplay.Vertex := {
        id := node
        label :=
          <g>
            <ellipse
              fill="var(--vscode-editor-background)"
              stroke="var(--vscode-editorHoverWidget-border)"
              rx={(rx*2 : Nat)}
              ry="10"
            />
            <text x={s!"-{rx}"} y="5" className="font-code">{.text node}</text>
          </g>
        boundingShape := .rect (rx*4).toFloat 20
        details? :=
          match doc? with
          | some d =>
            <div>
              <InteractiveCode fmt={e} />{.text " : "}<InteractiveCode fmt={ee} />
              <MarkdownDisplay contents={d} />
            </div>
          | none =>
            <span>
              <InteractiveCode fmt={e} />{.text " : "}<InteractiveCode fmt={ee} />
            </span>
      }
      nodesWithInfos := nodesWithInfos.push newNode
    let html : Html := <ForceGraphDisplay
      vertices={nodesWithInfos}
      edges={edges.fold (init := #[]) fun acc (a,b) => acc.push {source := a, target := b}}
      forces={#[
        .link { distance? := Float.ofNat (maxRadius * 2) },
        .collide { radius? := Float.ofNat maxRadius },
        .x { strength? := some 0.05 },
        .y { strength? := some 0.05 }
      ]}
      showDetails={true}
    />
    Widget.savePanelWidgetInfo
      (hash HtmlDisplayPanel.javascript)
      (return json% { html : $(← Server.rpcEncode html) })
      stx
  | stx => throwError "Unexpected syntax {stx}"

def a : Nat := 0
def b : Nat := 1
def foo (c : Nat) : Nat × Int := (a + b * c, a / b)

-- Put your cursor here.
#expr_graph foo
```
