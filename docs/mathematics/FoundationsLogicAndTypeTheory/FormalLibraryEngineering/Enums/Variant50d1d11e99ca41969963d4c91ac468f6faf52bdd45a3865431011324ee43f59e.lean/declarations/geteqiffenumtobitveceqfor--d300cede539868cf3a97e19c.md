# getEqIffEnumToBitVecEqFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6991def14e65a774b1b3ecf982c5e9c2327ad73907c72fd846e5c52f0989cfaf",
  "kind": "def",
  "lexical_name": "getEqIffEnumToBitVecEqFor",
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
  "slug": "geteqiffenumtobitveceqfor--d300cede539868cf3a97e19c",
  "source": {
    "blob": "d3b3038dceef4de44d81904f9de2141f40286e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d300cede539868cf3a97e19c1ddc69894e5cb1c0f662ebf19c4110b3b2c2c0c1",
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

Occurrence: `declaration:6991def14e65a774b1b3ecf982c5e9c2327ad73907c72fd846e5c52f0989cfaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getEqIffEnumToBitVecEqFor (declName : Name) : MetaM Name := do
  let eqIffEnumToBitVecEqName := Name.str declName eqIffEnumToBitVecEqSuffix
  realizeConst declName eqIffEnumToBitVecEqName do
    /-
    We prove the lemma by constructing an inverse to `enumToBitVec` and use the fact that all
    invertible functions respect equality.
    -/
    let .inductInfo inductiveInfo ← getConstInfo declName | unreachable!
    let levelParamNames := inductiveInfo.levelParams
    let levelParams := inductiveInfo.levelParams.map mkLevelParam
    let enumToBitVec := mkConst (← getEnumToBitVecFor declName) levelParams
    let ctors := inductiveInfo.ctors
    let domainSize := ctors.length
    let bvSize := getBitVecSize domainSize
    let bvType := mkApp (mkConst ``BitVec) (toExpr bvSize)
    let declType := mkConst declName levelParams

    -- ∀ (x y : declName), x = y ↔ enumToBitVec x = enumToBitVec y
    let type ←
      withLocalDeclD `x declType fun x =>
      withLocalDeclD `y declType fun y => do
        let lhs ← mkEq x y
        let rhs ← mkEq (mkApp enumToBitVec x) (mkApp enumToBitVec y)
        let statement := mkApp2 (mkConst ``Iff) lhs rhs

        mkForallFVars #[x, y] statement

    -- the inverse of enumToBitVec
    let inverseValue ←
      withLocalDeclD `x bvType fun x => do
        let ctors := ctors.map (mkConst · levelParams)
        let inv ← mkCondChain x declType (BitVec.ofNat bvSize) ctors ctors.head!
        mkLambdaFVars #[x] inv

    let value ←
      withLetDecl `inverse (← mkArrow bvType declType) inverseValue fun inv => do
        let invProof ←
          withLocalDeclD `x declType fun x => do
            let toBvToEnum e := mkApp inv (mkApp enumToBitVec e)
            let motive ←
              withLocalDeclD `y declType fun y => do
                mkLambdaFVars #[y] (← mkEq (toBvToEnum y) y)

            let case ctor := mkEqRefl (toBvToEnum (mkConst ctor levelParams))
            let proof ← enumCases declName motive x ctors case
            mkLambdaFVars #[x] proof

        let value ← mkAppM ``BitVec.eq_iff_eq_of_inv #[enumToBitVec, inv, invProof]
        mkLetFVars #[inv] value

    addDecl <| .thmDecl {
      name := eqIffEnumToBitVecEqName
      levelParams := levelParamNames
      type := type
      value := value
    }
  return eqIffEnumToBitVecEqName

/--
Assuming that `declName` is an enum inductive, construct a proof of
`∀ (x : declName) : x.enumToBitVec ≤ domainSize - 1` where `domainSize` is the amount of
constructors of `declName`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b3038dceef4de44d81904f9de2141f40286e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
