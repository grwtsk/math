# getMatchEqCondForAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e493eff993abbae3c3e890c0b35ce0111ded5b7bea34b02c3c45977a4f1a7b",
  "kind": "def",
  "lexical_name": "getMatchEqCondForAux",
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
  "slug": "getmatcheqcondforaux--e4e5edc3fb2ee80651cd1834",
  "source": {
    "blob": "d3b3038dceef4de44d81904f9de2141f40286e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4e5edc3fb2ee80651cd1834fe6e41f70192166958b445b6f18ae71241c78cb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e493eff993abbae3c3e890c0b35ce0111ded5b7bea34b02c3c45977a4f1a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def getMatchEqCondForAux (declName : Name) (kind : MatchKind) : MetaM Name := do
  let matchEqCondName := .str declName matchEqCondSuffix
  realizeConst declName matchEqCondName do
    let decl ←
      match kind with
      | .simpleEnum inductiveInfo ctors =>
        handleSimpleEnum declName matchEqCondName inductiveInfo ctors
      | .enumWithDefault inductiveInfo ctors =>
        handleEnumWithDefault declName matchEqCondName inductiveInfo ctors
    addDecl decl
  return matchEqCondName
where
  handleSimpleEnum (declName : Name) (thmName : Name) (inductiveInfo : InductiveVal)
      (ctors : Array ConstructorVal) : MetaM Declaration := do
    let matchConstInfo ← getConstInfo declName
    let levelParamNames := matchConstInfo.levelParams
    let u := mkLevelParam levelParamNames.getLast!
    let levelParams := levelParamNames.map mkLevelParam
    let .forallE _ (.forallE _ discrType ..) .. := matchConstInfo.type | unreachable!
    let (type, value) ←
      withLocalDeclD `a (.sort u) fun a => do
      withLocalDeclD `x discrType  fun x => do
        let hType ← mkArrow (mkConst ``Unit) a
        let hBinders := ctors.foldl (init := #[]) (fun acc _ => acc.push (`h, hType))
        withLocalDeclsDND hBinders fun hs => do
          let args := #[mkLambda `x .default discrType a , x] ++ hs
          let lhs := mkAppN (mkConst declName levelParams) args
          let enumToBitVec ← getEnumToBitVecFor inductiveInfo.name
          let domainSize := inductiveInfo.ctors.length
          let bvSize := getBitVecSize domainSize
          let appliedHs := hs.toList.map (mkApp · (mkConst ``Unit.unit))
          let getBitVec i := BitVec.ofNat bvSize ctors[i]!.cidx
          let rhs ← mkCondChain (← mkAppM enumToBitVec #[x]) a getBitVec appliedHs appliedHs[0]!
          let type ← mkEq lhs rhs
          let motive ← mkLambdaFVars #[x] type
          let sortedHs :=
            hs
             |>.mapIdx (fun i h => (ctors[i]!.cidx, h))
             |>.qsort (·.1 < ·.1)
          let case h := mkEqRefl (mkApp h.2 (mkConst ``Unit.unit))
          let cases ← enumCases inductiveInfo.name motive x sortedHs.toList case

          let fvars := #[a, x] ++ hs
          return (← mkForallFVars fvars type, ← mkLambdaFVars fvars cases)

    return .thmDecl {
      name := thmName
      levelParams := levelParamNames
      type := type
      value := value
    }

  handleEnumWithDefault (declName : Name) (thmName : Name) (inductiveInfo : InductiveVal)
      (ctors : Array ConstructorVal) : MetaM Declaration := do
    let matchConstInfo ← getConstInfo declName
    let levelParamNames := matchConstInfo.levelParams
    let u := mkLevelParam levelParamNames.getLast!
    let levelParams := levelParamNames.map mkLevelParam
    let .forallE _ (.forallE _ discrType ..) .. := matchConstInfo.type | unreachable!
    let (type, value) ←
      withLocalDeclD `a (.sort u) fun a => do
      withLocalDeclD `x discrType fun x => do
        let hType ← mkArrow (mkConst ``Unit) a
        let mut hBinders := ctors.foldl (init := #[]) (fun acc _ => acc.push (`h, hType))
        hBinders := hBinders.push <| (`h, ← mkArrow discrType a)
        withLocalDeclsDND hBinders fun hs => do
          let args := #[mkLambda `x .default discrType a , x] ++ hs
          let lhs := mkAppN (mkConst declName levelParams) args
          let enumToBitVec ← getEnumToBitVecFor inductiveInfo.name
          let domainSize := inductiveInfo.ctors.length
          let bvSize := getBitVecSize domainSize
          let hdefault := hs.back!
          let concrete := hs.take <| hs.size - 1
          let appliedDefault := mkApp hdefault x
          let appliedConcrete := concrete.toList.map (mkApp · (mkConst ``Unit.unit))
          let getBitVec i := BitVec.ofNat bvSize ctors[i]!.cidx
          let rhs ← mkCondChain (← mkAppM enumToBitVec #[x]) a getBitVec appliedConcrete appliedDefault
          let type ← mkEq lhs rhs
          let motive ← mkLambdaFVars #[x] type
          let sortedConcreteHs :=
            concrete
             |>.mapIdx (fun i h => (ctors[i]!.cidx, h))
             |>.qsort (·.1 < ·.1)
             |>.toList

          let discrParams := discrType.constLevels!
          let rec intersperseDefault hs idx acc := do
            if idx == inductiveInfo.numCtors then
              return acc.reverse
            else
              match hs with
              | [] =>
                let ctor := mkConst inductiveInfo.ctors[idx]! discrParams
                let new := (idx, mkApp hdefault ctor)
                intersperseDefault hs (idx + 1) (new :: acc)
              | hs@((cidx, h) :: tail) =>
                if cidx == idx then
                  let new := (idx, mkApp h (mkConst ``Unit.unit))
                  intersperseDefault tail (idx + 1) (new :: acc)
                else
                  let ctor := mkConst inductiveInfo.ctors[idx]! discrParams
                  let new := (idx, mkApp hdefault ctor)
                  intersperseDefault hs (idx + 1) (new :: acc)

          let caseProofs ← intersperseDefault sortedConcreteHs 0 []
          let case h := mkEqRefl h.2
          let cases ← enumCases inductiveInfo.name motive x caseProofs case

          let fvars := #[a, x] ++ hs
          return (← mkForallFVars fvars type, ← mkLambdaFVars fvars cases)

    return .thmDecl {
      name := thmName
      levelParams := levelParamNames
      type := type
      value := value
    }

/--
Obtain a theorem that translates `.match_x` applications on enum inductives to chains of `cond`
applications. If the specific `.match_x` that this is being called on is unsupported throw an error.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b3038dceef4de44d81904f9de2141f40286e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
