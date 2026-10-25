# MVarErrorInfo.logError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fda48532edac1a43b8a6390b01b7af1fb1d769bc23a5ddea693728846f7d7440",
  "kind": "def",
  "lexical_name": "MVarErrorInfo.logError",
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
  "slug": "mvarerrorinfo-logerror--ae2c872cea96017e15f50153",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 901,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2c872cea96017e15f5015356fa85ed1c7c1d6e5a112827d1c77984022c6d92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fda48532edac1a43b8a6390b01b7af1fb1d769bc23a5ddea693728846f7d7440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 901–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarErrorInfo.logError (mvarErrorInfo : MVarErrorInfo) (extraMsg? : Option MessageData) : TermElabM Unit := do
  match mvarErrorInfo.kind with
  | MVarErrorKind.implicitArg lctx app => withLCtx lctx {} do
    let app ← instantiateMVars app
    let msg ← addArgName "don't know how to synthesize implicit argument"
    let msg := msg ++ m!"{indentExpr app.setAppPPExplicitForExposingMVars}" ++ Format.line ++ "context:" ++ Format.line ++ MessageData.ofGoal mvarErrorInfo.mvarId
    logErrorAt mvarErrorInfo.ref (appendExtra msg)
  | MVarErrorKind.hole => do
    let msg ← addArgName "don't know how to synthesize placeholder" " for argument"
    let msg := msg ++ Format.line ++ "context:" ++ Format.line ++ MessageData.ofGoal mvarErrorInfo.mvarId
    logErrorAt mvarErrorInfo.ref (MessageData.tagged `Elab.synthPlaceholder <| appendExtra msg)
  | MVarErrorKind.custom msg =>
    logErrorAt mvarErrorInfo.ref (appendExtra msg)
where
  /-- Append the argument name (if available) to the message.
      Remark: if the argument name contains macro scopes we do not append it. -/
  addArgName (msg : MessageData) (extra : String := "") : TermElabM MessageData := do
    match (← get).mvarArgNames.get? mvarErrorInfo.mvarId with
    | none => return msg
    | some argName => return if argName.hasMacroScopes then msg else msg ++ extra ++ m!" `{argName}`"

  appendExtra (msg : MessageData) : MessageData :=
    match extraMsg? with
    | none => msg
    | some extraMsg => msg.composePreservingKind extraMsg

/--
  Try to log errors for the unassigned metavariables `pendingMVarIds`.

  Return `true` if there were "unfilled holes", and we should "abort" declaration.
  TODO: try to fill "all" holes using synthetic "sorry's"

  Remark: We only log the "unfilled holes" as new errors if no error has been logged so far. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L901).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
