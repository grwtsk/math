# `Erdos289.scale_window_packet_reserve_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 9378](../ErdosProblem289.lean#L9378), declaration `Erdos289.scale_window_packet_reserve_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 9378](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L9378), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Scale-window packet reserve**. Direct lexical source consumer(s): **`Erdos289.erdos_289`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem scale_window_packet_reserve_existence : ∃ N₀ : ℕ, 39651 ≤ N₀ ∧ ∀ N ≥ N₀,
      ∃ T : Finset ℕ, T ⊆ Finset.Icc N ((9 * N) / 8) ∧ (∀ t ∈ T, 3 ∣ t) ∧
      ∃ (l : ℕ) (R : Fin l → ℕ × ℕ),
        (∀ i : Fin l, 495 ≤ (R i).1 ∧ (R i).1 < (R i).2) ∧
        (∀ i j : Fin l, i ≠ j → (R i).2 + 1 < (R j).1 ∨ (R j).2 + 1 < (R i).1) ∧
        (∀ i : Fin l, ∀ t ∈ T,
          ((R i).2 + 1 < 2 * t - 2 ∨ 2 * t + 3 < (R i).1) ∧
          ((R i).2 + 1 < 3 * t - 2 ∨ 3 * t + 3 < (R i).1) ∧
          ((R i).2 + 1 < 6 * t - 2 ∨ 6 * t + 3 < (R i).1)) ∧
        (∑ t ∈ T, w_pkt t + ∑ i : Fin l, w_Icc (R i).1 (R i).2 = 1 / 1189) ∧
        4 + l + 4 * T.card ≤ (51 * N) / 59450 + 1 ∧
        (54 * N) / 59450 ≤ 4 + l + 5 * T.card
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
