# ensureHasNoMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7a241d563dd0372b71d55ed771b321cfeba812d50e371b631785269d1079a59",
  "kind": "def",
  "lexical_name": "ensureHasNoMVars",
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
  "slug": "ensurehasnomvars--f442f613a9c79ba288eac984",
  "source": {
    "blob": "3b69aa6dd6a80a12d33ee2bea5b580b33e6caa05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 548,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f442f613a9c79ba288eac984c4eba9b702fe435b54377e4512f0cdde20797360",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7a241d563dd0372b71d55ed771b321cfeba812d50e371b631785269d1079a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureHasNoMVars (e : Expr) : TacticM Unit := do
  let e ← instantiateMVars e
  let pendingMVars ← getMVars e
  discard <| Term.logUnassignedUsingErrorInfos pendingMVars
  if e.hasExprMVar then
    throwError "Tactic failed: Resulting expression contains metavariables{indentExpr e}"

/--
Closes main goal using the given expression.
If `checkUnassigned == true`, then `val` must not contain unassigned metavariables.
Returns `true` if `val` was successfully used to close the goal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b69aa6dd6a80a12d33ee2bea5b580b33e6caa05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
