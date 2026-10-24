# radius_right_inv_pos_of_radius_pos_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77a86857-06c6-ff55-b6ab-4e760cd53783",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d66230ca-911d-a1d1-72cc-7d7b01763ed4",
  "kind": "theorem",
  "lexical_name": "radius_right_inv_pos_of_radius_pos_aux1",
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
  "slug": "radius-right-inv-pos-of-radius-pos-aux1--521fe43493b035bdb758c8b2",
  "source": {
    "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 380,
    "path": "GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521fe43493b035bdb758c8b2e999ac227394422005a8450004e5b4f8e4b67872",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66230ca-911d-a1d1-72cc-7d7b01763ed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_right_inv_pos_of_radius_pos_aux1 (n : ℕ) (p : ℕ → ℝ) (hp : ∀ k, 0 ≤ p k) {r a : ℝ}
    (hr : 0 ≤ r) (ha : 0 ≤ a) :
    ∑ k in Ico 2 (n + 1),
        a ^ k *
          ∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
            r ^ c.length * ∏ j, p (c.blocksFun j) ≤
      ∑ j in Ico 2 (n + 1), r ^ j * (∑ k in Ico 1 n, a ^ k * p k) ^ j :=
  calc
    ∑ k in Ico 2 (n + 1),
          a ^ k *
            ∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
              r ^ c.length * ∏ j, p (c.blocksFun j) =
        ∑ k in Ico 2 (n + 1),
          ∑ c in ({c | 1 < Composition.length c}.toFinset : Finset (Composition k)),
            ∏ j, r * (a ^ c.blocksFun j * p (c.blocksFun j)) := by
      simp_rw [mul_sum]
      apply sum_congr rfl fun k _ => ?_
      apply sum_congr rfl fun c _ => ?_
      rw [prod_mul_distrib, prod_mul_distrib, prod_pow_eq_pow_sum, Composition.sum_blocksFun,
        prod_const, card_fin]
      ring
    _ ≤
        ∑ d in compPartialSumTarget 2 (n + 1) n,
          ∏ j : Fin d.2.length, r * (a ^ d.2.blocksFun j * p (d.2.blocksFun j)) := by
      rw [sum_sigma']
      refine'
        sum_le_sum_of_subset_of_nonneg _ fun x _ _ =>
          prod_nonneg fun j _ => mul_nonneg hr (mul_nonneg (pow_nonneg ha _) (hp _))
      rintro ⟨k, c⟩ hd
      simp only [Set.mem_toFinset (s := {c | 1 < Composition.length c}), mem_Ico, mem_sigma,
        Set.mem_setOf_eq] at hd
      simp only [mem_compPartialSumTarget_iff]
      refine' ⟨hd.2, c.length_le.trans_lt hd.1.2, fun j => _⟩
      have : c ≠ Composition.single k (zero_lt_two.trans_le hd.1.1) := by
        simp [Composition.eq_single_iff_length, ne_of_gt hd.2]
      rw [Composition.ne_single_iff] at this
      exact (this j).trans_le (Nat.lt_succ_iff.mp hd.1.2)
    _ = ∑ e in compPartialSumSource 2 (n + 1) n, ∏ j : Fin e.1, r * (a ^ e.2 j * p (e.2 j)) := by
      symm
      apply compChangeOfVariables_sum
      rintro ⟨k, blocks_fun⟩ H
      have K : (compChangeOfVariables 2 (n + 1) n ⟨k, blocks_fun⟩ H).snd.length = k := by simp
      congr 2 <;> try rw [K]
      rw [Fin.heq_fun_iff K.symm]
      intro j
      rw [compChangeOfVariables_blocksFun]
    _ = ∑ j in Ico 2 (n + 1), r ^ j * (∑ k in Ico 1 n, a ^ k * p k) ^ j := by
      rw [compPartialSumSource,
        ← sum_sigma' (Ico 2 (n + 1))
          (fun k : ℕ => (Fintype.piFinset fun _ : Fin k => Ico 1 n : Finset (Fin k → ℕ)))
          (fun n e => ∏ j : Fin n, r * (a ^ e j * p (e j)))]
      apply sum_congr rfl fun j _ => ?_
      simp only [← @MultilinearMap.mkPiAlgebra_apply ℝ (Fin j) _ ℝ]
      simp only [←
        MultilinearMap.map_sum_finset (MultilinearMap.mkPiAlgebra ℝ (Fin j) ℝ) fun _ (m : ℕ) =>
          r * (a ^ m * p m)]
      simp only [MultilinearMap.mkPiAlgebra_apply]
      simp [prod_const, ← mul_sum, mul_pow]
#align formal_multilinear_series.radius_right_inv_pos_of_radius_pos_aux1 FormalMultilinearSeries.radius_right_inv_pos_of_radius_pos_aux1

/-- Second technical lemma to control the growth of coefficients of the inverse. Bound the explicit
expression for `∑_{k<n+1} aᵏ Qₖ` in terms of a sum of powers of the same sum one step before,
in the specific setup we are interesting in, by reducing to the general bound in
`radius_rightInv_pos_of_radius_pos_aux1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4002faa92ad69e93264c02064e7a1f74a0447741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
