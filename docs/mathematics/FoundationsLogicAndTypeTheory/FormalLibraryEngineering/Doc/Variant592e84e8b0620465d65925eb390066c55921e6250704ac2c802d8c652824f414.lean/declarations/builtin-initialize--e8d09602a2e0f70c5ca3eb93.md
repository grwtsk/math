# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b27fcbf2e69d1ad24b6671ac703cf55d2ca71887f78363ba400491ea63ec7b9",
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
  "slug": "builtin-initialize--e8d09602a2e0f70c5ca3eb93",
  "source": {
    "blob": "6d1de49262b0e93de41c35059c8524ffb07218fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8d09602a2e0f70c5ca3eb93f115ce7c2536f55b6f3e1f8e1fa37b92783f7c8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b27fcbf2e69d1ad24b6671ac703cf55d2ca71887f78363ba400491ea63ec7b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let name := `tactic_alt
  registerBuiltinAttribute {
    name := name,
    ref := by exact decl_name%,
    add := fun decl stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      unless ((← getEnv).getModuleIdxFor? decl).isNone do
        throwAttrDeclInImportedModule name decl
      let `(«tactic_alt»|tactic_alt $tgt) := stx
        | throwError "Invalid `[{name}]` attribute syntax"

      let tgtName ← Lean.Elab.realizeGlobalConstNoOverloadWithInfo tgt
      recordExtraModUseFromDecl (isMeta := false) tgtName

      if !(isTactic (← getEnv) tgtName) then throwErrorAt tgt "`{tgtName}` is not a tactic"
      -- If the target is a known syntax kind, ensure that it's a tactic
      let mut cats := #[]
      for (catName, cat) in parserExtension.getState (← getEnv) |>.categories do
        if cat.kinds.contains decl then cats := cats.push catName
      if !cats.isEmpty && cats.all (· ≠ `tactic) then
        let catNames := cats.map fun c => m!"`{c}`"
        let s := if catNames.size > 1 then m!"ies" else m!"y"
        throwError "`{decl}` is not a tactic (it is in the categor{s} {.andList catNames.toList})"

      if let some tgt' := alternativeOfTactic (← getEnv) tgtName then
        throwError "`{tgtName}` is itself an alternative for `{tgt'}`"
      modifyEnv fun env => tacticAlternativeExt.addEntry env (decl, tgtName)

    descr :=
      "Register a tactic parser as an alternative form of an existing tactic, so they " ++
      "can be grouped together in documentation.",
    -- This runs prior to elaboration because it allows a check for whether the decl is present
    -- in the environment to determine whether we can see if it's a tactic name. This is useful
    -- when the attribute is applied after definition, using an `attribute` command (error checking
    -- for the `@[tactic_alt TAC]` syntax is performed by the parser attribute hook). If this
    -- attribute ran later, then the decl would already be present.
    applicationTime := .afterCompilation --.beforeElaboration
  }


/--
The known tactic tags that allow tactics to be grouped by purpose.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1de49262b0e93de41c35059c8524ffb07218fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
