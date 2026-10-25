# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:946ecb3f99759410748ee412dbd6e8b9b16f2d6b81231ec41bcab8e08e59e4ab",
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
  "slug": "elab--4f9665c580682cfaf0baf7db",
  "source": {
    "blob": "4a9d6e9af8ad5ad5fcd64f901ea5208956684855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f9665c580682cfaf0baf7dba29f90069f4f569c21044616ae46fc1c0e106399",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:946ecb3f99759410748ee412dbd6e8b9b16f2d6b81231ec41bcab8e08e59e4ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := alias) mods:declModifiers "alias " alias:ident " := " name:ident : command =>
  Command.liftTermElabM do
    let name ← resolveGlobalConstNoOverloadWithInfo name
    let cinfo ← getConstInfo name
    let declMods ← elabModifiers mods
    let (attrs, machineApplicable) := setDeprecatedTarget name declMods.attrs
    let declMods := { declMods with
      isNoncomputable := declMods.isNoncomputable || isNoncomputable (← getEnv) name
      isUnsafe := declMods.isUnsafe || cinfo.isUnsafe
      attrs
    }
    let (declName, _) ← mkDeclName (← getCurrNamespace) declMods alias.getId
    let decl : Declaration := if let .thmInfo t := cinfo then
      .thmDecl { t with
        name := declName
        value := mkConst name (t.levelParams.map mkLevelParam)
      }
    else
      .defnDecl { cinfo.toConstantVal with
        name := declName
        value := mkConst name (cinfo.levelParams.map mkLevelParam)
        hints := .regular 0 -- FIXME
        safety := if declMods.isUnsafe then .unsafe else .safe
      }
    checkNotAlreadyDeclared declName
    if declMods.isNoncomputable then
      addDecl decl
    else
      addAndCompile decl
    Lean.addDeclarationRanges declName {
      range := ← getDeclarationRange (← getRef)
      selectionRange := ← getDeclarationRange alias
    }
    Term.addTermInfo' alias (← mkConstWithLevelParams declName) (isBinder := true)
    addDocString' declName declMods.docString?
    Term.applyAttributes declName declMods.attrs
    let info := (← getAliasInfo name).getD <| AliasInfo.plain name
    setAliasInfo info declName
    if machineApplicable then
      modifyEnv (machineApplicableDeprecated.tag · declName)
    /- alias doesn't trigger the missing docs linter so we add a default. We can't just check
      `declMods` because a docstring may have been added by an attribute. -/
    if (← findDocString? (← getEnv) declName).isNone then
      let mut doc := info.toString
      if let some origDoc ← findDocString? (← getEnv) name then
        doc := s!"{doc}\n\n---\n\n{origDoc}"
      addDocString declName doc

/--
Given a possibly forall-quantified iff expression `prf`, produce a value for one
of the implication directions (determined by `mp`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a9d6e9af8ad5ad5fcd64f901ea5208956684855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
