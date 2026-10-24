# segment_inter_subset_endpoint_of_linearIndependent_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d26d802a490b557aed1c26d14a240135e024507",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:534f6975-344d-e507-a816-890a1d4fd749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a662f69-3fbf-1156-e7f4-d3187fee1960",
  "kind": "lemma",
  "lexical_name": "segment_inter_subset_endpoint_of_linearIndependent_sub",
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
  "slug": "segment-inter-subset-endpoint-of-linearindependent-sub--e31f08241ca23cb5691ba71c",
  "source": {
    "blob": "4d26d802a490b557aed1c26d14a240135e024507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 256,
    "path": "GRWTSK/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e31f08241ca23cb5691ba71c076eeb93b1b820b6d96ffe951cca6495cbeea19a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a662f69-3fbf-1156-e7f4-d3187fee1960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma segment_inter_subset_endpoint_of_linearIndependent_sub
    {c x y : E} (h : LinearIndependent 𝕜 ![x - c, y - c]) :
    [c -[𝕜] x] ∩ [c -[𝕜] y] ⊆ {c} := by
  intro z ⟨hzt, hzs⟩
  rw [segment_eq_image, mem_image] at hzt hzs
  rcases hzt with ⟨p, ⟨p0, p1⟩, rfl⟩
  rcases hzs with ⟨q, ⟨q0, q1⟩, H⟩
  have Hx : x = (x - c) + c := by abel
  have Hy : y = (y - c) + c := by abel
  rw [Hx, Hy, smul_add, smul_add] at H
  have : c + q • (y - c) = c + p • (x - c) := by
    convert H using 1 <;> simp [sub_smul]
  obtain ⟨rfl, rfl⟩ : p = 0 ∧ q = 0 := h.eq_zero_of_pair' ((add_right_inj c).1 this).symm
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d26d802a490b557aed1c26d14a240135e024507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
