# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2be58bbb778136ae9d1922c39ef307e648e2409c2834083e971dbf1954876452",
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
  "slug": "builtin-initialize--baee58b418428c6e22bf0b3e",
  "source": {
    "blob": "0737a9bd4abd2c83c4daa25de8290b22d361fc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baee58b418428c6e22bf0b3ec528149826c9829b3b2433788e436ff99138eee5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2be58bbb778136ae9d1922c39ef307e648e2409c2834083e971dbf1954876452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize identifierSuggestionsImpl : (PersistentEnvExtension (Name × Array Name) (Name × Array Name) (NameMap NameSet)) × (PersistentEnvExtension (Name × Array Name) (Name × Array Name) (NameMap NameSet)) ←
  let existingToIncorrect ← mkExistingToIncorrect
  let incorrectToExisting ← mkIncorrectToExisting

  registerBuiltinAttribute {
    name := `suggest_for,
    descr := "suggest other (incorrect, not-existing) identifiers that someone might use when they actually want this definition",
    add (decl : Name) (stx : Syntax) (kind : AttributeKind) := do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `suggest_for kind
      let altSyntaxIds : Array Syntax ← match stx with
        | -- Attributes parsed _after_ the suggest_for notation is added
          .node _ ``suggest_for #[.atom _ "suggest_for", .node _ `null ids] => pure ids
        | -- Attributes parsed _before the suggest_for notation is added
          .node _ ``Parser.Attr.simple #[.ident _ _ `suggest_for [], .node _ `null #[id]] => pure #[id]
        | _ => throwError "Invalid `[suggest_for]` attribute syntax {repr stx}"
      if isPrivateName decl then
        throwError "Cannot make suggestions for private names"
      let altIds := altSyntaxIds.map (·.getId)
      modifyEnv (existingToIncorrect.addEntry · (decl, altIds))
      modifyEnv (incorrectToExisting.addEntry · (decl, altIds))
  }

  return (existingToIncorrect, incorrectToExisting)

/--
Given a name, find all the stored correct, existing identifiers that mention that name in a
{name}`suggest_for` annotation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0737a9bd4abd2c83c4daa25de8290b22d361fc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
