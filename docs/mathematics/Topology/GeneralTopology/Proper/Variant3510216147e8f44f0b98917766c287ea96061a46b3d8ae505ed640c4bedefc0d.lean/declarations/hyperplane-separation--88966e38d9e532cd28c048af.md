# hyperplane_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5994320a-51d2-e6e4-39d1-8088fb6809d9",
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
  "slug": "hyperplane-separation--88966e38d9e532cd28c048af",
  "source": {
    "blob": "6080340f70cd69be33961b20818715f42216e76b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88966e38d9e532cd28c048af36b9ce3fdbce1aaa40ef3ff97bb7c435eaf2a5ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5994320a-51d2-e6e4-39d1-8088fb6809d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hyperplane_separation (K : ProperCone ℝ E) {f : E →L[ℝ] F} {b : F} :
    b ∈ K.map f ↔ ∀ y : F, adjoint f y ∈ K.dual → 0 ≤ ⟪y, b⟫_ℝ :=
  Iff.intro
    (by
      -- suppose `b ∈ K.map f`
      simp only [ProperCone.mem_map, ProperCone.mem_dual, adjoint_inner_right,
        ConvexCone.mem_closure, mem_closure_iff_seq_limit]
      -- there is a sequence `seq : ℕ → F` in the image of `f` that converges to `b`
      rintro ⟨seq, hmem, htends⟩ y hinner
      suffices h : ∀ n, 0 ≤ ⟪y, seq n⟫_ℝ;
      exact
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
      obtain ⟨y, hxy, hyb⟩ :=
        ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem _ (K.map f).nonempty
          (K.map f).isClosed h
      -- the rest of the proof is a straightforward algebraic manipulation
      refine' ⟨y, _, hyb⟩
      simp_rw [ProperCone.mem_dual, adjoint_inner_right]
      intro x hxK
      apply hxy (f x)
      rw [ProperCone.coe_map]
      apply subset_closure
      rw [SetLike.mem_coe, ConvexCone.mem_map]
      refine' ⟨x, hxK, by rw [coe_coe]⟩)
#align proper_cone.hyperplane_separation ProperCone.hyperplane_separation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6080340f70cd69be33961b20818715f42216e76b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
