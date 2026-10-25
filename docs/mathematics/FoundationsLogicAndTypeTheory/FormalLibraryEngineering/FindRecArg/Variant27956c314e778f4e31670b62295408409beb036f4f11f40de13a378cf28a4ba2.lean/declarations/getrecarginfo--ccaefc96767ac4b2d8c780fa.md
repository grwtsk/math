# getRecArgInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41e9122b4e920486d9fd9ebe222f8c1142a9e9b27ed310e81a2f31b9230d8a84",
  "kind": "def",
  "lexical_name": "getRecArgInfo",
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
  "slug": "getrecarginfo--ccaefc96767ac4b2d8c780fa",
  "source": {
    "blob": "f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccaefc96767ac4b2d8c780fa3ff04603ac69ace02a99a1993c535711a59df881",
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

Occurrence: `declaration:41e9122b4e920486d9fd9ebe222f8c1142a9e9b27ed310e81a2f31b9230d8a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRecArgInfo (fnName : Name) (fixedParamPerm : FixedParamPerm) (xs : Array Expr) (i : Nat) : MetaM RecArgInfo := do
  assert! fixedParamPerm.size = xs.size
  if h : i < xs.size then
    if fixedParamPerm.isFixed i then
      throwError "it is unchanged in the recursive calls"
    let x := xs[i]
    let localDecl ← getFVarLocalDecl x
    if localDecl.isLet then
      throwError "it is a let-binding"
    let xType ← whnfD localDecl.type
    matchConstInduct xType.getAppFn (fun _ => throwError "its type is not an inductive") fun indInfo us => do
    let indArgs    : Array Expr := xType.getAppArgs
    let indParams  : Array Expr := indArgs[*...indInfo.numParams]
    let indIndices : Array Expr := indArgs[indInfo.numParams...*]
    if !indIndices.all Expr.isFVar then
      throwError "its type {indInfo.name} is an inductive family and indices are not variables{indentExpr xType}"
    else if !indIndices.allDiff then
      throwError "its type {indInfo.name} is an inductive family and indices are not pairwise distinct{indentExpr xType}"
    else
      let ys := fixedParamPerm.pickVarying xs
      match (← hasBadIndexDep? ys indIndices) with
      | some (index, y) =>
        throwError "its type {indInfo.name} is an inductive family{indentExpr xType}\nand index{indentExpr index}\ndepends on the non index{indentExpr y}"
      | none =>
        match (← hasBadParamDep? ys indParams) with
        | some (indParam, y) =>
          throwError "its type is an inductive datatype{indentExpr xType}\nand the datatype parameter{indentExpr indParam}\ndepends on the function parameter{indentExpr y}\nwhich is not fixed."
        | none =>
          let indAll := indInfo.all.toArray
          let .some indIdx := indAll.idxOf? indInfo.name | panic! "{indInfo.name} not in {indInfo.all}"
          let indicesPos := indIndices.map fun index => match xs.idxOf? index with | some i => i | none => unreachable!
          let indGroupInst := {
            IndGroupInfo.ofInductiveVal indInfo with
            levels := us
            params := indParams }
          return { fnName       := fnName
                   fixedParamPerm := fixedParamPerm
                   recArgPos    := i
                   indicesPos   := indicesPos
                   indGroupInst := indGroupInst
                   indIdx       := indIdx }
  else
    throwError "the index #{i+1} exceeds {xs.size}, the number of parameters"

/--
Collects the `RecArgInfos` for one function, and returns a report for why the others were not
considered.

The `xs` are the fixed parameters, `value` the body with the fixed prefix instantiated.

Takes the optional user annotation into account (`termMeasure?`). If this is given and the measure
is unsuitable, throw an error.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant27956c314e778f4e31670b62295408409beb036f4f11f40de13a378cf28a4ba2.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e9d136e9e938c70a0f7ddb7ee2d0eb5948675f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
