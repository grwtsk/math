# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af770736fa20dcd0f5ed43f0cdf88f9d5a9e5c9cf14c51961cc84306b326cb1f",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--e953fbda2204bb350db23b0c",
  "source": {
    "blob": "b3913b31b6e8a0ffa71c352cdb59b3df379b7f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e953fbda2204bb350db23b0c4ff2d1c50521e2fd3c0b6ed5289a126d29d5c187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af770736fa20dcd0f5ed43f0cdf88f9d5a9e5c9cf14c51961cc84306b326cb1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := alias) mods:declModifiers "alias " alias:ident " := " nameStx:ident : command => do
  Lean.withExporting (isExporting := (← Command.getScope).isPublic) do
  Command.liftTermElabM do
    -- Whether we may access private `name`s here depends on whether it is a theorem, so first
    -- resolve in private scope always
    let name ← withoutExporting <| realizeGlobalConstNoOverloadWithInfo nameStx
    let cinfo ← withoutExporting <| getConstInfo name
    let declMods ← elabModifiers mods
    Lean.withExporting (isExporting := declMods.isInferredPublic (← getEnv)) do
    unless wasOriginallyTheorem (← getEnv) name do
      -- Now check again in correct scope for defs
      discard <| realizeGlobalConstNoOverloadWithInfo nameStx
    let (attrs, machineApplicable) := setDeprecatedTarget name declMods.attrs
    let env ← getEnv
    let declMods := { declMods with
      computeKind :=
        if isNoncomputable env name then .noncomputable
        else if isMarkedMeta env name then .meta
        else declMods.computeKind
      isUnsafe := declMods.isUnsafe || cinfo.isUnsafe
      attrs
    }
    let (declName, _) ← mkDeclName (← getCurrNamespace) declMods alias.getId
    let decl : Declaration := if wasOriginallyTheorem (← getEnv) name then
      .thmDecl { cinfo.toConstantVal with
        name := declName
        value := mkConst name (cinfo.toConstantVal.levelParams.map mkLevelParam)
      }
    else
      .defnDecl { cinfo.toConstantVal with
        name := declName
        value := mkConst name (cinfo.levelParams.map mkLevelParam)
        hints := .regular 0 -- FIXME
        safety := if declMods.isUnsafe then .unsafe else .safe
      }
    checkNotAlreadyDeclared declName
    addDecl decl
    if !declMods.isNoncomputable then
      if declMods.isMeta then
        modifyEnv (markMeta · declName)
      compileDecl decl
    addDeclarationRangesFromSyntax declName (← getRef) alias
    Term.addTermInfo' alias (← mkConstWithLevelParams declName) (isBinder := true)
    if let some doc := declMods.docString? then
      addDocString declName (mkNullNode #[]) doc
    enableRealizationsForConst declName
    let info := AliasInfo.plain name
    setAliasInfo info declName
    Term.applyAttributes declName declMods.attrs
    if machineApplicable then
      modifyEnv (machineApplicableDeprecated.tag · declName)
    addAliasDocstring declName info

/--
Given a possibly forall-quantified iff expression `prf`, produce a value for one
of the implication directions (determined by `mp`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3913b31b6e8a0ffa71c352cdb59b3df379b7f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
