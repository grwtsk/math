# expandField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57972e59d3f86fcaf51c37714ef78737a937a13e2a3032cf3166e9b724225c41",
  "kind": "def",
  "lexical_name": "expandField",
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
  "slug": "expandfield--3b4dff8b8c4409a888bbb78c",
  "source": {
    "blob": "11e9977d9b882441b822ac0802e51bbb0b517649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1949e2e4ea8a24b9e68d8946720501bdaa3d9fbd1836719e5c276947a0023c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b4dff8b8c4409a888bbb78cae44bd8e2406fbe4043ec64b832f06e3ff0aaa3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1949e2e4ea8a24b9e68d8946720501bdaa3d9fbd1836719e5c276947a0023c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57972e59d3f86fcaf51c37714ef78737a937a13e2a3032cf3166e9b724225c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def expandField (structName : Name) (field : Name) : MetaM (Name × Name) := do
  match field with
  | .num .. | .anonymous => throwError m!"Invalid configuration field"
  | .str .anonymous fieldName => expandFieldName structName (Name.mkSimple fieldName)
  | .str field' fieldName =>
    let (field', projFn) ← expandField structName field'
    let notStructure {α} : MetaM α := throwError "Field `{field'}` of structure `{.ofConstName structName}` is not a structure"
    let .const structName' _ := (← getConstInfo projFn).type.getForallBody | notStructure
    unless isStructure (← getEnv) structName' do notStructure
    let (field'', projFn) ← expandFieldName structName' (Name.mkSimple fieldName)
    return (field' ++ field'', projFn)

/-- Elaborates a tactic configuration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1949e2e4ea8a24b9e68d8946720501bdaa3d9fbd1836719e5c276947a0023c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1949e2e4ea8a24b9e68d8946720501bdaa3d9fbd1836719e5c276947a0023c84.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e9977d9b882441b822ac0802e51bbb0b517649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
