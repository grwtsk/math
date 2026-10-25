# casesMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bcf7570503bcaa2238b1b1b88b409781b14d631a80218c67bf1bc0d1a806a9c",
  "kind": "def",
  "lexical_name": "casesMatch",
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
  "slug": "casesmatch--5a09f7eac8e1e5717097b0f1",
  "source": {
    "blob": "0f681965db75817505efcf7f6034ffe761c770a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a09f7eac8e1e5717097b0f161b270cc158322f2ca2b00da8379e78e7e613a74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bcf7570503bcaa2238b1b1b88b409781b14d631a80218c67bf1bc0d1a806a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def casesMatch (mvarId : MVarId) (e : Expr) : MetaM (List MVarId) := mvarId.withContext do
  let some app ← matchMatcherApp? e
    | throwTacticEx `grind.casesMatch mvarId m!"`match`-expression expected{indentExpr e}"
  let (motive, eqRefls) ← mkMotiveAndRefls app
  let target ← mvarId.getType
  let mut us := app.matcherLevels
  if let some i := app.uElimPos? then
    us := us.set! i (← getLevel target)
  let splitterName := (← Match.getEquationsFor app.matcherName).splitterName
  let splitterApp := mkConst splitterName us.toList
  let splitterApp := mkAppN splitterApp app.params
  let splitterApp := mkApp splitterApp motive
  let splitterApp := mkAppN splitterApp app.discrs
  let numAlts := app.alts.size
  let splitterType ← inferType splitterApp
  let splitterType := addMatchCondsToSplitter splitterType app.alts.size
  let (mvars, _, _) ← forallMetaBoundedTelescope splitterType numAlts (kind := .syntheticOpaque)
  let splitterApp := mkAppN splitterApp mvars
  let val := mkAppN splitterApp eqRefls
  mvarId.assign val
  updateTags mvars
  return mvars.toList.map (·.mvarId!)
where
  mkMotiveAndRefls (app : MatcherApp) : MetaM (Expr × Array Expr) := do
    let dummy := mkSort 0
    let aux := mkApp (mkAppN e.getAppFn app.params) dummy
    forallBoundedTelescope (← inferType aux) app.discrs.size fun xs _ => do
    withNewEqs app.discrs xs fun eqs eqRefls => do
      let type ← mvarId.getType
      let type ← mkForallFVars eqs type
      let motive ← mkLambdaFVars xs type
      return (motive, eqRefls)

  updateTags (mvars : Array Expr) : MetaM Unit := do
    let tag ← mvarId.getTag
    if mvars.size == 1 then
      mvars[0]!.mvarId!.setTag tag
    else
      let mut idx := 1
      for mvar in mvars do
        mvar.mvarId!.setTag (Name.num tag idx)
        idx := idx + 1

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f681965db75817505efcf7f6034ffe761c770a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
