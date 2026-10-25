# helpLint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2326a201d98c8b7e7cec1175f091d856817edd51e427340c98ac14b38ad60e8",
  "kind": "def",
  "lexical_name": "helpLint",
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
  "slug": "helplint--38376bd4d14e2bb3a9ef9f03",
  "source": {
    "blob": "e50471c35411bf2c77e05eaed2a37ad36a5bcd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38376bd4d14e2bb3a9ef9f033c7f1af0ade30ad0ef35e27da1dc0f13498fb451",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2326a201d98c8b7e7cec1175f091d856817edd51e427340c98ac14b38ad60e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpLint :=
"Lint the workspace's root package

USAGE:
  lake lint [OPTIONS] [<MODULE>...] [-- <args>...]

By default, runs the package's configured lint driver. If `builtinLint` is
set to `true` in the package configuration, builtin lints also run.

Builtin linting (`--builtin-lint`, `--builtin-only`, `--linters`,
`--lint-only`, or `builtinLint = true` in the package configuration) drives a
build of the targeted modules with the requested linter options enabled.
The lint driver path on its own does not trigger a build.

Which environment linters run on a declaration is determined by the linter
options in effect when that declaration was built (e.g. via `set_option` in
the source, or via `--linters`/`--lint-only` below). Both override those
options for the lint build; `--lint-only` additionally restricts the reported
output to exactly the linters its spec enables.

Positional `MODULE` arguments narrow only the builtin lints; if omitted,
the workspace's default target roots are used. The lint driver is invoked
with `lintDriverArgs` from the package config plus any arguments after
`--`; the `MODULE` list is not passed to it.

OPTIONS:
  --builtin-lint        run builtin environment and text linters
  --builtin-only        run only builtin linters, skip the lint driver
  --linters <spec>      override linter options for the lint build; <spec> is a
                        comma-separated list of linter option names, each
                        optionally prefixed with `-` to disable it. A name
                        beginning with `.` is shorthand for the `linter.`
                        prefix, so `.foo` means `linter.foo`. E.g.
                        `--linters=.foo,-linter.bar`. Repeatable; later
                        entries override earlier ones for the same linter
  --lint-only <spec>    like `--linters`, but report ONLY the linters the spec
                        positively enables, suppressing every other linter
                        (including default-on linters that are not named).
                        Expands `linter.all` and linter sets. Uses the same
                        `<spec>` syntax as `--linters`; switching between
                        `--linters` and `--lint-only` replaces the prior spec
  --record-exceptions   record each linter warning as a
                        `set_option <linter> false in` exception by editing the
                        offending source files in place, silencing the warning
                        for that declaration. Implies `--builtin-lint`.

A lint driver can be configured by either setting the `lintDriver` package
configuration option or by tagging a script or executable `@[lint_driver]`.
A definition in a dependency can be used as a lint driver by using the
`<pkg>/<name>` syntax for the 'lintDriver' configuration option.

A script lint driver will be run with the package configuration's
`lintDriverArgs` plus the CLI `args`. An executable lint driver will be
built and then run like a script.
"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50471c35411bf2c77e05eaed2a37ad36a5bcd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
