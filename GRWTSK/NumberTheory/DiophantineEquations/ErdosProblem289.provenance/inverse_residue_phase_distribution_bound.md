# `Erdos289.inverse_residue_phase_distribution_bound`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 2231](../ErdosProblem289.lean#L2231), declaration `Erdos289.inverse_residue_phase_distribution_bound`.
- Exact upstream: [Formal Conjectures `289.lean` at line 2231](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L2231), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Inverse residue distribution**. Direct lexical source consumer(s): **`Erdos289.prime_power_digit_reservoir_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem inverse_residue_phase_distribution_bound (q p e : ℕ)
    (hq : 2 ^ 128 < q) (hp : Nat.Prime p) (he : 1 ≤ e) (hq_eq : q = p ^ e)
    (hD_step : (Finset.Icc 1 q).lcm id = p * (Finset.Icc 1 (q - 1)).lcm id)
    (hL_step : ((Finset.Icc 1 q).lcm id) / 1189 = p * (((Finset.Icc 1 (q - 1)).lcm id) / 1189))
    (hL_prev : 1189 * (((Finset.Icc 1 (q - 1)).lcm id) / 1189) = (Finset.Icc 1 (q - 1)).lcm id)
    (hL_curr : 1189 * (((Finset.Icc 1 q).lcm id) / 1189) = (Finset.Icc 1 q).lcm id)
    (h_cop_Dq : Nat.Coprime p (((Finset.Icc 1 q).lcm id) / q))
    (I : ℕ → ℕ × ℕ) (c : ℕ → ℕ)
    (hc_props : ∀ j < q / (512 * (Nat.log 2 q + 1)),
      c j < q / 4 ∧
      Nat.Coprime (c j) p ∧
      ((((Finset.Icc 1 q).lcm id : ℕ) : ℚ) * w_Icc (I j).1 (I j).2).den = 1 ∧
      ((p : ℤ) ∣ ((c j : ℤ) * ((((Finset.Icc 1 q).lcm id : ℕ) : ℚ) * w_Icc (I j).1 (I j).2).num -
        (((Finset.Icc 1 q).lcm id / q : ℕ) : ℤ))))
    (hc_inj : ∀ j₁ < q / (512 * (Nat.log 2 q + 1)), ∀ j₂ < q / (512 * (Nat.log 2 q + 1)),
      j₁ ≠ j₂ → c j₁ ≠ c j₂) :
    ∃ Δ_q : Finset ℤ, Δ_q.card ≤ q ∧
      (∀ δ : ℤ,
        ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
        ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
        ∃ δ₀ ∈ Δ_q, ∀ j < q / (512 * (Nat.log 2 q + 1)),
          (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I j).1 (I j).2 : ℝ)))) ^ 2 =
          (Real.sin (Real.pi * (δ₀ : ℝ) * (1189 * (w_Icc (I j).1 (I j).2 : ℝ)))) ^ 2) ∧
      (∀ δ₀ ∈ Δ_q, ∀ U ⊆ Finset.range (q / (512 * (Nat.log 2 q + 1))),
        (q / (512 * (Nat.log 2 q + 1))) / 2048 ≤ U.card →
        7 * U.card / 8 ≤
          (U.filter (fun j =>
            (1 : ℝ) / (2 ^ 48 * (Nat.log 2 q + 1 : ℝ) ^ 2) ≤
              (Real.sin (Real.pi * (δ₀ : ℝ) * (1189 * (w_Icc (I j).1 (I j).2 : ℝ)))) ^ 2)).card)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
