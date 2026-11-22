# `Erdos289.universal_lacunary_gadget_sequence_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 4657](../ErdosProblem289.lean#L4657), declaration `Erdos289.universal_lacunary_gadget_sequence_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 4657](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L4657), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Lacunary gadget sequence**. Direct lexical source consumer(s): **`Erdos289.lacunary_rigidity_and_combined_reserve_merge`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem universal_lacunary_gadget_sequence_existence (B : ℕ) (hB : 1189 ≤ B) :
    ∃ (J : ℕ → ℕ × ℕ) (p_idx : ℕ → ℕ → ℕ),
      (∀ r : ℕ, 495 ≤ (J r).1 ∧ (J r).1 < (J r).2 ∧ (J r).2 ≤ (J r).1 + 2) ∧
      (∀ r₁ r₂ : ℕ, r₁ ≠ r₂ → (J r₁).2 + 1 < (J r₂).1 ∨ (J r₂).2 + 1 < (J r₁).1) ∧
      (∀ r : ℕ, (B + 2) ^ 2 * 2 ^ (20 * (r + 1)) ≤ (J r).1) ∧
      (∀ n : ℕ, ∑ r ∈ Finset.range n, w_Icc (J r).1 (J r).2 ≤ 1 / 237800) ∧
      (∀ m₁ j₁ m₂ j₂ : ℕ, p_idx m₁ j₁ = p_idx m₂ j₂ → m₁ = m₂ ∧ j₁ = j₂) ∧
      (∀ m j : ℕ,
        let p := p_idx m j
        let m_val := (2 * m + 1) * 2 ^ (60 * (B + 2) * 2 ^ m * (2 * j + 1))
        (J (3 * p)).2 ≤ 7135 * m_val ∧
        (J (3 * p + 1)).2 ≤ 7135 * m_val ∧
        (J (3 * p + 2)).2 ≤ 7135 * m_val ∧
        2 * (1189 * w_Icc (J (3 * p)).1 (J (3 * p)).2) +
          3 * (1189 * w_Icc (J (3 * p + 1)).1 (J (3 * p + 1)).2) -
          6 * (1189 * w_Icc (J (3 * p + 2)).1 (J (3 * p + 2)).2) = (m_val : ℚ)⁻¹)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
