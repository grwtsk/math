# `Erdos289.smooth_pruned_packet_pool_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 750](../ErdosProblem289.lean#L750), declaration `Erdos289.smooth_pruned_packet_pool_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 750](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L750), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Sieved packet pool**. Direct lexical source consumer(s): **`Erdos289.scale_window_packet_reserve_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem smooth_pruned_packet_pool_existence (ε : ℚ) (hε : 0 < ε) :
    ∃ N₁ : ℕ, 475600 ≤ N₁ ∧ ∀ N ≥ N₁, ∀ Y : ℕ,
      Y ^ 512 ≤ N ^ 511 → N ^ 511 < (Y + 1) ^ 512 →
      ∀ (l₀ : ℕ) (R₀ : Fin l₀ → ℕ × ℕ),
        l₀ ≤ N / (Nat.ceil (30000 / ε) + 237800) →
        (∀ i : Fin l₀, (R₀ i).2 ≤ (R₀ i).1 + 2) →
        ∃ P : Finset ℕ, P ⊆ Finset.Icc N ((9 * N) / 8) ∧
          (∀ t ∈ P, 3 ∣ t) ∧
          (∀ i : Fin l₀, ∀ t ∈ P,
            ((R₀ i).2 + 1 < 2 * t - 2 ∨ 2 * t + 3 < (R₀ i).1) ∧
            ((R₀ i).2 + 1 < 3 * t - 2 ∨ 3 * t + 3 < (R₀ i).1) ∧
            ((R₀ i).2 + 1 < 6 * t - 2 ∨ 6 * t + 3 < (R₀ i).1)) ∧
          (∀ t ∈ P, ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_pkt t).den = 1) ∧
          N / 4800 ≤ P.card ∧
          (∀ t ∈ P, w_pkt t ≤ 6000 / (1189 * (N : ℚ))) ∧
          3 / 2 - ε ≤ 1189 * ∑ t ∈ P, w_pkt t ∧
          1189 * ∑ t ∈ P, w_pkt t ≤ 3 / 2 + ε
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
