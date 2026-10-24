# hyperplane_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b12bbaeeb3524098ba8d35019d77a1bb040b712",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d8a660c-f6f9-56e7-bb17-55ab04143150",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21a3c390-4ffb-7810-e728-507617e40731",
  "kind": "theorem",
  "lexical_name": "hyperplane_separation",
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
  "slug": "hyperplane-separation--070f8ac476b7746b55d7ab5b",
  "source": {
    "blob": "1b12bbaeeb3524098ba8d35019d77a1bb040b712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070f8ac476b7746b55d7ab5bf7dac2bc95c54b76baf14bf39813eca7acb6c2ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a3c390-4ffb-7810-e728-507617e40731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hyperplane_separation (K : ProperCone ℝ E) {f : E →L[ℝ] F} {b : F} :
    b ∈ K.map f ↔ ∀ y : F, adjoint f y ∈ K.dual → 0 ≤ ⟪y, b⟫_ℝ :=
  Iff.intro
    (by
      -- suppose `b ∈ K.map f`
      simp_rw [mem_map, PointedCone.mem_closure, PointedCone.coe_map, coe_coe,
        mem_closure_iff_seq_limit, mem_image, SetLike.mem_coe, mem_coe, mem_dual,
        adjoint_inner_right, forall_exists_index, and_imp]

      -- there is a sequence `seq : ℕ → F` in the image of `f` that converges to `b`
      rintro seq hmem htends y hinner
      suffices h : ∀ n, 0 ≤ ⟪y, seq n⟫_ℝ from
        ge_of_tendsto'
          (Continuous.seqContinuous (Continuous.inner (@continuous_const _ _ _ _ y) continuous_id)
            htends)
          h
      intro n
      obtain ⟨_, h, hseq⟩ := hmem n
      simpa only [← hseq, real_inner_comm] using hinner h)
    (by
      -- proof by contradiction
      -- suppose `b ∉ K.map f`
      intro h
      contrapose! h

      -- as `b ∉ K.map f`, there is a hyperplane `y` separating `b` from `K.map f`
      let C := PointedCone.toConvexCone (𝕜 := ℝ) (E := F) (K.map f)
      obtain ⟨y, hxy, hyb⟩ :=
        @ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_notMem
        _ _ _ _ C (K.map f).nonempty (K.map f).isClosed b h

      -- the rest of the proof is a straightforward algebraic manipulation
      refine ⟨y, ?_, hyb⟩
      simp_rw [ProperCone.mem_dual, adjoint_inner_right]
      intro x hxK
      apply hxy (f x)
      simp_rw [C, coe_map]
      apply subset_closure
      simp_rw [PointedCone.toConvexCone_map, ConvexCone.coe_map, coe_coe, mem_image,
        SetLike.mem_coe]
      exact ⟨x, hxK, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b12bbaeeb3524098ba8d35019d77a1bb040b712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
