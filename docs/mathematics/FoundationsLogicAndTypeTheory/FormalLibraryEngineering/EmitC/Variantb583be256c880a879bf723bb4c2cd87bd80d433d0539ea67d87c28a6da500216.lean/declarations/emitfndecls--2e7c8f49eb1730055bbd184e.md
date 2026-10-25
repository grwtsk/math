# emitFnDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7649e600cefb063449e5bb06b03d65d52c1aad6972266d3ea09e21b4f08a7c4e",
  "kind": "def",
  "lexical_name": "emitFnDecls",
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
  "slug": "emitfndecls--2e7c8f49eb1730055bbd184e",
  "source": {
    "blob": "849a1be3e4db322a5391a667acadecff93c67642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 456,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e7c8f49eb1730055bbd184ee086e4e24a179304a7544e5bd96de17a2f95cbfe",
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

Occurrence: `declaration:7649e600cefb063449e5bb06b03d65d52c1aad6972266d3ea09e21b4f08a7c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitFnDecls : EmitM Unit := do
  (← getOtherModuleDecls).forM fun sig => do
    match getExternNameFor (← getEnv) `c sig.name with
    | some externName => emitExternDecl sig externName
    | none => emitFnDeclStandard sig true
  (← getLocalDecls).forM fun decl => do
    match getExternNameFor (← getEnv) `c decl.name with
    | some externName => emitExternDecl decl.toSignature externName
    | none => emitFnDecl decl false
where
  emitExternDecl (sig : Signature .impure) (externName : String) : EmitM Unit := do
    let env ← getEnv
    let extC := isExternC env sig.name
    emitFnDeclAux sig externName extC

  emitFnDecl (decl : Decl .impure) (isExternal : Bool) : EmitM Unit := do
    let env ← getEnv
    let cppBaseName ← toCName decl.name
    if isSimpleGroundDecl env decl.name then
      emitGroundDecl decl cppBaseName
    else if isClosedTermName env decl.name then
      emitFnDeclClosed decl cppBaseName
    else
      emitFnDeclStandard decl.toSignature isExternal

  emitFnDeclClosed (decl : Decl .impure) (cppBaseName : String) : EmitM Unit := do
    emitLn s!"static lean_once_cell_t {toOnceTokenName cppBaseName} = LEAN_ONCE_CELL_INITIALIZER;"
    emitLn s!"static {decl.type.toCType} {cppBaseName};"

  emitFnDeclStandard (sig : Signature .impure) (isExternal : Bool) : EmitM Unit := do
    let env ← getEnv
    let cppBaseName ← toCName sig.name
    emitFnDeclAux sig cppBaseName isExternal

  emitFnDeclAux (sig : Signature .impure) (cppBaseName : String) (isExternal : Bool) :
      EmitM Unit := do
    let ps := sig.params
    let env ← getEnv

    if ps.isEmpty then
      if isExternal then
        emit "extern "
      else
        emit "LEAN_EXPORT "
    else if !isExternal then
      emit "LEAN_EXPORT "
    emit <| sig.type.toCType ++ " " ++ cppBaseName
    unless ps.isEmpty do
      emit "("
      -- We omit void parameters, note that they are guaranteed not to occur in boxed functions
      let ps := paramsWithoutVoid ps
      -- We omit erased parameters for extern constants
      let ps := if isExternC env sig.name then paramsWithoutErased ps else ps
      if ps.size > closureMaxArgs && isBoxedName sig.name then
        emit "lean_object**"
      else
        ps.size.forM fun i _ => do
          if i > 0 then emit ", "
          emit ps[i].type.toCType
      emit ")"
    emitLn ";"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a1be3e4db322a5391a667acadecff93c67642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
