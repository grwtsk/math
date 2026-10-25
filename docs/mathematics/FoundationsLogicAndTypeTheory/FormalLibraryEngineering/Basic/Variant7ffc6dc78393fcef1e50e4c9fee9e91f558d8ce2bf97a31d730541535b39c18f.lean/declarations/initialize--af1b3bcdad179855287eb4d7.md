# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1418d195c04409ae45c85167516ee0d403d1a3da11e4a000c3d4459ca9ea963",
  "kind": "initialize",
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
  "slug": "initialize--af1b3bcdad179855287eb4d7",
  "source": {
    "blob": "7f514f58df9f1ac7112bc0b3cbffef7e6b5bfc2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7ffc6dc78393fcef1e50e4c9fee9e91f558d8ce2bf97a31d730541535b39c18f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af1b3bcdad179855287eb4d7cc3c3a68afb9922cd5150fd99dd79a3e3c7eb9e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7ffc6dc78393fcef1e50e4c9fee9e91f558d8ce2bf97a31d730541535b39c18f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1418d195c04409ae45c85167516ee0d403d1a3da11e4a000c3d4459ca9ea963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerBuiltinAttribute {
  name := `env_linter
  descr := "Use this declaration as a linting test in #lint"
  add   := fun decl stx kind => do
    let dflt := stx[1].isNone
    unless kind == .global do throwAttrMustBeGlobal `env_linter kind
    let shortName := decl.updatePrefix .anonymous
    if let some (declName, _) := (batteriesLinterExt.getState (← getEnv)).find? shortName then
      Elab.addConstInfo stx declName
      throwError
        "invalid attribute `env_linter`, linter `{shortName}` has already been declared"
    /- Just as `env_linter`s must be `global`, they also must be accessible from `#lint`, and thus
    must be `public` and `meta`. `ensureAttrDeclIsMeta` checks for both of these, additionally
    calling `ensureAttrDeclIsPublic`.

    `Linter.mk` is already `meta` and thus will likely cause an error anyway, but the explicit
    instruction to mark this declaration `meta` might help the user resolve that and similar
    errors. -/
    ensureAttrDeclIsMeta `env_linter decl kind
    let constInfo ← getConstInfo decl
    unless ← (isDefEq constInfo.type (mkConst ``Linter)).run' do
      throwError "`{.ofConstName decl}` must have type `{.ofConstName ``Linter}`, got \
        `{constInfo.type}`"
    modifyEnv fun env => batteriesLinterExt.addEntry env (decl, dflt)
}

/-- `@[nolint linterName]` omits the tagged declaration from being checked by
the linter with name `linterName`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7ffc6dc78393fcef1e50e4c9fee9e91f558d8ce2bf97a31d730541535b39c18f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7ffc6dc78393fcef1e50e4c9fee9e91f558d8ce2bf97a31d730541535b39c18f.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f514f58df9f1ac7112bc0b3cbffef7e6b5bfc2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
