# argsInGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76bdcdefb8c2c2ea595a2bf9d4dcc179937a9cf0a489137d5884325ea973f9ef",
  "kind": "def",
  "lexical_name": "argsInGroup",
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
  "slug": "argsingroup--caa5c50893afc9dc19d7b072",
  "source": {
    "blob": "f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa5c50893afc9dc19d7b0721825d64690e5f8dc36de5b7246855752530f59b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76bdcdefb8c2c2ea595a2bf9d4dcc179937a9cf0a489137d5884325ea973f9ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def argsInGroup (group : IndGroupInst) (xs : Array Expr) (value : Expr)
    (recArgInfos : Array RecArgInfo) : MetaM (Array RecArgInfo) := do

  let nestedTypeFormers ← group.nestedTypeFormers

  recArgInfos.filterMapM fun recArgInfo => do
    -- Is this argument from the same mutual group of inductives?
    if (← group.isDefEq recArgInfo.indGroupInst) then
      return (.some recArgInfo)

    -- Can this argument be understood as the auxiliary type former of a nested inductive?
    if nestedTypeFormers.isEmpty then return .none
    lambdaTelescope value fun ys _ => do
      let args := recArgInfo.fixedParamPerm.buildArgs xs ys
      let x := args[recArgInfo.recArgPos]!
      for nestedTypeFormer in nestedTypeFormers, indIdx in group.all.size...group.numMotives do
        let xType ← whnfD (← inferType x)
        let (indIndices, _, type) ← forallMetaTelescope nestedTypeFormer
        if (← isDefEqGuarded type xType) then
          let indIndices ← indIndices.mapM instantiateMVars
          if !indIndices.all Expr.isFVar then
            -- throwError "indices are not variables{indentExpr xType}"
            continue
          if !indIndices.allDiff then
            -- throwError "indices are not pairwise distinct{indentExpr xType}"
            continue
          -- TODO: Do we have to worry about the indices ending up in the fixed prefix here?
          if let some (_index, _y) ← hasBadIndexDep? ys indIndices then
            -- throwError "its type {indInfo.name} is an inductive family{indentExpr xType}\nand index{indentExpr index}\ndepends on the non index{indentExpr y}"
            continue
          let indicesPos := indIndices.map fun index => match args.idxOf? index with | some i => i | none => unreachable!
          return .some
            { fnName       := recArgInfo.fnName
              fixedParamPerm  := recArgInfo.fixedParamPerm
              recArgPos    := recArgInfo.recArgPos
              indicesPos   := indicesPos
              indGroupInst := group
              indIdx       := indIdx }
      return .none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
