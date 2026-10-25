# elabAuxDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae9f4420762fe2bf387f0db14a244558868a97bece85a05437a6309c1b7dd4f4",
  "kind": "def",
  "lexical_name": "elabAuxDef",
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
  "slug": "elabauxdef--8a5c8b04ac62dd3557b6ee6d",
  "source": {
    "blob": "4f1fdb576983e0405009e3834bfe55b6e8f03abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxDef/Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a5c8b04ac62dd3557b6ee6d3534e5c0f7c02756205832bb0f96fbeea8c210ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxDef/Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae9f4420762fe2bf387f0db14a244558868a97bece85a05437a6309c1b7dd4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAuxDef : CommandElab
  | `($[$doc?:docComment]? $[$attrs?:attributes]? $vis:visibility aux_def $suggestion* : $ty := $body) => do
    let id := suggestion.map (·.getId.eraseMacroScopes) |>.foldl (· ++ ·) Name.anonymous
    let id := `_aux ++ (← getMainModule) ++ `_ ++ id
    let id := String.intercalate "_" <| id.components.map (·.toString (escape := false))
    let ns ← getCurrNamespace
    -- We use a new generator here because we want more control over the name; the default would
    -- create a private name that then breaks the macro below. We assume that `aux_def` is not used
    -- with the same arguments in parallel contexts.
    let env := (← getEnv).setExporting true
    let (id, _) := DeclNameGenerator.ofPrefix ns |>.mkUniqueName env («infix» := Name.mkSimple id)
    let id := id.replacePrefix ns Name.anonymous -- TODO: replace with def _root_.id
    elabCommand <|
      ← `($[$doc?:docComment]? $[$attrs?:attributes]? $vis:visibility
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxDef/Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxDef/Variant56801f966e199fab594e14868283f8d76e7e8724c8a48fe6b68c90757cb9c50b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1fdb576983e0405009e3834bfe55b6e8f03abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
