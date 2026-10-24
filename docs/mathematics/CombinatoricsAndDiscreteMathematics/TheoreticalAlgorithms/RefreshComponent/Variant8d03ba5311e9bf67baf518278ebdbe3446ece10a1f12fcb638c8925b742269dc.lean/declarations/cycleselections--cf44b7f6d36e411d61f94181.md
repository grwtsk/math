# cycleSelections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00e74b65e3d27fdb6a3164e3ed7e9d2d5103ea930e7180c25c9df49cc42fc5d5",
  "kind": "def",
  "lexical_name": "cycleSelections",
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
  "slug": "cycleselections--cf44b7f6d36e411d61f94181",
  "source": {
    "blob": "5919bbd0ad0551cdc8da1c24d1c7b6be2c8cff41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant8d03ba5311e9bf67baf518278ebdbe3446ece10a1f12fcb638c8925b742269dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf44b7f6d36e411d61f94181241f10914871cec32870497ef8695db33fbd212b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant8d03ba5311e9bf67baf518278ebdbe3446ece10a1f12fcb638c8925b742269dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00e74b65e3d27fdb6a3164e3ed7e9d2d5103ea930e7180c25c9df49cc42fc5d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant8d03ba5311e9bf67baf518278ebdbe3446ece10a1f12fcb638c8925b742269dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RefreshComponent/Variant8d03ba5311e9bf67baf518278ebdbe3446ece10a1f12fcb638c8925b742269dc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5919bbd0ad0551cdc8da1c24d1c7b6be2c8cff41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
