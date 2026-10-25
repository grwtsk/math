# callHierarchyItemOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34c94f0b9a7ac9865fb2bee9a18634f669f00029e627911e2d9d7c8b7596043b",
  "kind": "def",
  "lexical_name": "callHierarchyItemOf?",
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
  "slug": "callhierarchyitemof--12f2f0cacafa58fbeaf348d0",
  "source": {
    "blob": "fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 993,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12f2f0cacafa58fbeaf348d022f5d7a6dae1b74c8d59c866409f3fa1974df005",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34c94f0b9a7ac9865fb2bee9a18634f669f00029e627911e2d9d7c8b7596043b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def callHierarchyItemOf?
    (refs  : References)
    (ident : RefIdent)
    : Option CallHierarchyItem := do
  let some ⟨definitionLocation, definitionModule, parentDecl?⟩ := refs.definitionOf? ident
    | none

  match ident with
  | .const definitionModule definitionNameString =>
    let definitionName := definitionNameString.toName
    -- If we have a constant with a proper name, use it.
    -- If `callHierarchyItemOf?` is used either on the name of a definition itself or e.g. an
    -- `inductive` constructor, this is the right thing to do and using the parent decl is
    -- the wrong thing to do.

    -- Remove private header from name
    let label := Lean.privateToUserName? definitionName |>.getD definitionName
    return {
      name           := label.toString
      kind           := SymbolKind.constant
      uri            := definitionLocation.uri
      range          := definitionLocation.range,
      selectionRange := definitionLocation.range
      data?          := toJson {
        module := definitionModule.toName
        name   := definitionName
        : CallHierarchyItemData
      }
    }
  | _ =>
    let some ⟨parentDeclNameString, parentDeclRange, parentDeclSelectionRange⟩ := parentDecl?
      | none
    let parentDeclName := parentDeclNameString.toName

    -- Remove private header from name
    let label := Lean.privateToUserName? parentDeclName |>.getD parentDeclName

    some {
      name           := label.toString
      kind           := SymbolKind.constant
      uri            := definitionLocation.uri
      range          := parentDeclRange,
      selectionRange := parentDeclSelectionRange
      data?          := toJson {
        -- Assumption: The parent declaration of a reference lives in the same module
        -- as the reference.
        module := definitionModule
        name   := parentDeclName
        : CallHierarchyItemData
      }
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
