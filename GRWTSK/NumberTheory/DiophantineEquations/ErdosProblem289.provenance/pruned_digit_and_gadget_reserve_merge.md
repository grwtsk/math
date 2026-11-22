# `Erdos289.pruned_digit_and_gadget_reserve_merge`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 4953](../ErdosProblem289.lean#L4953), declaration `Erdos289.pruned_digit_and_gadget_reserve_merge`.
- Exact upstream: [Formal Conjectures `289.lean` at line 4953](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L4953), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Merge digit and gadget families**. Direct lexical source consumer(s): **`Erdos289.lacunary_rigidity_and_combined_reserve_merge`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem pruned_digit_and_gadget_reserve_merge (B : ℕ) (l_dig : ℕ → ℕ) (I_dig : ℕ → ℕ × ℕ)
    (hB : 1189 ≤ B)
    (h_dig_bounds : ∀ k : ℕ, 495 ≤ (I_dig k).1 ∧ (I_dig k).1 < (I_dig k).2 ∧ (I_dig k).2 ≤ (I_dig k).1 + 2)
    (h_dig_sep : ∀ k m : ℕ, k ≠ m → (I_dig k).2 + 1 < (I_dig m).1 ∨ (I_dig m).2 + 1 < (I_dig k).1)
    (h_dig_mono : 1 ≤ l_dig B ∧ ∀ Y₁ Y₂ : ℕ, Y₁ ≤ Y₂ → l_dig Y₁ ≤ l_dig Y₂)
    (h_dig_mass : ∀ n : ℕ, ∑ k ∈ Finset.range n, w_Icc (I_dig k).1 (I_dig k).2 ≤ 1 / 237800)
    (h_dig_scale : ∀ Y ≥ B, l_dig Y ≤ 2 ^ 56 * Y * (Nat.log 2 Y + 1) ^ 3 ∧
      ∀ i : Fin (l_dig Y), (I_dig i.1).2 ≤ Y ^ 2 / 2 ∧
        ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (I_dig i.1).1 (I_dig i.1).2).den = 1)
    (h_dig_energy : ∀ q : ℕ, B < q → ∀ δ : ℤ,
      ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
      ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
      16 * Real.log (q : ℝ) ≤
        ∑ k ∈ (Finset.range (l_dig q)) \ (Finset.range (l_dig (q - 1))),
          (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I_dig k).1 (I_dig k).2 : ℝ)))) ^ 2)
    (J : ℕ → ℕ × ℕ)
    (hJ_bounds : ∀ r : ℕ, 495 ≤ (J r).1 ∧ (J r).1 < (J r).2 ∧ (J r).2 ≤ (J r).1 + 2)
    (hJ_sep : ∀ r₁ r₂ : ℕ, r₁ ≠ r₂ → (J r₁).2 + 1 < (J r₂).1 ∨ (J r₂).2 + 1 < (J r₁).1)
    (hJ_growth : ∀ r : ℕ, (B + 2) ^ 2 * 2 ^ (20 * (r + 1)) ≤ (J r).1)
    (hJ_mass : ∀ n : ℕ, ∑ r ∈ Finset.range n, w_Icc (J r).1 (J r).2 ≤ 1 / 237800) :
    ∃ (l_seq : ℕ → ℕ) (I_seq : ℕ → ℕ × ℕ),
      (∀ k : ℕ, 495 ≤ (I_seq k).1 ∧ (I_seq k).1 < (I_seq k).2 ∧ (I_seq k).2 ≤ (I_seq k).1 + 2) ∧
      (∀ k m : ℕ, k ≠ m → (I_seq k).2 + 1 < (I_seq m).1 ∨ (I_seq m).2 + 1 < (I_seq k).1) ∧
      (1 ≤ l_seq B ∧ ∀ Y₁ Y₂ : ℕ, Y₁ ≤ Y₂ → l_seq Y₁ ≤ l_seq Y₂) ∧
      (∀ n : ℕ, ∑ k ∈ Finset.range n, w_Icc (I_seq k).1 (I_seq k).2 ≤ 1 / 118900) ∧
      (∀ Y ≥ B, l_seq Y ≤ 2 ^ 57 * Y * (Nat.log 2 Y + 1) ^ 3 ∧
        ∀ i : Fin (l_seq Y), ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (I_seq i.1).1 (I_seq i.1).2).den = 1) ∧
      (∀ q : ℕ, B < q → ∀ δ : ℤ,
        ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
        ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
        12 * Real.log (q : ℝ) ≤
          ∑ k ∈ (Finset.range (l_seq q)) \ (Finset.range (l_seq (q - 1))),
            (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I_seq k).1 (I_seq k).2 : ℝ)))) ^ 2) ∧
      (∀ r Y : ℕ, (J r).2 ≤ Y → ∃ i : Fin (l_seq Y), I_seq i.1 = J r)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
