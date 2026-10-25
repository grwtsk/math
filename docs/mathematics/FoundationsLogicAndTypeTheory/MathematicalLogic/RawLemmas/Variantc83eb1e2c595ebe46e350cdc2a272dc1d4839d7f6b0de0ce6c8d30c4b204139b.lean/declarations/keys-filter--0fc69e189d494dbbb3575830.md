# keys_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9edfee77-09b6-b22d-08eb-daa35bb1d500",
  "kind": "theorem",
  "lexical_name": "keys_filter",
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
  "slug": "keys-filter--0fc69e189d494dbbb3575830",
  "source": {
    "blob": "88edaba28e5ebf2aa594debeac940d2e56bf11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5000,
    "line": 4992,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc69e189d494dbbb3575830fe180d0273d7f706304886e3af9c0928366f5664",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9edfee77-09b6-b22d-08eb-daa35bb1d500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4992–5000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem keys_filter [EquivBEq α] [LawfulHashable α] {f : α → β → Bool} (h : m.1.WF):
    (m.filter f).1.keys.Perm
      (m.1.keys.attach.filter (fun ⟨x, h'⟩ => f x (get m x (contains_of_mem_keys m h h')))).unattach := by
  simp_to_model [keys, filter, Equiv, Const.get]
  rw [List.attach_congr Raw.keys_eq_keys_toListModel]
  rw [List.Const.keys_filter (Raw.WF.out h).distinct]
  simp only [List.filter_map, Function.comp_def, List.unattach, List.map_map]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean#L4992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edaba28e5ebf2aa594debeac940d2e56bf11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
