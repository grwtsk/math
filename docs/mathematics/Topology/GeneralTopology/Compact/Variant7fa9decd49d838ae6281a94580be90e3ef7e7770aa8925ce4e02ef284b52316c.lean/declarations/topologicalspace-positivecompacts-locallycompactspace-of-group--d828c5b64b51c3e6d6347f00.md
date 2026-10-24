# TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac64d492920fcefe9be4e7f54b66f8afc9046751",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cd48411-7ebd-0fdc-424d-076eafd07bba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8abea6d4-8009-4d66-87d4-adaaa11e1894",
  "kind": "theorem",
  "lexical_name": "TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group",
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
  "slug": "topologicalspace-positivecompacts-locallycompactspace-of-group--d828c5b64b51c3e6d6347f00",
  "source": {
    "blob": "ac64d492920fcefe9be4e7f54b66f8afc9046751",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d828c5b64b51c3e6d6347f00cbcc5c0f69a4103d5ea261665e84b2dac635cdc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abea6d4-8009-4d66-87d4-adaaa11e1894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group [T2Space G]
    (K : PositiveCompacts G) : LocallyCompactSpace G := by
  refine' locally_compact_of_compact_nhds fun x => _
  obtain ⟨y, hy⟩ := K.interior_nonempty
  let F := Homeomorph.mulLeft (x * y⁻¹)
  refine' ⟨F '' K, _, K.isCompact.image F.continuous⟩
  suffices F.symm ⁻¹' K ∈ 𝓝 x by
    convert this using 1
    apply Equiv.image_eq_preimage
  apply ContinuousAt.preimage_mem_nhds F.symm.continuous.continuousAt
  have : F.symm x = y := by simp only [Homeomorph.mulLeft_symm, mul_inv_rev,
      inv_inv, Homeomorph.coe_mulLeft, inv_mul_cancel_right]
  rw [this]
  exact mem_interior_iff_mem_nhds.1 hy
#align topological_space.positive_compacts.locally_compact_space_of_group TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group
#align topological_space.positive_compacts.locally_compact_space_of_add_group TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_addGroup

end

section Quotient

variable [Group G] [TopologicalSpace G] [TopologicalGroup G] {Γ : Subgroup G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac64d492920fcefe9be4e7f54b66f8afc9046751` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
