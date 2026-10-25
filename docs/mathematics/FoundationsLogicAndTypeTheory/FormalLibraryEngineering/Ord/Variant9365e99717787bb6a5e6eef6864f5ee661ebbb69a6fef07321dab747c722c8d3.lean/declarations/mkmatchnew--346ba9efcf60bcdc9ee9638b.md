# mkMatchNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1241b8c2812c869aa69ca55d9010c82a43730192f0638fff8333bb5c39a89e4",
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
  "slug": "mkmatchnew--346ba9efcf60bcdc9ee9638b",
  "source": {
    "blob": "97781cb68c69a5103985c99e31e77d46c3d50bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:346ba9efcf60bcdc9ee9638bd814c4c79c5faa4449d29400cae3cf2161c5b153",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1241b8c2812c869aa69ca55d9010c82a43730192f0638fff8333bb5c39a89e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchNew (header : Header) (indVal : InductiveVal) : TermElabM Term := do
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

      let mut rhsCont : Term → TermElabM Term := fun rhs => pure rhs
      for i in *...ctorInfo.numFields do
        let x := xs[indVal.numParams + i]!
        if occursOrInType (← getLCtx) x type then
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
          else
            rhsCont := fun rhs => `(Ordering.then (compare $a $b) $rhs) >>= rhsCont
      let rhs ← rhsCont (← `(Ordering.eq))
      if ctorArgs1.isEmpty then
        -- Unit thunking argument
        ctorArgs1 := ctorArgs1.push (← `(()))
      `(@fun $ctorArgs1:term* $ctorArgs2:term* =>$rhs:term)
  if indVal.numCtors == 1 then
    `( $(mkCIdent casesOnSameCtorName) $x1:term $x2:term rfl $alts:term* )
  else
    `( match h : compare ($(mkCIdent ctorIdxName) $x1:ident) ($(mkCIdent ctorIdxName) $x2:ident) with
      | Ordering.lt => Ordering.lt
      | Ordering.gt => Ordering.gt
      | Ordering.eq =>
        $(mkCIdent casesOnSameCtorName) $x1:term $x2:term (Nat.compare_eq_eq.mp h) $alts:term*
     )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97781cb68c69a5103985c99e31e77d46c3d50bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
