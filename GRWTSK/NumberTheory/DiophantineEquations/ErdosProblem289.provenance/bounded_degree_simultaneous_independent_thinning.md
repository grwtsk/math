# `Erdos289.bounded_degree_simultaneous_independent_thinning`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 2780](../ErdosProblem289.lean#L2780), declaration `Erdos289.bounded_degree_simultaneous_independent_thinning`.
- Exact upstream: [Formal Conjectures `289.lean` at line 2780](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L2780), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Independent-set thinning**. Direct lexical source consumer(s): **`Erdos289.finite_horizon_simultaneous_thinning_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem bounded_degree_simultaneous_independent_thinning (Q : Finset ℕ) (C : ℕ → Finset ℕ) (a : ℕ → ℕ → ℕ)
    (h_cap : ∀ q ∈ Q, 2 ^ 37 ≤ (C q).card)
    (h_inj : ∀ q₁ ∈ Q, ∀ q₂ ∈ Q, ∀ j₁ ∈ C q₁, ∀ j₂ ∈ C q₂,
      (q₁ ≠ q₂ ∨ j₁ ≠ j₂) → a q₁ j₁ ≠ a q₂ j₂)
    (h_sep : ∀ q ∈ Q, ∀ j₁ ∈ C q, ∀ j₂ ∈ C q, j₁ ≠ j₂ →
      a q j₁ + 5 < a q j₂ ∨ a q j₂ + 5 < a q j₁) :
    ∃ U_M : ℕ → Finset ℕ,
      (∀ q ∈ Q, U_M q ⊆ C q ∧ (C q).card / 1024 ≤ (U_M q).card) ∧
      (∀ q₁ ∈ Q, ∀ q₂ ∈ Q, ∀ j₁ ∈ U_M q₁, ∀ j₂ ∈ U_M q₂,
        (q₁ ≠ q₂ ∨ j₁ ≠ j₂) →
        a q₁ j₁ + 2 < a q₂ j₂ ∨ a q₂ j₂ + 2 < a q₁ j₁)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
