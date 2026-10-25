# VennDisplay.rpc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89e1becba741017946e724076de3a2e4625d28df1288b8f85421c5cb4cb36647",
  "kind": "def",
  "lexical_name": "VennDisplay.rpc",
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
  "slug": "venndisplay-rpc--7f617923d7d941c782e6b8c4",
  "source": {
    "blob": "f85d11d09b1a23d5bb51f05f16d6fde5497d845c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f617923d7d941c782e6b8c408b01707ac59c22375e1ccde6ca33dfe3091451d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89e1becba741017946e724076de3a2e4625d28df1288b8f85421c5cb4cb36647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def VennDisplay.rpc (props : PanelWidgetProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    let inner : Html ← (do
      if props.selectedLocations.isEmpty then
        return <span>Use shift-click to select hypotheses to include in the diagram.</span>
      let some selectedLoc := props.selectedLocations[0]? | unreachable!

      let some g := findGoalForLocation props.goals selectedLoc
        | throw $ .invalidParams
            s!"could not find goal for location {toJson selectedLoc}"
      g.ctx.val.runMetaM {} do
        let md ← g.mvarId.getDecl
        let lctx := md.lctx |>.sanitizeNames.run' {options := (← getOptions)}
        Meta.withLCtx lctx md.localInstances do
          let locs : Array LocalDecl ← props.selectedLocations.filterMapM fun
            | ⟨mv, .hyp fv⟩ | ⟨mv, .hypType fv _⟩ =>
              if mv == g.mvarId then return some (← fv.getDecl) else return none
            | _ => return none
          match ← isSetGoal? locs with
          | some html => return html
          | none => return <span>No set goal.</span>)
    return <details «open»={true}>
        <summary className="mv2 pointer">Venn diagram</summary>
        <div className="ml1">{inner}</div>
      </details>

@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85d11d09b1a23d5bb51f05f16d6fde5497d845c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
