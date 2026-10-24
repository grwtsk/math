# weightedHamming_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "346936d4cc8b82ff10777c43859cd99dc6426362",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:845d91a5-2243-a510-1eb3-b56c723ff887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0e42bec-2f87-1ded-abc1-4f59d3891c0a",
  "kind": "theorem",
  "lexical_name": "weightedHamming_symmetric",
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
  "slug": "weightedhamming-symmetric--c97f931e00952433544badeb",
  "source": {
    "blob": "346936d4cc8b82ff10777c43859cd99dc6426362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c97f931e00952433544badeb35219b3b448dfd7d966d0649b5af267869781ad0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e42bec-2f87-1ded-abc1-4f59d3891c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedHamming_symmetric
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) :
    weightedHamming weights left right =
      weightedHamming weights right left := by
  unfold weightedHamming
  apply Finset.sum_congr rfl
  intro coordinate _
  by_cases same : left coordinate = right coordinate
  · rw [if_pos same, if_pos same.symm]
  · have reverse : right coordinate ≠ left coordinate := Ne.symm same
    rw [if_neg same, if_neg reverse]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346936d4cc8b82ff10777c43859cd99dc6426362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
