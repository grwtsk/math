# ConvSelectionPanel.rpc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a718c75dd2ee829c82edf394a53d10dbc03ffeb832ca5ced733e77f5a0100f",
  "kind": "def",
  "lexical_name": "ConvSelectionPanel.rpc",
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
  "slug": "convselectionpanel-rpc--506477f161f633077cdfc1ac",
  "source": {
    "blob": "fc82374480abcf71d1584eb8d955c2eddabdd5cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertConv/Variant26485f451006f646669fcab2ae755dbfea6a8794252d04d3b5cf15f44bb5ef4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:506477f161f633077cdfc1ac62dde9183975be2c4c683246f44674beadeedba5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertConv/Variant26485f451006f646669fcab2ae755dbfea6a8794252d04d3b5cf15f44bb5ef4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a718c75dd2ee829c82edf394a53d10dbc03ffeb832ca5ced733e77f5a0100f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConvSelectionPanel.rpc (props : ConvSelectionPanelProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    let doc ← RequestM.readDoc
    let inner : Html ← (do
      if props.selectedLocations.isEmpty then
        return <span>Use shift-click to select one sub-expression in the goal that you want to zoom on.</span>
      let some selectedLoc := props.selectedLocations[0]? | unreachable!

      let some g := findGoalForLocation props.goals selectedLoc
        | throw $ .invalidParams
            s!"could not find goal for location {toJson selectedLoc}"
      g.ctx.val.runMetaM {} do
        let md ← g.mvarId.getDecl
        let lctx := md.lctx |>.sanitizeNames.run' {options := (← getOptions)}
        Meta.withLCtx lctx md.localInstances do
          let newCode ← insertEnter props.selectedLocations md.type
          return .ofComponent
            MakeEditLink
            (.ofReplaceRange doc.meta props.replaceRange newCode)
            #[ .text newCode ])
    return <details «open»={true}>
        <summary className="mv2 pointer">Conv 🔍</summary>
        <div className="ml1">{inner}</div>
      </details>

@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertConv/Variant26485f451006f646669fcab2ae755dbfea6a8794252d04d3b5cf15f44bb5ef4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectInsertConv/Variant26485f451006f646669fcab2ae755dbfea6a8794252d04d3b5cf15f44bb5ef4d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc82374480abcf71d1584eb8d955c2eddabdd5cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
