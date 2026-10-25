# mkNoConfusionType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79531f3a67fbe5d4433d3284f2e1ff2db36c3f67456314bc48ab20bf4b1c48d8",
  "kind": "def",
  "lexical_name": "mkNoConfusionType",
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
  "slug": "mknoconfusiontype--d2e8e7a7d660b8f188de82c9",
  "source": {
    "blob": "3734c340f2c1712fdd0949b08c73acdc8245b613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e8e7a7d660b8f188de82c94f661da48939a1509528b217d93ce160417d7ed7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79531f3a67fbe5d4433d3284f2e1ff2db36c3f67456314bc48ab20bf4b1c48d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNoConfusionType (indName : Name) : MetaM Unit := do
  let declName := mkNoConfusionTypeName indName
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
  let useLinearConstruction :=
    (info.numCtors > 2) &&
    backward.linearNoConfusionType.get (← getOptions) &&
    (← hasConst (mkCtorElimName indName))
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let v::us := casesOnInfo.levelParams.map mkLevelParam | panic! "unexpected universe levels on `casesOn`"
  let e := mkConst casesOnName (v.succ::us)
  let t ← inferType e
  let PType := mkSort v
  let e ← withLocalDeclD `P PType fun P => do
    forallBoundedTelescope t info.numParams fun xs1 t1 => do
    forallBoundedTelescope t info.numParams fun xs2 t2 => do
    withPrimedNames xs2 do
      let e := mkAppN e xs1
      let motive1 ← forallTelescope (← whnfD t1).bindingDomain! fun ys _ => mkLambdaFVars ys PType
      let t1 ← instantiateForall t1 #[motive1]
      let e := mkApp e motive1
      let motive2 ← forallTelescope (← whnfD t2).bindingDomain! fun ys _ => mkLambdaFVars ys PType
      let t2 ← instantiateForall t2 #[motive2]
      forallBoundedTelescope t1 (some (info.numIndices + 1)) fun ysx1 t1 => do -- indices and major
      forallBoundedTelescope t2 (some (info.numIndices + 1)) fun ysx2 _t2 => do -- indices and major
      withPrimedNames ysx2 do
        let e := mkAppN e ysx1
        let altTypes ← arrowDomainsN info.numCtors t1
        let alts ← altTypes.mapIdxM fun i altType => do
          forallTelescope altType fun zs1 _ => do
            if useLinearConstruction then
              let ctorIdxApp := mkAppN (mkConst (mkCtorIdxName indName) us) (xs2 ++ ysx2)
              let alt ← mkIfNatEq PType (ctorIdxApp) (mkRawNatLit i)
                («else» := fun _ => pure P) fun h => do
                let conName := info.ctors[i]!
                let withName := mkConstructorElimName indName conName
                let e := mkConst withName (v.succ :: us)
                let e := mkAppN e (xs2 ++ #[motive2] ++ ysx2 ++ #[h])
                let e := mkApp e <|
                  ← forallTelescopeReducing ((← whnf (← inferType e)).bindingDomain!) fun zs2 _ => do
                    let k := (← mkNoConfusionCtorArg conName P).beta (xs1 ++ zs1 ++ xs2 ++ zs2)
                    let t ← mkArrow k P
                    mkLambdaFVars zs2 t
                pure e
              mkLambdaFVars zs1 alt
            else
              let conName := info.ctors[i]!
              let alt := mkConst casesOnName (v.succ :: us)
              let alt := mkAppN alt (xs2 ++ #[motive2] ++ ysx2)
              let t2 ← inferType alt
              let altTypes2 ← arrowDomainsN info.numCtors t2
              let alts2 ← altTypes2.mapIdxM fun j altType2 => do
                forallTelescope altType2 fun zs2 _ => do
                  if i = j then
                    let k := (← mkNoConfusionCtorArg conName P).beta (xs1 ++ zs1 ++ xs2 ++ zs2)
                    let t ← mkArrow k P
                    mkLambdaFVars zs2 t
                  else
                    mkLambdaFVars zs2 P
              let alt := mkAppN alt alts2
              mkLambdaFVars zs1 alt
        let e := mkAppN e alts
        mkLambdaFVars (#[P] ++ xs1 ++ ysx1 ++ xs2 ++ ysx2) e

  addDecl (.defnDecl (← mkDefinitionValInferringUnsafe
    (name        := declName)
    (levelParams := casesOnInfo.levelParams)
    (type        := (← inferType e))
    (value       := e)
    (hints       := ReducibilityHints.abbrev)
  ))
  modifyEnv fun env => addToCompletionBlackList env declName
  modifyEnv fun env => addProtected env declName
  setReducibleAttribute declName

/--
Given arrays `x1,x2,..,xn` and `y1,y2,..,yn`, bring fresh variables and expressions of types `x1 = y1`, `x2 = y2`,
.., `xn = yn` (using `HEq` where necessary) into scope.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant76d6cc322008b4d3739ba92d171f8fb622d0f2dc0c3e66495bf44bdfbc94963d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3734c340f2c1712fdd0949b08c73acdc8245b613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
