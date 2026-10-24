# ball_eq_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a201e0bc4fc8412b18b6f3f6ca5fce0131d6d26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3ef8bf4-8271-ff5d-5dc2-8c79a2876a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85ca4dc7-da1d-dd54-d867-333dfce18d4b",
  "kind": "lemma",
  "lexical_name": "ball_eq_of_mem",
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
  "slug": "ball-eq-of-mem--bef671b38aa9e3936df822b7",
  "source": {
    "blob": "9a201e0bc4fc8412b18b6f3f6ca5fce0131d6d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef671b38aa9e3936df822b7a65ad948eecdc5bcc4f355171d9f97cdc469e9e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ca4dc7-da1d-dd54-d867-333dfce18d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ball_eq_of_mem {V : SetRel X X} [V.IsSymm] [V.IsTrans] {x y : X} (hy : y ∈ ball x V) :
    ball x V = ball y V := by
  refine le_antisymm (ball_subset_of_mem ?_) (ball_subset_of_mem hy)
  rwa [← mem_ball_symmetry]

variable [UniformSpace X]

variable (X) in
/-- A uniform space is ultrametric if the uniformity `𝓤 X` has a basis of equivalence relations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a201e0bc4fc8412b18b6f3f6ca5fce0131d6d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
