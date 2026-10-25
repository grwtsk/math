# emitMainFnIfNeeded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37f84e01b6a05643762cd15f71eef58ccccf6a44fceef051b4d6727c1c040fda",
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
  "slug": "emitmainfnifneeded--2bb57c51a8a6b6762e97697f",
  "source": {
    "blob": "559a964222f208f442e9a5e7f5d89cc6d9b9135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1147,
    "line": 1075,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bb57c51a8a6b6762e97697ff282735e6d33d0cac9a034bc633ca4fd8375b603",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37f84e01b6a05643762cd15f71eef58ccccf6a44fceef051b4d6727c1c040fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1147.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559a964222f208f442e9a5e7f5d89cc6d9b9135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
