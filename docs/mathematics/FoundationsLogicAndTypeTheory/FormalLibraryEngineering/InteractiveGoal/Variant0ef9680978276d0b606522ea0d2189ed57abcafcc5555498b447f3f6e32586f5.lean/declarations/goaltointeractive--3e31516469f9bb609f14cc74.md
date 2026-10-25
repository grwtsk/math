# goalToInteractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f657252c9eb9c18451e695ce6dd6e16327c570000048f8791c25b99ec5f53a74",
  "kind": "def",
  "lexical_name": "goalToInteractive",
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
  "slug": "goaltointeractive--3e31516469f9bb609f14cc74",
  "source": {
    "blob": "092f0b0081559205ebb6dee20f905f94a5f21fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e31516469f9bb609f14cc74ee7db1db254ce7b4b3a6dd8f38a8c9b397e15439",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f657252c9eb9c18451e695ce6dd6e16327c570000048f8791c25b99ec5f53a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def goalToInteractive (mvarId : MVarId) : MetaM InteractiveGoal := do
  let ppAuxDecls := pp.auxDecls.get (← getOptions)
  let ppImplDetailHyps := pp.implementationDetailHyps.get (← getOptions)
  withGoalCtx mvarId fun lctx mvarDecl => do
    -- See comment in `Lean.Meta.ppGoal` about this synthetic opaque heuristic.
    let tactic := mvarDecl.kind.isSyntheticOpaque
    let pushPending (ids : Array (String × FVarId)) (type? : Option Expr) (hyps : Array InteractiveHypothesisBundle)
        : MetaM (Array InteractiveHypothesisBundle) :=
      if ids.isEmpty then
        pure hyps
      else
        match type? with
        | none      => pure hyps
        | some type => addInteractiveHypothesisBundle hyps ids type
    let mut varNames : Array (String × FVarId) := #[]
    let mut prevType? : Option Expr := none
    let mut hyps : Array InteractiveHypothesisBundle := #[]
    for localDecl in lctx do
      if !ppAuxDecls && localDecl.isAuxDecl || !ppImplDetailHyps && localDecl.isImplementationDetail then
        continue
      else
        match localDecl with
        | LocalDecl.cdecl _index fvarId varName type ..
        | LocalDecl.ldecl _index fvarId varName type (nondep := true) .. =>
          -- We rely on the fact that `withGoalCtx` runs `LocalContext.sanitizeNames`,
          -- so the `userName`s of local hypotheses are already pretty-printed
          -- and it suffices to simply `toString` them.
          let varName := toString varName
          let type ← instantiateMVars type
          if prevType? == none || prevType? == some type then
            varNames := varNames.push (varName, fvarId)
          else
            hyps ← pushPending varNames prevType? hyps
            varNames := #[(varName, fvarId)]
          prevType? := some type
        | LocalDecl.ldecl _index fvarId varName type val (nondep := false) .. => do
          let varName := toString varName
          hyps ← pushPending varNames prevType? hyps
          let type ← instantiateMVars type
          let val ← instantiateMVars val
          hyps ← addInteractiveHypothesisBundle hyps #[(varName, fvarId)] type val tactic
          varNames := #[]
          prevType? := none
    hyps ← pushPending varNames prevType? hyps
    let goalTp ← instantiateMVars mvarDecl.type
    let goalFmt ← ppExprTagged goalTp
    let userName? := match mvarDecl.userName with
      | Name.anonymous => none
      | name           => some <| toString name.eraseMacroScopes
    return {
      hyps
      type := goalFmt
      ctx := ← WithRpcRef.mk {← Elab.CommandContextInfo.save with }
      userName?
      goalPrefix := getGoalPrefix mvarDecl
      mvarId
    }

end Lean.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092f0b0081559205ebb6dee20f905f94a5f21fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
