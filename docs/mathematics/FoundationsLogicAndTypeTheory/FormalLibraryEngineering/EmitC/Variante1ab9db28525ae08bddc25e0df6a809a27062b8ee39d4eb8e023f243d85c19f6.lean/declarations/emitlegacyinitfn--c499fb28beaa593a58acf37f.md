# emitLegacyInitFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e9e317b50c2479a4816a96358986075aa3c3e8169a3fd58150c8d14b802c6b2",
  "kind": "def",
  "lexical_name": "emitLegacyInitFn",
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
  "slug": "emitlegacyinitfn--c499fb28beaa593a58acf37f",
  "source": {
    "blob": "559a964222f208f442e9a5e7f5d89cc6d9b9135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1074,
    "line": 1045,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c499fb28beaa593a58acf37f234e62cac851e71d4cc53422f59115892f6d11da",
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

Occurrence: `declaration:1e9e317b50c2479a4816a96358986075aa3c3e8169a3fd58150c8d14b802c6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1045–1074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitLegacyInitFn : EmitM Unit := do
  let env ← getEnv
  let impInitFns ← env.imports.filterMapM fun imp => do
    let some idx := env.getModuleIdx? imp.module
      | throwError "(internal) import without module index" -- should be unreachable
    let pkg? := env.getModulePackageByIdx? idx
    let fn := mkModuleInitializationFunctionName imp.module pkg?
    emitLn s!"lean_object* {fn}(uint8_t builtin);"
    return some fn
  let initialized := s!"_G_initialized"
  emitLns [
    s!"static bool {initialized} = false;",
    s!"LEAN_EXPORT lean_object* {← getModInitFn (phases := .all)}(uint8_t builtin) \{",
    "lean_object * res;",
    s!"if ({initialized}) return lean_io_result_mk_ok(lean_box(0));",
    s!"{initialized} = true;"
  ]
  impInitFns.forM fun fn => do
    withErrRet do
      emit s!"{fn}(builtin)"
    emitLn "lean_dec_ref(res);"
  withErrRet do
    emit s!"{← getModInitFn (phases := .runtime)}(builtin)"
  emitLn "lean_dec_ref(res);"
  withErrRet do
    emit s!"{← getModInitFn (phases := .comptime)}(builtin)"
  emitLn "lean_dec_ref(res);"
  emitLn s!"return {← getModInitFn (phases := .all)}(builtin);"
  emitLn "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean#L1045).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559a964222f208f442e9a5e7f5d89cc6d9b9135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
