# checkExistingType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94a95019712f5306a4093ef7dcd0942e0a6e1d6c2e8ca479a6000b20e1284a80",
  "kind": "def",
  "lexical_name": "checkExistingType",
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
  "slug": "checkexistingtype--1e1074e38b93256a4320131b",
  "source": {
    "blob": "68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1336,
    "line": 1312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e1074e38b93256a4320131b9ad8d49103c0c2ee1fb634151d9e1c2f1658f114",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94a95019712f5306a4093ef7dcd0942e0a6e1d6c2e8ca479a6000b20e1284a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1312–1336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def checkExistingType (src tgt : Name) (reorder : List (List Nat)) : MetaM Unit := do
  let mut srcDecl ← getConstInfo src
  let tgtDecl ← getConstInfo tgt
  if 0 ∈ reorder.flatten then
    srcDecl := srcDecl.updateLevelParams srcDecl.levelParams.swapFirstTwo
  unless srcDecl.levelParams.length == tgtDecl.levelParams.length do
    throwError "`to_additive` validation failed:\n  expected {srcDecl.levelParams.length} universe \
      levels, but '{tgt}' has {tgtDecl.levelParams.length} universe levels"
  -- instantiate both types with the same universes. `instantiateLevelParams` applies some
  -- normalization, so we have to apply it to both types.
  let type := srcDecl.type.instantiateLevelParams
    srcDecl.levelParams (tgtDecl.levelParams.map mkLevelParam)
  let tgtType := tgtDecl.type.instantiateLevelParams
    tgtDecl.levelParams (tgtDecl.levelParams.map mkLevelParam)
  let type ←
    applyReplacementFun <| ← reorderForall reorder <| ← expand <| ← unfoldAuxLemmas type
  -- `instantiateLevelParams` normalizes universes, so we have to normalize both expressions
  unless ← withReducible <| isDefEq type tgtType do
    throwError "`to_additive` validation failed: expected{indentExpr type}\nbut '{tgt}' has \
      type{indentExpr tgtType}"

/-- `addToAdditiveAttr src cfg` adds a `@[to_additive]` attribute to `src` with configuration `cfg`.
See the attribute implementation for more details.
It returns an array with names of additive declarations (usually 1, but more if there are nested
`to_additive` calls. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean#L1312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
