# elabAssertNotImported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a36b0c12f796915fe9099ef19e2b238f710e1747cdf0d9621412b32e550071be",
  "kind": "def",
  "lexical_name": "elabAssertNotImported",
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
  "slug": "elabassertnotimported--09bf765e099867630d46b8d6",
  "source": {
    "blob": "12564b0e556d6598ee1cbc1d639336686b020920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09bf765e099867630d46b8d656c52a31d0753179baea1a3422e266a52743d110",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a36b0c12f796915fe9099ef19e2b238f710e1747cdf0d9621412b32e550071be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAssertNotImported : CommandElab := fun stx => do
  let env ← getEnv
  for id in stx[1].getArgs do
    if let some idx := env.getModuleIdx? id.getId then
      logWarningAt id
        m!"the module '{id}' is (transitively) imported via\n{importPathMessage env idx}"
    else
      addAssertExistsEntry false id.getId (← getMainModule)

/-- `#check_assertions` retrieves all declarations and all imports that were declared
not to exist so far (including in transitively imported files) and reports their current
status:
* ✓ means the declaration or import exists,
* × means the declaration or import does not exist.

This means that the expectation is that all checks *succeed* by the time `#check_assertions`
is used, typically once all of the library has been built.

If all declarations and imports are available when `#check_assertions` is used,
then the command logs an info message. Otherwise, it emits a warning.

The variant `#check_assertions!` only prints declarations/imports that are not present in the
environment. In particular, it is silent if everything is imported, making it useful for testing.
-/
@[builtin_command_elab Lean.Parser.Command.checkAssertions]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExists/Variant9f051645f705c4fd1c235aacf2518b927028c3549c400bfeffa3476d903f805c.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12564b0e556d6598ee1cbc1d639336686b020920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
