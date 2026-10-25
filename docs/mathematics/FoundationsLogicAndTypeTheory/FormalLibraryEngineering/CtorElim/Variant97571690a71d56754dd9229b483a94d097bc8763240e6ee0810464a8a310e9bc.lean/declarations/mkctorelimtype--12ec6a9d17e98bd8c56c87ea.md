# mkCtorElimType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab9b805249f056c93d16c8728169c9fdf2834a707671a1100f04025cce72dbf7",
  "kind": "def",
  "lexical_name": "mkCtorElimType",
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
  "slug": "mkctorelimtype--12ec6a9d17e98bd8c56c87ea",
  "source": {
    "blob": "7ef2d9523ddb474456e8ba536aa789bb27db371f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12ec6a9d17e98bd8c56c87eae4a31956fc417220c1a10445094e3945012bb981",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab9b805249f056c93d16c8728169c9fdf2834a707671a1100f04025cce72dbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCtorElimType (indName : Name) : MetaM Unit := do
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
  if info.numCtors = 0 then return
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let e ← forallTelescope casesOnInfo.type fun xs _ =>
    let params : Array Expr := xs[:info.numParams]
    let motive := xs[info.numParams]!
    -- let indices : Array Expr := xs[info.numParams + 1:info.numParams + 1 + info.numIndices]
    -- let majorArg := xs[info.numParams + 1 + info.numIndices]!
    let alts : Array Expr := xs[info.numParams + 1 + info.numIndices + 1:]
    withLocalDeclD `ctorIdx (mkConst ``Nat) fun ctorIdx => do
      let es ← alts.mapM inferType
      let e ← mkNatLookupTableLifting ctorIdx es
      mkLambdaFVars (params ++ #[motive, ctorIdx]) e

  let declName := mkCtorElimTypeName indName
  addAndCompile (.defnDecl (← mkDefinitionValInferringUnsafe
    (name        := declName)
    (levelParams := casesOnInfo.levelParams)
    (type        := (← inferType e))
    (value       := e)
    (hints       := ReducibilityHints.abbrev)
  ))
  modifyEnv fun env => addToCompletionBlackList env declName
  modifyEnv fun env => addProtected env declName
  setReducibleAttribute declName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variant97571690a71d56754dd9229b483a94d097bc8763240e6ee0810464a8a310e9bc.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef2d9523ddb474456e8ba536aa789bb27db371f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
