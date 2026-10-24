# exp_add_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba15a0e041ddd1b8ebf23f8004f3b23b81012972",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79ded881-bf69-fe72-2e84-4e612109428b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4cd3cdd-e423-7e5a-c255-c042627b9ca3",
  "kind": "theorem",
  "lexical_name": "exp_add_of_commute",
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
  "slug": "exp-add-of-commute--11b5178a7e9cb87a923b746e",
  "source": {
    "blob": "ba15a0e041ddd1b8ebf23f8004f3b23b81012972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b5178a7e9cb87a923b746ece1796cc6e07d499433918138c7450760a14a560",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4cd3cdd-e423-7e5a-c255-c042627b9ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_add_of_commute {a b : A} (h₁ : Commute a b) (h₂ : IsNilpotent a) (h₃ : IsNilpotent b) :
    exp (a + b) = exp a * exp b := by
  obtain ⟨n₁, hn₁⟩ := h₂
  obtain ⟨n₂, hn₂⟩ := h₃
  let N := n₁ ⊔ n₂
  have h₄ : a ^ (N + 1) = 0 := pow_eq_zero_of_le (by omega) hn₁
  have h₅ : b ^ (N + 1) = 0 := pow_eq_zero_of_le (by omega) hn₂
  rw [exp_eq_sum (k := 2 * N + 1)
    (Commute.add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero h₁ h₄ h₅ (by omega)),
    exp_eq_sum h₄, exp_eq_sum h₅]
  set R2N := range (2 * N + 1) with hR2N
  set RN := range (N + 1) with hRN
  have s₁ := by
    calc ∑ i ∈ R2N, (i ! : ℚ)⁻¹ • (a + b) ^ i
        = ∑ i ∈ R2N, (i ! : ℚ)⁻¹ • ∑ j ∈ range (i + 1), a ^ j * b ^ (i - j) * i.choose j := ?_
      _ = ∑ i ∈ R2N, (∑ j ∈ range (i + 1),
            ((j ! : ℚ)⁻¹ * ((i - j) ! : ℚ)⁻¹) • (a ^ j * b ^ (i - j))) := ?_
      _ = ∑ ij ∈ R2N ×ˢ R2N with ij.1 + ij.2 ≤ 2 * N,
            ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) := ?_
    · refine sum_congr rfl fun i _ ↦ ?_
      rw [Commute.add_pow h₁ i]
    · simp_rw [smul_sum]
      refine sum_congr rfl fun i hi ↦ sum_congr rfl fun j hj ↦ ?_
      simp only [mem_range] at hi hj
      replace hj := Nat.le_of_lt_succ hj
      suffices (i ! : ℚ)⁻¹ * (i.choose j) = ((j ! : ℚ)⁻¹ * ((i - j)! : ℚ)⁻¹) by
        rw [← Nat.cast_commute (i.choose j), ← this, ← mul_smul_comm, ← nsmul_eq_mul,
          mul_smul, ← smul_assoc, smul_comm, smul_assoc]
        norm_cast
      rw [Nat.choose_eq_factorial_div_factorial hj,
        Nat.cast_div (Nat.factorial_mul_factorial_dvd_factorial hj) (by field_simp)]
      field_simp
    · rw [hR2N, sum_sigma']
      apply sum_bij (fun ⟨i, j⟩ _ ↦ (j, i - j))
      · simp only [mem_sigma, mem_range, mem_filter, mem_product, and_imp]
        omega
      · simp only [mem_sigma, mem_range, Prod.mk.injEq, and_imp]
        rintro ⟨x₁, y₁⟩ - h₁ ⟨x₂, y₂⟩ - h₂ h₃ h₄
        simp_all
        omega
      · simp only [mem_filter, mem_product, mem_range, mem_sigma, exists_prop, Sigma.exists,
          and_imp, Prod.forall, Prod.mk.injEq]
        exact fun x y _ _ _ ↦ ⟨x + y, x, by omega⟩
      · simp only [mem_sigma, mem_range, implies_true]
  have z₁ : ∑ ij ∈ R2N ×ˢ R2N with ¬ ij.1 + ij.2 ≤ 2 * N,
      ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) = 0 :=
    sum_eq_zero fun i hi ↦ by
      rw [mem_filter] at hi
      cases le_or_lt (N + 1) i.1 with
        | inl h => rw [pow_eq_zero_of_le h h₄, zero_mul, smul_zero]
        | inr _ => rw [pow_eq_zero_of_le (by linarith) h₅, mul_zero, smul_zero]
  have split₁ := sum_filter_add_sum_filter_not (R2N ×ˢ R2N)
    (fun ij ↦ ij.1 + ij.2 ≤ 2 * N)
    (fun ij ↦ ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2))
  rw [z₁, add_zero] at split₁
  rw [split₁] at s₁
  have z₂ : ∑ ij ∈ R2N ×ˢ R2N with ¬ (ij.1 ≤ N ∧ ij.2 ≤ N),
      ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) = 0 :=
    sum_eq_zero fun i hi ↦ by
    simp only [not_and, not_le, mem_filter] at hi
    cases le_or_lt (N + 1) i.1 with
      | inl h => rw [pow_eq_zero_of_le h h₄, zero_mul, smul_zero]
      | inr h => rw [pow_eq_zero_of_le (hi.2 (Nat.le_of_lt_succ h)) h₅, mul_zero, smul_zero]
  have split₂ := sum_filter_add_sum_filter_not (R2N ×ˢ R2N)
    (fun ij ↦ ij.1 ≤ N ∧ ij.2 ≤ N)
    (fun ij ↦ ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2))
  rw [z₂, add_zero] at split₂
  rw [← split₂] at s₁
  have restrict: ∑ ij ∈ R2N ×ˢ R2N with ij.1 ≤ N ∧ ij.2 ≤ N,
      ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) =
        ∑ ij ∈ RN ×ˢ RN, ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) := by
    apply sum_congr
    · ext x
      simp only [mem_filter, mem_product, mem_range, hR2N, hRN]
      omega
    · tauto
  rw [restrict] at s₁
  have s₂ := by
    calc (∑ i ∈ RN, (i ! : ℚ)⁻¹ • a ^ i) * ∑ i ∈ RN, (i ! : ℚ)⁻¹ • b ^ i
        = ∑ i ∈ RN, ∑ j ∈ RN, ((i ! : ℚ)⁻¹ * (j ! : ℚ)⁻¹) • (a ^ i * b ^ j) := ?_
      _ = ∑ ij ∈ RN ×ˢ RN, ((ij.1 ! : ℚ)⁻¹ * (ij.2 ! : ℚ)⁻¹) • (a ^ ij.1 * b ^ ij.2) := ?_
    · rw [sum_mul_sum]
      refine sum_congr rfl fun _ _ ↦ sum_congr rfl fun _ _ ↦ ?_
      rw [smul_mul_assoc, mul_smul_comm, smul_smul]
    · rw [sum_sigma']
      apply sum_bijective (fun ⟨i, j⟩ ↦ (i, j))
      · exact ⟨fun ⟨i, j⟩ ⟨i', j'⟩ h ↦ by cases h; rfl, fun ⟨i, j⟩ ↦ ⟨⟨i, j⟩, rfl⟩⟩
      · simp only [mem_sigma, mem_product, implies_true]
      · simp only [implies_true]
  rwa [s₂.symm] at s₁

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant4cdc1a547adfaf55c896138cb127c191313525447146e19e6b4e797f17b9f6dc.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba15a0e041ddd1b8ebf23f8004f3b23b81012972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
