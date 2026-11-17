# `Erdos289.rational_grid_fejer_peak_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 7360](../ErdosProblem289.lean#L7360), declaration `Erdos289.rational_grid_fejer_peak_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 7360](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L7360), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Rational Fejér peak**. Direct lexical source consumer(s): **`Erdos289.fejer_limit_density_and_low_freq_positivity`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem rational_grid_fejer_peak_existence (l₀ m : ℕ) (C_m : ℚ) (r : Fin l₀ → ℝ)
    (hm : 1 ≤ m) (hCm : 0 < C_m)
    (h_kern : ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
      (∏ i : Fin l₀, |Real.cos (Real.pi * (a : ℝ) * r i)|) ≤ (C_m : ℝ))
    (hG_nonneg : ∀ x : ℝ,
      0 ≤ ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
        (1 - |(a : ℝ)| / (m : ℝ)) *
          Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin l₀, r i) - 2 * x)) *
          ∏ i : Fin l₀, Real.cos (Real.pi * (a : ℝ) * r i))
    (hG_ext : ∀ x : ℝ,
      1 / 100 + 1 / (400 * (Nat.ceil C_m + 1) : ℝ) ≤ x →
      x ≤ 1 - 1 / (400 * (Nat.ceil C_m + 1) : ℝ) →
      ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
        (1 - |(a : ℝ)| / (m : ℝ)) *
          Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin l₀, r i) - 2 * x)) *
          ∏ i : Fin l₀, Real.cos (Real.pi * (a : ℝ) * r i) ≤ 1 / 8) :
    ∃ x_d : ℚ, 0 < x_d ∧ x_d < 1 / 100 ∧
      20 ≤ ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
        (1 - |(a : ℝ)| / (m : ℝ)) *
          Real.cos (Real.pi * (a : ℝ) * ((∑ i : Fin l₀, r i) - 2 * (x_d : ℝ))) *
          ∏ i : Fin l₀, Real.cos (Real.pi * (a : ℝ) * r i)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
