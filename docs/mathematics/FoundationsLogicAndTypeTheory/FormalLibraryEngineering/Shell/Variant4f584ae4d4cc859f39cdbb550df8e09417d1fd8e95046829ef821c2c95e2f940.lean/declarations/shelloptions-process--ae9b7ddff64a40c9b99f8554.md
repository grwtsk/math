# ShellOptions.process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:194061e9ef5f4c49b25fab9be04ffb633a9780531c2d2604713bbb27003b0f78",
  "kind": "def",
  "lexical_name": "ShellOptions.process",
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
  "slug": "shelloptions-process--ae9b7ddff64a40c9b99f8554",
  "source": {
    "blob": "3f73f6fe35d11cbccd9b6effe1bafad030fdbdce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae9b7ddff64a40c9b99f855417260e1c1938eda15bd3f1fb35a5bfd72d87c004",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:194061e9ef5f4c49b25fab9be04ffb633a9780531c2d2604713bbb27003b0f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ShellOptions.process (opts : ShellOptions)
    (opt : Char) (optArg? : Option String) : EIO UInt32 ShellOptions := do
  have : MonadLift IO (EIO UInt32) := ⟨liftIO⟩
  match opt with
  | 'e' => -- undocumented
    Internal.setExitOnPanic true
    return opts
  | 'j' => -- `-j, --threads=num`
    let arg ← checkOptArg "j" optArg?
    let some numThreads := arg.toNat?
      | throwExpectedNumeric "j"
    if h : numThreads < UInt32.size then
      let numThreads := UInt32.ofNatLT numThreads h
      let forwardedArgs := opts.forwardedArgs.push s!"-j{arg}";
      return {opts with forwardedArgs, numThreads}
    else
      throwTooLarge "j"
  | 'v' => --- `-v, --version`
    IO.println Lean.versionHeader
    throw 0
  | 'V' => --- `-V, --short-version`
    IO.println Lean.shortVersionString
    throw 0
  | 'g' => -- `-g, --githash`
    IO.println Lean.githash
    throw 0
  | 'h' => -- `-h, --help`
    displayHelp (useStderr := false)
    throw 0
  | 'f' => -- `--features`
    IO.println Lean.featuresString
    throw 0
  | 'c' => -- `-c, --c=fname`
    return {opts with cFileName? := ← checkOptArg "c" optArg?}
  | 'b' => -- `-b, --bc=fname`
    return {opts with bcFileName? := ← checkOptArg "b" optArg?}
  | 's' => -- `-s, --tstack=num`
    let arg ← checkOptArg "s" optArg?
    let some stackSize := arg.toNat?
      | throwExpectedNumeric "s"
    let stackSize := stackSize / 4 * 4 * 1024
    if h : stackSize < USize.size then
      let stackSize := USize.ofNatLT stackSize h
      Internal.setThreadStackSize stackSize
      let forwardedArgs := opts.forwardedArgs.push s!"-s{arg}"
      return {opts with forwardedArgs}
    else
      throwTooLarge "s"
  | 'I' => -- `-I, --stdin`
    return {opts with useStdin := true}
  | 'r' => -- `--run`
    return {opts with
      run := true
      -- can't get IR if it's postponed
      leanOpts := Compiler.compiler.postponeCompile.set opts.leanOpts false }
  | 'o' => -- `--o, olean=fname`
    return {opts with oleanFileName? := ← checkOptArg "o" optArg?}
  | 'i' => -- `--i, ilean=fname`
    return {opts with ileanFileName? := ← checkOptArg "i" optArg?}
  | 'R' => -- `-R, --root=dir`
    let arg ← checkOptArg "R" optArg?
    let forwardedArgs := opts.forwardedArgs.push s!"-R{arg}"
    return {opts with forwardedArgs, rootDir? := arg}
  | 'M' => -- `-M, --memory=num`
    let arg ← checkOptArg "M" optArg?
    let some val := arg.toNat?
      | throwExpectedNumeric "M"
    let leanOpts := maxMemory.set opts.leanOpts val
    let forwardedArgs := opts.forwardedArgs.push s!"-M{arg}"
    return {opts with forwardedArgs, leanOpts}
  | 'T' => -- `-T, --timeout=num`
    let arg ← checkOptArg "T" optArg?
    let some val := arg.toNat?
      | throwExpectedNumeric "T"
    let leanOpts := timeout.set opts.leanOpts val
    let forwardedArgs := opts.forwardedArgs.push s!"-T{arg}"
    return {opts with forwardedArgs, leanOpts}
  | 't' => -- `--trust=num`
    let arg ← checkOptArg "t" optArg?
    let some trustLevel := arg.toNat?
      | throwExpectedNumeric "t"
    if h : trustLevel < UInt32.size then
      let trustLevel := UInt32.ofNatLT trustLevel h
      let forwardedArgs := opts.forwardedArgs.push s!"-t{arg}";
      return {opts with forwardedArgs, trustLevel}
    else
      throwTooLarge "t"
  | 'q' =>
    return {opts with leanOpts := verbose.set opts.leanOpts false}
  | 'd' => -- `--deps`
    return {opts with onlyDeps := true}
  | 'O' => -- `--src-deps`
    return {opts with onlySrcDeps := true}
  | 'N' => -- `--deps-json`
    return {opts with onlyDeps := true, depsJson := true}
  | 'J' => -- `--json`
    return {opts with jsonOutput := true}
  | 'a' => -- `--stats`
    return {opts with printStats := true}
  | 'x' =>  -- `--print-prefix`
    return {opts with printPrefix := true}
  | 'L' =>  -- `--print-libdir`
    return {opts with printLibDir := true}
  | 'D' => -- `-D name=value`
    let arg ← checkOptArg "D" optArg?
    let leanOpts ← setConfigOption opts.leanOpts arg
    let forwardedArgs := opts.forwardedArgs.push s!"-D{arg}"
    return {opts with forwardedArgs, leanOpts}
  | 'S' => -- `--server`
    return {opts with component := .watchdog}
  | 'W' => -- `--worker`
    return {opts with component := .worker}
  | 'P' => -- `--profile`
    return {opts with leanOpts := profiler.set opts.leanOpts true}
  | 'B' => -- `--debug=tag`
    if Internal.isDebug () then
      let arg ← checkOptArg "B" optArg?
      Internal.enableDebug arg
      return opts
    -- if not `LEAN_DEBUG`, fall through to unknown option
  | 'p' => -- `--plugin=file[=fn]`
    let arg ← checkOptArg "p" optArg?
    let (path, fn?) :=
      let pos := arg.find '='
      if h : pos.IsAtEnd then
        (FilePath.mk arg, none)
      else
        let path := arg.sliceTo pos
        let initFn := arg.sliceFrom (pos.next h)
        (FilePath.mk path.copy, some initFn.copy)
    Lean.loadPlugin path fn?
    let forwardedArgs := opts.forwardedArgs.push s!"-p{arg}"
    return {opts with forwardedArgs}
  | 'l' => -- `--load-dynlib=file`
    let arg ← checkOptArg "l" optArg?
    Lean.loadDynlib arg
    let forwardedArgs := opts.forwardedArgs.push s!"-l{arg}"
    return {opts with forwardedArgs}
  | 'u' => -- `--setup=file`
    return {opts with setupFileName? := ← checkOptArg "u" optArg?}
  | 'E' => -- `-E, --error=kind`
    let arg ← checkOptArg "E" optArg?
    let errorOnKinds := opts.errorOnKinds.push arg.toName
    return {opts with errorOnKinds}
  | 'Y' => -- `--incr-save=file`
    return {opts with incrSaveFileName? := ← checkOptArg "Y" optArg?}
  | 'Z' => -- `--incr-load=file`
    return {opts with incrLoadFileName? := ← checkOptArg "Z" optArg?}
  | 'H' => -- `--incr-header-save=file`
    return {opts with incrHeaderSaveFileName? := ← checkOptArg "H" optArg?}
  | _ =>
    pure ()
  eprint "Unknown command line option\n"
  displayHelp (useStderr := true)
  throw 1
where
  @[inline] eprint msg := do
    IO.eprint msg |>.catchExceptions fun _ => pure ()
  @[inline] liftIO {α} (x : IO α) := do
    match (← x.toBaseIO) with
    | .ok a =>
      return a
    | .error e =>
      eprint s!"error: "
      eprint (toString e)
      eprint "\n"
      throw 1
  @[inline] throwExpectedNumeric opt := do
    eprint s!"error: expected numeric argument for option '-{opt}'\n"
    throw 1
  @[inline] throwTooLarge opt := do
    eprint s!"error: argument value for '-{opt}' is too large\n"
    throw 1

@[export lean_shell_main]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f73f6fe35d11cbccd9b6effe1bafad030fdbdce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
