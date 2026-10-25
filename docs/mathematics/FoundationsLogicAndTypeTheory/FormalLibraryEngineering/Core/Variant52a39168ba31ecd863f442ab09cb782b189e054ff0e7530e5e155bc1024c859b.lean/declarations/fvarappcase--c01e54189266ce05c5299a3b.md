# fvarAppCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a91674cdc72d40f98fa647c350224839addfec13a57c482dd3af4e502418708e",
  "kind": "def",
  "lexical_name": "fvarAppCase",
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
  "slug": "fvarappcase--c01e54189266ce05c5299a3b",
  "source": {
    "blob": "a50a61593417cfd20fd28234cbd4fdc07a8ef543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 531,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c01e54189266ce05c5299a3b25c2e569f56f9f6f863bb215cd7073a5bbbf4471",
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

Occurrence: `declaration:a91674cdc72d40f98fa647c350224839addfec13a57c482dd3af4e502418708e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fvarAppCase (funPropDecl : FunPropDecl) (e : Expr) (fData : FunctionData)
    (funProp : Expr → FunPropM (Option Result)) : FunPropM (Option Result) := do

  -- fvar theorems are almost exclusively in uncurried form so we decompose if we can
  if let .some (f,g) ← fData.nontrivialDecomposition then
    applyCompRule funPropDecl e f g funProp
  else
    let .fvar id := fData.fn | throwError "fun_prop bug: invalid use of fvar app case"
    let thms ← getLocalTheorems funPropDecl (.fvar id) fData.mainArgs fData.args.size
    trace[Meta.Tactic.fun_prop]
      s!"candidate local theorems for {←ppExpr (.fvar id)} \
         {← thms.mapM fun thm => ppOrigin' thm.thmOrigin}"

    if let .some r ← tryTheorems funPropDecl e fData thms funProp then
      return r

    if let .some f ← fData.unfoldHeadFVar? then
      let e' := e.setArg funPropDecl.funArgId f
      if let .some r ← funProp e' then
        return r

    if (← fData.isMorApplication) != .none then
      if let .some r ← applyMorRules funPropDecl e fData funProp then
        return r

    if (← fData.nontrivialDecomposition).isNone then
      if let .some r ← applyTransitionRules e funProp then
        return r

    if thms.size = 0 then
      logError s!"No theorems found for `{← ppExpr (.fvar id)}` in order to prove `{← ppExpr e}`"

    return none


/-- Prove function property of `fun x => f x₁ ... xₙ` where `f` is declared function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50a61593417cfd20fd28234cbd4fdc07a8ef543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
