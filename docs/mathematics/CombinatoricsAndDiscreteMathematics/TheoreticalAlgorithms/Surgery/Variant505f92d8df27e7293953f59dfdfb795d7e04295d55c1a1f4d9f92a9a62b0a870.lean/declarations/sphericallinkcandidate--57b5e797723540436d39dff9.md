# SphericalLinkCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e03f988516a2f8db0adc88086f04d75326b537b571e12b8bbcd125b76596593c",
  "kind": "structure",
  "lexical_name": "SphericalLinkCandidate",
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
  "slug": "sphericallinkcandidate--57b5e797723540436d39dff9",
  "source": {
    "blob": "e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 371,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57b5e797723540436d39dff97ab3b55d2ff3491cb06e64800901421066633ab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e03f988516a2f8db0adc88086f04d75326b537b571e12b8bbcd125b76596593c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SphericalLinkCandidate (N : ℕ) where
  cluster : Finset (PacketAtom N)
  cluster_nonempty : cluster.Nonempty
  vertices : Finset (PacketAtom N)
  edges : Finset (Finset (PacketAtom N))
  faces : Finset (Finset (PacketAtom N))
  vertices_active : vertices ⊆ cluster
  four_le_vertices : 4 ≤ vertices.card
  edge_card : ∀ edge ∈ edges, edge.card = 2
  edge_vertices : ∀ edge ∈ edges, edge ⊆ vertices
  face_card : ∀ face ∈ faces, face.card = 3
  face_vertices : ∀ face ∈ faces, face ⊆ vertices
  face_edges : ∀ face ∈ faces, ∀ edge,
    edge ⊆ face → edge.card = 2 → edge ∈ edges
  vertices_in_faces : ∀ vertex ∈ vertices,
    ∃ face ∈ faces, vertex ∈ face
  every_edge_two_faces : ∀ edge ∈ edges,
    (faces.filter fun face ↦ edge ⊆ face).card = 2
  oneSkeleton_connected : ∀ left ∈ vertices, ∀ right ∈ vertices,
    Relation.ReflTransGen
      (fun first second ↦ {first, second} ∈ edges) left right
  euler_count : vertices.card + faces.card = edges.card + 2

/-- The candidate link is actually a subcomplex of a supplied interaction
nerve.  This prevents an unrelated tetrahedral incidence pattern from being
used as a neck witness. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
