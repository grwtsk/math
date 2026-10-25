# evalSymDSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd6fc05a1ccdb038a88b653c582040e122e991476cbefb4b000bf95b837d2a5d",
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
  "slug": "evalsymdsimp--baf15394f7b21ea10cf21714",
  "source": {
    "blob": "652f040e0391a0454a3fd05c570efa0d4ad2f990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf15394f7b21ea10cf217141c71bbcc524b7636e35aed30c2e1398d57b06165",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd6fc05a1ccdb038a88b653c582040e122e991476cbefb4b000bf95b837d2a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652f040e0391a0454a3fd05c570efa0d4ad2f990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
