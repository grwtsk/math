# bernstein_representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1785adfa-16b8-f77f-0d12-5345840a131b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8949f8d5-1c43-4899-f982-7f8443da5cc6",
  "kind": "theorem",
  "lexical_name": "bernstein_representation",
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
  "slug": "bernstein-representation--bcf6fb5e581d7a059c3b2b91",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 453,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf6fb5e581d7a059c3b2b91ccd4f6650f2b4460c5ef20b43e247e21322f55c8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8949f8d5-1c43-4899-f982-7f8443da5cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bernstein_representation (qs : List ℚ) (n : ℕ) (hn : qs.length = n + 1)
    (t : ℝ) (_ht0 : 0 ≤ t) (_ht1 : t ≤ 1) :
    let bs := monomialToBernstein qs
    (Finset.range (n + 1)).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) =
    (Finset.range (n + 1)).sum (fun k =>
      (bs.getD k 0 : ℝ) *
      ((Nat.choose n k : ℝ) * t ^ k * (1 - t) ^ (n - k))) := by
  intro bs
  -- Step 1: expand t^j using monomial_bernstein_expansion
  have hexpand : ∀ j ∈ Finset.range (n + 1),
      (qs.getD j 0 : ℝ) * t ^ j =
      (qs.getD j 0 : ℝ) *
      (Finset.range (n + 1)).sum (fun k =>
        if j ≤ k then (Nat.choose (n - j) (k - j) : ℝ) * t ^ k * (1 - t) ^ (n - k)
        else 0) := by
    intro j hj
    simp only [Finset.mem_range] at hj
    congr 1
    exact monomial_bernstein_expansion n j (by omega) t
  rw [Finset.sum_congr rfl hexpand]
  simp_rw [Finset.mul_sum]
  -- Step 2: exchange sums
  rw [Finset.sum_comm]
  -- After sum_comm: Σ_k Σ_j q_j * (if j ≤ k then C(n-j,k-j) * t^k * (1-t)^(n-k) else 0)
  -- Goal: show this = Σ_k b_k * (C(n,k) * t^k * (1-t)^(n-k))
  apply Finset.sum_congr rfl
  intro k hk
  simp only [Finset.mem_range] at hk
  -- Factor out t^k * (1-t)^(n-k) from the inner sum on LHS
  have factor_lhs : (Finset.range (n + 1)).sum (fun j =>
      (qs.getD j 0 : ℝ) *
      (if j ≤ k then (Nat.choose (n - j) (k - j) : ℝ) * t ^ k * (1 - t) ^ (n - k)
       else 0)) =
    ((Finset.range (k + 1)).sum (fun j =>
      (qs.getD j 0 : ℝ) * (Nat.choose (n - j) (k - j) : ℝ))) *
    (t ^ k * (1 - t) ^ (n - k)) := by
    conv_rhs => rw [Finset.sum_mul]
    rw [show n + 1 = (k + 1) + (n - k) from by omega]
    rw [Finset.sum_range_add]
    have hzero : (Finset.range (n - k)).sum (fun j =>
        (qs.getD (j + (k + 1)) 0 : ℝ) *
        (if j + (k + 1) ≤ k then (Nat.choose (n - (j + (k + 1))) (k - (j + (k + 1))) : ℝ) *
          t ^ k * (1 - t) ^ (n - k)
        else 0)) = 0 := by
      apply Finset.sum_eq_zero; intro j _
      simp only [show ¬(j + (k + 1) ≤ k) from by omega, ite_false, mul_zero]
    have hzero2 : ∀ j ∈ Finset.range (n - k),
        (qs.getD (k + 1 + j) 0 : ℝ) *
        (if k + 1 + j ≤ k then (Nat.choose (n - (k + 1 + j)) (k - (k + 1 + j)) : ℝ) *
          t ^ k * (1 - t) ^ (n - k)
        else 0) = 0 := by
      intro j _; simp only [show ¬(k + 1 + j ≤ k) from by omega, ite_false, mul_zero]
    rw [Finset.sum_eq_zero hzero2, add_zero]
    apply Finset.sum_congr rfl
    intro j hj
    simp only [Finset.mem_range] at hj
    rw [if_pos (show j ≤ k from by omega)]
    ring
  rw [factor_lhs]
  -- Need: (Σ_{j≤k} q_j * C(n-j,k-j)) * (t^k * (1-t)^(n-k)) = b_k * (C(n,k) * t^k * (1-t)^(n-k))
  -- Suffices to show: Σ_{j≤k} q_j * C(n-j,k-j) = b_k * C(n,k)
  -- This is a combinatorial identity relating monomial and Bernstein coefficients.
  have hbs_len : bs.length = qs.length := monomialToBernstein_length qs (by omega)
  have hk_lt : k < bs.length := by rw [hbs_len]; omega
  suffices h : (∑ j ∈ Finset.range (k + 1), (qs.getD j 0 : ℝ) * (Nat.choose (n - j) (k - j) : ℝ)) =
    (bs.getD k 0 : ℝ) * (Nat.choose n k : ℝ) by
    calc (∑ j ∈ Finset.range (k + 1), (qs.getD j 0 : ℝ) * ↑((n - j).choose (k - j))) *
          (t ^ k * (1 - t) ^ (n - k))
        = ((bs.getD k 0 : ℝ) * ↑(n.choose k)) * (t ^ k * (1 - t) ^ (n - k)) := by rw [h]
      _ = (bs.getD k 0 : ℝ) * (↑(n.choose k) * t ^ k * (1 - t) ^ (n - k)) := by ring
  rw [List.getD_eq_getElem bs 0 hk_lt]
  rw [monomialToBernstein_getElem qs k (by omega) (by omega)]
  push_cast [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j hj
  simp only [Finset.mem_range] at hj
  have hj_lt : j < qs.length := by omega
  rw [List.getD_eq_getElem qs 0 hj_lt]
  simp only [dite_true, hn, show n + 1 - 1 = n from by omega,
    show j < n + 1 from by omega]
  by_cases hcnj : Nat.choose n j = 0
  · exfalso
    have := Nat.choose_eq_zero_iff.mp hcnj
    omega
  · simp only [hcnj, ite_false, binomialRat]
    have hident := choose_mul_choose_eq (show j ≤ k from by omega) (show k ≤ n from by omega)
    have hcnj_ne : (Nat.choose n j : ℚ) ≠ 0 := by exact_mod_cast hcnj
    have hid : (Nat.choose k j : ℚ) * (Nat.choose n k : ℚ) =
           (Nat.choose n j : ℚ) * (Nat.choose (n - j) (k - j) : ℚ) := by
      exact_mod_cast hident
    -- Goal is in ℝ: ↑qs[j] * ↑C(n-j,k-j) = ↑(C(k,j)/C(n,j) * qs[j]) * ↑C(n,k)
    -- where outer ↑ is ℚ→ℝ, inner ↑(C) is ℕ→ℚ
    -- Goal is in ℝ: ↑qs[j] * ↑C(n-j,k-j) = ↑(C(k,j)/C(n,j) * qs[j]) * ↑C(n,k)
    -- Prove the equality in ℚ first
    have hq : qs[j] * (Nat.choose (n - j) (k - j) : ℚ) =
        ((Nat.choose k j : ℚ) / (Nat.choose n j : ℚ) * qs[j]) * (Nat.choose n k : ℚ) := by
      -- Clear fractions: multiply both sides by C(n,j)
      have lhs_eq : qs[j] * (Nat.choose (n - j) (k - j) : ℚ) * (Nat.choose n j : ℚ) =
          qs[j] * ((Nat.choose n j : ℚ) * (Nat.choose (n - j) (k - j) : ℚ)) := by ring
      have rhs_eq : ((Nat.choose k j : ℚ) / (Nat.choose n j : ℚ) * qs[j]) * (Nat.choose n k : ℚ) *
          (Nat.choose n j : ℚ) =
          qs[j] * ((Nat.choose k j : ℚ) * (Nat.choose n k : ℚ)) := by
        field_simp
      have hmul : qs[j] * ((Nat.choose n j : ℚ) * (Nat.choose (n - j) (k - j) : ℚ)) =
          qs[j] * ((Nat.choose k j : ℚ) * (Nat.choose n k : ℚ)) := by
        congr 1; linarith
      exact mul_right_cancel₀ hcnj_ne (by linarith [lhs_eq, rhs_eq, hmul])
    exact_mod_cast hq

/- Bridge lemma: transformPolyCoeffs correctly represents the polynomial on [0,1].
    If Q = transformPolyCoeffs P α β, then P(α + t*(β-α)) = Σⱼ qⱼ tʲ for t ∈ [0,1]. -/
/-- Length of transformPolyCoeffs output -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
