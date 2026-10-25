# inlineApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbbcd55d4506ac0fb973a825ee4e4f40d6432a8b99c7298e7985ae53958f1551",
  "kind": "def",
  "lexical_name": "inlineApp?",
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
  "slug": "inlineapp--ed2ceb2f64c752a9d11db37d",
  "source": {
    "blob": "40a39239209d12be65a66298d6a8b85c3d651029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed2ceb2f64c752a9d11db37da9e2df37739919f0bf7a184626fe23e5827ae32f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbbcd55d4506ac0fb973a825ee4e4f40d6432a8b99c7298e7985ae53958f1551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inlineApp? (letDecl : LetDecl .pure) (k : Code .pure) : SimpM (Option (Code .pure)) := do
  let some info ← inlineCandidate? letDecl.value | return none
  let numArgs := info.args.size
  withInlining letDecl.value info.recursive do
  let fvarId := letDecl.fvarId
  if numArgs < info.arity then
    let funDecl ← specializePartialApp info
    addFVarSubst fvarId funDecl.fvarId
    markSimplified
    simp (.fun funDecl k)
  else
    let code ← betaReduce info.params info.value info.args[*...info.arity]
    if k.isReturnOf fvarId && numArgs == info.arity then
      /- Easy case, the continuation `k` is just returning the result of the application. -/
      markSimplified
      simp code
    else
      let code ← simp code
      let simpK (result : FVarId) : SimpM (Code .pure) := do
        /- `result` contains the result of the inlined code -/
        if numArgs > info.arity then
          let decl ← mkAuxLetDecl (.fvar result info.args[info.arity...*])
          addFVarSubst fvarId decl.fvarId
          simp (.let decl k)
        else
          addFVarSubst fvarId result
          simp k
      markSimplified
      if oneExitPointQuick code then
        -- TODO: if `k` is small, we should also inline it here
        code.bind fun fvarId' => do
          markUsedFVar fvarId'
          simpK fvarId'
      else
        let expectedType ← inferAppType info.fType (info.args[*...info.arity]).toArray
        if expectedType.headBeta.isForall then
          /-
          If `code` returns a function, we create an auxiliary local function declaration (and eta-expand it)
          instead of creating a join point that takes a closure as an argument.
          -/
          let auxFunDecl ← mkAuxFunDecl #[] code
          let auxFunDecl ← auxFunDecl.etaExpand
          let k ← simpK auxFunDecl.fvarId
          attachCodeDecls #[.fun auxFunDecl] k
        else
          let jpParam ← mkAuxParam expectedType
          let jpValue ← simpK jpParam.fvarId
          let jpDecl ← mkAuxJpDecl #[jpParam] jpValue
          let code ← code.bind fun fvarId => return .jmp jpDecl.fvarId #[.fvar fvarId]
          return Code.jp jpDecl code

/--
Simplify the given local function declaration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a39239209d12be65a66298d6a8b85c3d651029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
