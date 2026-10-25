# copyExprMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62b917c36db9f9186e4f66894e8692e825946bc4b74896d6cdf161dd75cea3cb",
  "kind": "def",
  "lexical_name": "copyExprMVar",
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
  "slug": "copyexprmvar--657bee3ecd51542b437f4166",
  "source": {
    "blob": "2327f7ed7eb22bef6281bf04a12cf70537f879cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantf1c5310f3fa55583b3389c2f1514da1628d3c3574e229cc383894005c2968b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:657bee3ecd51542b437f4166fcb2eedc1b91e4bce9be4843a6c3806b75a3f591",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantf1c5310f3fa55583b3389c2f1514da1628d3c3574e229cc383894005c2968b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62b917c36db9f9186e4f66894e8692e825946bc4b74896d6cdf161dd75cea3cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def copyExprMVar (s : Meta.SavedState) (mvarId : MVarId) :
    MetaM Unit := do
  if ← mvarId.isAssignedOrDelayedAssigned then
    return
  unless ← mvarId.isDeclared do
    let (decl, depMVarIds) ← s.runMetaM' $ do
      mvarId.instantiateMVars
      let decl ← mvarId.getDecl
      let depMVarIds ← mvarId.getMVarDependencies (includeDelayed := true)
      aesop_trace[extraction] "declare ?{mvarId.name}:{indentD $ toMessageData mvarId}"
      pure (decl, depMVarIds)
    modifyMCtx λ mctx => { mctx with decls := mctx.decls.insert mvarId decl }
    for depMVarId in depMVarIds do
      copyExprMVar s depMVarId
  let assignment? ← s.runMetaM' do
    if let (some e) ← getExprMVarAssignment? mvarId then
      return some $ Sum.inl $ ← instantiateMVars e
    else if let (some d) ← getDelayedMVarAssignment? mvarId then
      return some $ Sum.inr d
    else
      return none
  match assignment? with
  | some (Sum.inl e) =>
    for mvarId in ← getMVars e do
      copyExprMVar s mvarId
    aesop_trace[extraction] "assign  ?{mvarId.name} := {toString e}"
    mvarId.assign e
  | some (Sum.inr d) =>
    for mvarId in ← getMVars (mkMVar d.mvarIdPending) do
      copyExprMVar s mvarId
    aesop_trace[extraction] "dassign ?{mvarId.name} := {d.fvars} => {d.mvarIdPending.name}"
    assignDelayedMVar mvarId d.fvars d.mvarIdPending
  | none => return

-- ## Main Functions

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantf1c5310f3fa55583b3389c2f1514da1628d3c3574e229cc383894005c2968b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantf1c5310f3fa55583b3389c2f1514da1628d3c3574e229cc383894005c2968b83.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2327f7ed7eb22bef6281bf04a12cf70537f879cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
