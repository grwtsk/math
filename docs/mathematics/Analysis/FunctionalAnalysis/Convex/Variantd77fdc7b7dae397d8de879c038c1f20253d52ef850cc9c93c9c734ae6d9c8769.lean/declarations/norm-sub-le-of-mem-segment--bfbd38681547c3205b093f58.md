# norm_sub_le_of_mem_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45cff4aebae83638a2790b3f32718d471f720110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c9c6c22-ee67-b694-c51b-ba7b15d88782",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb91136a-05eb-bfe1-f8f5-f4c245984851",
  "kind": "lemma",
  "lexical_name": "norm_sub_le_of_mem_segment",
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
  "slug": "norm-sub-le-of-mem-segment--bfbd38681547c3205b093f58",
  "source": {
    "blob": "45cff4aebae83638a2790b3f32718d471f720110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfbd38681547c3205b093f589e56000ccc1b62e9151ab2fbad9d88ebf227c76c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb91136a-05eb-bfe1-f8f5-f4c245984851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_le_of_mem_segment {x y z : E} (hy : y ∈ segment ℝ x z) :
    ‖y - x‖ ≤ ‖z - x‖ := by
  rw [segment_eq_image'] at hy
  simp only [mem_image, mem_Icc] at hy
  obtain ⟨u, ⟨hu_nonneg, hu_le_one⟩, rfl⟩ := hy
  simp only [add_sub_cancel_left, norm_smul, Real.norm_eq_abs]
  rw [abs_of_nonneg hu_nonneg]
  conv_rhs => rw [← one_mul (‖z - x‖)]
  gcongr

end SeminormedAddCommGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45cff4aebae83638a2790b3f32718d471f720110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
