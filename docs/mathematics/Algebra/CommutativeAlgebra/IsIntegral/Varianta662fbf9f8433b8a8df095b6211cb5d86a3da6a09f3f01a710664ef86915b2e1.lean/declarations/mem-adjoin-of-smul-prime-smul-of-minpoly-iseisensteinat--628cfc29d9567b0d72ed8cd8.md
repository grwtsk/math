# mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "757c9ab8b462db32b9a0520597ab0182cba600ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0d28301-131a-1710-d0e1-1bc8249afbba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bf9c9a1-77d8-7f29-f72a-827d25c3d3e4",
  "kind": "theorem",
  "lexical_name": "mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt",
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
  "slug": "mem-adjoin-of-smul-prime-smul-of-minpoly-iseisensteinat--628cfc29d9567b0d72ed8cd8",
  "source": {
    "blob": "757c9ab8b462db32b9a0520597ab0182cba600ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 229,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:628cfc29d9567b0d72ed8cd8001af27e48f90cf6ed3dcb24f3134bc5d91367bb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf9c9a1-77d8-7f29-f72a-827d25c3d3e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt {B : PowerBasis K L}
    (hp : Prime p) (hBint : IsIntegral R B.gen) {z : L} (hzint : IsIntegral R z)
    (hz : p • z ∈ adjoin R ({B.gen} : Set L)) (hei : (minpoly R B.gen).IsEisensteinAt 𝓟) :
    z ∈ adjoin R ({B.gen} : Set L) := by
  -- First define some abbreviations.
  have hndiv : ¬p ^ 2 ∣ (minpoly R B.gen).coeff 0 := fun h =>
    hei.notMem ((span_singleton_pow p 2).symm ▸ Ideal.mem_span_singleton.2 h)
  have := B.finite
  set P := minpoly R B.gen with hP
  obtain ⟨n, hn⟩ := Nat.exists_eq_succ_of_ne_zero B.dim_pos.ne'
  have : Module.IsTorsionFree R L := .trans_faithfulSMul R K L
  -- There is a polynomial `Q` such that `p • z = aeval B.gen Q`. We can assume that
  -- `Q.degree < P.degree` and `Q ≠ 0`.
  rw [adjoin_singleton_eq_range_aeval] at hz
  obtain ⟨Q₁, hQ⟩ := hz
  set Q := Q₁ %ₘ P with hQ₁
  replace hQ : aeval B.gen Q = p • z := by simpa [hQ₁, hP] using hQ
  by_cases hQzero : Q = 0
  · simp only [hQzero, Algebra.smul_def, zero_eq_mul, aeval_zero] at hQ
    rcases hQ with H | H₁
    · have : Function.Injective (algebraMap R L) := by
        rw [algebraMap_eq R K L]
        exact (algebraMap K L).injective.comp (IsFractionRing.injective R K)
      exfalso
      exact hp.ne_zero ((injective_iff_map_eq_zero _).1 this _ H)
    · rw [H₁]
      exact Subalgebra.zero_mem _
  -- It is enough to prove that all coefficients of `Q` are divisible by `p`, by induction.
  -- The base case is `dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt`.
  refine mem_adjoin_of_dvd_coeff_of_dvd_aeval hp.ne_zero (fun i => ?_) hQ
  induction i using Nat.case_strong_induction_on with
  | hz =>
    intro
    exact dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt hp hBint hQ hzint hei
  | hi j hind =>
    intro hj
    convert! hp.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd (n := n) _ hndiv
    -- Two technical results we will need about `P.natDegree` and `Q.natDegree`.
    have H := degree_modByMonic_lt Q₁ (minpoly.monic hBint)
    rw [← hQ₁, ← hP] at H
    replace H := Nat.lt_iff_add_one_le.1
      (lt_of_lt_of_le
        (lt_of_le_of_lt (Nat.lt_iff_add_one_le.1 (Nat.lt_of_succ_lt_succ (mem_range.1 hj)))
          (lt_succ_self _)) (Nat.lt_iff_add_one_le.1 ((natDegree_lt_natDegree_iff hQzero).2 H)))
    have Hj : Q.natDegree + 1 = j + 1 + (Q.natDegree - j) := by
      rw [← add_comm 1, ← add_comm 1, add_assoc, add_right_inj,
        ← Nat.add_sub_assoc (Nat.lt_of_succ_lt_succ (mem_range.1 hj)).le, add_comm,
        Nat.add_sub_cancel]
    -- By induction hypothesis we can find `g : ℕ → R` such that
    -- `k ∈ range (j + 1) → Q.coeff k • B.gen ^ k = (algebraMap R L) p * g k • B.gen ^ k`-
    choose! g hg using hind
    replace hg : ∀ k ∈ range (j + 1), Q.coeff k • B.gen ^ k =
        algebraMap R L p * g k • B.gen ^ k := by
      intro k hk
      rw [hg k (mem_range_succ_iff.1 hk)
        (mem_range_succ_iff.2
          (le_trans (mem_range_succ_iff.1 hk) (succ_le_iff.1 (mem_range_succ_iff.1 hj)).le)),
        Algebra.smul_def, Algebra.smul_def, map_mul, mul_assoc]
    -- Since `minpoly R B.gen` is Eisenstein, we can find `f : ℕ → L` such that
    -- `(map (algebraMap R L) (minpoly R B.gen)).nat_degree ≤ i` implies `f i ∈ R[B.gen]`
    -- and `(algebraMap R L) p * f i = B.gen ^ i`. We will also need `hf₁`, a reformulation of this
    -- property.
    choose! f hf using
      IsWeaklyEisensteinAt.exists_mem_adjoin_mul_eq_pow_natDegree_le (minpoly.aeval R B.gen)
        (minpoly.monic hBint) hei.isWeaklyEisensteinAt
    have hf₁ : ∀ k ∈ (range (Q.natDegree - j)).erase 0,
        Q.coeff (j + 1 + k) • B.gen ^ (j + 1 + k) * B.gen ^ (P.natDegree - (j + 2)) =
        (algebraMap R L) p * Q.coeff (j + 1 + k) • f (k + P.natDegree - 1) := by
      intro k hk
      rw [smul_mul_assoc, ← pow_add, ← Nat.add_sub_assoc H, add_comm (j + 1) 1,
        add_assoc (j + 1), add_comm _ (k + P.natDegree), Nat.add_sub_add_right,
        ← (hf (k + P.natDegree - 1) _).2, mul_smul_comm]
      rw [(minpoly.monic hBint).natDegree_map, add_comm, Nat.add_sub_assoc, le_add_iff_nonneg_right]
      · exact Nat.zero_le _
      · refine one_le_iff_ne_zero.2 fun h => ?_
        rw [h] at hk
        simp at hk
    -- The Eisenstein condition shows that `p` divides `Q.coeff j`
    -- if `p^n.succ` divides the following multiple of `Q.coeff (succ j)^n.succ`:
    suffices
        p ^ n.succ ∣ Q.coeff (succ j) ^ n.succ *
          (minpoly R B.gen).coeff 0 ^ (succ j + (P.natDegree - (j + 2))) by
      convert! this
      rw [Nat.succ_eq_add_one, add_assoc, ← Nat.add_sub_assoc H, add_comm (j + 1),
        Nat.add_sub_add_left, ← Nat.add_sub_assoc, Nat.add_sub_add_left, hP, ←
        (minpoly.monic hBint).natDegree_map (algebraMap R K), ←
        minpoly.isIntegrallyClosed_eq_field_fractions' K hBint, natDegree_minpoly, hn, Nat.sub_one,
        Nat.pred_succ]
      lia
    -- Using `hQ : aeval B.gen Q = p • z`, we write `p • z` as a sum of terms of degree less than
    -- `j+1`, that are multiples of `p` by induction, and terms of degree at least `j+1`.
    rw [aeval_eq_sum_range, Hj, range_add, sum_union (disjoint_range_addLeftEmbedding _ _),
      sum_congr rfl hg, add_comm] at hQ
    -- We multiply this equality by `B.gen ^ (P.natDegree-(j+2))`, so we can use `hf₁` on the terms
    -- we didn't know were multiples of `p`, and we take the norm on both sides.
    replace hQ := congr_arg (fun x => x * B.gen ^ (P.natDegree - (j + 2))) hQ
    simp_rw [sum_map, addLeftEmbedding_apply, add_mul, sum_mul, mul_assoc] at hQ
    rw [← insert_erase
      (mem_range.2 (tsub_pos_iff_lt.2 <| Nat.lt_of_succ_lt_succ <| mem_range.1 hj)),
      sum_insert (notMem_erase 0 _), add_zero, sum_congr rfl hf₁, ← mul_sum, ← mul_sum, add_assoc,
      ← mul_add, smul_mul_assoc, ← pow_add, Algebra.smul_def] at hQ
    replace hQ := congr_arg (norm K) (eq_sub_of_add_eq hQ)
    -- We obtain an equality of elements of `K`, but everything is integral, so we can move to `R`
    -- and simplify `hQ`.
    have hintsum : IsIntegral R (z * B.gen ^ (P.natDegree - (j + 2)) -
        (∑ x ∈ (range (Q.natDegree - j)).erase 0,
          Q.coeff (j + 1 + x) • f (x + P.natDegree - 1) +
            ∑ x ∈ range (j + 1), g x • B.gen ^ x * B.gen ^ (P.natDegree - (j + 2)))) := by
      refine (hzint.mul (hBint.pow _)).sub
        (.add (.sum _ fun k hk => .smul _ ?_)
          (.sum _ fun k _ => .mul (.smul _ (.pow hBint _)) (hBint.pow _)))
      refine adjoin_le_integralClosure hBint (hf _ ?_).1
      rw [(minpoly.monic hBint).natDegree_map (algebraMap R L)]
      rw [add_comm, Nat.add_sub_assoc, le_add_iff_nonneg_right]
      · exact zero_le
      · refine one_le_iff_ne_zero.2 fun h => ?_
        rw [h] at hk
        simp at hk
    obtain ⟨r, hr⟩ := isIntegral_iff.1 (isIntegral_norm K hintsum)
    rw [Algebra.smul_def, mul_assoc, ← mul_sub, map_mul, algebraMap_apply R K L, map_pow,
      Algebra.norm_algebraMap, map_mul, algebraMap_apply R K L, Algebra.norm_algebraMap,
      finrank B, ← hr, PowerBasis.norm_gen_eq_coeff_zero_minpoly,
      minpoly.isIntegrallyClosed_eq_field_fractions' K hBint, coeff_map,
      show (-1 : K) = algebraMap R K (-1) by simp,
      ← map_pow (algebraMap R K), ← map_pow (algebraMap R K), ← map_mul (algebraMap R K),
      ← map_pow (algebraMap R K), ← map_mul (algebraMap R K), ← map_pow (algebraMap R K),
      ← map_mul (algebraMap R K)] at hQ
    -- We can now finish the proof.
    have hppdiv : p ^ B.dim ∣ p ^ B.dim * r := dvd_mul_of_dvd_left dvd_rfl _
    rwa [← IsFractionRing.injective R K hQ, mul_comm, ← Units.coe_neg_one, mul_pow, ←
      Units.val_pow_eq_pow_val, ← Units.val_pow_eq_pow_val, mul_assoc,
      Units.dvd_mul_left, mul_comm, ← Nat.succ_eq_add_one, hn] at hppdiv

/-- Let `K` be the field of fraction of an integrally closed domain `R` and let `L` be an extension
of `K`, generated by an integral power basis `B` such that the minimal polynomial of `B.gen` is
Eisenstein at `p`. Given `z : L` integral over `R`, if `p ^ n • z ∈ R[B.gen]`, then
`z ∈ R[B.gen]`. Together with `Algebra.discr_mul_isIntegral_mem_adjoin` this result often
allows to compute the ring of integers of `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Varianta662fbf9f8433b8a8df095b6211cb5d86a3da6a09f3f01a710664ef86915b2e1.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757c9ab8b462db32b9a0520597ab0182cba600ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
