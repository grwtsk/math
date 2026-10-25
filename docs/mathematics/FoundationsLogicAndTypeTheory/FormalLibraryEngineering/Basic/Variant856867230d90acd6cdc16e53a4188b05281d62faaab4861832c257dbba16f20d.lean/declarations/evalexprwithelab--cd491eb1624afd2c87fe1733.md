# evalExprWithElab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:690bbdd55d9561fcba5e2cceebcb380a1e22cd78b4f64c600787f27d519f51c5",
  "kind": "def",
  "lexical_name": "evalExprWithElab",
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
  "slug": "evalexprwithelab--cd491eb1624afd2c87fe1733",
  "source": {
    "blob": "da8b588ad75bbac0d376f2746fc662d763a88267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd491eb1624afd2c87fe173382c967a2b95b0711c4d5eb41d32b96493eafe04d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:690bbdd55d9561fcba5e2cceebcb380a1e22cd78b4f64c600787f27d519f51c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalExprWithElab {α : Type} [EvalExpr α] (stx : Term) : TermElabM α :=
  withRef stx do
    let ty? := EvalExpr.expectedType? α
    let e ← Term.withSynthesize <| Term.elabTermEnsuringType stx ty?
    let e ← instantiateMVars e
    if e.hasSorry then
      if e.hasSyntheticSorry then
        -- An error has already been logged.
        throwAbortTerm
      throwError "Expression contains `sorry`:{indentExpr e}"
    if (← Term.logUnassignedUsingErrorInfos (← getMVars e)) then
      throwAbortTerm
    catchInternalId unsupportedSyntaxExceptionId
      (evalExpr e)
      (fun _ => do
        let extra := if let some ty := ty? then m!"\nof type `{ty}`" else m!""
        throwError "Could not evaluate the expression{indentExpr e}{extra}")

/--
Evaluate `stx` using either `evalStx` or `evalExpr`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8b588ad75bbac0d376f2746fc662d763a88267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
