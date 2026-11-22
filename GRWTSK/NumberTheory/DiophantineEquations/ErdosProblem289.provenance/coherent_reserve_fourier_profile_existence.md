# `Erdos289.coherent_reserve_fourier_profile_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 8402](../ErdosProblem289.lean#L8402), declaration `Erdos289.coherent_reserve_fourier_profile_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 8402](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L8402), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Coherent Fourier profile**. Direct lexical source consumer(s): **`Erdos289.coherent_reserve_and_subset_sum_compiler`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem coherent_reserve_fourier_profile_existence : ∃ (Y₀ H₀ : ℕ) (l_seq : ℕ → ℕ) (R_seq : ∀ Y : ℕ, Fin (l_seq Y) → ℕ × ℕ) (x_d g₀ : ℚ),
      1189 ≤ Y₀ ∧ 1 ≤ H₀ ∧ 0 < x_d ∧ x_d < 1 / 100 ∧ 0 < g₀ ∧
      ∀ Y ≥ Y₀,
        (∀ i : Fin (l_seq Y), 495 ≤ (R_seq Y i).1 ∧ (R_seq Y i).1 < (R_seq Y i).2 ∧ (R_seq Y i).2 ≤ (R_seq Y i).1 + 2) ∧
        (∀ i j : Fin (l_seq Y), i ≠ j → (R_seq Y i).2 + 1 < (R_seq Y j).1 ∨ (R_seq Y j).2 + 1 < (R_seq Y i).1) ∧
        (∑ i : Fin (l_seq Y), w_Icc (R_seq Y i).1 (R_seq Y i).2 ≤ 1 / 118900) ∧
        (∀ N : ℕ, Y ^ 512 ≤ N ^ 511 → 537800 * (l_seq Y + 4) ≤ N) ∧
        (∀ i : Fin (l_seq Y), ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (R_seq Y i).1 (R_seq Y i).2).den = 1) ∧
        (3 / 4 * (g₀ : ℝ) ≤
          ∑ a ∈ Finset.Icc (-(H₀ : ℤ)) (H₀ : ℤ),
            Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin (l_seq Y), (1189 * (w_Icc (R_seq Y i).1 (R_seq Y i).2 : ℝ))) - 2 * (x_d : ℝ))) *
              ∏ i : Fin (l_seq Y), Real.cos (Real.pi * (a : ℝ) * (1189 * (w_Icc (R_seq Y i).1 (R_seq Y i).2 : ℝ)))) ∧
        (∑ a ∈ (Finset.Icc (-((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) / 2) ((((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) + 1) / 2 - 1)) \
            (Finset.Icc (-(H₀ : ℤ)) (H₀ : ℤ)),
            (∏ i : Fin (l_seq Y), |Real.cos (Real.pi * (a : ℝ) * (1189 * (w_Icc (R_seq Y i).1 (R_seq Y i).2 : ℝ)))|) ≤
          1 / 4 * (g₀ : ℝ))
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
