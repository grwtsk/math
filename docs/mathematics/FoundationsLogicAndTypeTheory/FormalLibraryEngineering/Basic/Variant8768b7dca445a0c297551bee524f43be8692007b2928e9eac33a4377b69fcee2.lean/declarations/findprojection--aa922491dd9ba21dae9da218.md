# findProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d775c38097f2f2e4a0968c181a2c42b567502c802461076cc2ee4d395b09bc5",
  "kind": "def",
  "lexical_name": "findProjection",
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
  "slug": "findprojection--aa922491dd9ba21dae9da218",
  "source": {
    "blob": "1603411e8560fb5b185f853295fe5f8ae120e862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 619,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa922491dd9ba21dae9da218d27f2c40a81e1a6332847800e1cd94388db28a3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d775c38097f2f2e4a0968c181a2c42b567502c802461076cc2ee4d395b09bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findProjection (str : Name) (proj : ParsedProjectionData)
    (rawUnivs : List Level) : CoreM ParsedProjectionData := do
  let env ← getEnv
  let (rawExpr, nrs) ← MetaM.run' <|
    getCompositeOfProjections str proj.strName.lastComponentAsString
  if !proj.strStx.isMissing then
    _ ← MetaM.run' <| TermElabM.run' <| addTermInfo proj.strStx rawExpr
  trace[simps.debug] "Projection {proj.newName} has default projection {rawExpr} and
    uses projection indices {nrs}"
  let customName := str ++ `Simps ++ proj.newName
  match env.find? customName with
  | some d@(.defnInfo _) =>
    let customProj := d.instantiateValueLevelParams! rawUnivs
    trace[simps.verbose] "found custom projection for {proj.newName}:{indentExpr customProj}"
    match (← MetaM.run' <| isDefEq customProj rawExpr) with
    | true =>
      _ ← MetaM.run' <| TermElabM.run' <| addTermInfo proj.newStx <|
        ← mkConstWithLevelParams customName
      pure { proj with expr? := some customProj, projNrs := nrs, isCustom := true }
    | false =>
      -- if the type of the Expression is different, we show a different error message, because
      -- (in Lean 3) just stating that the expressions are different is quite unhelpful
      let customProjType ← MetaM.run' (inferType customProj)
      let rawExprType ← MetaM.run' (inferType rawExpr)
      if (← MetaM.run' (isDefEq customProjType rawExprType)) then
        throwError "Invalid custom projection:{indentExpr customProj}\n\
          Expression is not definitionally equal to {indentExpr rawExpr}"
      else
        throwError "Invalid custom projection:{indentExpr customProj}\n\
          Expression has different type than {str ++ proj.strName}. Given type:\
          {indentExpr customProjType}\nExpected type:{indentExpr rawExprType}\n\
          Note: make sure order of implicit arguments is exactly the same."
  | _ =>
    _ ← MetaM.run' <| TermElabM.run' <| addTermInfo proj.newStx rawExpr
    pure {proj with expr? := some rawExpr, projNrs := nrs}

/-- Checks if there are declarations in the current file in the namespace `{str}.Simps` that are
not used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1603411e8560fb5b185f853295fe5f8ae120e862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
