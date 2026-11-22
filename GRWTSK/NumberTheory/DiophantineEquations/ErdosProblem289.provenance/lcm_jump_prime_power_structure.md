# `Erdos289.lcm_jump_prime_power_structure`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 1102](../ErdosProblem289.lean#L1102), declaration `Erdos289.lcm_jump_prime_power_structure`.
- Exact upstream: [Formal Conjectures `289.lean` at line 1102](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L1102), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Prime-power detection through LCM jumps**. Direct lexical source consumer(s): **`Erdos289.prime_power_digit_reservoir_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem lcm_jump_prime_power_structure : (∀ q : ℕ, 2 ^ 128 < q →
      ¬ (((Finset.Icc 1 q).lcm id) / 1189 ∣ ((Finset.Icc 1 (q - 1)).lcm id) / 1189) →
      ∃ p e : ℕ, Nat.Prime p ∧ 1 ≤ e ∧ q = p ^ e ∧
        (Finset.Icc 1 q).lcm id = p * (Finset.Icc 1 (q - 1)).lcm id ∧
        ((Finset.Icc 1 q).lcm id) / 1189 = p * (((Finset.Icc 1 (q - 1)).lcm id) / 1189) ∧
        1189 * (((Finset.Icc 1 (q - 1)).lcm id) / 1189) = (Finset.Icc 1 (q - 1)).lcm id ∧
        1189 * (((Finset.Icc 1 q).lcm id) / 1189) = (Finset.Icc 1 q).lcm id ∧
        Nat.Coprime p (((Finset.Icc 1 q).lcm id) / q)) ∧
    (∀ q₁ q₂ a₁ a₂ : ℕ, 2 ^ 128 < q₁ → q₁ < q₂ →
      ¬ (((Finset.Icc 1 q₂).lcm id) / 1189 ∣ ((Finset.Icc 1 (q₂ - 1)).lcm id) / 1189) →
      1 ≤ a₁ →
      ((((Finset.Icc 1 q₁).lcm id : ℕ) : ℚ) * w_Icc a₁ (a₁ + 1)).den = 1 →
      q₂ ∣ a₂ * (a₂ + 1) →
      a₁ ≠ a₂)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
