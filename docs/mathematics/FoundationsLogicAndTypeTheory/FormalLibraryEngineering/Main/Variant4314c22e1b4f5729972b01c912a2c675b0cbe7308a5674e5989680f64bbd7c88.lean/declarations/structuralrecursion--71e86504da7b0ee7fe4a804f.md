# structuralRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:898df72cd03cec3d9cbf0128d6c76fee0d15033e74efafbc372da8b2ba2d1a2a",
  "kind": "def",
  "lexical_name": "structuralRecursion",
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
  "slug": "structuralrecursion--71e86504da7b0ee7fe4a804f",
  "source": {
    "blob": "2b86802c7218d9b3917c0a9184426e67ecfa732f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4314c22e1b4f5729972b01c912a2c675b0cbe7308a5674e5989680f64bbd7c88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71e86504da7b0ee7fe4a804f67f3eefda571f5702db271cd516610574e0cc4c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4314c22e1b4f5729972b01c912a2c675b0cbe7308a5674e5989680f64bbd7c88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:898df72cd03cec3d9cbf0128d6c76fee0d15033e74efafbc372da8b2ba2d1a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def structuralRecursion
    (docCtx : LocalContext × LocalInstances) (preDefs : Array PreDefinition)
    (termMeasure?s : Array (Option TerminationMeasure)) :
    TermElabM Unit := do
  let names := preDefs.map (·.declName)
  let (recArgPoss, preDefsNonRec, fixedParamPerms) ← inferRecArgPos preDefs termMeasure?s
  for recArgPos in recArgPoss, preDef in preDefs do
    reportTermMeasure preDef recArgPos
  preDefsNonRec.forM fun preDefNonRec => do
    let preDefNonRec ← eraseRecAppSyntax preDefNonRec
    prependError m!"structural recursion failed, produced type incorrect term" do
      -- We create the `_unsafe_rec` before we abstract nested proofs.
      -- Reason: the nested proofs may be referring to the _unsafe_rec.
      addNonRec docCtx preDefNonRec (applyAttrAfterCompilation := false) (all := names.toList) (isRecursive := true)
  let preDefs ← preDefs.mapM (eraseRecAppSyntax ·)
  addAndCompilePartialRec docCtx preDefs
  for preDef in preDefs, recArgPos in recArgPoss do
    let mut preDef := preDef
    unless preDef.kind.isTheorem do
      unless (← isProp preDef.type) do
        preDef ← abstractNestedProofs preDef
        /-
        Don't save predefinition info for equation generator
        for theorems and definitions that are propositions.
        See issue #2327
        -/
        registerEqnsInfo preDef (preDefs.map (·.declName)) recArgPos fixedParamPerms
    addSmartUnfoldingDef docCtx preDef recArgPos
  for preDef in preDefs do
    saveEqnAffectingOptions preDef.declName
  for preDef in preDefs do
    -- must happen in separate loop so realizations can see eqnInfos of all other preDefs
    enableRealizationsForConst preDef.declName
  applyAttributesOf preDefsNonRec AttributeApplicationTime.afterCompilation


end Structural

export Structural (structuralRecursion)

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4314c22e1b4f5729972b01c912a2c675b0cbe7308a5674e5989680f64bbd7c88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4314c22e1b4f5729972b01c912a2c675b0cbe7308a5674e5989680f64bbd7c88.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b86802c7218d9b3917c0a9184426e67ecfa732f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
