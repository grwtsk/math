# getEnumToBitVecFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a731d84bc43ed53111436b7748a322e1445e914fa4dedd6d5585fc0a38734d5",
  "kind": "def",
  "lexical_name": "getEnumToBitVecFor",
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
  "slug": "getenumtobitvecfor--1ff908346ebb5d13957c03a7",
  "source": {
    "blob": "b37e4c52daed475848b6a9476a0104e5d0afc101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ff908346ebb5d13957c03a766f4b46af1669db98304f652d626807789edb065",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a731d84bc43ed53111436b7748a322e1445e914fa4dedd6d5585fc0a38734d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getEnumToBitVecFor (declName : Name) : MetaM Name := do
  let enumToBitVecName := Name.str declName enumToBitVecSuffix
  realizeConst declName enumToBitVecName do
    let env ← getEnv
    let .inductInfo inductiveInfo ← getConstInfo declName | throwError m!"{.ofConstName declName} is not an inductive."
    if !(← isEnumType declName) then
      throwError m!"{.ofConstName declName} is not an enum inductive."
    let domainSize := inductiveInfo.ctors.length
    let bvSize := getBitVecSize domainSize
    let bvType := mkApp (mkConst ``BitVec) (toExpr bvSize)
    let levelParamNames := inductiveInfo.levelParams
    let levelParams := inductiveInfo.levelParams.map mkLevelParam
    let declType := mkConst declName levelParams
    let translator ←
      withLocalDeclD `x declType fun x => do
        let motive := mkLambda .anonymous .default declType bvType
        let recOn := mkApp2 (mkConst (mkRecOnName declName) (1 :: levelParams)) motive x
        let translator :=
          Nat.fold
            domainSize
            (init := recOn)
            (fun i _ acc => mkApp acc <| toExpr <| BitVec.ofNat bvSize i)
        mkLambdaFVars #[x] translator
    addDecl <| .defnDecl {
      name := enumToBitVecName
      type := (← mkArrow declType bvType)
      levelParams := levelParamNames
      value := translator
      hints := .regular (getMaxHeight env translator + 1)
      safety := .safe
    }
  return enumToBitVecName

/--
Create a `cond` chain in `Sort u` of the form:
```
bif input = discrs 0 then values[0] else bif input = discrs 1 then values 1 else ...
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37e4c52daed475848b6a9476a0104e5d0afc101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
