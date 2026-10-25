# FunctionData.nontrivialDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7b63a00c3982b60339b8cf2a554345802e44d7643c19e083a5ef7e6306503e3",
  "kind": "def",
  "lexical_name": "FunctionData.nontrivialDecomposition",
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
  "slug": "functiondata-nontrivialdecomposition--aff35e52c851888eaec9f842",
  "source": {
    "blob": "08160f299eb5f6dfb40c3482c082cd69eaa6912e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff35e52c851888eaec9f842d1bfe905315212224537e7c7b5cdabc39d4ceb28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7b63a00c3982b60339b8cf2a554345802e44d7643c19e083a5ef7e6306503e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def FunctionData.nontrivialDecomposition (fData : FunctionData) : MetaM (Option (Expr × Expr)) := do

    let mut lctx := fData.lctx
    let insts := fData.insts

    let x := fData.mainVar
    let xId := x.fvarId!
    let xName ← withLCtx lctx insts xId.getUserName

    let fn := fData.fn
    let mut args := fData.args

    if fn.containsFVar xId then
      return ← fData.peeloffArgDecomposition

    let mut yVals : Array Expr := #[]
    let mut yVars : Array Expr := #[]

    for argId in fData.mainArgs do
      let yVal := args[argId]!

      let yVal' := yVal.expr
      let yId ← withLCtx lctx insts mkFreshFVarId
      let yType ← withLCtx lctx insts (inferType yVal')
      if yType.containsFVar fData.mainVar.fvarId! then
        return none
      lctx := lctx.mkLocalDecl yId (xName.appendAfter (toString argId)) yType
      let yVar := Expr.fvar yId
      yVars := yVars.push yVar
      yVals := yVals.push yVal'
      args := args.set! argId ⟨yVar, yVal.coe⟩

    let g  ← withLCtx lctx insts do
      mkLambdaFVars #[x] (← mkProdElem yVals)
    let f ← withLCtx lctx insts do
      (mkLambdaFVars yVars (Mor.mkAppN fn args))
      >>=
      mkUncurryFun yVars.size

    -- check if is non-triviality
    let f' ← fData.toExpr
    if (← isDefEq f' f) || (← isDefEq f' g) then
      return none

    return (f, g)


/-- Decompose function `fun x => f y₁ ... yₙ` over specified argument indices `#[i, j, ...]`.

The result is:
```
(fun (yᵢ',yⱼ',...) => f y₁ .. yᵢ' .. yⱼ' .. yₙ) ∘ (fun x => (yᵢ, yⱼ, ...))
```

This is not possible if `yₗ` for `l ∉ #[i,j,...]` still contains `x`.
In such case `none` is returned.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08160f299eb5f6dfb40c3482c082cd69eaa6912e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
