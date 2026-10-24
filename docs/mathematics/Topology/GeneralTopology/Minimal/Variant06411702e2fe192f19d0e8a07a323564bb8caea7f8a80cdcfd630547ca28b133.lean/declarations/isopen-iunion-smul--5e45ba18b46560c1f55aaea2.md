# IsOpen.iUnion_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c29a7f2fce92e00a0c7eee3390403090cfa1813b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f315fc8c-3f43-e4ab-74fa-3d06d6235a28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74fa8900-37c1-655c-239b-de5f11013e98",
  "kind": "theorem",
  "lexical_name": "IsOpen.iUnion_smul",
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
  "slug": "isopen-iunion-smul--5e45ba18b46560c1f55aaea2",
  "source": {
    "blob": "c29a7f2fce92e00a0c7eee3390403090cfa1813b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e45ba18b46560c1f55aaea2af3e8af4a25c1521107782683ed40f0498adf131",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74fa8900-37c1-655c-239b-de5f11013e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.iUnion_smul [IsMinimal G α] {U : Set α} (hUo : IsOpen U) (hne : U.Nonempty) :
    ⋃ g : G, g • U = univ :=
  iUnion_eq_univ_iff.2 fun x ↦
    let ⟨g, hg⟩ := hUo.exists_smul_mem G x hne
    ⟨g⁻¹, _, hg, inv_smul_smul _ _⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c29a7f2fce92e00a0c7eee3390403090cfa1813b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
