# PreconnectedSpace.trivial_of_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e96b4e724267e55a28c0d080afa3d662cb6bd3ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 808,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29b8fe1d-471f-e7e1-d3b2-b58dd3e0ad7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f388a33-3227-9c3a-d1f4-c8fa8e1a6b79",
  "kind": "theorem",
  "lexical_name": "PreconnectedSpace.trivial_of_discrete",
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
  "slug": "preconnectedspace-trivial-of-discrete--5f03208d94c75585bcda24d7",
  "source": {
    "blob": "e96b4e724267e55a28c0d080afa3d662cb6bd3ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 808,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f03208d94c75585bcda24d791c6258d28bfa11ae2c85f6de32842e18dc677c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f388a33-3227-9c3a-d1f4-c8fa8e1a6b79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PreconnectedSpace.trivial_of_discrete [PreconnectedSpace α] [DiscreteTopology α] :
    Subsingleton α := by
  rw [← not_nontrivial_iff_subsingleton]
  rintro ⟨x, y, hxy⟩
  rw [Ne.def, ← mem_singleton_iff, (isClopen_discrete _).eq_univ <| singleton_nonempty y] at hxy
  exact hxy (mem_univ x)
#align preconnected_space.trivial_of_discrete PreconnectedSpace.trivial_of_discrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variantb38526da9fedbf4a6aa19bbc6d77e4d729490eb1148ed9f5844960bfa870656c.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96b4e724267e55a28c0d080afa3d662cb6bd3ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
