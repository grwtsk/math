# `Erdos289.coherent_digit_reserve_existence`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 4523](../ErdosProblem289.lean#L4523), declaration `Erdos289.coherent_digit_reserve_existence`.
- Exact upstream: [Formal Conjectures `289.lean` at line 4523](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L4523), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Coherent digit-reserve theorem**. Direct lexical source consumer(s): **`Erdos289.nested_reserve_with_sine_energy_existence`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem coherent_digit_reserve_existence : ∃ (B : ℕ) (l_dig : ℕ → ℕ) (I_dig : ℕ → ℕ × ℕ),
      1189 ≤ B ∧
      (∀ k : ℕ, 495 ≤ (I_dig k).1 ∧ (I_dig k).1 < (I_dig k).2 ∧ (I_dig k).2 ≤ (I_dig k).1 + 2) ∧
      (∀ k m : ℕ, k ≠ m → (I_dig k).2 + 1 < (I_dig m).1 ∨ (I_dig m).2 + 1 < (I_dig k).1) ∧
      (1 ≤ l_dig B ∧ ∀ Y₁ Y₂ : ℕ, Y₁ ≤ Y₂ → l_dig Y₁ ≤ l_dig Y₂) ∧
      (∀ n : ℕ, ∑ k ∈ Finset.range n, w_Icc (I_dig k).1 (I_dig k).2 ≤ 1 / 237800) ∧
      (∀ Y ≥ B, l_dig Y ≤ 2 ^ 56 * Y * (Nat.log 2 Y + 1) ^ 3 ∧
        ∀ i : Fin (l_dig Y), (I_dig i.1).2 ≤ Y ^ 2 / 2 ∧
          ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (I_dig i.1).1 (I_dig i.1).2).den = 1) ∧
      (∀ q : ℕ, B < q → ∀ δ : ℤ,
        ((((Finset.Icc 1 (q - 1)).lcm id) / 1189 : ℕ) : ℤ) ∣ δ →
        ¬ (((((Finset.Icc 1 q).lcm id) / 1189 : ℕ) : ℤ) ∣ δ) →
        16 * Real.log (q : ℝ) ≤
          ∑ k ∈ (Finset.range (l_dig q)) \ (Finset.range (l_dig (q - 1))),
            (Real.sin (Real.pi * (δ : ℝ) * (1189 * (w_Icc (I_dig k).1 (I_dig k).2 : ℝ)))) ^ 2)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
