# expandDeclId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b771e4bbcb3a98882747bd3aaa9feb09b8e61223b9c8c8422eb5c303795c988b",
  "kind": "def",
  "lexical_name": "expandDeclId",
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
  "slug": "expanddeclid--6ed14e27e3119ae5abcfb59e",
  "source": {
    "blob": "5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ed14e27e3119ae5abcfb59e35d1f0df879a7959d2c8fbd5da5f452c7e54bf26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b771e4bbcb3a98882747bd3aaa9feb09b8e61223b9c8c8422eb5c303795c988b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandDeclId (currNamespace : Name) (currLevelNames : List Name) (declId : Syntax) (modifiers : Modifiers) : TermElabM ExpandDeclIdResult := do
  -- ident >> optional (".{" >> sepBy1 ident ", " >> "}")
  let (shortName, optUnivDeclStx) := expandDeclIdCore declId
  let levelNames ← if optUnivDeclStx.isNone then
    pure currLevelNames
  else
    let extraLevels := optUnivDeclStx[1].getArgs.getEvenElems
    extraLevels.foldlM
      (fun levelNames idStx =>
        let id := idStx.getId
        if levelNames.elem id then
          withRef idStx <| throwAlreadyDeclaredUniverseLevel id
        else
          pure (id :: levelNames))
      currLevelNames
  let (declName, shortName) ← withRef declId <| mkDeclName currNamespace modifiers shortName
  let docString? := modifiers.docString?
  return { shortName, declName, levelNames, docString? }

end Methods

namespace Term

/--
If `attrs` contains an `@[deprecated]` attribute, runs the action with `Term.Context.checkDeprecated`
disabled, suppressing the `linter.deprecated` warning that would otherwise fire when a deprecated
constant is referenced. Otherwise, runs the action unchanged.

This implements the suppression rule from RFC #8942: deprecation warnings should not fire inside
the body of a declaration that is itself marked `@[deprecated]`, since the references will go away
along with the declaration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
