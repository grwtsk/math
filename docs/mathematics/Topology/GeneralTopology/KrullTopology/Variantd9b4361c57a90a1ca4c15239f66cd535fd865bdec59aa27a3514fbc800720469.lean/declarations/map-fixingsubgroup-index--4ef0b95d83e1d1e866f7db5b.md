# map_fixingSubgroup_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02883d57-40ed-d040-8b82-0a5e6fe30c9a",
  "kind": "theorem",
  "lexical_name": "map_fixingSubgroup_index",
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
  "slug": "map-fixingsubgroup-index--4ef0b95d83e1d1e866f7db5b",
  "source": {
    "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef0b95d83e1d1e866f7db5b026b85f8cd1ea897c560e036a5329df73a0dfc26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02883d57-40ed-d040-8b82-0a5e6fe30c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fixingSubgroup_index [Normal k E] [Normal k K] :
    (L.map (IsScalarTower.toAlgHom k E K)).fixingSubgroup.index = L.fixingSubgroup.index := by
  rw [L.map_fixingSubgroup K, L.fixingSubgroup.index_comap_of_surjective
    (AlgEquiv.restrictNormalHom_surjective _)]

variable {K} in
/-- If `K / k` is a Galois extension, `L` is an intermediate field of `K / k`, then `[L : k]`
as a natural number is equal to the index of the fixing subgroup of `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
