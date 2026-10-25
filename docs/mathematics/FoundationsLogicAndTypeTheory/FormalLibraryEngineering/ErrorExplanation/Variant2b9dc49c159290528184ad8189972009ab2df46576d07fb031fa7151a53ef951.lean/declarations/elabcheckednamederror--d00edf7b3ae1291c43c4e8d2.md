# elabCheckedNamedError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:112809bcebda51297af18fe6d6ccdf5b523eed99efea6c6b05e2da65fc28d895",
  "kind": "def",
  "lexical_name": "elabCheckedNamedError",
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
  "slug": "elabcheckednamederror--d00edf7b3ae1291c43c4e8d2",
  "source": {
    "blob": "117aba39b0b0c841d933dba4a74e86b43e161140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d00edf7b3ae1291c43c4e8d2bebb29a6f0e294092abd03be9d12225af75c161f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:112809bcebda51297af18fe6d6ccdf5b523eed99efea6c6b05e2da65fc28d895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCheckedNamedError : TermElab := fun stx expType? => do
  if let some (module, decl) := macroDeclMap.get? stx.getKind then
    if !(← getEnv).contains decl then
      throwError m!"The constant `{decl}` has not been imported" ++
        .hint' m!"Add `import {module}` to this file's header to use this macro"
  let (id, numArgsExpected) :=
    if stx.isOfKind ``throwNamedErrorAtMacro || stx.isOfKind ``logNamedErrorAtMacro
        || stx.isOfKind ``logNamedWarningAtMacro then
    (stx[2], 5)
  else
    (stx[1], 4)
  -- Remove the message term from the span. If we have a trailing `.`, we fail to parse the message
  -- term and so leave `stx` unchanged. The in-progress identifier will always be the penultimate
  -- argument of `span`.
  let span := if stx.getNumArgs == numArgsExpected then
    stx.setArgs (stx.getArgs[*...(stx.getNumArgs - 1)])
  else
    stx
  let partialId := span[span.getNumArgs - 2]
  addCompletionInfo <| CompletionInfo.errorName span partialId
  let name := id.getId.eraseMacroScopes
  pushInfoLeaf <| .ofErrorNameInfo { stx := id, errorName := name }
  if let some explan ← getErrorExplanation? name then
    if let some removedVersion := explan.metadata.removedVersion? then
      logWarningAt id m!"The error name `{name}` was removed in Lean version {removedVersion} and \
        should not be used."
  else
    logErrorAt id m!"There is no explanation registered with the name `{name}`. \
      Register an explanation for this error in the `Lean.ErrorExplanation` module."
  let stx' ← liftMacroM <| expandNamedErrorMacro stx
  elabTerm stx' expType?

open Command in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117aba39b0b0c841d933dba4a74e86b43e161140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
