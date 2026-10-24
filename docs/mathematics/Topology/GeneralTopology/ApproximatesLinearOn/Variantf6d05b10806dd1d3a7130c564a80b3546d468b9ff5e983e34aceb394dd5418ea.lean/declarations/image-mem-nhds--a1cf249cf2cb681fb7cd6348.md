# image_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0363d66-8a3d-3d21-492a-8e9558dbdab1",
  "kind": "theorem",
  "lexical_name": "image_mem_nhds",
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
  "slug": "image-mem-nhds--a1cf249cf2cb681fb7cd6348",
  "source": {
    "blob": "1f9108236e492e899250f2898a39cd4ed56c6690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 286,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cf249cf2cb681fb7cd63486f20b48b2b189aa3d3aec3ab417a49910b8aff90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0363d66-8a3d-3d21-492a-8e9558dbdab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_mem_nhds (hf : ApproximatesLinearOn f f' s c) (f'symm : f'.NonlinearRightInverse)
    {x : E} (hs : s ∈ 𝓝 x) (hc : Subsingleton F ∨ c < f'symm.nnnorm⁻¹) : f '' s ∈ 𝓝 (f x) := by
  obtain ⟨t, hts, ht, xt⟩ : ∃ t, t ⊆ s ∧ IsOpen t ∧ x ∈ t := _root_.mem_nhds_iff.1 hs
  have := IsOpen.mem_nhds ((hf.mono_set hts).open_image f'symm ht hc) (mem_image_of_mem _ xt)
  exact mem_of_superset this (image_subset _ hts)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantf6d05b10806dd1d3a7130c564a80b3546d468b9ff5e983e34aceb394dd5418ea.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9108236e492e899250f2898a39cd4ed56c6690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
