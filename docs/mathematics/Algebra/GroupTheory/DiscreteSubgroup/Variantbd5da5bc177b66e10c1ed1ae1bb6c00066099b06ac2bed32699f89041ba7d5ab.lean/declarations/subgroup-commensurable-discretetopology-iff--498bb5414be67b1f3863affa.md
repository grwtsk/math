# Subgroup.Commensurable.discreteTopology_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4baf174a506c31f866a00201f89f2a7c212aed08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f7f3221-a1f2-1695-dad9-c50a4cf0bf27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5f338dd-cf26-ef53-ea2a-526a5279986e",
  "kind": "lemma",
  "lexical_name": "Subgroup.Commensurable.discreteTopology_iff",
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
  "slug": "subgroup-commensurable-discretetopology-iff--498bb5414be67b1f3863affa",
  "source": {
    "blob": "4baf174a506c31f866a00201f89f2a7c212aed08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:498bb5414be67b1f3863affa14bd7c6d3432462e0d701102c37f174b1840c888",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5f338dd-cf26-ef53-ea2a-526a5279986e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.Commensurable.discreteTopology_iff
    {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G]
    {H K : Subgroup G} (h : Commensurable H K) :
    DiscreteTopology H ↔ DiscreteTopology K :=
  calc DiscreteTopology H ↔ DiscreteTopology ↑(H ⊓ K) :=
    haveI : IsFiniteRelIndex (H ⊓ K) H := ⟨Subgroup.inf_relIndex_left H K ▸ h.2.relIndex_ne_zero⟩
    (Subgroup.discreteTopology_iff_of_isFiniteRelIndex inf_le_left).symm
  _ ↔ DiscreteTopology K :=
    haveI : IsFiniteRelIndex (H ⊓ K) K := ⟨Subgroup.inf_relIndex_right H K ▸ h.1.relIndex_ne_zero⟩
    Subgroup.discreteTopology_iff_of_isFiniteRelIndex inf_le_right
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4baf174a506c31f866a00201f89f2a7c212aed08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
