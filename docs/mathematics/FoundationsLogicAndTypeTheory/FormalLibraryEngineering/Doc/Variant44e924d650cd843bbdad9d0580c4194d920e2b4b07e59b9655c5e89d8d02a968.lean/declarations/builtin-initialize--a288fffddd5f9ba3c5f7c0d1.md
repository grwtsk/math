# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5912b9430e242fbdaa9fef62230cd517f8d9dc4e8733bd82bfc2d91a11723075",
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
  "slug": "builtin-initialize--a288fffddd5f9ba3c5f7c0d1",
  "source": {
    "blob": "219f9e2eeab9789c937c230482f515a5bc3d5275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a288fffddd5f9ba3c5f7c0d13770b239f6003bc06d380e801b803391ebeb21ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5912b9430e242fbdaa9fef62230cd517f8d9dc4e8733bd82bfc2d91a11723075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let name := `tactic_name
  registerBuiltinAttribute {
    name := name,
    ref := by exact decl_name%,
    add := fun decl stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let name ←
        match stx with
        | `(«tactic_name»|tactic_name $name:str) =>
          pure name.getString
        | `(«tactic_name»|tactic_name $name:ident) =>
          pure (name.getId.toString (escape := false))
        | _ => throwError "Invalid `[{name}]` attribute syntax"

      if (← getEnv).find? decl |>.isSome then
        if !(isTactic (← getEnv) decl) then
          throwErrorAt stx m!"`{.ofConstName decl}` is not a tactic"
        if let some idx := (← getEnv).getModuleIdxFor? decl then
          if let some mod := (← getEnv).allImportedModuleNames[idx]? then
            throwErrorAt stx m!"`{.ofConstName decl}` is defined in `{mod}`, but custom names can only be added in the tactic's defining module."
          else
            throwErrorAt stx m!"`{.ofConstName decl}` is defined in an imported module, but custom names can only be added in the tactic's defining module."

      if let some tgt' := alternativeOfTactic (← getEnv) decl then
        throwErrorAt stx "`{.ofConstName decl}` is an alternative form of `{.ofConstName tgt'}`"

      if let some n ← customTacticName decl then
        throwError m!"The tactic `{.ofConstName decl}` already has the custom name `{n}`"

      modifyEnv fun env => tacticNameExt.addEntry env (decl, name)

    descr :=
      "Registers a custom name for a tactic. This custom name should be a prefix of the " ++
      "tactic's syntax, because it is used in completion.",
    applicationTime := .beforeElaboration
  }

-- Note: this error handler doesn't prevent all cases of non-tactics being added to the data
-- structure. But the module will throw errors during elaboration, and there doesn't seem to be
-- another way to implement this, because the category parser extension attribute runs *after* the
-- attributes specified before a `syntax` command.
/--
Validates that a tactic alternative is actually a tactic, that syntax tagged as tactics are
tactics, and that syntax with tactic names are tactics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219f9e2eeab9789c937c230482f515a5bc3d5275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
