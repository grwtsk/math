# Subgroup.discreteTopology_iff_of_finiteIndex

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
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ce12f7a-9063-2759-aa74-acca8450f1b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e8c7855-acc2-4fb4-4be2-86b4ca3ba168",
  "kind": "lemma",
  "lexical_name": "Subgroup.discreteTopology_iff_of_finiteIndex",
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
  "slug": "subgroup-discretetopology-iff-of-finiteindex--a3f8b6bb16c3b2e8de1b8095",
  "source": {
    "blob": "4baf174a506c31f866a00201f89f2a7c212aed08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3f8b6bb16c3b2e8de1b8095afb7e15f7852446358c7805a9109af3d758f0fb7",
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

Occurrence: `result:6e8c7855-acc2-4fb4-4be2-86b4ca3ba168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.discreteTopology_iff_of_finiteIndex {H : Subgroup G} [H.FiniteIndex] :
    DiscreteTopology H ↔ DiscreteTopology G := by
  refine ⟨fun hH ↦ ?_, fun hG ↦ inferInstance⟩
  suffices IsOpen (H : Set G) by
    rw [discreteTopology_iff_isOpen_singleton_one, isOpen_singleton_iff_nhds_eq_pure,
        ← H.coe_one, ← this.isOpenEmbedding_subtypeVal.map_nhds_eq, nhds_discrete, map_pure]
  exact H.isOpen_of_isClosed_of_finiteIndex Subgroup.isClosed_of_discreteTopology

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4baf174a506c31f866a00201f89f2a7c212aed08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
