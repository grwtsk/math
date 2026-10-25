# mkMatchNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e820fd43658c75b854a7806d5d14623a1f04b5500379b4ca53bb2a37e6d7c05c",
  "kind": "def",
  "lexical_name": "mkMatchNew",
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
  "slug": "mkmatchnew--aa064527e52f3a7c41ad91d9",
  "source": {
    "blob": "bfde032e1a5f9fefe9fba42668d3d328e73cd18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa064527e52f3a7c41ad91d90857fa09d86c22a4c83c309f7c9aabe9123c5538",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e820fd43658c75b854a7806d5d14623a1f04b5500379b4ca53bb2a37e6d7c05c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchNew (ctx : Context) (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  assert! header.targetNames.size == 2

  let x1 := mkIdent header.targetNames[0]!
  let x2 := mkIdent header.targetNames[1]!
  let ctorIdxName := mkCtorIdxName indVal.name
  -- NB: the getMatcherInfo? assumes all matchers are called `match_`
  let casesOnSameCtorName ← mkFreshUserName (indVal.name ++ `match_on_same_ctor)
  mkCasesOnSameCtor casesOnSameCtorName indVal.name
  let alts ← Array.ofFnM (n := indVal.numCtors) fun ⟨ctorIdx, _⟩ => do
    let ctorName := indVal.ctors[ctorIdx]!
    let ctorInfo ← getConstInfoCtor ctorName
    forallTelescopeReducing ctorInfo.type fun xs type => do
      let type ← Core.betaReduce type -- we 'beta-reduce' to eliminate "artificial" dependencies
      let mut ctorArgs1 : Array Term := #[]
      let mut ctorArgs2 : Array Term := #[]
      let mut todo := #[]

      for i in *...ctorInfo.numFields do
        let x := xs[indVal.numParams + i]!
        if type.containsFVar x.fvarId! then
          -- If resulting type depends on this field, we don't need to bring it into
          -- scope nor compare it
          ctorArgs1 := ctorArgs1.push (← `(_))
        else
          let a := mkIdent (← mkFreshUserName `a)
          let b := mkIdent (← mkFreshUserName `b)
          ctorArgs1 := ctorArgs1.push a
          ctorArgs2 := ctorArgs2.push b
          let xType ← inferType x
          let indValNum :=
            ctx.typeInfos.findIdx?
            (xType.isAppOf ∘ ConstantVal.name ∘ InductiveVal.toConstantVal)
          let recField  := indValNum.map (ctx.auxFunNames[·]!)
          let isProof ← isProp xType
          todo := todo.push (a, b, recField, isProof)
      if ctorArgs1.isEmpty then
        -- Unit thunking argument
        ctorArgs1 := ctorArgs1.push (← `(()))
      let rhs ← mkSameCtorRhs todo.toList
      `(@fun $ctorArgs1:term* $ctorArgs2:term* =>$rhs:term)
  if indVal.numCtors == 1 then
    `( $(mkCIdent casesOnSameCtorName) $x1:term $x2:term rfl $alts:term* )
  else
    `( match decEq ($(mkCIdent ctorIdxName) $x1:ident) ($(mkCIdent ctorIdxName) $x2:ident) with
      | .isTrue h => $(mkCIdent casesOnSameCtorName) $x1:term $x2:term h $alts:term*
      | .isFalse h => isFalse (fun h' => h (congrArg $(mkCIdent ctorIdxName) h')))
where
  mkSameCtorRhs : List (Ident × Ident × Option Name × Bool) → TermElabM Term
    | [] => ``(isTrue rfl)
    | (a, b, recField, isProof) :: todo => withFreshMacroScope do
      let rhs ← if isProof then
        `(have h : @$a = @$b := rfl; by subst h; exact $(← mkSameCtorRhs todo):term)
      else
        let sameCtor ← mkSameCtorRhs todo
        `(if h : @$a = @$b then
           by subst h; exact $sameCtor:term
          else
           isFalse (by intro n; injection n; apply h _; assumption))
      if let some auxFunName := recField then
        -- add local instance for `a = b` using the function being defined `auxFunName`
        `(let inst := $(mkIdent auxFunName) @$a @$b; $rhs)
      else
        return rhs


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfde032e1a5f9fefe9fba42668d3d328e73cd18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
