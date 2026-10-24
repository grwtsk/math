# norm_mul_le_const_mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79d170b6-6b44-3608-dd1d-60fabc2c6914",
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
  "slug": "norm-mul-le-const-mul-norm--1fbf80425afcd95cd4a30328",
  "source": {
    "blob": "905d22684e454bf8b5388134a03f196d15ea9338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 110,
    "path": "GRWTSK/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fbf80425afcd95cd4a30328432c271945e10e27abf632cf4785755c0dc4553b",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79d170b6-6b44-3608-dd1d-60fabc2c6914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–158.

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
    rw [sum_mul, map_finsetSum]
    simp_rw [smul_mul_assoc, map_smul, mul_sum, map_finsetSum, mul_smul_comm, map_smul]
    have hna' : IsNonarchimedean (NormedField.toMulRingNorm K) := hna
    /- Since the norm is nonarchimedean, the norm of a finite sum is bounded by the maximum of the
          norms of the summands. -/
    obtain ⟨k, -, (hk : ‖∑ i : ι, (B.repr x i • ∑ i_1 : ι,
      B.repr y i_1 • B.repr (B i * B i_1)) ixy‖ ≤
      ‖(B.repr x k • ∑ j : ι, B.repr y j • B.repr (B k * B j)) ixy‖)⟩ :=
      hna'.finset_image_add _ (univ : Finset ι) <| map_zero_le (NormedField.toMulRingNorm K)
    simp only [Finsupp.coe_smul, Finsupp.coe_finsetSum, Pi.smul_apply, Finset.sum_apply,
      smul_eq_mul, norm_mul] at hk ⊢
    apply le_trans hk
    -- We use the above property again.
    obtain ⟨k', hk'⟩ : ∃ (k' : ι),
        ‖∑ j : ι, B.repr y j • B.repr (B k * B j) ixy‖ ≤
          ‖B.repr y k' • B.repr (B k * B k') ixy‖ := by
      obtain ⟨k, hk0, hk⟩ := hna'.finset_image_add _ (univ : Finset ι)
        (map_zero_le (NormedField.toMulRingNorm K))
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

[Verification target and public status](../../../../../verification/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905d22684e454bf8b5388134a03f196d15ea9338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
