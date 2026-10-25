# evalExprWithElab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42d56c51f36cecce75c162b851897d1f6aa8864d8ba3e2561542694a3c7b8eb8",
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
  "slug": "evalexprwithelab--b1a25890bc9473d4abef743a",
  "source": {
    "blob": "e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1a25890bc9473d4abef743ad45abcce105dcfaef51a9dd1958bf26011f55da4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42d56c51f36cecce75c162b851897d1f6aa8864d8ba3e2561542694a3c7b8eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–57.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
