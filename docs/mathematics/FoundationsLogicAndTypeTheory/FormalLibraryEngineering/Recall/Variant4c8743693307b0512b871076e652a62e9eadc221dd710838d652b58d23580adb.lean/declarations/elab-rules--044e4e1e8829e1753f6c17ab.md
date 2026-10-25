# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c38f73a39a36d958984c29ac7d1b591677ea13aebd6b251eefd0f3f5af092999",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--044e4e1e8829e1753f6c17ab",
  "source": {
    "blob": "71cd4e8644f933e3285ff39f784e2581a5f7f96b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recall/Variant4c8743693307b0512b871076e652a62e9eadc221dd710838d652b58d23580adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:044e4e1e8829e1753f6c17ab456927d4f170b06f31bbd6cfbd44fd23d5845004",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recall/Variant4c8743693307b0512b871076e652a62e9eadc221dd710838d652b58d23580adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c38f73a39a36d958984c29ac7d1b591677ea13aebd6b251eefd0f3f5af092999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : command
  | `(recall $id $sig:optDeclSig $[$val?]?) => withoutModifyingEnv do
    let declName := id.getId
    let some info := (← getEnv).find? declName
      | throwError "unknown constant '{declName}'"
    let declConst : Expr := mkConst declName <| info.levelParams.map Level.param
    discard <| liftTermElabM <| addTermInfo id declConst
    let newId := mkIdentFrom id (← mkAuxName declName 1)
    if let some val := val? then
      let some infoVal := info.value?
        | throwErrorAt val "constant '{declName}' has no defined value"
      elabCommand <| ← `(noncomputable def $newId $sig:optDeclSig $val)
      let some newInfo := (← getEnv).find? newId.getId | return -- def already threw
      liftTermElabM do
        let mvs ← newInfo.levelParams.mapM fun _ => mkFreshLevelMVar
        let newType := newInfo.type.instantiateLevelParams newInfo.levelParams mvs
        unless (← isDefEq info.type newType) do
          throwTypeMismatchError none info.type newInfo.type declConst
        let newVal := newInfo.value?.get!.instantiateLevelParams newInfo.levelParams mvs
        unless (← isDefEq infoVal newVal) do
          let err := m!"\
            value mismatch{indentExpr declConst}\nhas value{indentExpr newVal}\n\
            but is expected to have value{indentExpr infoVal}"
          throwErrorAt val err
    else
      let (binders, type?) := expandOptDeclSig sig
      if let some type := type? then
        runTermElabM fun vars => do
          withAutoBoundImplicit do
            elabBinders binders.getArgs fun xs => do
              let xs ← addAutoBoundImplicits xs none
              let type ← elabType type
              Term.synthesizeSyntheticMVarsNoPostponing
              let type ← mkForallFVars xs type
              let type ← mkForallFVars vars type (usedOnly := true)
              unless (← isDefEq info.type type) do
                throwTypeMismatchError none info.type type declConst
      else
        unless binders.getNumArgs == 0 do
          throwError "expected type after ':'"

end Mathlib.Tactic.Recall
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recall/Variant4c8743693307b0512b871076e652a62e9eadc221dd710838d652b58d23580adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recall/Variant4c8743693307b0512b871076e652a62e9eadc221dd710838d652b58d23580adb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71cd4e8644f933e3285ff39f784e2581a5f7f96b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
