# evalSymSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b206cefb5caf5f5fe8d28fe57ebe31af81074912474271c77b7b6bf6b179c3b0",
  "kind": "def",
  "lexical_name": "evalSymSimp",
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
  "slug": "evalsymsimp--10f01a07e701c07e02744d4a",
  "source": {
    "blob": "157db5163a75aba8c3cb91b5568f79234d9c4d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10f01a07e701c07e02744d4a262ee7483ae6832c266314d775cea835d0d7adfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b206cefb5caf5f5fe8d28fe57ebe31af81074912474271c77b7b6bf6b179c3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic Parser.Tactic.Grind.symSimp] def evalSymSimp : GrindTactic := fun stx => withMainContext do
  ensureSym
  let `(grind| simp $[$variantId?]? $[[ $[$extraIds],* ]]?) := stx | throwUnsupportedSyntax
  -- Resolve variant
  let variantName := variantId?.map (·.getId) |>.getD .anonymous
  -- Resolve extra theorems (local hypotheses first, then global constants)
  let (extras, thms) ← resolveExtraTheorems extraIds
  -- Cache lookup/creation
  let cacheKey : SimpCacheKey := { variant := variantName, extras }
  let simpState := (← get).cache.simpState[cacheKey]?.getD {}
  let (methods, config) ← elabSimpVariant variantName thms
  let goal ← getMainGoal
  let (simpResult, simpState) ← liftGrindM <| goal.withContext do
    Sym.Simp.SimpM.run (Sym.Simp.simp (← goal.mvarId.getType)) methods config simpState
  -- Save updated cache
  modify fun s => { s with cache.simpState := s.cache.simpState.insert cacheKey simpState }
  -- Apply result to goal
  match (← liftGrindM <| Sym.Simp.Result.toSimpGoalResult simpResult goal.mvarId) with
  | .closed => replaceMainGoal []
  | .goal mvarId => replaceMainGoal [{ goal with mvarId }]
  | .noProgress => throwError "`Sym.simp` made no progress"

end

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157db5163a75aba8c3cb91b5568f79234d9c4d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
