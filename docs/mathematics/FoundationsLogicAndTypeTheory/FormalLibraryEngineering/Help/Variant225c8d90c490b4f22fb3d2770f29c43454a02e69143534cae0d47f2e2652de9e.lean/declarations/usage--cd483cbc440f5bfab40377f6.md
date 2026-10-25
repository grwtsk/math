# usage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20ac65a17f19bcd98ad08f7f5f35e826bcf014f6e81f5b61ed90ecbdc234d326",
  "kind": "def",
  "lexical_name": "usage",
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
  "slug": "usage--cd483cbc440f5bfab40377f6",
  "source": {
    "blob": "e50471c35411bf2c77e05eaed2a37ad36a5bcd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd483cbc440f5bfab40377f65316ef2154fb3c7b01bc9332a8673cb143e69e21",
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

Occurrence: `declaration:20ac65a17f19bcd98ad08f7f5f35e826bcf014f6e81f5b61ed90ecbdc234d326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def usage :=
uiVersionString ++ "

USAGE:
  lake [OPTIONS] <COMMAND>

COMMANDS:
  new <name> <temp>     create a Lean package in a new directory
  init <name> <temp>    create a Lean package in the current directory
  build <targets>...    build targets
  query <targets>...    build targets and output results
  exe <exe> <args>...   build an exe and run it in Lake's environment
  check-build           check if any default build targets are configured
  test                  test the package using the configured test driver
  check-test            check if there is a properly configured test driver
  lint                  lint the package
  check-lint            check if there is a properly configured lint driver
  clean                 remove build outputs
  shake                 minimize imports in source files
  env <cmd> <args>...   execute a command in Lake's environment
  lean <file>           elaborate a Lean file in Lake's context
  update                update dependencies and save them to the manifest
  pack                  pack build artifacts into an archive for distribution
  unpack                unpack build artifacts from an distributed archive
  upload <tag>          upload build artifacts to a GitHub release
  cache                 manage the Lake cache
  script                manage and run workspace scripts
  scripts               shorthand for `lake script list`
  run <script>          shorthand for `lake script run`
  translate-config      change language of the package configuration
  serve                 start the Lean language server

BASIC OPTIONS:
  --version             print version and exit
  --help, -h            print help of the program or a command and exit
  --dir, -d=file        use the package configuration in a specific directory
  --file, -f=file       use a specific file for the package configuration
  -K key[=value]        set the configuration file option named key
  --old                 only rebuild modified modules (ignore transitive deps)
  --rehash, -H          hash all files for traces (do not trust `.hash` files)
  --update              update dependencies on load (e.g., before a build)
  --packages=file       JSON file of package entries that override the manifest
  --reconfigure, -R     elaborate configuration files instead of using OLeans
  --keep-toolchain      do not update toolchain on workspace update
  --allow-empty         accept bare builds with no default targets configured
  --no-build            exit immediately if a build target is not up-to-date
  --no-cache            build packages locally; do not download build caches
  --try-cache           attempt to download build caches for supported packages
  --json, -J            output JSON-formatted results (in `lake query`)
  --text                output results as plain text (in `lake query`)

OUTPUT OPTIONS:
  --quiet, -q           hide informational logs and the progress indicator
  --verbose, -v         show trace logs (command invocations) and built targets
  --ansi, --no-ansi     toggle the use of ANSI escape codes to prettify output
  --log-level=lv        minimum log level to output on success
                        (levels: trace, info, warning, error)
  --fail-level=lv       minimum log level to fail a build (default: error)
  --iofail              fail build if any I/O or other info is logged
                        (same as --fail-level=info)
  --wfail               fail build if warnings are logged
                        (same as --fail-level=warning)


See `lake help <command>` for more information on a specific command."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant225c8d90c490b4f22fb3d2770f29c43454a02e69143534cae0d47f2e2652de9e.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50471c35411bf2c77e05eaed2a37ad36a5bcd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
