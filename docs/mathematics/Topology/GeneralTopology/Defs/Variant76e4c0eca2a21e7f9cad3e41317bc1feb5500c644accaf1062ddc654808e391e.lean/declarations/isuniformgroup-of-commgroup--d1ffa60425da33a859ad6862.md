# isUniformGroup_of_commGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15215778-d096-107d-b3b7-85db298eb399",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:914fb4ff-377f-2434-25ce-e3d79ffa04ac",
  "kind": "theorem",
  "lexical_name": "isUniformGroup_of_commGroup",
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
  "slug": "isuniformgroup-of-commgroup--d1ffa60425da33a859ad6862",
  "source": {
    "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 456,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ffa60425da33a859ad68621094e891d9a163c2cbe247c98880d09b3233f95c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:914fb4ff-377f-2434-25ce-e3d79ffa04ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformGroup_of_commGroup : IsUniformGroup G := by
  constructor
  simp only [UniformContinuous, uniformity_prod_eq_prod, uniformity_eq_comap_nhds_one',
    tendsto_comap_iff, tendsto_map'_iff, prod_comap_comap_eq, Function.comp_def,
    div_div_div_comm _ (Prod.snd (Prod.snd _)), ← nhds_prod_eq]
  exact (continuous_div'.tendsto' 1 1 (div_one 1)).comp tendsto_comap

@[deprecated (since := "2025-02-28")]
alias comm_topologicalAddGroup_is_uniform := isUniformAddGroup_of_addCommGroup
@[to_additive existing, deprecated (since := "2025-02-28")]
alias comm_topologicalGroup_is_uniform := isUniformGroup_of_commGroup
@[deprecated (since := "2025-03-30")]
alias uniformAddGroup_of_addCommGroup := isUniformAddGroup_of_addCommGroup
@[to_additive existing, deprecated (since := "2025-03-30")]
alias uniformGroup_of_commGroup := isUniformGroup_of_commGroup

open Set

end

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41088304a01c153a6b2f5d068d2c01d06921887b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
