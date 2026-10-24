# HostFiberNetwork.selected_target_le_candidate_of_tension_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3f4738912b9c9c70a08bf8a98c15103c7dfa728",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1ef1e14-fe5b-5ecf-bec2-6365a1be8a31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2d9f3ba-34b7-7867-1284-ecaaac8ede55",
  "kind": "theorem",
  "lexical_name": "HostFiberNetwork.selected_target_le_candidate_of_tension_eq",
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
  "slug": "hostfibernetwork-selected-target-le-candidate-of-tension-eq--da8e1e140692a0d8842e9be9",
  "source": {
    "blob": "a3f4738912b9c9c70a08bf8a98c15103c7dfa728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 474,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8e1e140692a0d8842e9be994ec80cb713d503cefcf880aabdecdf29e57a64f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d9f3ba-34b7-7867-1284-ecaaac8ede55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HostFiberNetwork.selected_target_le_candidate_of_tension_eq
    {hostCount edgeSlots : Nat}
    (network : HostFiberNetwork hostCount edgeSlots)
    (source : Fin hostCount) (selected candidate : Fin edgeSlots)
    (hselected : network.selectOutgoingSlot source = some selected)
    (hcandidate : (network.fibers source candidate).enabled = true)
    (htension : (network.fibers source selected).tension =
      (network.fibers source candidate).tension) :
    (network.fibers source selected).target.val ≤
      (network.fibers source candidate).target.val := by
  have hrank := network.candidate_rank_le_selected source selected candidate
    hselected hcandidate
  exact le_of_not_gt fun htarget ↦
    (not_lt_of_ge hrank)
      (network.fiberRank_lt_of_target_lt source selected candidate
        htension htarget)

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f4738912b9c9c70a08bf8a98c15103c7dfa728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
