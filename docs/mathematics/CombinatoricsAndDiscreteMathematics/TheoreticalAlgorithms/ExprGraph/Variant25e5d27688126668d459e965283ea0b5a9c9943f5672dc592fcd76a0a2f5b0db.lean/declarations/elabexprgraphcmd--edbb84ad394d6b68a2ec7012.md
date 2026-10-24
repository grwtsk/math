# elabExprGraphCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d5700333cbe5a037b0085cda0ddef40b6a50baeb66457b710606b594920332c",
  "kind": "def",
  "lexical_name": "elabExprGraphCmd",
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
  "slug": "elabexprgraphcmd--edbb84ad394d6b68a2ec7012",
  "source": {
    "blob": "cd29a26941561ab77210569b32b7e018ac5fb3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExprGraph/Variant25e5d27688126668d459e965283ea0b5a9c9943f5672dc592fcd76a0a2f5b0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edbb84ad394d6b68a2ec70121803b57169fcb4594adab825307b6b6f62f55a0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExprGraph/Variant25e5d27688126668d459e965283ea0b5a9c9943f5672dc592fcd76a0a2f5b0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d5700333cbe5a037b0085cda0ddef40b6a50baeb66457b710606b594920332c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExprGraph/Variant25e5d27688126668d459e965283ea0b5a9c9943f5672dc592fcd76a0a2f5b0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExprGraph/Variant25e5d27688126668d459e965283ea0b5a9c9943f5672dc592fcd76a0a2f5b0db.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd29a26941561ab77210569b32b7e018ac5fb3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
