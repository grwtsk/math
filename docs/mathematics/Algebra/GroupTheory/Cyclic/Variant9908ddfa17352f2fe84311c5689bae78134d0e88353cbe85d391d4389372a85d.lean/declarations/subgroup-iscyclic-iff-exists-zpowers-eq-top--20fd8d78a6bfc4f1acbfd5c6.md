# Subgroup.isCyclic_iff_exists_zpowers_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:679763fc-d464-1424-486e-46ef93d2b1c8",
  "kind": "theorem",
  "lexical_name": "Subgroup.isCyclic_iff_exists_zpowers_eq_top",
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
  "slug": "subgroup-iscyclic-iff-exists-zpowers-eq-top--20fd8d78a6bfc4f1acbfd5c6",
  "source": {
    "blob": "b89e4da55d2036fd260491c8c88db2cab4773869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20fd8d78a6bfc4f1acbfd5c6307c4f2f0cd881682688495dc25a9dc3f2cdab1a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679763fc-d464-1424-486e-46ef93d2b1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Subgroup.isCyclic_iff_exists_zpowers_eq_top [Group α] (H : Subgroup α) :
    IsCyclic H ↔ ∃ g : α, Subgroup.zpowers g = H := by
  rw [isCyclic_iff_exists_zpowers_eq_top]
  simp_rw [← (map_injective H.subtype_injective).eq_iff, ← MonoidHom.range_eq_map,
    H.range_subtype, MonoidHom.map_zpowers, Subtype.exists, coe_subtype, exists_prop]
  exact exists_congr fun g ↦ and_iff_right_of_imp fun h ↦ h ▸ mem_zpowers g

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b89e4da55d2036fd260491c8c88db2cab4773869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
