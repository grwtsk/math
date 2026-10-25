# replayConsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a1efa4f41cde554a130f5808eaff279bcf102bfa962c2533b294b9f3b9ad7e",
  "kind": "def",
  "lexical_name": "replayConsts",
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
  "slug": "replayconsts--972b9ecfbd77c4ee337bf734",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2626,
    "line": 2558,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:972b9ecfbd77c4ee337bf7343f7855c009632846cf0754dbfd6766429bd456c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a1efa4f41cde554a130f5808eaff279bcf102bfa962c2533b294b9f3b9ad7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2558–2626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replayConsts (dest : Environment) (oldEnv newEnv : Environment) (skipExisting := false) :
    BaseIO Environment := do
  let numNewPrivateConsts := newEnv.asyncConstsMap.private.size - oldEnv.asyncConstsMap.private.size
  let newPrivateConsts := newEnv.asyncConstsMap.private.revList.take numNewPrivateConsts |>.reverse
  let numNewPublicConsts := newEnv.asyncConstsMap.public.size - oldEnv.asyncConstsMap.public.size
  let newPublicConsts := newEnv.asyncConstsMap.public.revList.take numNewPublicConsts |>.reverse
  let exts ← EnvExtension.envExtensionsRef.get
  return { dest with
    asyncConstsMap := {
      «private» := newPrivateConsts.foldl (init := dest.asyncConstsMap.private) fun consts c =>
        if skipExisting && (consts.find? c.constInfo.name).isSome then
          consts
        else
          consts.add c
      «public» := newPublicConsts.foldl (init := dest.asyncConstsMap.public) fun consts c =>
        if skipExisting && (consts.find? c.constInfo.name).isSome then
          consts
        else
          consts.add c
    }
    checked := dest.checked.bind (sync := true) fun kenv =>
      oldEnv.checked.bind (sync := true) fun oldKEnv =>
        newEnv.checked.map fun newKEnv =>
          replayKernel oldKEnv newKEnv exts newPrivateConsts kenv |>.toOption.getD kenv
    allRealizations := dest.allRealizations.map (sync := true) fun allRealizations =>
      newPrivateConsts.foldl (init := allRealizations) fun allRealizations c =>
        allRealizations.insert c.constInfo.name c
  }
where
  replayKernel (oldEnv newEnv : Kernel.Environment)
      (exts : Array (EnvExtension EnvExtensionState)) (consts : List AsyncConst)
      (kenv : Kernel.Environment) : Except Kernel.Exception Kernel.Environment := do
    let mut kenv := kenv
    -- replay extensions first in case kernel checking needs them (`IR.declMapExt`)
    for ext in exts do
      if let some replay := ext.replay? then
        kenv := { kenv with
          -- safety: like in `modifyState`, but that one takes an elab env instead of a kernel env
          extensions := unsafe (ext.modifyStateImpl kenv.extensions <|
            replay
              (ext.getStateImpl oldEnv.extensions)
              (ext.getStateImpl newEnv.extensions)
              (consts.map (·.constInfo.name))) }
    for c in consts do
      if skipExisting && (kenv.find? c.constInfo.name).isSome then
        continue
      let info := c.constInfo.toConstantInfo
      if info.isUnsafe then
        -- Checking unsafe declarations is not necessary for consistency, and it is necessary to
        -- avoid checking them in the case of the old code generator, which adds ill-typed constants
        -- to the kernel environment. We can delete this branch after removing the old code
        -- generator.
        kenv := kenv.add info
        continue
      -- for panics
      let _ : Inhabited Kernel.Environment := ⟨kenv⟩
      let decl ← match info with
        | .thmInfo thm   => pure <| .thmDecl thm
        | .defnInfo defn => pure <| .defnDecl defn
        | .axiomInfo ax  => pure <| .axiomDecl ax
        | _              =>
          return panic! s!"{c.constInfo.name} must be definition/theorem"
      -- realized kernel additions cannot be interrupted - which would be bad anyway as they can be
      -- reused between snapshots
      kenv ← ofExcept <| kenv.addDeclCore 0 0 decl none
    return kenv

/-- Like `evalConst`, but first check that `constName` indeed is a declaration of type `typeName`.
    Note that this function cannot guarantee that `typeName` is in fact the name of the type `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
