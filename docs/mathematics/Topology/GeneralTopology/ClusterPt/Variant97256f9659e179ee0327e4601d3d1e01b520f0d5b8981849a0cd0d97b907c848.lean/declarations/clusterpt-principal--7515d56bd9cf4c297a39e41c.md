# clusterPt_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32d060a7d214ef1af4f7a3826a5690059e1aa183",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80fae56e-519e-b94f-824f-9f5496944542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94de94c7-c9b9-5927-e540-86f5210ff62f",
  "kind": "theorem",
  "lexical_name": "clusterPt_principal",
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
  "slug": "clusterpt-principal--7515d56bd9cf4c297a39e41c",
  "source": {
    "blob": "32d060a7d214ef1af4f7a3826a5690059e1aa183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7515d56bd9cf4c297a39e41cf2cdb3c0645865fc64c7ae2e7402ed9711475703",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94de94c7-c9b9-5927-e540-86f5210ff62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clusterPt_principal {x : X} {C : Set X} :
    ClusterPt x (𝓟 C) ↔ x ∈ C ∨ AccPt x (𝓟 C) := by
  constructor
  · intro h
    by_contra! hc
    rw [accPt_principal_iff_clusterPt] at hc
    simp_all only [not_false_eq_true, sdiff_singleton_eq_self, not_true_eq_false, hc.1]
  · rintro (h | h)
    · exact clusterPt_principal_iff.mpr fun _ mem ↦ ⟨x, ⟨mem_of_mem_nhds mem, h⟩⟩
    · exact h.clusterPt

/-- The set of cluster points of a filter is closed. In particular, the set of limit points
of a sequence is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d060a7d214ef1af4f7a3826a5690059e1aa183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
