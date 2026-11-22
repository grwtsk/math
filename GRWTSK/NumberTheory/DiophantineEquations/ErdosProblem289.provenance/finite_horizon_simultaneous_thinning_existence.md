# `Erdos289.finite_horizon_simultaneous_thinning_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 3576](../ErdosProblem289.lean#L3576), declaration `Erdos289.finite_horizon_simultaneous_thinning_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 3576](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L3576), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Finite-horizon independent thinning**. Direct lexical source consumer(s): **`Erdos289.coherent_digit_reserve_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem finite_horizon_simultaneous_thinning_existence (B : ℕ) (m_res : ℕ → ℕ) (I_res : ℕ → ℕ → ℕ × ℕ)
    (hB : 2 ^ 128 ≤ B)
    (h_bounds : ∀ q > B, ∀ j < m_res q,
      q ^ 2 / (2048 * (Nat.log 2 q + 1)) ≤ (I_res q j).1 ∧
      (I_res q j).2 = (I_res q j).1 + 1 ∧
      (I_res q j).2 ≤ q ^ 2 / 2 ∧
      w_Icc (I_res q j).1 (I_res q j).2 ≤ (4096 * (Nat.log 2 q + 1) : ℚ) / (q : ℚ) ^ 2)
    (h_sep : ∀ q > B, ∀ j₁ < m_res q, ∀ j₂ < m_res q, j₁ ≠ j₂ →
      (I_res q j₁).2 + 1 < (I_res q j₂).1 ∨ (I_res q j₂).2 + 1 < (I_res q j₁).1)
    (h_dist : ∀ q₁ > B, ∀ q₂ > B, ∀ j₁ < m_res q₁, ∀ j₂ < m_res q₂,
      (q₁ ≠ q₂ ∨ j₁ ≠ j₂) → (I_res q₁ j₁).1 ≠ (I_res q₂ j₂).1)
    (h_lcm : ∀ q > B, ∀ j < m_res q,
      ((((Finset.Icc 1 q).lcm id : ℕ) : ℚ) * w_Icc (I_res q j).1 (I_res q j).2).den = 1)
    (h_phase : ∀ q > B,
      (((Finset.Icc 1 q).lcm id) / 1189 ∣ ((Finset.Icc 1 (q - 1)).lcm id) / 1189 → m_res q = 0) ∧
      (¬ (((Finset.Icc 1 q).lcm id) / 1189 ∣ ((Finset.Icc 1 (q - 1)).lcm id) / 1189) →
        m_res q = q / (512 * (Nat.log 2 q + 1)) ∧
        ∃ Δ_q : Finset ℤ, Δ_q.card ≤ q ∧
          (∀ δ : ℤ,
            ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
            ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
            ∃ δ₀ ∈ Δ_q, ∀ j < m_res q,
              (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I_res q j).1 (I_res q j).2 : ℝ)))) ^ 2 =
              (Real.sin (Real.pi * (δ₀ : ℝ) * (1189 * (w_Icc (I_res q j).1 (I_res q j).2 : ℝ)))) ^ 2) ∧
          (∀ δ₀ ∈ Δ_q, ∀ U ⊆ Finset.range (m_res q), m_res q / 2048 ≤ U.card →
            7 * U.card / 8 ≤
              (U.filter (fun j =>
                (1 : ℝ) / (2 ^ 48 * (Nat.log 2 q + 1 : ℝ) ^ 2) ≤
                  (Real.sin (Real.pi * (δ₀ : ℝ) * (1189 * (w_Icc (I_res q j).1 (I_res q j).2 : ℝ)))) ^ 2)).card)))
    (M : ℕ) :
    ∃ V_M : ℕ → Finset ℕ,
      (∀ q : ℕ, V_M q ⊆ Finset.range (m_res q) ∧ (V_M q).card ≤ 2 ^ 55 * (Nat.log 2 q + 1) ^ 3) ∧
      (∀ q₁ ∈ Finset.Ioc B M, ∀ q₂ ∈ Finset.Ioc B M, ∀ j₁ ∈ V_M q₁, ∀ j₂ ∈ V_M q₂,
        (q₁ ≠ q₂ ∨ j₁ ≠ j₂) →
        (I_res q₁ j₁).2 + 1 < (I_res q₂ j₂).1 ∨ (I_res q₂ j₂).2 + 1 < (I_res q₁ j₁).1) ∧
      (∀ q ∈ Finset.Ioc B M, ∀ δ : ℤ,
        ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
        ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
        16 * Real.log (q : ℝ) ≤
          ∑ j ∈ V_M q,
            (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I_res q j).1 (I_res q j).2 : ℝ)))) ^ 2)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
