# hasFDerivAt_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6520cf3a25b197e803f61ec3e8fa00be5c877893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83a54b0d-bc36-61a7-5b27-43a59045bc28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72cdbf66-a52d-2990-7d62-1b962a1bd94f",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_inversion",
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
  "slug": "hasfderivat-inversion--b4cddd1b20a4307300d12806",
  "source": {
    "blob": "6520cf3a25b197e803f61ec3e8fa00be5c877893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4cddd1b20a4307300d128063758a0ce1f2cec81d5e5f58b82c40421ca129a9c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cdbf66-a52d-2990-7d62-1b962a1bd94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_inversion (hx : x ≠ c) :
    HasFDerivAt (inversion c R)
      ((R / dist x c) ^ 2 • (reflection (ℝ ∙ (x - c))ᗮ : F →L[ℝ] F)) x := by
  rcases add_left_surjective c x with ⟨x, rfl⟩
  have : HasFDerivAt (inversion c R) (_ : F →L[ℝ] F) (c + x)
  · simp_rw [inversion, dist_eq_norm, div_pow, div_eq_mul_inv]
    have A := (hasFDerivAt_id (𝕜 := ℝ) (c + x)).sub_const c
    have B := ((hasDerivAt_inv <| by simpa using hx).comp_hasFDerivAt _ A.norm_sq).const_mul
      (R ^ 2)
    exact (B.smul A).add_const c
  refine this.congr_fderiv (LinearMap.ext_on_codisjoint
    (Submodule.isCompl_orthogonal_of_completeSpace (K := ℝ ∙ x)).codisjoint
    (LinearMap.eqOn_span' ?_) fun y hy ↦ ?_)
  · have : ((‖x‖ ^ 2) ^ 2)⁻¹ * (‖x‖ ^ 2) = (‖x‖ ^ 2)⁻¹
    · rw [← div_eq_inv_mul, sq (‖x‖ ^ 2), div_self_mul_self']
    simp [reflection_orthogonalComplement_singleton_eq_neg, real_inner_self_eq_norm_sq,
      two_mul, this, div_eq_mul_inv, mul_add, add_smul, mul_pow]
  · simp [Submodule.mem_orthogonal_singleton_iff_inner_right.1 hy,
      reflection_mem_subspace_eq_self hy, div_eq_mul_inv, mul_pow]

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6520cf3a25b197e803f61ec3e8fa00be5c877893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
