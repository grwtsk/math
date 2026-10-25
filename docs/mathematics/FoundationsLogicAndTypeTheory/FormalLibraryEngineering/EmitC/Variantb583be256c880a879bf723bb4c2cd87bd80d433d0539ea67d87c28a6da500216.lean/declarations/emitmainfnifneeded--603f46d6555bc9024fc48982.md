# emitMainFnIfNeeded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23ae996849f967f17d4c0d989117c4700a425afaf4af37401d660396f63fd36d",
  "kind": "def",
  "lexical_name": "emitMainFnIfNeeded",
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
  "slug": "emitmainfnifneeded--603f46d6555bc9024fc48982",
  "source": {
    "blob": "849a1be3e4db322a5391a667acadecff93c67642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1139,
    "line": 1067,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:603f46d6555bc9024fc4898260f1745b618561454ed56ab976dc33fc34d7d435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23ae996849f967f17d4c0d989117c4700a425afaf4af37401d660396f63fd36d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitMainFnIfNeeded : EmitM Unit := do
  if let some mainFn ← hasMainFn then
    emitMainFn mainFn
where
  hasMainFn : EmitM (Option (Decl .impure)) := do
    return (← getLocalDecls).find? (·.name == `main)

  emitMainFn (decl : Decl .impure) : EmitM Unit := do
    let .code .. := decl.value | throwError "Expected Lean function declaration as `main`"
    let ps := decl.params
    if ps.size != 1 && ps.size != 2 then
      throwError "invalid main function, incorrect arity when generating code"
    let env ← getEnv
    let usesLeanAPI := usesModuleFrom env `Lean
    emitLns [
      "char ** lean_setup_args(int argc, char ** argv);",
      if usesLeanAPI then "void lean_initialize();" else "void lean_initialize_runtime_module();",
      "#if defined(WIN32) || defined(_WIN32)",
      "#include <windows.h>",
      "#endif",
      "lean_object* run_main(int argc, char ** argv) {"
    ]
    if ps.size == 2 then
      emitLns [
        "    lean_object* in = lean_box(0);",
        "    int i = argc;",
        "    while (i > 1) {",
        "      lean_object* n;",
        "      i--;",
        "      n = lean_alloc_ctor(1,2,0); lean_ctor_set(n, 0, lean_mk_string(argv[i])); lean_ctor_set(n, 1, in);",
        "      in = n;",
        "    }"
      ]
      emitLn <| "    return " ++ leanMainFn ++ "(in);"
    else
      emitLn <| "    return " ++ leanMainFn ++ "();"
    emitLns [
      "}",
      "int main(int argc, char ** argv) {",
      "#if defined(WIN32) || defined(_WIN32)",
      "  SetErrorMode(SEM_FAILCRITICALERRORS);",
      "  SetConsoleOutputCP(CP_UTF8);",
      "#endif",
      "  lean_object* res;",
      "  argv = lean_setup_args(argc, argv);",
      if usesLeanAPI then "  lean_initialize();" else "  lean_initialize_runtime_module();",
      s!"  res = {← getModInitFn (phases := if env.header.isModule then .runtime else .all)}(1 /* builtin */);",
      "  lean_io_mark_end_initialization();",
      "  if (lean_io_result_is_ok(res)) {",
      "    lean_dec_ref(res);",
      "    lean_init_task_manager();",
      "    res = lean_run_main(&run_main, argc, argv);",
      "  }"
    ]
    -- `IO _`
    let retTy := env.find? `main |>.get! |>.type |>.getForallBody
    -- either `UInt32` or `(P)Unit`
    let retTy := retTy.appArg!
    let hasExitCode := retTy.isConstOf ``UInt32
    -- finalize at least the task manager to avoid leak sanitizer false positives from tasks outliving the main thread
    emitLns [
      "  lean_finalize_task_manager();",
      "  if (lean_io_result_is_ok(res)) {",
      "    int ret = " ++ if hasExitCode then "lean_unbox_uint32(lean_io_result_get_value(res));" else "0;",
      "    lean_dec_ref(res);",
      "    return ret;",
      "  } else {",
      "    lean_io_result_show_error(res);",
      "    lean_dec_ref(res);",
      "    return 1;",
      "  }"]
    emitLn "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a1be3e4db322a5391a667acadecff93c67642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
