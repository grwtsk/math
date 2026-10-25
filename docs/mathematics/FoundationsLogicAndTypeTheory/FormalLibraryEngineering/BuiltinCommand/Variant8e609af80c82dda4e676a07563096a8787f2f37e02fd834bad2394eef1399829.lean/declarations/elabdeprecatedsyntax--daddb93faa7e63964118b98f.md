# elabDeprecatedSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:725f03d2216489629a0d3b6983d1a761672e302957e05890511407cb3c6997e9",
  "kind": "def",
  "lexical_name": "elabDeprecatedSyntax",
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
  "slug": "elabdeprecatedsyntax--daddb93faa7e63964118b98f",
  "source": {
    "blob": "e8f915fe84238814beb0a76b8a80135c6f6cceeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 772,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daddb93faa7e63964118b98f816d2f800de2b479e9a5f66fa3ffc04cfca90aa1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:725f03d2216489629a0d3b6983d1a761672e302957e05890511407cb3c6997e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Parser.Command.deprecatedSyntax] def elabDeprecatedSyntax : CommandElab := fun stx => do
  let id := stx[1]
  let kind ← liftCoreM <| checkSyntaxNodeKindAtNamespaces id.getId (← getCurrNamespace)
  let text? := if stx[2].isNone then none else stx[2][0].isStrLit?
  let since? := if stx[3].isNone then none else stx[3][3].isStrLit?
  if since?.isNone then
    logWarning "`deprecated_syntax` should specify the date or library version at which the \
      deprecation was introduced, using `(since := \"...\")`"
  modifyEnv fun env =>
    deprecatedSyntaxExt.addEntry env { kind, text?, since? }

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f915fe84238814beb0a76b8a80135c6f6cceeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
