# getEnumToBitVecLeFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:823d9d2673e1e10d7cff02fe5e9905a00977559f4573e39d26d6fd5e18de5acc",
  "kind": "def",
  "lexical_name": "getEnumToBitVecLeFor",
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
  "slug": "getenumtobitveclefor--1aad4ad259c9986316ee83b0",
  "source": {
    "blob": "b37e4c52daed475848b6a9476a0104e5d0afc101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aad4ad259c9986316ee83b011ded665c89a479dddd4feee0dea977c8614d925",
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

Occurrence: `declaration:823d9d2673e1e10d7cff02fe5e9905a00977559f4573e39d26d6fd5e18de5acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getEnumToBitVecLeFor (declName : Name) : MetaM Name := do
  let enumToBitVecLeName := Name.str declName enumToBitVecLeSuffix
  realizeConst declName enumToBitVecLeName do
    let .inductInfo inductiveInfo ← getConstInfo declName | unreachable!
    let levelParamNames := inductiveInfo.levelParams
    let levelParams := inductiveInfo.levelParams.map mkLevelParam
    let enumToBitVec := mkConst (← getEnumToBitVecFor declName) levelParams
    let ctors := inductiveInfo.ctors
    let domainSize := ctors.length
    let bvSize := getBitVecSize domainSize
    let bvType := mkApp (mkConst ``BitVec) (toExpr bvSize)
    let declType := mkConst declName levelParams
    let maxValue := toExpr (BitVec.ofNat bvSize (domainSize - 1))
    let instLe ← synthInstance (mkApp (mkConst ``LE [0]) bvType)
    let mkStatement e := mkApp4 (mkConst ``LE.le [0]) bvType instLe (mkApp enumToBitVec e) maxValue

    -- ∀ (x : declName), enumToBitVec x ≤ BitVec.ofNat bvSize (domainSize - 1)
    let (type, value) ←
      withLocalDeclD `x declType fun x => do
        let statement := mkStatement x
        let motive ← mkLambdaFVars #[x] statement
        let case ctor := do
          let statement := mkStatement (mkConst ctor levelParams)
          mkDecideProof statement
        let cases ← enumCases declName motive x ctors case
        return (← mkForallFVars #[x] statement, ← mkLambdaFVars #[x] cases)

    addDecl <| .thmDecl {
      name := enumToBitVecLeName
      levelParams := levelParamNames
      type := type
      value := value
    }
  return enumToBitVecLeName

/--
Generate a theorem that translates `.match_x` applications on enum inductives to chains of `cond`,
assuming that it is a supported kind of match, see `matchIsSupported` for the currently available
variants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37e4c52daed475848b6a9476a0104e5d0afc101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
