# checkTemplateVisibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08dba2e4d338c3dd105f69b8eb8565dfc9be57013b35d8498f753ebf8151360e",
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
  "slug": "checktemplatevisibility--139df699581e17446b68e5c2",
  "source": {
    "blob": "432a453b96f6688ec0314fb478ed18bb8502b7b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:139df699581e17446b68e5c248aec328f6ab8372d6f0883ef6dee504a3ed6458",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08dba2e4d338c3dd105f69b8eb8565dfc9be57013b35d8498f753ebf8151360e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–167.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `432a453b96f6688ec0314fb478ed18bb8502b7b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
