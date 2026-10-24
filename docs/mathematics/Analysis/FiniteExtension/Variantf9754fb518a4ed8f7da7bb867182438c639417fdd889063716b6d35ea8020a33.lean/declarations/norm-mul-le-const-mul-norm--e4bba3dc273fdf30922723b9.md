# norm_mul_le_const_mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e89023e7aab66340c3d81970d450ed4e59d1f93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c34738b6-f1b3-0e84-99d3-f8facc8d4cf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1727fec-dc8d-83fd-0652-0489e06185b7",
  "kind": "theorem",
  "lexical_name": "norm_mul_le_const_mul_norm",
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
  "slug": "norm-mul-le-const-mul-norm--e4bba3dc273fdf30922723b9",
  "source": {
    "blob": "0e89023e7aab66340c3d81970d450ed4e59d1f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 98,
    "path": "GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4bba3dc273fdf30922723b92434b8d0b3e900a8726cf7c8e586f303bafd7dc1",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1727fec-dc8d-83fd-0652-0489e06185b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mul_le_const_mul_norm {i : ι} (hBi : B i = (1 : L))
    (hna : IsNonarchimedean (Norm.norm : K → ℝ)) :
    ∃ (c : ℝ) (_ : 0 < c), ∀ x y : L, B.norm (x * y) ≤ c * B.norm x * B.norm y := by
  -- The bounding constant `c` will be the maximum of the products `B.norm (B i * B j)`.
  obtain ⟨c, _, hc⟩ := exists_mem_eq_sup' univ_nonempty (fun i : ι × ι ↦ B.norm (B i.1 * B i.2))
  use B.norm (B c.1 * B c.2)
  constructor
  -- ∀ (x y : L), B.norm (x * y) ≤ B.norm (⇑B c.fst * ⇑B c.snd) * B.norm x * B.norm y
  · intro x y
    -- `ixy` is an index for which `‖B.repr (x*y) i‖` is maximum.
    obtain ⟨ixy, _, hixy_def⟩ := exists_mem_eq_sup' univ_nonempty (fun i ↦ ‖(B.repr (x * y)) i‖)
    -- We rewrite the LHS using `ixy`.
    conv_lhs => simp only [Basis.norm]; rw [hixy_def, ← Basis.sum_repr B x, ← Basis.sum_repr B y]
    rw [sum_mul, map_finset_sum]
    simp_rw [smul_mul_assoc, LinearEquiv.map_smul, mul_sum, map_finset_sum,
      mul_smul_comm, LinearEquiv.map_smul]
    have hna' : IsNonarchimedean (NormedField.toMulRingNorm K) := hna
    /- Since the norm is nonarchimidean, the norm of a finite sum is bounded by the maximum of the
          norms of the summands. -/
    obtain ⟨k, -, (hk : ‖∑ i : ι, (B.repr x i • ∑ i_1 : ι,
      B.repr y i_1 • B.repr (B i * B i_1)) ixy‖ ≤
      ‖(B.repr x k • ∑ j : ι, B.repr y j • B.repr (B k * B j)) ixy‖)⟩ :=
      IsNonarchimedean.finset_image_add hna'
        (fun i ↦ (B.repr x i • ∑ i_1 : ι, B.repr y i_1 • B.repr (B i * B i_1)) ixy)
        (univ : Finset ι)
    simp only [Finsupp.coe_smul, Finsupp.coe_finset_sum, Pi.smul_apply, sum_apply, smul_eq_mul,
      norm_mul, sup'_le_iff, mem_univ, forall_const] at hk ⊢
    apply le_trans hk
    -- We use the above property again.
    obtain ⟨k', hk'⟩ : ∃ (k' : ι),
        ‖∑ j : ι, B.repr y j • B.repr (B k * B j) ixy‖ ≤
          ‖B.repr y k' • B.repr (B k * B k') ixy‖ := by
      obtain ⟨k, hk0, hk⟩ := IsNonarchimedean.finset_image_add hna'
        (fun i ↦ B.repr y i • B.repr (B k * B i) ixy) (univ : Finset ι)
      exact ⟨k, hk⟩
    apply le_trans (mul_le_mul_of_nonneg_left hk' (norm_nonneg _))
    -- Now an easy computation leads to the desired conclusion.
    rw [norm_smul, mul_assoc, mul_comm (B.norm (B c.fst * B c.snd)), ← mul_assoc]
    exact mul_le_mul (mul_le_mul (B.norm_repr_le_norm _) (B.norm_repr_le_norm _)
      (norm_nonneg _) (B.norm_nonneg _)) (le_trans (B.norm_repr_le_norm _)
        (hc ▸ Finset.le_sup' (fun i : ι × ι ↦ B.norm (B i.1 * B i.2)) (mem_univ (k, k'))))
      (norm_nonneg _) (mul_nonneg (B.norm_nonneg _) (B.norm_nonneg _))
    -- `B c.1 * B c.2` is positive.
  · have h_pos : (0 : ℝ) < B.norm (B i * B i) := by
      have h1 : (1 : L) = (algebraMap K L) 1 := by rw [map_one]
      rw [hBi, mul_one, h1, Basis.norm_extends hBi]
      simp [norm_one, zero_lt_one]
    exact lt_of_lt_of_le h_pos
      (hc ▸ Finset.le_sup' (fun i : ι × ι ↦ B.norm (B i.1 * B i.2)) (mem_univ (i, i)))

/-- For any `k : K`, `y : L`, we have
  `B.norm ((algebra_map K L) k * y) = B.norm ((algebra_map K L) k) * B.norm y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e89023e7aab66340c3d81970d450ed4e59d1f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
