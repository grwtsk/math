# drawMVarGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ca206397b420308ea76b6724c2b061824fec6ac5ae38d9ba7acf6f4a96d435c",
  "kind": "def",
  "lexical_name": "drawMVarGraph",
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
  "slug": "drawmvargraph--fb417789d550099078ad31c8",
  "source": {
    "blob": "726e3485de66c59a5843c06dbdfa8814c030b2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb417789d550099078ad31c8d93ee8755489985f3a1e251e1f439ae8e15c60e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ca206397b420308ea76b6724c2b061824fec6ac5ae38d9ba7acf6f4a96d435c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def drawMVarGraph (goals : List MVarId) : MetaM Html := do
  let mvars ← buildMVarGraph
  let mg := goals.head!
  let g := mvars.filterReachable goals

  let mut vertices := #[]
  let mut edges := #[]
  let mut maxLabelRadius := 0.0
  for (m, ns) in g do
    -- TODO: mark delayed assigned mvars in yet another colour?
    let vAssigned ← m.isAssignedOrDelayedAssigned
    let (w, h, label) ←  mkLabel m
      (stroke :=
        if m == mg then "var(--vscode-lean4-infoView\\.turnstile)"
        else if vAssigned then "var(--vscode-editor-foreground)"
        else "var(--vscode-lean4-infoView\\.caseLabel)")
      (fill :=
        if vAssigned then "var(--vscode-editorHoverWidget-background)"
        else "var(--vscode-editor-background)")
    maxLabelRadius := max maxLabelRadius (Float.sqrt <| (w.toFloat/2)^2 + (h.toFloat/2)^2)
    let val? ← (← getMCtx).eAssignment.find? m |>.mapM fun v =>
      return <span className="font-code">
        {.text s!"?{← m.getName}"} :=
        <InteractiveCode fmt={← m.withContext <| Widget.ppExprTagged v} />
      </span>
    let delayedVal? ← (← getMCtx).dAssignment.find? m |>.mapM fun n =>
      return <span className="font-code">
        {.text s!"?{← m.getName}"} [delayed] :=
        {.text s!"?{← n.mvarIdPending.getName}"}
      </span>
    vertices := vertices.push {
      id := toString m.name
      label
      boundingShape := .rect w.toFloat h.toFloat
      details? := val? <|> delayedVal?
    }
    for (n, b) in ns do
      if b then
        edges := edges.push {
          source := toString m.name
          target := toString n.name
        }
      else
        edges := edges.push {
          source := toString m.name
          target := toString n.name
          attrs := #[("strokeDasharray", "5,5")]
        }
  return <ForceGraphDisplay
      vertices={vertices}
      edges={edges}
      forces={#[
        .link { distance? := some (maxLabelRadius * 3) },
        .manyBody { strength? := some (-150) },
        .x { strength? := some 0.01 },
        .y { strength? := some 0.01 }
      ]}
      showDetails={true}
    />

open Server ProofWidgets Jsx

@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726e3485de66c59a5843c06dbdfa8814c030b2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
