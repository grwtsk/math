# `Erdos289.fejer_limit_density_and_low_freq_positivity`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 7705](../ErdosProblem289.lean#L7705), declaration `Erdos289.fejer_limit_density_and_low_freq_positivity`.
- Exact upstream: [Formal Conjectures `289.lean` at line 7705](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L7705), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Fejér density and positivity**. Direct lexical source consumer(s): **`Erdos289.coherent_reserve_fourier_profile_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem fejer_limit_density_and_low_freq_positivity (B : ℕ) (C_m : ℚ) (l_seq : ℕ → ℕ) (I_seq : ℕ → ℕ × ℕ)
    (hB : 1189 ≤ B) (hCm : 0 < C_m)
    (h_mono : 1 ≤ l_seq B ∧ ∀ Y₁ Y₂ : ℕ, Y₁ ≤ Y₂ → l_seq Y₁ ≤ l_seq Y₂)
    (h_bounds : ∀ k : ℕ, 495 ≤ (I_seq k).1 ∧ (I_seq k).1 < (I_seq k).2 ∧ (I_seq k).2 ≤ (I_seq k).1 + 2)
    (h_mass : ∀ n : ℕ, ∑ k ∈ Finset.range n, w_Icc (I_seq k).1 (I_seq k).2 ≤ 1 / 118900)
    (h_kern : ∀ Y ≥ B,
      ∑ a ∈ Finset.Icc (-((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) / 2) ((((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) + 1) / 2 - 1),
        Real.exp (- (1 / 3 : ℝ) * ∑ i : Fin (l_seq Y), (Real.sin (Real.pi * (a : ℝ) * (1189 * (w_Icc (I_seq i.1).1 (I_seq i.1).2 : ℝ)))) ^ 2) ≤ (C_m : ℝ)) :
    ∃ (x_d g₀ : ℚ) (A₀ : ℕ),
      0 < x_d ∧ x_d < 1 / 100 ∧ 0 < g₀ ∧ 1 ≤ A₀ ∧
      ∀ H₀ : ℕ, A₀ ≤ H₀ → ∃ Y_low : ℕ, B ≤ Y_low ∧
        ∀ Y ≥ Y_low,
          3 / 4 * (g₀ : ℝ) ≤
            ∑ a ∈ Finset.Icc (-(H₀ : ℤ)) (H₀ : ℤ),
              Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin (l_seq Y), (1189 * (w_Icc (I_seq i.1).1 (I_seq i.1).2 : ℝ))) - 2 * (x_d : ℝ))) *
                ∏ i : Fin (l_seq Y), Real.cos (Real.pi * (a : ℝ) * (1189 * (w_Icc (I_seq i.1).1 (I_seq i.1).2 : ℝ)))
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
