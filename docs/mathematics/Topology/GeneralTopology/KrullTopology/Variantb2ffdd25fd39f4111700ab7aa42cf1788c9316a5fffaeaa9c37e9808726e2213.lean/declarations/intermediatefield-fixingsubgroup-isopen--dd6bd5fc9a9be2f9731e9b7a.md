# IntermediateField.fixingSubgroup_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dabde76-b557-f020-78a6-93fcc4230bb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:708e3def-6383-6ccb-dacb-87d638155bdf",
  "kind": "theorem",
  "lexical_name": "IntermediateField.fixingSubgroup_isOpen",
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
  "slug": "intermediatefield-fixingsubgroup-isopen--dd6bd5fc9a9be2f9731e9b7a",
  "source": {
    "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd6bd5fc9a9be2f9731e9b7ac30e2dbefc07c21834788b6ce1398a2cb20324e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708e3def-6383-6ccb-dacb-87d638155bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.fixingSubgroup_isOpen {K L : Type*} [Field K] [Field L] [Algebra K L]
    (E : IntermediateField K L) [FiniteDimensional K E] :
    IsOpen (E.fixingSubgroup : Set (L ≃ₐ[K] L)) := by
  have h_basis : E.fixingSubgroup.carrier ∈ galGroupBasis K L :=
    ⟨E.fixingSubgroup, ⟨E, ‹_›, rfl⟩, rfl⟩
  have h_nhd := GroupFilterBasis.mem_nhds_one (galGroupBasis K L) h_basis
  exact Subgroup.isOpen_of_mem_nhds _ h_nhd
#align intermediate_field.fixing_subgroup_is_open IntermediateField.fixingSubgroup_isOpen

/-- Given a tower of fields `L/E/K`, with `E/K` finite, the subgroup `Gal(L/E) ≤ L ≃ₐ[K] L` is
  closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa2e693e3125639c857d33a190d84f73a2d5559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
