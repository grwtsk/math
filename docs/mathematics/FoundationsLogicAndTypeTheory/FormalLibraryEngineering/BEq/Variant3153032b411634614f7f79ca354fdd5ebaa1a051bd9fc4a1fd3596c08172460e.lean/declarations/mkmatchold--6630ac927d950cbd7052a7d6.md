# mkMatchOld

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4caebcb2911676e3496d52c7848acd89b7954bcffd879fd5af8a5091b9a4f7f",
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
  "slug": "mkmatchold--6630ac927d950cbd7052a7d6",
  "source": {
    "blob": "594819bbd2398692ac3ceb481901eb3851f871df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6630ac927d950cbd7052a7d68dd1c153b4983fea6d9967969f622d10853fa804",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4caebcb2911676e3496d52c7848acd89b7954bcffd879fd5af8a5091b9a4f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchOld (header : Header) (indVal : InductiveVal) (auxFunName : Name) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  mkElseAlt : TermElabM (TSyntax ``matchAltExpr) := do
    let mut patterns := #[]
    -- add `_` pattern for indices
    for _ in *...indVal.numIndices do
      patterns := patterns.push (← `(_))
    patterns := patterns.push (← `(_))
    patterns := patterns.push (← `(_))
    let altRhs ← `(false)
    `(matchAltExpr| | $[$patterns:term],* => $altRhs:term)

  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs type => do
        let type ← Core.betaReduce type -- we 'beta-reduce' to eliminate "artificial" dependencies
        let mut patterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        let mut ctorArgs1 : Array Term := #[]
        let mut ctorArgs2 : Array Term := #[]
        let mut rhs ← `(true)
        let mut rhs_empty := true
        for i in *...ctorInfo.numFields do
          let pos := indVal.numParams + ctorInfo.numFields - i - 1
          let x := xs[pos]!
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
            if (← isProp xType) then
              continue
            if xType.isAppOf indVal.name then
              if rhs_empty then
                rhs ← `($(mkIdent auxFunName):ident $a:ident $b:ident)
                rhs_empty := false
              else
                rhs ← `($(mkIdent auxFunName):ident $a:ident $b:ident && $rhs)
            /- If `x` appears in the type of another field, use `eq_of_beq` to
               unify the types of the subsequent variables -/
            else if ← xs[(pos+1)...*].anyM
                (fun fvar => (Expr.containsFVar · x.fvarId!) <$> (inferType fvar)) then
              rhs ← `(if h : $a:ident == $b:ident then by
                        cases (eq_of_beq h)
                        exact $rhs
                      else false)
              rhs_empty := false
            else
              if rhs_empty then
                rhs ← `($a:ident == $b:ident)
                rhs_empty := false
              else
                rhs ← `($a:ident == $b:ident && $rhs)
          -- add `_` for inductive parameters, they are inaccessible
        for _ in *...indVal.numParams do
          ctorArgs1 := ctorArgs1.push (← `(_))
          ctorArgs2 := ctorArgs2.push (← `(_))
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs1.reverse:term*))
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs2.reverse:term*))
        `(matchAltExpr| | $[$patterns:term],* => $rhs:term)
      alts := alts.push alt
    alts := alts.push (← mkElseAlt)
    return alts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594819bbd2398692ac3ceb481901eb3851f871df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
