# mkElimApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2890231ff8ce0f1f6236558c60b5f068bf9962df774be810fdbb9364ef1e85e7",
  "kind": "def",
  "lexical_name": "mkElimApp",
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
  "slug": "mkelimapp--0c457afdee8bbb70bfc83c2e",
  "source": {
    "blob": "e1ac382d587c03dd137dad0d3b17273cb7572b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c457afdee8bbb70bfc83c2ef4a9a19a4230465c06ddd1ceaaac50ef199b6396",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2890231ff8ce0f1f6236558c60b5f068bf9962df774be810fdbb9364ef1e85e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def mkElimApp (elimInfo : ElimInfo) (targets : Array Expr) (tag : Name) : TermElabM Result := do
  let rec loop : M Unit := do
    match (← getFType) with
    | .forallE binderName _ _ c =>
      let ctx ← read
      let argPos := (← get).argPos
      if ctx.elimInfo.motivePos == argPos then
        let motive ← mkFreshExprMVar (← getArgExpectedType) MetavarKind.syntheticOpaque
        modify fun s => { s with motive := motive.mvarId! }
        addNewArg motive
      else if ctx.elimInfo.targetsPos.contains argPos then
        let s ← get
        let ctx ← read
        unless s.targetPos < ctx.targets.size do
          throwError "Insufficient number of targets for `{elimInfo.elimExpr}`"
        let target := ctx.targets[s.targetPos]!
        let expectedType ← getArgExpectedType
        let target ← withAssignableSyntheticOpaque <| Term.ensureHasType expectedType target
        modify fun s => { s with targetPos := s.targetPos + 1 }
        addNewArg target
      else match c with
        | .implicit =>
          let arg ← mkFreshExprMVar (← getArgExpectedType)
          addNewArg arg
        | .strictImplicit =>
          let arg ← mkFreshExprMVar (← getArgExpectedType)
          addNewArg arg
        | .instImplicit =>
          let arg ← mkFreshExprMVar (← getArgExpectedType) (kind := MetavarKind.synthetic) (userName := appendTag tag binderName)
          modify fun s => { s with insts := s.insts.push arg.mvarId! }
          addNewArg arg
        | _ =>
          let arg ← mkFreshExprSyntheticOpaqueMVar (← getArgExpectedType) (tag := appendTag tag binderName)
          let x   ← getBindingName
          modify fun s =>
            let info := elimInfo.altsInfo[s.alts.size]!
            { s with alts := s.alts.push ⟨x, info, arg.mvarId!⟩ }
          addNewArg arg
      loop
    | _ =>
      let s ← get
      let ctx ← read
      unless s.targetPos = ctx.targets.size do
        throwError "Unexpected number of targets for `{elimInfo.elimExpr}`"
      pure ()
  let (_, s) ← (loop).run { elimInfo := elimInfo, targets := targets }
    |>.run { f := elimInfo.elimExpr, fType := elimInfo.elimType, motive := none }
  let mut others := #[]
  for mvarId in s.insts do
    try
      unless (← Term.synthesizeInstMVarCore mvarId) do
        mvarId.setKind .syntheticOpaque
        others := others.push mvarId
    catch _ =>
      mvarId.setKind .syntheticOpaque
      others := others.push mvarId
  let alts ← s.alts.filterM fun alt => return !(← alt.mvarId.isAssigned)
  let some motive := s.motive |
      throwError "Internal error in mkElimApp: Motive not found"
  let complexArgs ← s.fType.withApp fun f motiveArgs => do
    unless f == mkMVar motive do
      throwError "Internal error in mkElimApp: Expected application of {motive}:{indentExpr s.fType}"
    -- Sanity-checking that the motive is applied to the targets.
    -- NB: The motive can take them in a different order than the eliminator itself
    for motiveArg in motiveArgs[*...targets.size] do
      unless targets.contains motiveArg do
        throwError "Internal error in mkElimApp: Expected first {targets.size} arguments of motive \
          in conclusion to be one of the targets:{indentExpr s.fType}"
    pure motiveArgs[targets.size...*]
  let elimApp ← instantiateMVars s.f
  -- `elimArgs` is the argument list that the offsets in `elimInfo` work with
  let elimArgs := elimApp.getAppArgs[elimInfo.elimExpr.getAppNumArgs...*]
  return { elimApp, elimArgs, alts, others, motive, complexArgs }

/--
Given a goal `... targets ... |- C[targets, complexArgs]` associated with `mvarId`,
where `complexArgs` are the complex (i.e. non-target) arguments to the motive in the conclusion
of the eliminator, construct `motiveArg := fun targets rs => C[targets, rs]`

This checks if the type of the complex arguments match what's expected by the motive, and
ignores them otherwise. This limits the ability of `cases` to use unfolding function
principles with dependent types, because after generalization of the targets, the types do
no longer match. This can likely be improved.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ac382d587c03dd137dad0d3b17273cb7572b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
