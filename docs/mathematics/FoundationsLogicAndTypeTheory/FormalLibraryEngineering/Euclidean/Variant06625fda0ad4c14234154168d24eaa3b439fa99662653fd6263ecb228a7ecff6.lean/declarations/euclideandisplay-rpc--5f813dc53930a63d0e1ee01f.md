# EuclideanDisplay.rpc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8300895ef68ba2b2676893c71b55933bc7270a0a6ac0f1f0e2a3ba496292ba4",
  "kind": "def",
  "lexical_name": "EuclideanDisplay.rpc",
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
  "slug": "euclideandisplay-rpc--5f813dc53930a63d0e1ee01f",
  "source": {
    "blob": "64fd7924bb6502748f0e9d89d96928e1f43526ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f813dc53930a63d0e1ee01fedfc8b3e538e34d63fe097be87d169fa835e3cf2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8300895ef68ba2b2676893c71b55933bc7270a0a6ac0f1f0e2a3ba496292ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EuclideanDisplay.rpc (props : PanelWidgetProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    let inner : Html ← (do
      -- Are there any goals unsolved? If so, pick the first one.
      if props.goals.isEmpty then
        return <span>No goals.</span>
      let some g := props.goals[0]? | unreachable!

      -- Execute the next part using the metavariable context and local context of the goal.
      g.ctx.val.runMetaM {} do
        let md ← g.mvarId.getDecl
        let lctx := md.lctx |>.sanitizeNames.run' {options := (← getOptions)}
        Meta.withLCtx lctx md.localInstances do
          -- Which hypotheses have been selected in the UI,
          -- meaning they should *not* be shown in the display.
          let mut hiddenLocs : Std.HashSet FVarId := .emptyWithCapacity props.selectedLocations.size
          for l in props.selectedLocations do
            match l with
            | ⟨mv, .hyp fv⟩ | ⟨mv, .hypType fv _⟩ =>
              if mv == g.mvarId then
                hiddenLocs := hiddenLocs.insert fv
            | _ => continue
          -- Filter local declarations by whether they are not in `hiddenLocs`.
          let locs := (← getLCtx).decls.toArray.filterMap (fun d? =>
            if let some d := d? then
              if !hiddenLocs.contains d.fvarId then some d else none
            else
              none)
          -- Produce the diagram.
          DiagramBuilderM.run do
            addHypotheses locs
            match ← DiagramBuilderM.buildDiagram dsl sty with
            | some html => return html
            | none => return <span>No Euclidean goal.</span>)

    return <details «open»={true}>
        <summary className="mv2 pointer">Euclidean diagram</summary>
        <div className="ml1">{inner}</div>
      </details>

@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fd7924bb6502748f0e9d89d96928e1f43526ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
