# inferRecArgPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33334f8e2fccafb584f0be57e3c2db12a578fe1a63ece30420d9ec2d8cf290a2",
  "kind": "def",
  "lexical_name": "inferRecArgPos",
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
  "slug": "inferrecargpos--84769f95e76eaf5ec4695b7f",
  "source": {
    "blob": "0c58233ed137a935940239481fbc7b8428802fa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84769f95e76eaf5ec4695b7ffdddc01d42648e301e4e9fad295322577404220c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33334f8e2fccafb584f0be57e3c2db12a578fe1a63ece30420d9ec2d8cf290a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def inferRecArgPos (preDefs : Array PreDefinition) (termMeasure?s : Array (Option TerminationMeasure)) :
    MetaM (Array Nat × Array PreDefinition × FixedParamPerms) := do
  let fnNames := preDefs.map (·.declName)
  let numSectionVars := preDefs[0]!.numSectionVars
  let preDefs ← withRecFunsAsAxioms preDefs do
    preDefs.mapM fun preDef =>
      return { preDef with value := (← preprocess preDef.value fnNames numSectionVars) }
  let fixedParamPerms ← withRecFunsAsAxioms preDefs do
    getFixedParamPerms preDefs

  fixedParamPerms.perms[0]!.forallTelescope preDefs[0]!.type fun xs => do
    let values ← preDefs.mapIdxM (fixedParamPerms.perms[·]!.instantiateLambda ·.value xs)

    let candidates ← withRecFunsAsAxioms preDefs do
      findRecArgCandidates fnNames fixedParamPerms xs values termMeasure?s

    -- `tryCandidates` uses `saveState`/`restoreState` to properly backtrack on failure.
    tryCandidates fnNames xs values candidates fun recArgInfos => do
      let recArgPoss := recArgInfos.map (·.recArgPos)
      trace[Elab.definition.structural] "Trying argument set {recArgPoss}"
      let (fixedParamPerms', xs', toErase) := fixedParamPerms.erase xs (recArgInfos.map (·.indicesAndRecArgPos))
      -- We may have to turn some fixed parameters into varying parameters
      let recArgInfos := recArgInfos.mapIdx fun i recArgInfo =>
        {recArgInfo with fixedParamPerm := fixedParamPerms'.perms[i]!}
      if xs'.size != xs.size then
        trace[Elab.definition.structural] "Reduced fixed params from {xs} to {xs'}, erasing {toErase.map mkFVar}"
        trace[Elab.definition.structural] "New recArgInfos {repr recArgInfos}"
      -- Check that the parameters of the IndGroupInsts are still fine
        for recArgInfo in recArgInfos do
          for indParam in recArgInfo.indGroupInst.params do
            for y in toErase do
              if (← dependsOn indParam y) then
                if indParam.isFVarOf y then
                  throwError "its type is an inductive datatype and the datatype parameter\
                    {indentExpr indParam}\n\
                    which cannot be fixed as it is an index or depends on an index, and indices \
                    cannot be fixed parameters when using structural recursion."
                else
                  throwError "its type is an inductive datatype and the datatype parameter\
                    {indentExpr indParam}\ndepends on the function parameter{indentExpr (mkFVar y)}\n\
                    which cannot be fixed as it is an index or depends on an index, and indices \
                    cannot be fixed parameters when using structural recursion."
      withErasedFVars toErase do
        let preDefsNonRec ← elimMutualRecursion preDefs fixedParamPerms' xs' recArgInfos
        return (recArgPoss, preDefsNonRec, fixedParamPerms')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c58233ed137a935940239481fbc7b8428802fa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
