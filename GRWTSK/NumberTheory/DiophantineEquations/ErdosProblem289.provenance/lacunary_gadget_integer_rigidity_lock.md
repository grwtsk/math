# `Erdos289.lacunary_gadget_integer_rigidity_lock`

Provenance record by **grwtsk contributors**. The theorem and proof are copied byte-for-byte from the externally attributed LEAP/Formal Conjectures source; no local theorem authorship or mathematical novelty is claimed.

## Provenance and exact type

- Canonical: [`ErdosProblem289.lean` line 5611](../ErdosProblem289.lean#L5611), declaration `Erdos289.lacunary_gadget_integer_rigidity_lock`.
- Exact upstream: [Formal Conjectures `289.lean` at line 5611](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean#L5611), revision `ff33e501bb78a90ae4703e22e052f8bb38e10146`, blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Copyright of imported Lean: **Copyright 2025 The Formal Conjectures Authors**, **Apache-2.0**; original header retained. Mathematical problem origin: Erdős–Graham (1980), p.34, as distinguished from these new upstream intermediate lemmas. The LEAP project reports the formalization in [arXiv:2606.03303](https://arxiv.org/abs/2606.03303).
- Role in this exact proof: **Lacunary integer rigidity**. Direct lexical source consumer(s): **`Erdos289.lacunary_rigidity_and_combined_reserve_merge`**. See [related work and the return map](../ErdosProblem289.related-work.md).

```lean
theorem lacunary_gadget_integer_rigidity_lock (B : ℕ) (hB : 1189 ≤ B)
    (l_seq : ℕ → ℕ) (I_seq : ℕ → ℕ × ℕ)
    (h_bounds : ∀ k : ℕ, 495 ≤ (I_seq k).1 ∧ (I_seq k).1 < (I_seq k).2 ∧ (I_seq k).2 ≤ (I_seq k).1 + 2)
    (h_sep : ∀ k m : ℕ, k ≠ m → (I_seq k).2 + 1 < (I_seq m).1 ∨ (I_seq m).2 + 1 < (I_seq k).1)
    (h_mono : 1 ≤ l_seq B ∧ ∀ Y₁ Y₂ : ℕ, Y₁ ≤ Y₂ → l_seq Y₁ ≤ l_seq Y₂)
    (h_scale_lcm : ∀ Y ≥ B, l_seq Y ≤ 2 ^ 57 * Y * (Nat.log 2 Y + 1) ^ 3 ∧
      ∀ i : Fin (l_seq Y), ((((Finset.Icc 1 Y).lcm id : ℕ) : ℚ) * w_Icc (I_seq i.1).1 (I_seq i.1).2).den = 1)
    (J : ℕ → ℕ × ℕ) (p_idx : ℕ → ℕ → ℕ)
    (hJ_bounds : ∀ r : ℕ, 495 ≤ (J r).1 ∧ (J r).1 < (J r).2 ∧ (J r).2 ≤ (J r).1 + 2)
    (hJ_sep : ∀ r₁ r₂ : ℕ, r₁ ≠ r₂ → (J r₁).2 + 1 < (J r₂).1 ∨ (J r₂).2 + 1 < (J r₁).1)
    (hp_inj : ∀ m₁ j₁ m₂ j₂ : ℕ, p_idx m₁ j₁ = p_idx m₂ j₂ → m₁ = m₂ ∧ j₁ = j₂)
    (hJ_ident : ∀ m j : ℕ,
      let p := p_idx m j
      let m_val := (2 * m + 1) * 2 ^ (60 * (B + 2) * 2 ^ m * (2 * j + 1))
      (J (3 * p)).2 ≤ 7135 * m_val ∧
      (J (3 * p + 1)).2 ≤ 7135 * m_val ∧
      (J (3 * p + 2)).2 ≤ 7135 * m_val ∧
      2 * (1189 * w_Icc (J (3 * p)).1 (J (3 * p)).2) +
        3 * (1189 * w_Icc (J (3 * p + 1)).1 (J (3 * p + 1)).2) -
        6 * (1189 * w_Icc (J (3 * p + 2)).1 (J (3 * p + 2)).2) = (m_val : ℚ)⁻¹)
    (h_gadget_mem : ∀ r Y : ℕ, (J r).2 ≤ Y → ∃ i : Fin (l_seq Y), I_seq i.1 = J r)
    (M : ℝ) (hM : 0 < M)
    (c : ℕ → ℤ)
    (hc_compat : ∀ d₁ d₂ : ℕ, 0 < d₁ → 0 < d₂ → d₁ ∣ d₂ → (d₁ : ℤ) ∣ (c d₂ - c d₁))
    (hc_energy : ∀ Y d : ℕ, Y ≤ d →
      ∑ i : Fin (l_seq Y),
        (Real.sin (Real.pi * (c d : ℝ) * (1189 * (w_Icc (I_seq i.1).1 (I_seq i.1).2 : ℝ)))) ^ 2 ≤ M) :
    ∃ a_star : ℤ,
      (∀ d : ℕ, 0 < d → (d : ℤ) ∣ (c d - a_star)) ∧
      (∀ Y ≥ B, ∑ i : Fin (l_seq Y),
        (Real.sin (Real.pi * (a_star : ℝ) * (1189 * (w_Icc (I_seq i.1).1 (I_seq i.1).2 : ℝ)))) ^ 2 ≤ M)
```

## Correspondence and limits

- Statement, quantifiers, constants, domain and proof text match the pinned upstream file exactly. No simplification, new axiom or RH/GRH return is asserted. A direct reference above is a lexical observation, not yet a kernel dependency audit.
- This source's mathematical consumer is the eventual separated reciprocal-interval representation of **1**, not a zero-locating zeta/Dirichlet theorem.
- Upstream used Lean `v4.33.1`; local `grwtsk/math` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Local elaboration/statement verification: **NOT_RUN**; kernel replay: **NOT_RUN**; transitive axiom audit: **NOT_RUN**; independent analytical review: **UNASSESSED**. No accepted theorem claim is inferred from copied source or checksum.
