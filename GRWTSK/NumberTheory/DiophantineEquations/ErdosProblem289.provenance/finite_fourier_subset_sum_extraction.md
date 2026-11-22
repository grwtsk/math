# `Erdos289.finite_fourier_subset_sum_extraction`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 8586](../ErdosProblem289.lean#L8586), declaration `Erdos289.finite_fourier_subset_sum_extraction`.
- Exact upstream: [Formal Conjectures `289.lean` at line 8586](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L8586), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Exact finite Fourier subset-sum**. Direct lexical source consumer(s): **`Erdos289.coherent_reserve_and_subset_sum_compiler`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem finite_fourier_subset_sum_extraction (H₀ : ℕ) (x_d g₀ : ℚ)
    (hH₀ : 1 ≤ H₀) (hxd_pos : 0 < x_d) (hxd_lt : x_d < 1 / 100) (hg₀_pos : 0 < g₀) :
    ∃ N_four : ℕ, 475600 ≤ N_four ∧ ∀ N ≥ N_four, ∀ Y ≥ 1189,
      Y ^ 512 ≤ N ^ 511 →
      ∀ (l₀ : ℕ) (R₀ : Fin l₀ → ℕ × ℕ),
        (∑ i : Fin l₀, w_Icc (R₀ i).1 (R₀ i).2 ≤ 1 / 118900) →
        (∀ i : Fin l₀, ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (R₀ i).1 (R₀ i).2).den = 1) →
        (3 / 4 * (g₀ : ℝ) ≤
          ∑ a ∈ Finset.Icc (-(H₀ : ℤ)) (H₀ : ℤ),
            Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin l₀, (1189 * (w_Icc (R₀ i).1 (R₀ i).2 : ℝ))) - 2 * (x_d : ℝ))) *
              ∏ i : Fin l₀, Real.cos (Real.pi * (a : ℝ) * (1189 * (w_Icc (R₀ i).1 (R₀ i).2 : ℝ)))) →
        (∑ a ∈ (Finset.Icc (-((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) / 2) ((((((Finset.Icc 1 Y).lcm id) / 1189 : ℕ) : ℤ) + 1) / 2 - 1)) \
            (Finset.Icc (-(H₀ : ℤ)) (H₀ : ℤ)),
            (∏ i : Fin l₀, |Real.cos (Real.pi * (a : ℝ) * (1189 * (w_Icc (R₀ i).1 (R₀ i).2 : ℝ)))|) ≤
          1 / 4 * (g₀ : ℝ)) →
        ∀ P : Finset ℕ,
          (∀ t ∈ P, ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_pkt t).den = 1) →
          N / 4800 ≤ P.card →
          (∀ t ∈ P, w_pkt t ≤ 6000 / (1189 * (N : ℚ))) →
          3 / 2 - 1 / 10 ≤ 1189 * ∑ t ∈ P, w_pkt t →
          1189 * ∑ t ∈ P, w_pkt t ≤ 3 / 2 + 1 / 10 →
          ∃ (T : Finset ℕ) (S : Finset (Fin l₀)),
            T ⊆ P ∧ ∑ t ∈ T, w_pkt t + ∑ i ∈ S, w_Icc (R₀ i).1 (R₀ i).2 = 1 / 1189
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
