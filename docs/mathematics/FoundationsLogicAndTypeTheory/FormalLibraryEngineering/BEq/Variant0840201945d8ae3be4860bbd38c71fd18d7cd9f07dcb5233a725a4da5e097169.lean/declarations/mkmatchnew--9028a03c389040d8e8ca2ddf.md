# mkMatchNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b08223cb43410dd146cfa4dc3c06f14513289741b2010c64a3456b412290ccf",
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
  "slug": "mkmatchnew--9028a03c389040d8e8ca2ddf",
  "source": {
    "blob": "cb8c62f19e08aafd7672ed4b86b5f6e611664123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9028a03c389040d8e8ca2ddf93896a3ac549b4e7bd798e50ce5e92aa3e728601",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b08223cb43410dd146cfa4dc3c06f14513289741b2010c64a3456b412290ccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchNew (header : Header) (indVal : InductiveVal) (auxFunName : Name) : TermElabM Term := do
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

      let mut rhs ← `(true)
      let mut rhs_empty := true
      for i in *...ctorInfo.numFields do
        let pos := indVal.numParams + ctorInfo.numFields - i - 1
        let x := xs[pos]!
        if type.containsFVar x.fvarId! then
          -- If resulting type depends on this field, we don't need to compare
          -- and the casesOnSameCtor only has a parameter for it once
          ctorArgs1 := ctorArgs1.push (← `(_))
        else
          let userName ← x.fvarId!.getUserName
          let a := mkIdent (← mkFreshUserName userName)
          let b := mkIdent (← mkFreshUserName (userName.appendAfter "'"))
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
      if ctorArgs1.isEmpty then
        -- Unit thunking argument
        ctorArgs1 := ctorArgs1.push (← `(()))
      `(@fun $ctorArgs1.reverse:term* $ctorArgs2.reverse:term* =>$rhs:term)
  if indVal.numCtors == 1 then
    `( $(mkCIdent casesOnSameCtorName) $x1:term $x2:term rfl $alts:term* )
  else
    `( match Nat.decEq ($(mkCIdent ctorIdxName) $x1:ident) ($(mkCIdent ctorIdxName) $x2:ident) with
      | .isTrue h => $(mkCIdent casesOnSameCtorName) $x1:term $x2:term h $alts:term*
      | .isFalse _ => false)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8c62f19e08aafd7672ed4b86b5f6e611664123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
