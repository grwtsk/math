# _root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.IsNilpotent.isTopologicallyNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a717cab-2feb-f1d1-a8ba-96b82b6a82f1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.IsNilpotent.isTopologicallyNilpotent",
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
  "slug": "root-grwtsk-topology-generaltopology-istopologicallynilpotent-variant3da--63ee7c498ff9b31bec22b624",
  "source": {
    "blob": "d2cddf0e05fddaab8cfb22faca8ff245d01e3623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ee7c498ff9b31bec22b6246184e22e7ee1172cfa9ee830799423a543fbe5a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a717cab-2feb-f1d1-a8ba-96b82b6a82f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.IsNilpotent.isTopologicallyNilpotent {a : R} (ha : IsNilpotent a) :
    IsTopologicallyNilpotent a := by
  obtain ⟨n, hn⟩ := ha
  apply tendsto_atTop_of_eventually_const (i₀ := n)
  intro i hi
  rw [← Nat.add_sub_of_le hi, pow_add, hn, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cddf0e05fddaab8cfb22faca8ff245d01e3623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
