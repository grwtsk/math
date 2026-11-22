# `Erdos289.single_prime_power_cofactor_reservoir_construction`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 1867](../ErdosProblem289.lean#L1867), declaration `Erdos289.single_prime_power_cofactor_reservoir_construction`.
- Exact upstream: [Formal Conjectures `289.lean` at line 1867](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L1867), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Single-prime-power digit reservoir**. Direct lexical source consumer(s): **`Erdos289.prime_power_digit_reservoir_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem single_prime_power_cofactor_reservoir_construction (q p e : ℕ)
    (hq : 2 ^ 128 < q) (hp : Nat.Prime p) (he : 1 ≤ e) (hq_eq : q = p ^ e) :
    ∃ (I : ℕ → ℕ × ℕ) (c : ℕ → ℕ),
      (∀ j < q / (512 * (Nat.log 2 q + 1)),
        q / (1024 * (Nat.log 2 q + 1)) ≤ c j ∧
        c j < q / 4 ∧
        Nat.Coprime (c j) p ∧
        q ^ 2 / (2048 * (Nat.log 2 q + 1)) ≤ (I j).1 ∧
        (I j).2 = (I j).1 + 1 ∧
        (I j).2 ≤ q ^ 2 / 2 ∧
        w_Icc (I j).1 (I j).2 ≤ (4096 * (Nat.log 2 q + 1) : ℚ) / (q : ℚ) ^ 2 ∧
        q ∣ (I j).1 * ((I j).1 + 1) ∧
        ((((Finset.Icc 1 q).lcm id : ℕ) : ℚ) * w_Icc (I j).1 (I j).2).den = 1 ∧
        ((p : ℤ) ∣ ((c j : ℤ) * ((((Finset.Icc 1 q).lcm id : ℕ) : ℚ) * w_Icc (I j).1 (I j).2).num -
          (((Finset.Icc 1 q).lcm id / q : ℕ) : ℤ)))) ∧
      (∀ j₁ < q / (512 * (Nat.log 2 q + 1)), ∀ j₂ < q / (512 * (Nat.log 2 q + 1)), j₁ ≠ j₂ →
        c j₁ ≠ c j₂ ∧
        ((I j₁).2 + 1 < (I j₂).1 ∨ (I j₂).2 + 1 < (I j₁).1))
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
