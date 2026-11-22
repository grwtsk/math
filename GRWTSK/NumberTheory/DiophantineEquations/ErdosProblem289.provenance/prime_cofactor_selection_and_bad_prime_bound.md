# `Erdos289.prime_cofactor_selection_and_bad_prime_bound`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 1562](../ErdosProblem289.lean#L1562), declaration `Erdos289.prime_cofactor_selection_and_bad_prime_bound`.
- Exact upstream: [Formal Conjectures `289.lean` at line 1562](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L1562), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Prime cofactor and bad-prime budget**. Direct lexical source consumer(s): **`Erdos289.single_prime_power_cofactor_reservoir_construction`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem prime_cofactor_selection_and_bad_prime_bound (q p e : ℕ)
    (hq : 2 ^ 128 < q) (hp : Nat.Prime p) (he : 1 ≤ e) (hq_eq : q = p ^ e) :
    ∃ (G_q : Finset ℕ) (c_of d_of a_of : ℕ → ℕ),
      G_q ⊆ (Finset.Ioc (q / 64) (q / 4)).filter Nat.Prime ∧
      ((Finset.Ioc (q / 64) (q / 4)).filter Nat.Prime).card ≤ G_q.card + 512 ∧
      (∀ l ∈ G_q,
        1 ≤ c_of l ∧
        c_of l < l ∧
        Nat.Coprime (c_of l) p ∧
        1 ≤ d_of l ∧
        d_of l < q ∧
        Nat.Coprime l (d_of l) ∧
        ((a_of l = q * c_of l ∧ a_of l + 1 = l * d_of l) ∨
         (a_of l + 1 = q * c_of l ∧ a_of l = l * d_of l)))
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
