# evalFinishTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d79a42dd94af83298b03eb7f182f696c0c724e5b9a32b38ee99a16bafb745042",
  "kind": "def",
  "lexical_name": "evalFinishTrace",
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
  "slug": "evalfinishtrace--6f2b274ec498d62e0a319bf4",
  "source": {
    "blob": "1dea7390768d06489ea60851555582d4c326bdbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f2b274ec498d62e0a319bf4fccd13d6a0a32a47ec02df4e3d7346b736f613cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d79a42dd94af83298b03eb7f182f696c0c724e5b9a32b38ee99a16bafb745042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic finishTrace] def evalFinishTrace : GrindTactic := fun stx => do
  let `(grind| finish? $[$configItems]* $[only%$only]? $[[$params?,*]]?) := stx | throwUnsupportedSyntax
  withConfigItems configItems do
  let params := params?.getD {}
  withParams (← read).params params only.isSome do
    let a ← Action.mkFinish
    let goal ← getMainGoal
    let params := (← read).params
    let sym := (← read).sym
    withTracing do
    let solved ← liftGrindM do
      let saved ← saveState
      let (initSeq, goal') ← if sym then symInit goal else pure ([], goal)
      match (← a.run goal') with
      | .closed seq =>
        let seq := initSeq ++ seq
        let finishTac ← mkFinishTactic seq
        let seq := Action.mkGrindSeq seq
        if (← Action.checkSeqAt saved goal [finishTac]) then
          Tactic.TryThis.addSuggestions stx #[
            { suggestion := .tsyntax seq },
            { suggestion := .tsyntax finishTac }
          ]
        else
          Tactic.TryThis.addSuggestion stx { suggestion := .tsyntax seq }
        return true
      | .stuck gs =>
        let goal :: _ := gs | throwError "`finish?` failed, but resulting goal is not available"
        let result ← mkResult params (some goal)
        throwError "`finish?` failed\n{← result.toMessageData}"
        return false
    if solved then
      replaceMainGoal []

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dea7390768d06489ea60851555582d4c326bdbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
