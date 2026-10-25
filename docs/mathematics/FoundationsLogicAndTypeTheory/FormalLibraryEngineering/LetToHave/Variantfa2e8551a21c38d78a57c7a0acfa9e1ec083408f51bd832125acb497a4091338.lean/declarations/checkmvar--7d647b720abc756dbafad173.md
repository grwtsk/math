# checkMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1b720b836b86a69d51d0e97b3049fe5c5d13cc1a6469a593c6873941b9129b1",
  "kind": "def",
  "lexical_name": "checkMVar",
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
  "slug": "checkmvar--7d647b720abc756dbafad173",
  "source": {
    "blob": "53d8141766f3a7d45804c2fd507d655d47ab1c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d647b720abc756dbafad173f78ec53a2545008dddfa64956e6d6882ab28a0af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1b720b836b86a69d51d0e97b3049fe5c5d13cc1a6469a593c6873941b9129b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkMVar (mvarId : MVarId) (args : Array Expr) : M Unit := do
  if let some { fvars, mvarIdPending } ← getDelayedMVarAssignment? mvarId then
    let letFVars := (← read).letFVars
    unless fvars.size ≤ args.size do
      -- This is an invalid delayed assignment. Mark all `letFVars` to inhibit transformation.
      letFVars.forM (addZetaDeltaFVarId ·)
      return
    let pendingDecl ← mvarIdPending.getDecl
    for fvar in fvars, arg in args do
      let fvarDecl := pendingDecl.lctx.getFVar! fvar
      if fvarDecl.isLet then
        visitDepExpr arg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d8141766f3a7d45804c2fd507d655d47ab1c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
