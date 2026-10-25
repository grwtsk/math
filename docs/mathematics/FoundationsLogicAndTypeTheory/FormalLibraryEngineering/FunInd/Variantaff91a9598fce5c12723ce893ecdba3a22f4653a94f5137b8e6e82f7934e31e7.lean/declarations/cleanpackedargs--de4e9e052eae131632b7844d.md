# cleanPackedArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c555f6738fe8aba86ca64cdeda22908f641c011a4385d0cd97979ab2823d08e5",
  "kind": "def",
  "lexical_name": "cleanPackedArgs",
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
  "slug": "cleanpackedargs--de4e9e052eae131632b7844d",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 961,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de4e9e052eae131632b7844d990a55384e30e66ab9a1be1ff0a37fa66c6f1407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c555f6738fe8aba86ca64cdeda22908f641c011a4385d0cd97979ab2823d08e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cleanPackedArgs (eqnInfo : WF.EqnInfo) (value : Expr) : MetaM Expr := do
  let type ← inferType value
  let cleanType ← Meta.transform type (skipConstInApp := true) (post := fun e => do
    -- Need to beta-reduce first
    let e' := e.headBeta
    if e' != e then
      return .visit e'

    e.withApp fun f args => do
    -- Look for PSigma redexes
    if f.isConstOf ``PSigma.casesOn then
      if 5 ≤ args.size then
        let scrut := args[3]!
        let k := args[4]!
        let extra := args[5...*]
        if scrut.isAppOfArity ``PSigma.mk 4 then
          let #[_, _, x, y] := scrut.getAppArgs | unreachable!
          let e' := (k.beta #[x, y]).beta extra
          return .visit e'
    -- Look for PSigma projection
    if f.isConstOf ``PSigma.fst then
      if h : 3 ≤ args.size then
        let scrut := args[2]
        let extra := args[3...*]
        if scrut.isAppOfArity ``PSigma.mk 4 then
          let #[_, _, x, _y] := scrut.getAppArgs | unreachable!
          let e' := x.beta extra
          return .visit e'
    if f.isConstOf ``PSigma.snd then
      if h : 3 ≤ args.size then
        let scrut := args[2]
        let extra := args[3...*]
        if scrut.isAppOfArity ``PSigma.mk 4 then
          let #[_, _, _x, y] := scrut.getAppArgs | unreachable!
          let e' := y.beta extra
          return .visit e'
    if f.isProj then
      let scrut := e.projExpr!
      if scrut.isAppOfArity ``PSigma.mk 4 then
        let #[_, _, x, y] := scrut.getAppArgs | unreachable!
        let e' := (if e.projIdx! = 0 then x else y).beta args
        return .visit e'

    -- Look for PSum redexes
    if f.isConstOf ``PSum.casesOn then
      if 6 ≤ args.size then
        let scrut := args[3]!
        let k₁ := args[4]!
        let k₂ := args[5]!
        let extra := args[6...*]
        if scrut.isAppOfArity ``PSum.inl 3 then
          let e' := (k₁.beta #[scrut.appArg!]).beta extra
          return .visit e'
        if scrut.isAppOfArity ``PSum.inr 3 then
          let e' := (k₂.beta #[scrut.appArg!]).beta extra
          return .visit e'
    -- Look for _unary redexes
    if f.isConstOf eqnInfo.declNameNonRec then
      if h : args.size ≥ eqnInfo.fixedParamPerms.numFixed + 1 then
        let xs := args[*...eqnInfo.fixedParamPerms.numFixed]
        let packedArg := args[eqnInfo.fixedParamPerms.numFixed]
        let extraArgs := args[eqnInfo.fixedParamPerms.numFixed<...*]
        let some (funIdx, ys) := eqnInfo.argsPacker.unpack packedArg
          | throwError "Unexpected packedArg:{indentExpr packedArg}"
        let args' := eqnInfo.fixedParamPerms.perms[funIdx]!.buildArgs xs ys
        let e' := .const eqnInfo.declNames[funIdx]! e.getAppFn.constLevels!
        let e' := mkAppN e' args'
        let e' := mkAppN e' extraArgs
        return .continue e'

    return .continue e)
  mkExpectedTypeHint value cleanType

/--
Retrieves `foo._unary.induct`, where the motive is a `PSigma`/`PSum` type, and
unpacks it into a n-ary and (possibly) joint induction principle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
