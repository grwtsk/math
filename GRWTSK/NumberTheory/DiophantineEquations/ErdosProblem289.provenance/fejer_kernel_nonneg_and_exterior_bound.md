# `Erdos289.fejer_kernel_nonneg_and_exterior_bound`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 7148](../ErdosProblem289.lean#L7148), declaration `Erdos289.fejer_kernel_nonneg_and_exterior_bound`.
- Exact upstream: [Formal Conjectures `289.lean` at line 7148](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L7148), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Fejér kernel bounds**. Direct lexical source consumer(s): **`Erdos289.fejer_limit_density_and_low_freq_positivity`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem fejer_kernel_nonneg_and_exterior_bound (m : ℕ) (hm : 1 ≤ m) (u : ℝ) :
    (0 ≤ ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
      (1 - |(a : ℝ)| / (m : ℝ)) * Real.cos (2 * Real.pi * (a : ℝ) * u)) ∧
    (∀ δ : ℝ, 0 < δ → δ ≤ 1 / 4 → δ ≤ -u → -u ≤ 1 - δ →
      ∑ a ∈ Finset.Icc (-(m : ℤ)) (m : ℤ),
        (1 - |(a : ℝ)| / (m : ℝ)) * Real.cos (2 * Real.pi * (a : ℝ) * u) ≤
        1 / ((m : ℝ) * (Real.sin (Real.pi * δ)) ^ 2))
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
