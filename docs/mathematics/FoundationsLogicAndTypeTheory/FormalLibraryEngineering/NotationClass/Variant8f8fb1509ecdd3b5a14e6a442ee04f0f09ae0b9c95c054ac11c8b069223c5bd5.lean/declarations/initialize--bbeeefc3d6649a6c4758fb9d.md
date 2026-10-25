# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3ddbd0f6fc988a7073b0d6fef71d7285faefb26a28cf12edb9698fffda5a322",
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
  "slug": "initialize--bbeeefc3d6649a6c4758fb9d",
  "source": {
    "blob": "1d326fad8cb73813585b8a2f84aedca1749e3d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbeeefc3d6649a6c4758fb9d9d08743389e323656dfd8972a2512b0a75bcde17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3ddbd0f6fc988a7073b0d6fef71d7285faefb26a28cf12edb9698fffda5a322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize notationClassAttr : NameMapExtension AutomaticProjectionData ← do
  let ext ← registerNameMapExtension AutomaticProjectionData
  registerBuiltinAttribute {
    name := `notation_class
    descr := "An attribute specifying that this is a notation class. Used by @[simps]."
    add := fun src stx _kind => do
      unless isStructure (← getEnv) src do
        throwError "@[notation_class] attribute can only be added to classes."
      match stx with
      | `(attr|notation_class $[*%$coercion]? $[$projName?]? $[$findArgs?]?) => do
        let projName ← match projName? with
          | none => pure (getStructureFields (← getEnv) src)[0]!
          | some projName => pure projName.getId
        let findArgs := if findArgs?.isSome then findArgs?.get!.getId else `Simps.defaultfindArgs
        match (← getEnv).find? findArgs with
        | none => throwError "no such declaration {findArgs}"
        | some declInfo =>
          unless ← MetaM.run' <| isDefEq declInfo.type q(findArgType) do
            throwError "declaration {findArgs} has wrong type"
        ext.add projName ⟨src, coercion.isNone, findArgs⟩
      | _ => throwUnsupportedSyntax }
  return ext

end Simps
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d326fad8cb73813585b8a2f84aedca1749e3d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
