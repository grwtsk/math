# evalSymDSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a57b4a9b4cd258a30df537425c8a150adc0f0e9c4475c1fe19cfc1f38fd55fc",
  "kind": "def",
  "lexical_name": "evalSymDSimp",
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
  "slug": "evalsymdsimp--3612dcb48e4165e505a9f9c7",
  "source": {
    "blob": "41601fba560be031735f6bebc493f5d89257332b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3612dcb48e4165e505a9f9c7655aae5a83baf45b1af149e188c1881a4bf2cec5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a57b4a9b4cd258a30df537425c8a150adc0f0e9c4475c1fe19cfc1f38fd55fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic Parser.Tactic.Grind.symDSimp] def evalSymDSimp : GrindTactic := fun stx => withMainContext do
  ensureSym
  let `(grind| dsimp $[$variantId?]? $[[ $[$args],* ]]?) := stx | throwUnsupportedSyntax
  let variantName := variantId?.map (·.getId) |>.getD .anonymous
  let args ← elabDSimpArgs args
  let cacheKey : DSimpCacheKey := { variant := variantName, args }
  let dsimpState := (← get).cache.dsimpState[cacheKey]?.getD {}
  let (methods, config) ← elabDSimpVariant variantName args
  let goal ← getMainGoal
  let (result, dsimpState) ← liftGrindM <| goal.withContext do
    Sym.DSimp.DSimpM.run (Sym.DSimp.dsimp (← goal.mvarId.getType)) methods config dsimpState
  modify fun s => { s with cache.dsimpState := s.cache.dsimpState.insert cacheKey dsimpState }
  match result with
  | .rfl _  => throwError "`Sym.dsimp` made no progress"
  | .step target' _ =>
    if target'.isTrue then
      goal.mvarId.assign (mkConst ``True.intro)
      replaceMainGoal []
    else
      let decl ← goal.mvarId.getDecl
      let mvarNew ← mkFreshExprSyntheticOpaqueMVar target' decl.userName
      goal.mvarId.assign mvarNew
      replaceMainGoal [{ goal with mvarId := mvarNew.mvarId! }]

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41601fba560be031735f6bebc493f5d89257332b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
