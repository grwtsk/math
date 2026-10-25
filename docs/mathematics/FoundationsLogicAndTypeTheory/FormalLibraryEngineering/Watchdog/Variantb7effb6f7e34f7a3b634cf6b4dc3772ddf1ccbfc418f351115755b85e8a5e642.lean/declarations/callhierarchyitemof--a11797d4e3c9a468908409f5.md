# callHierarchyItemOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4f8ac7834cd9b8aee59ce219554c76c3927659f867becd5cdf306ae2aff368f",
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
  "slug": "callhierarchyitemof--a11797d4e3c9a468908409f5",
  "source": {
    "blob": "dedb28154c483633b49a12d1689938209c1531c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 985,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a11797d4e3c9a468908409f506072992c8d742f204a7dd3c00dcbcb5c49d9e04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4f8ac7834cd9b8aee59ce219554c76c3927659f867becd5cdf306ae2aff368f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–1036.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedb28154c483633b49a12d1689938209c1531c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
