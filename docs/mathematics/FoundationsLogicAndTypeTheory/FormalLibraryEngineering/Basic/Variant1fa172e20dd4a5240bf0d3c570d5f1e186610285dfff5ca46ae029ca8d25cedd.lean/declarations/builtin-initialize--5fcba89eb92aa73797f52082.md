# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99c4df58bb07fd9f4b1413809ab043d8d5ce3deadc16f28230bcc0a28b14d5bd",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--5fcba89eb92aa73797f52082",
  "source": {
    "blob": "b98e8cfc3ad3d80ebdc430a685629de94e7f2a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1fa172e20dd4a5240bf0d3c570d5f1e186610285dfff5ca46ae029ca8d25cedd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fcba89eb92aa73797f52082271017d687ecf06463d51756199959c46007a33c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1fa172e20dd4a5240bf0d3c570d5f1e186610285dfff5ca46ae029ca8d25cedd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99c4df58bb07fd9f4b1413809ab043d8d5ce3deadc16f28230bcc0a28b14d5bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerBuiltinAttribute {
  name := `builtin_env_linter
  descr := "Use this declaration as a linting test in `lake builtin-lint`"
  add   := fun decl stx kind => do
    unless kind == .global do throwError "invalid attribute `builtin_env_linter`, must be global"
    let optName ← match stx with
    | `(attr| builtin_env_linter $id:ident) => pure id.getId
    | _ => throwError "invalid `builtin_env_linter` syntax: expected an option name argument"
    let env ← getEnv
    unless env.contains optName do
      throwError "invalid attribute `builtin_env_linter`, no constant named `{optName}`; \
        did you forget `register_builtin_option {optName} : Bool := ...`?"
    if let some declName := (envLinterExt.getState env).find? optName then
      Elab.addConstInfo stx declName
      throwError
        "invalid attribute `builtin_env_linter`, linter `{optName}` has already been declared"
    let isPublic := !isPrivateName decl; let isMeta := isMarkedMeta env decl
    unless isPublic && isMeta do
      throwError "invalid attribute `builtin_env_linter`, \
        declaration `{.ofConstName decl}` must be marked as `public` and `meta`\
        {if isPublic then " but is only marked `public`" else ""}\
        {if isMeta then " but is only marked `meta`" else ""}"
    let constInfo ← getConstInfo decl
    unless ← (isDefEq constInfo.type (mkConst ``EnvLinter)).run' do
      throwError "`{.ofConstName decl}` must have type `{.ofConstName ``EnvLinter}`, got \
        `{constInfo.type}`"
    modifyEnv fun env => envLinterExt.addEntry env (optName, decl)
}

end Lean.Linter.EnvLinter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1fa172e20dd4a5240bf0d3c570d5f1e186610285dfff5ca46ae029ca8d25cedd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1fa172e20dd4a5240bf0d3c570d5f1e186610285dfff5ca46ae029ca8d25cedd.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b98e8cfc3ad3d80ebdc430a685629de94e7f2a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
