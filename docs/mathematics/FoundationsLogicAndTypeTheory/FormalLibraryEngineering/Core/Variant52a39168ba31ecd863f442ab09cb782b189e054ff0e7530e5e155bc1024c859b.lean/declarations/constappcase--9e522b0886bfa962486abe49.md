# constAppCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2ca7bc007f069d6859b6c6ee02f830bebc015315d4919b0ee22c8d485e1e6aa",
  "kind": "def",
  "lexical_name": "constAppCase",
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
  "slug": "constappcase--9e522b0886bfa962486abe49",
  "source": {
    "blob": "a50a61593417cfd20fd28234cbd4fdc07a8ef543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 567,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e522b0886bfa962486abe497bb129e61112b7bb442a37bbfdde2cada4b86eee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2ca7bc007f069d6859b6c6ee02f830bebc015315d4919b0ee22c8d485e1e6aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constAppCase (funPropDecl : FunPropDecl) (e : Expr) (fData : FunctionData)
    (funProp : Expr → FunPropM (Option Result)) : FunPropM (Option Result) := do

  let .some (funName,_) := fData.fn.const?
    | throwError "fun_prop bug: invelid use of const app case"
  let globalThms ← getDeclTheorems funPropDecl funName fData.mainArgs fData.args.size

  trace[Meta.Tactic.fun_prop]
    s!"candidate theorems for {funName} {← globalThms.mapM fun thm => ppOrigin' thm.thmOrigin}"

  if let .some r ← tryTheorems funPropDecl e fData globalThms funProp then
    return r

  -- Try local theorems - this is useful for recursive functions
  let localThms ← getLocalTheorems funPropDecl (.decl funName) fData.mainArgs fData.args.size
  if localThms.size ≠ 0 then
    trace[Meta.Tactic.fun_prop]
      s!"candidate local theorems for {funName} \
        {← localThms.mapM fun thm => ppOrigin' thm.thmOrigin}"
  if let .some r ← tryTheorems funPropDecl e fData localThms funProp then
    return r

  -- log error if no global or local theorems were found
  if globalThms.size = 0 && localThms.size = 0 then
     logError s!"No theorems found for `{funName}` in order to prove `{← ppExpr e}`"

  if (← fData.isMorApplication) != .none then
    if let .some r ← applyMorRules funPropDecl e fData funProp then
      return r

  if let .some (f,g) ← fData.nontrivialDecomposition then
    trace[Meta.Tactic.fun_prop]
      s!"failed applying `{funPropDecl.funPropName}` theorems for `{funName}`
         trying again after decomposing function as: `({← ppExpr f}) ∘ ({← ppExpr g})`"

    if let .some r ← applyCompRule funPropDecl e f g funProp then
      return r
  else
    trace[Meta.Tactic.fun_prop]
      s!"failed applying `{funPropDecl.funPropName}` theorems for `{funName}`
         now trying to prove `{funPropDecl.funPropName}` from another function property"

    if let .some r ← applyTransitionRules e funProp then
      return r


  return none


/-- Cache result if it does not have any subgoals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50a61593417cfd20fd28234cbd4fdc07a8ef543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
