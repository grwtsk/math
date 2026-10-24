# farFromTriangleFree_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78bd56c8-f712-1c15-d98b-20c63ae60ce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9889ec38-4002-7507-f777-bbd5c0d6621f",
  "kind": "lemma",
  "lexical_name": "farFromTriangleFree_graph",
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
  "slug": "farfromtrianglefree-graph--7bb2a2d3d9820dd4caddb5ff",
  "source": {
    "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb2a2d3d9820dd4caddb5ff5aded4b66a57b865ad3d986a2653973c36d7d2d2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9889ec38-4002-7507-f777-bbd5c0d6621f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma farFromTriangleFree_graph [Fintype G] [DecidableEq G] (hε : ε * card G ^ 2 ≤ #A) :
    (graph <| triangleIndices A).FarFromTriangleFree (ε / 9) := by
  refine farFromTriangleFree _ ?_
  simp_rw [card_triangleIndices, mul_comm_div, Nat.cast_pow, Nat.cast_add]
  ring_nf
  simpa only [mul_comm] using hε

end Corners

variable [Fintype G]

open Corners


/-- An explicit form for the constant in the corners theorem.

Note that this depends on `SzemerediRegularity.bound`, which is a tower-type exponential. This means
`cornersTheoremBound` is in practice absolutely tiny. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168711c875fcdfc746b63bdd2af19f27542b86cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
