# displayHelp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c89904cdaa0a33dd6a40a16381b2e94c5c34bffc8ecc04a36c9d2d69f9029b5",
  "kind": "def",
  "lexical_name": "displayHelp",
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
  "slug": "displayhelp--4f3b9487fa73cd6b650478ef",
  "source": {
    "blob": "b9f00d57a273e10dfdbae4b0ddb23881e067e4ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f3b9487fa73cd6b650478efcf721c15c1c5178a8b9aacf2ced9fe788b2950aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c89904cdaa0a33dd6a40a16381b2e94c5c34bffc8ecc04a36c9d2d69f9029b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def displayHelp (useStderr : Bool) : IO Unit := do
  let out ← if useStderr then IO.getStderr else IO.getStdout
  out.putStrLn    versionHeader
  out.putStrLn    "Miscellaneous"
  out.putStrLn    "  -h, --help             display this message"
  out.putStrLn    "      --features         display features compiler provides (eg. LLVM support)"
  out.putStrLn    "  -v, --version          display version information"
  out.putStrLn    "  -V, --short-version    display short version number"
  out.putStrLn    "  -g, --githash          display the git commit hash number used to build this binary"
  out.putStrLn    "      --run <file>       call the 'main' definition in the given file with the remaining arguments"
  out.putStrLn    "  -o, --o=oname          create olean file"
  out.putStrLn    "  -i, --i=iname          create ilean file"
  out.putStrLn    "  -c, --c=fname          name of the C output file"
  out.putStrLn    "  -b, --bc=fname         name of the LLVM bitcode file"
  out.putStrLn    "      --stdin            take input from stdin"
  out.putStrLn    "  -R, --root=dir         set package root directory from which the module name\n"
  out.putStrLn    "                         of the input file is calculated\n"
  out.putStrLn    "                         (default: current working directory)\n";
  out.putStrLn    "  -t, --trust=num        trust level (default: max) 0 means do not trust any macro,\n"
  out.putStrLn    "                         and type check all imported modules\n";
  out.putStrLn    "  -q, --quiet            do not print verbose messages"
  out.putStrLn    "  -M, --memory=num       maximum amount of memory that should be used by Lean"
  out.putStrLn    "                         (in megabytes)"
  out.putStrLn    "  -T, --timeout=num      maximum number of memory allocations per task"
  out.putStrLn    "                         this is a deterministic way of interrupting long running tasks"
  if Internal.isMultiThread () then
    out.putStrLn  "  -j, --threads=num      number of threads used to process lean files"
    out.putStrLn  "  -s, --tstack=num       thread stack size in Kb"
    out.putStrLn  "      --server           start lean in server mode"
    out.putStrLn  "      --worker           start lean in server-worker mode"
  out.putStrLn    "      --plugin=file[=fn] load and initialize Lean shared library for registering linters etc."
  out.putStrLn    "      --load-dynlib=file load shared library to make its symbols available to the interpreter"
  out.putStrLn    "      --setup=file       JSON file with module setup data (supersedes the file's header)"
  out.putStrLn    "      --json             report Lean output (e.g., messages) as JSON (one per line)"
  out.putStrLn    "  -E, --error=kind       report Lean messages of kind as errors"
  out.putStrLn    "      --deps             just print dependencies of a Lean input"
  out.putStrLn    "      --src-deps         just print dependency sources of a Lean input"
  out.putStrLn    "      --print-prefix     print the installation prefix for Lean and exit"
  out.putStrLn    "      --print-libdir     print the installation directory for Lean's built-in libraries and exit"
  out.putStrLn    "      --profile          display elaboration/type checking time for each definition/theorem"
  out.putStrLn    "      --stats            display environment statistics"
  out.putStrLn    "      --incr-save=file   EXPERIMENTAL: save a full incremental snapshot of post-elaboration state at end of run"
  out.putStrLn    "      --incr-load=file   EXPERIMENTAL: reuse a snapshot saved by `--incr-(header-)save` at start of run"
  out.putStrLn    "      --incr-header-save=file"
  out.putStrLn    "                         EXPERIMENTAL: like `--incr-save`, but save only the header (state after importing)"
  if Internal.isDebug () then
    out.putStrLn  "      --debug=tag        enable assertions with the given tag"
  out.putStrLn    "      -D name=value      set a configuration option (see set_option command)"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f00d57a273e10dfdbae4b0ddb23881e067e4ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
