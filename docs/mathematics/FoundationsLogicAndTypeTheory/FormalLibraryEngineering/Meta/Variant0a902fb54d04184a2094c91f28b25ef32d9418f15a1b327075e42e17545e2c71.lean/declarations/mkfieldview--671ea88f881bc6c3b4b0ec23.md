# mkFieldView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7e98a6385c0f43c2b472632e0d36cf35b6c8d781d27f9cda3b9d59e1b19daac",
  "kind": "def",
  "lexical_name": "mkFieldView",
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
  "slug": "mkfieldview--671ea88f881bc6c3b4b0ec23",
  "source": {
    "blob": "66830d47345f4f9ed71b16815fca707d7b0606e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:671ea88f881bc6c3b4b0ec23a1bc5886751921f99bc98aa341ec394c2fc6f432",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7e98a6385c0f43c2b472632e0d36cf35b6c8d781d27f9cda3b9d59e1b19daac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def mkFieldView (stx : TSyntax ``configField) : MacroM FieldView := withRef stx do
  let `(configField|$mods:declModifiers $[$id? @]? $ids,* $bs* : $rty $[:= $val?]?) := stx
    | Macro.throwError "ill-formed configuration field declaration"
  let bvs ← expandBinders bs
  let type := mkDepArrow bvs rty
  let some id := id? <|> ids.getElems[0]?
    | Macro.throwError "expected a least one field name"
  withRef id.raw do
  let some val := val?
    | Macro.throwError "expected a default value"
  let defVal ← `(fun $(bvs.map (·.id))* => $val)
  let decl ← `(structSimpleBinder|$mods:declModifiers $id : $type := $defVal)
  return {ref := stx, mods, id, ids, type, defVal, decl? := decl}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66830d47345f4f9ed71b16815fca707d7b0606e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
