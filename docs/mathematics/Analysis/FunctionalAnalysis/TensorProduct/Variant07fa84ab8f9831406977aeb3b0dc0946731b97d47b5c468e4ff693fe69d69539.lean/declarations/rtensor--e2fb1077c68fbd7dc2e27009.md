# rTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09d1879a86e64bfe68093ade5fc74ea6e8cb5d5aab8a5f17d9f8ff143ed54d9b",
  "kind": "def",
  "lexical_name": "rTensor",
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
  "slug": "rtensor--e2fb1077c68fbd7dc2e27009",
  "source": {
    "blob": "17f075855009ed0bf9e9d2410af4603666bebdf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 478,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2fb1077c68fbd7dc2e270095a5d1e57350b8a1ea2e84929f6d05ffce744ff7b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09d1879a86e64bfe68093ade5fc74ea6e8cb5d5aab8a5f17d9f8ff143ed54d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rTensor (f : E →L[𝕜] F) : (E ⊗[𝕜] G) →L[𝕜] (F ⊗[𝕜] G) :=
  (f.toLinearMap.rTensor G).mkContinuous ‖f‖ fun x ↦ by
    /-
    Any tensor `x` can be written as a linear combination of pure tensors, `x = ∑ e n ⊗ₜ g n`. This
    induces three Gram matrices, one based on `e`, one on `f ∘ e` and one on `g`. Up to a constant,
    the `e`-based Gram matrix is larger than the `f ∘ e`-based one. This implies the existence of
    a matrix, whose form is used to show that `‖f‖ ^ 2 * ‖x‖ ^ 2 - ‖f x‖ ^ 2` is a sum of
    nonnegative terms.
    -/
    obtain ⟨n, e, g, hx⟩ := exists_sum_tmul_eq x
    obtain ⟨c, hc_supp, hc⟩ := Submodule.mem_span_set.mp
      ((span_tmul_eq_top 𝕜 E G) ▸ Submodule.mem_top (x := x))
    obtain ⟨m, A, hA⟩ := Matrix.posSemidef_iff_eq_sum_vecMulVec.mp
      (Matrix.posSemidef_opNorm_smul_gram_sub_gram e f)
    apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
    simp_rw [sub_eq_iff_eq_add', ← sub_eq_iff_eq_add, ← Matrix.ext_iff, Matrix.sub_apply,
      Matrix.smul_apply, Matrix.gram_apply, Function.comp_apply] at hA
    simp_rw [mul_pow, hx, map_sum, LinearMap.rTensor_tmul, coe_coe,
      ← inner_self_eq_norm_sq (𝕜 := 𝕜), inner_sum, sum_inner, inner_tmul, ← hA, sub_mul,
      Finset.sum_sub_distrib, map_sub, ← RCLike.smul_re, Finset.smul_sum, smul_mul_assoc,
      sub_le_self_iff, Matrix.sum_apply, mul_comm, Finset.mul_sum]
    simp_rw +singlePass [Finset.sum_comm_cycle, Matrix.vecMulVec, Matrix.of_apply, Pi.star_apply,
      ← mul_left_comm, ← mul_assoc, ← starRingEnd_self_apply (A _ _), ← inner_smul_left]
    simp [mul_comm, ← inner_smul_right, ← sum_inner, ← inner_sum, Finset.sum_nonneg]

variable {G} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f075855009ed0bf9e9d2410af4603666bebdf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
