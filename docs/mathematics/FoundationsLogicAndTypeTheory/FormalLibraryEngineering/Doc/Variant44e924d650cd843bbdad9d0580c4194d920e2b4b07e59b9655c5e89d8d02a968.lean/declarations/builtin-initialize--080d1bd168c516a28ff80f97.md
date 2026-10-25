# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8bbde1060c1053816bcaf66873292ad97581b54df58cbb3540b0a10b083bc4c",
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
  "slug": "builtin-initialize--080d1bd168c516a28ff80f97",
  "source": {
    "blob": "219f9e2eeab9789c937c230482f515a5bc3d5275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:080d1bd168c516a28ff80f974eb97a2f207c1d5ab9fb54faf57f298609ef7cb9",
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

Occurrence: `declaration:c8bbde1060c1053816bcaf66873292ad97581b54df58cbb3540b0a10b083bc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let name := `tactic_tag
  registerBuiltinAttribute {
    name := name,
    ref := by exact decl_name%,
    add := fun decl stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let `(«tactic_tag»|tactic_tag $tags*) := stx
        | throwError "Invalid `[{name}]` attribute syntax"

      if (← getEnv).find? decl |>.isSome then
        if !(isTactic (← getEnv) decl) then
          throwErrorAt stx "`{.ofConstName decl}` is not a tactic"

      if let some tgt' := alternativeOfTactic (← getEnv) decl then
        throwErrorAt stx "`{.ofConstName decl}` is an alternative form of `{.ofConstName tgt'}`"

      for t in tags do
        let tagName := t.getId
        if let some _ ← tagInfo tagName then
          modifyEnv (tacticTagExt.addEntry · (decl, tagName))
        else
          let all ← allTags
          let extra : MessageData :=
              let count := all.length
              let name := (m!"`{·}`")
              let suggestions :=
                if count == 0 then m!"(no tags defined)"
                else if count == 1 then
                  MessageData.joinSep (all.map name) ", "
                else if count < 10 then
                  m!"one of " ++ MessageData.joinSep (all.map name) ", "
                else
                  m!"one of " ++
                  MessageData.joinSep (all.take 10 |>.map name) ", " ++ ", ..."
              m!"(expected {suggestions})"

          throwErrorAt t (m!"Unknown tag `{tagName}` " ++ extra)
    descr := "Register a tactic parser as an alternative of an existing tactic, so they can be " ++
      "grouped together in documentation.",
    -- This runs prior to elaboration because it allows a check for whether the decl is present
    -- in the environment to determine whether we can see if it's a tactic name. This is useful
    -- when the attribute is applied after definition, using an `attribute` command (error checking
    -- for the `@[tactic_tag ...]` syntax is performed by the parser attribute hook). If this
    -- attribute ran later, then the decl would already be present.
    applicationTime := .beforeElaboration
  }

/--
Extensions to tactic documentation.

This provides a structured way to indicate that an extensible tactic has been extended (for
instance, new cases tried by `trivial`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant44e924d650cd843bbdad9d0580c4194d920e2b4b07e59b9655c5e89d8d02a968.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219f9e2eeab9789c937c230482f515a5bc3d5275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
