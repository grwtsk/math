# queryMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81da8a707003ba04e410dc4f9796d0cf3b17c8e72120c9a02fbdd9b4a3b6481d",
  "kind": "def",
  "lexical_name": "queryMap",
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
  "slug": "querymap--5f8f5a06ce7ab46a4ce9fc02",
  "source": {
    "blob": "88edaba28e5ebf2aa594debeac940d2e56bf11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f8f5a06ce7ab46a4ce9fc0268244a634b07695572dfc1ed69d9a0dcb5905502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81da8a707003ba04e410dc4f9796d0cf3b17c8e72120c9a02fbdd9b4a3b6481d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def queryMap : Std.DHashMap Name (fun _ => Name × Array (MacroM (TSyntax `term))) :=
  .ofList
    [⟨`isEmpty, (``Raw.isEmpty_eq_isEmpty, #[`(_root_.List.Perm.isEmpty_eq)])⟩,
     ⟨`contains, (``contains_eq_containsKey, #[`(containsKey_of_perm)])⟩,
     ⟨`size, (``Raw.size_eq_length, #[`(_root_.List.Perm.length_eq)])⟩,
     ⟨`get?, (``get?_eq_getValueCast?, #[`(getValueCast?_of_perm _)])⟩,
     ⟨`Const.get?, (``Const.get?_eq_getValue?, #[`(getValue?_of_perm _)])⟩,
     ⟨`Const.get, (``Const.get_eq_getValue, #[`(getValue_of_perm _)])⟩,
     ⟨`get, (``get_eq_getValueCast, #[`(getValueCast_of_perm _)])⟩,
     ⟨`get!, (``get!_eq_getValueCast!, #[`(getValueCast!_of_perm _)])⟩,
     ⟨`getD, (``getD_eq_getValueCastD, #[`(getValueCastD_of_perm _)])⟩,
     ⟨`Const.get!, (``Const.get!_eq_getValue!, #[`(getValue!_of_perm _)])⟩,
     ⟨`Const.getD, (``Const.getD_eq_getValueD, #[`(getValueD_of_perm _)])⟩,
     ⟨`getKey?, (``getKey?_eq_getKey?, #[`(getKey?_of_perm _)])⟩,
     ⟨`getKey, (``getKey_eq_getKey, #[`(getKey_of_perm _)])⟩,
     ⟨`getKeyD, (``getKeyD_eq_getKeyD, #[`(getKeyD_of_perm _)])⟩,
     ⟨`getKey!, (``getKey!_eq_getKey!, #[`(getKey!_of_perm _)])⟩,
     ⟨`getEntry, (``getEntry_eq_getEntry, #[`(getEntry_of_perm _)])⟩,
     ⟨`getEntry?, (``getEntry?_eq_getEntry?, #[`(getEntry?_of_perm _)])⟩,
     ⟨`getEntryD, (``getEntryD_eq_getEntryD, #[`(getEntryD_of_perm _)])⟩,
     ⟨`getEntry!, (``getEntry!_eq_getEntry!, #[`(getEntry!_of_perm _)])⟩,
     ⟨`all, (``Raw.all_eq_all_toListModel, #[])⟩,
     ⟨`toList, (``Raw.toList_eq_toListModel, #[])⟩,
     ⟨`Const.beq, (``Raw₀.Const.beq_eq_beqModel, #[])⟩,
     ⟨`beq, (``beq_eq_beqModel, #[])⟩,
     ⟨`keys, (``Raw.keys_eq_keys_toListModel, #[`(perm_keys_congr_left)])⟩,
     ⟨`Const.toList, (``Raw.Const.toList_eq_toListModel_map, #[`(perm_map_congr_left)])⟩,
     ⟨`foldM, (``Raw.foldM_eq_foldlM_toListModel, #[])⟩,
     ⟨`fold, (``Raw.fold_eq_foldl_toListModel, #[])⟩,
     ⟨`foldRevM, (``Raw.foldRevM_eq_foldrM_toListModel, #[])⟩,
     ⟨`foldRev, (``Raw.foldRev_eq_foldr_toListModel, #[])⟩,
     ⟨`forIn, (``Raw.forIn_eq_forIn_toListModel, #[])⟩,
     ⟨`forM, (``Raw.forM_eq_forM_toListModel, #[])⟩,
     ⟨`toArray, (``Raw.toArray_eq_toArray_toListModel, #[])⟩,
     ⟨`keysArray, (``Raw.keysArray_eq_toArray_keys_toListModel, #[])⟩,
     ⟨`Const.toArray, (``Raw.Const.toArray_eq_toArray_map_toListModel, #[])⟩,
     ⟨`Equiv, (``Raw.equiv_iff_toListModel_perm,
      #[`(_root_.List.Perm.congr_left), `(_root_.List.Perm.congr_right)])⟩]

/-- Internal implementation detail of the hash map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edaba28e5ebf2aa594debeac940d2e56bf11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
