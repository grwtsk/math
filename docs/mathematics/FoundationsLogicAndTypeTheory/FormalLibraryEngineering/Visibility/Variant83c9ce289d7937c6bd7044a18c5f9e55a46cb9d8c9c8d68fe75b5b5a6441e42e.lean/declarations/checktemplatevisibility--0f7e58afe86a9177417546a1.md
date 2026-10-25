# checkTemplateVisibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5949b0cc117eb47ba8a1b58dbd839ce7d008c954830fbb78e632180259676666",
  "kind": "def",
  "lexical_name": "checkTemplateVisibility",
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
  "slug": "checktemplatevisibility--0f7e58afe86a9177417546a1",
  "source": {
    "blob": "9cee0e368553e0945d87d6ae26c77fa7d04c0c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f7e58afe86a9177417546a1f227f88d37c6299518df3352472ab70c2795c2cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5949b0cc117eb47ba8a1b58dbd839ce7d008c954830fbb78e632180259676666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def checkTemplateVisibility : Pass where
  occurrence := 0
  phase := .base
  name := `checkTemplateVisibility
  run decls := do
    if (← getEnv).header.isModule then
      for decl in decls do
        -- A private template-like decl cannot directly be used by a different module. If it could be used
        -- indirectly via a public template-like, we do a recursive check when checking the latter.
        if !isPrivateName decl.name && (← decl.isTemplateLike) then
          let isMeta := isMarkedMeta (← getEnv) decl.name
          go decl decl |>.run' {}
    return decls
where go (origDecl decl : Decl .pure) : StateT NameSet CompilerM Unit := do
  decl.value.forCodeM fun code =>
    for ref in collectUsedDecls code do
      if (← get).contains ref then
        continue
      modify (·.insert ref)
      if let some localDecl := baseExt.getState (← getEnv) |>.find? ref then
        -- check transitively through local decls
        if isPrivateName localDecl.name && (← localDecl.isTemplateLike) then
          go origDecl localDecl
      else if let some modIdx := (← getEnv).getModuleIdxFor? ref then
        if (← getEnv).header.modules[modIdx]?.any (!·.isExported) then
          if !(← compiler.inLeanIR.getM) then
            throwError "Cannot compile inline/specializing declaration `{.ofConstName origDecl.name}` as \
              it uses `{.ofConstName ref}` of module `{(← getEnv).header.moduleNames[modIdx]!}` \
              which must be imported publicly. This limitation may be lifted in the future."
        else
          -- record as public meta use
          withExporting <| recordExtraModUseFromDecl (isMeta := getIRPhases (← getEnv) ref == .comptime) ref

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cee0e368553e0945d87d6ae26c77fa7d04c0c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
