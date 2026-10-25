# mkFlatInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c67c57f8049fdbd697817133f9355e0930adfe41d4e3f115f54ac8e7d5800d31",
  "kind": "def",
  "lexical_name": "mkFlatInductive",
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
  "slug": "mkflatinductive--e5aa6e3caa2da226a24cf382",
  "source": {
    "blob": "70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1410,
    "line": 1359,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5aa6e3caa2da226a24cf382bc0dbbb27578328fa9d678b71c87eaa076f0a809",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c67c57f8049fdbd697817133f9355e0930adfe41d4e3f115f54ac8e7d5800d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1359–1410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkFlatInductive (views : Array InductiveView)
  (indFVars : Array Expr) (levelParams : List Name) (numVars : Nat)
  (numParams : Nat) (indTypes : List InductiveType) : TermElabM Unit := do

  let namesAndTypes := indTypes.map fun indType => (indType.name.append `call, indType.type)
  let namesAndTypes := namesAndTypes.toArray

  -- We update the type of all inductive types, so they have recursive calls added as parameters
  let newTypes ← namesAndTypes.mapM fun (_, indType) =>
    forallBoundedTelescope indType numParams fun indTypeParams indTypeBody => do

      -- We first go through all types in the mutual block and get rid of their parameters
      -- by substituting free variables
      let typesWithAppliedParams ← namesAndTypes.mapM fun (newName, curIndType) => do
        forallBoundedTelescope curIndType numParams fun curIntTypeParams curIndTypeBody => do
          return (newName, curIndTypeBody.replaceFVars curIntTypeParams indTypeParams)
      withLocalDeclsDND typesWithAppliedParams fun newParams => do
       mkForallFVars (indTypeParams ++ newParams) indTypeBody
  let rs ← newTypes.mapIdxM fun idx newType => do
    return PreElabHeaderResult.mk views[idx]! levelParams (numParams + views.size) newType #[]

  -- We now reuse the machinery for bringing in indFVars to the context
  withInductiveLocalDecls rs fun newParams newIndFVars => do
    let indTypes ← indTypes.mapIdxM fun indTypeIdx indType => do
      let updatedCtors ← indType.ctors.mapM fun ctor => do
        -- We first use new set of parameters
        let updatedCtor ← instantiateForall ctor.type (newParams.take numParams)
        let updatedCtor ← forallTelescope updatedCtor fun ctorArgs ctorBody => do
            -- We assume that the conclusion is an application of the fvar
          guard <| ctorBody.isApp || numParams == 0

          -- We first get non-parameter arguments of the body
          let bodyArgs := ctorBody.getAppArgs.extract (numParams - numVars)

          -- And make a new conclusion with new indFVar. We pass new parameters and old non-parameter arguments
          let ctorBody := mkAppN (newIndFVars[indTypeIdx]!) (newParams ++ bodyArgs)
          mkForallFVars ctorArgs ctorBody

        -- Then we replace indFVars in the premises of the rule
        let calls := newParams.extract numParams
        let updatedCtor := replaceIndFVars (numParams - numVars) indFVars calls updatedCtor

        -- Finally, we need to abstract away the parameters
        let updatedCtor ← mkForallFVars newParams updatedCtor
        return { ctor with type := updatedCtor}
      return { indType with type := newTypes[indTypeIdx]!, ctors := updatedCtors}

    let indTypes ← replaceIndFVarsWithConsts views newIndFVars levelParams numVars (numParams + views.size) indTypes (applyVariables := false)
    let decl := Declaration.inductDecl levelParams (numParams + views.size) indTypes false
    Term.ensureNoUnassignedMVars decl
    addDecl decl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean#L1359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
