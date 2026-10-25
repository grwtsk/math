# unpackMutualInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ce071a7f6ca73475aabc648e67d7f0950e85365dc7e8e7cd1738bfd0d03f73e",
  "kind": "def",
  "lexical_name": "unpackMutualInduction",
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
  "slug": "unpackmutualinduction--66ddcf8bce4fe2c7dba2dcea",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1092,
    "line": 1046,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66ddcf8bce4fe2c7dba2dcea0d6e15048f4ec4fb9529adbc8b0b9133386d2344",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ce071a7f6ca73475aabc648e67d7f0950e85365dc7e8e7cd1738bfd0d03f73e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1046–1092.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unpackMutualInduction (unfolding : Bool) (eqnInfo : WF.EqnInfo) : MetaM Name := do
  let inductName := if eqnInfo.declNames.size > 1 then
    getMutualInductName (unfolding := unfolding) eqnInfo.declNames[0]!
  else
    -- If there is no mutual recursion, we generate the `foo.induct` directly.
    getFunInductName (unfolding := unfolding) eqnInfo.declNames[0]!
  realizeConst eqnInfo.declNames[0]! inductName (doRealize inductName)
  return inductName
where doRealize inductName := do
  let unaryInductName ← deriveUnaryInduction (unfolding := unfolding) eqnInfo.declNameNonRec
  prependError m!"Cannot unpack functional cases principle {.ofConstName unaryInductName} (please report this issue)" do
  let ci ← getConstInfo unaryInductName
  let us := ci.levelParams
  let value := .const ci.name (us.map mkLevelParam)
  let motivePos ← forallTelescope ci.type fun xs concl => concl.withApp fun motive targets => do
    unless motive.isFVar && targets.size = (if unfolding then 2 else 1) && targets[0]!.isFVar do
      throwError "conclusion `{concl}` does not look like a packed motive application"
    let packedTarget := targets[0]!
    unless xs.back! == packedTarget do
      throwError "packed target not last argument to `{unaryInductName}`"
    let some motivePos := xs.findIdx? (· == motive)
      | throwError "could not find motive `{motive}` in {xs}"
    pure motivePos
  let value ← forallBoundedTelescope ci.type motivePos fun params type => do
    let value := mkAppN value params
    eqnInfo.argsPacker.curryParam value type fun motives value type =>
      -- Bring the rest into scope
      forallTelescope type fun xs _concl => do
        let alts := xs.pop
        let value := mkAppN value alts
        let value ← eqnInfo.argsPacker.curry value
        let value ← mkLambdaFVars alts value
        let value ← mkLambdaFVars motives value
        let value ← mkLambdaFVars params value
        let value ← cleanPackedArgs eqnInfo value
        return value

  let type ← inferType value
  let type ← elimOptParam type
  let type ← letToHave type

  addDecl <| Declaration.thmDecl
    { name := inductName, levelParams := ci.levelParams, type, value }

  if eqnInfo.argsPacker.numFuncs = 1 then
    setNaryFunIndInfo (unfolding := unfolding) eqnInfo.fixedParamPerms eqnInfo.declNames[0]! unaryInductName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L1046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
