# mkMatchOld

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b04d56430f0ddbf39ad155f3da2797819fcdec55807eb053add750b271eb282",
  "kind": "def",
  "lexical_name": "mkMatchOld",
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
  "slug": "mkmatchold--06ceca10edabca2ba7658acf",
  "source": {
    "blob": "bfde032e1a5f9fefe9fba42668d3d328e73cd18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06ceca10edabca2ba7658acf1ec5ffee195b507f03cde8265d0e11fff01f11c6",
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

Occurrence: `declaration:3b04d56430f0ddbf39ad155f3da2797819fcdec55807eb053add750b271eb282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchOld (ctx : Context) (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
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

  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName₁ in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName₁
      for ctorName₂ in indVal.ctors do
        let mut patterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        if ctorName₁ == ctorName₂ then
          let alt ← forallTelescopeReducing ctorInfo.type fun xs type => do
            let type ← Core.betaReduce type -- we 'beta-reduce' to eliminate "artificial" dependencies
            let mut patterns  := patterns
            let mut ctorArgs1 := #[]
            let mut ctorArgs2 := #[]
            -- add `_` for inductive parameters, they are inaccessible
            for _ in *...indVal.numParams do
              ctorArgs1 := ctorArgs1.push (← `(_))
              ctorArgs2 := ctorArgs2.push (← `(_))
            let mut todo := #[]
            for i in *...ctorInfo.numFields do
              let x := xs[indVal.numParams + i]!
              if occursOrInType (← getLCtx) x type then
                -- If resulting type depends on this field, we don't need to compare
                -- but use inaccessible patterns fail during pattern match compilation if their
                -- equality does not actually follow from the equality between their types
                let a := mkIdent (← mkFreshUserName `a)
                ctorArgs1 := ctorArgs1.push a
                ctorArgs2 := ctorArgs2.push (← `(term|.( $a:ident )))
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
            patterns := patterns.push (← `(@$(mkIdent ctorName₁):ident $ctorArgs1:term*))
            patterns := patterns.push (← `(@$(mkIdent ctorName₁):ident $ctorArgs2:term*))
            let rhs ← mkSameCtorRhs todo.toList
            `(matchAltExpr| | $[$patterns:term],* => $rhs:term)
          alts := alts.push alt
        else if (← compatibleCtors ctorName₁ ctorName₂) then
          patterns := patterns ++ #[(← `($(mkIdent ctorName₁) ..)), (← `($(mkIdent ctorName₂) ..))]
          let rhs ← `(isFalse (by intro h; injection h))
          alts := alts.push (← `(matchAltExpr| | $[$patterns:term],* => $rhs:term))
    return alts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfde032e1a5f9fefe9fba42668d3d328e73cd18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
