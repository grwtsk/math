# DeferredCheckResults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9cec9c225c711500e82b66f18a21f277c1326e1b6666d7ca36ca62b2bdb5934",
  "kind": "structure",
  "lexical_name": "DeferredCheckResults",
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
  "slug": "deferredcheckresults--d89435ab753fe662cb8db784",
  "source": {
    "blob": "6cb1b36d0fda483526aa7963db9e9f662a68b605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d89435ab753fe662cb8db7841455de5c04329b33ddbfaaab64b703a7c2c19fa8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9cec9c225c711500e82b66f18a21f277c1326e1b6666d7ca36ca62b2bdb5934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure DeferredCheckResults where
  /-- The mode-specific outcome of the pass. -/
  outcome : DeferredCheckOutcome
  /-- Modules whose deferred checks have now been run. -/
  checkedModules : NameSet

/--
Runs deferred docstring checks (e.g. forward references) over the modules of the package rooted at
`pkgRoot` that are imported by `env`. These deferred checks may be found both in module docstrings
and in declaration docstrings, so a declaration-centric interface doesn't make sense. Because
deferred checks capture their local option values, the per-check predicate can honor a `set_option
linter.doc.deferred` by inspecting the captured values. The package-level toggle is read from the
command-line overrides: `--lint-only` requires explicit selection, otherwise the option defaults on
but honors an explicit `--linters=-linter.doc.deferred` (or `-linter.all`).

`docCheckedModules` names the package modules whose checks earlier lint targets already ran; a
module imported by several targets is thus checked only once. Its modules are skipped here, and the
result's `checkedModules` extends it with the ones this target covered, to thread into the next
target.

Failures are reported on stderr, unless `args.recordExceptions` is set, in which case they are
turned into exception records at the flagged docstring's positions for the caller to write.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb1b36d0fda483526aa7963db9e9f662a68b605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
