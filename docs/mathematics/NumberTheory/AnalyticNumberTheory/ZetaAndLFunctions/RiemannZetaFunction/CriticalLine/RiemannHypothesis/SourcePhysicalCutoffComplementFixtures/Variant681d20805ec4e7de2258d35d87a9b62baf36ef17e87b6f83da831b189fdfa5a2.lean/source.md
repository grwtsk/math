# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhysicalCutoffComplementFixtures.Variant681d20805ec4e7de2258d35d87a9b62baf36ef17e87b6f83da831b189fdfa5a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `657105723d6c4dd0d123b31ef26cb5127512199e` · SHA-256 `681d20805ec4e7de2258d35d87a9b62baf36ef17e87b6f83da831b189fdfa5a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePhysicalCutoffComplement

/-!
# Hostile fixtures for inference from fixed-source cutoff identities

UNCOMPILED preparation. The finite coefficients below are generic and already
absorb any weight. They are not the repository's normalized source profile,
Mangoldt row, centered beta row or RH counterterm. They test the inference from
an exact prefix-plus-tail identity to tail positivity or a uniform scale bound.
No fixture is asserted to refute the actual RH target.

AI attribution: authored with OpenAI Codex. No native replay or new kernel
credit is claimed. Keep these signed complements with the source identities.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalCutoffComplementFixtures

/-- Signed complements change sign while the complete finite total remains equal. -/
theorem generic_signed_tail_sign_change_preserves_compensated_total :
    let f : ℕ → ℝ := fun n => if n = 2 then -2 else if n = 4 then 1 else 0
    (∑ n ∈ Finset.Ioc 1 4, f n) = -1 ∧
    (∑ n ∈ Finset.Ioc 2 4, f n) = 1 ∧
    (∑ n ∈ Finset.Ioc 4 4, f n) = 0 ∧
    (∑ n ∈ Finset.Ioc 7 4, f n) = 0 ∧
    ((∑ n ∈ Finset.Icc 1 1, f n) + (∑ n ∈ Finset.Ioc 1 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 2, f n) + (∑ n ∈ Finset.Ioc 2 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 4, f n) + (∑ n ∈ Finset.Ioc 4 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 7, f n) + (∑ n ∈ Finset.Ioc 7 4, f n)) = -1 := by
  have ht1 : Finset.Ioc (1 : ℕ) 4 = {2, 3, 4} := by decide
  have ht2 : Finset.Ioc (2 : ℕ) 4 = {3, 4} := by decide
  have ht4 : Finset.Ioc (4 : ℕ) 4 = ∅ := by decide
  have ht7 : Finset.Ioc (7 : ℕ) 4 = ∅ := by decide
  have hp1 : Finset.Icc (1 : ℕ) 1 = {1} := by decide
  have hp2 : Finset.Icc (1 : ℕ) 2 = {1, 2} := by decide
  have hp4 : Finset.Icc (1 : ℕ) 4 = {1, 2, 3, 4} := by decide
  have hp7 : Finset.Icc (1 : ℕ) 7 = {1, 2, 3, 4, 5, 6, 7} := by decide
  norm_num [ht1, ht2, ht4, ht7, hp1, hp2, hp4, hp7]

/-- A fixed finite carrier can have growing complete value, defeating a uniform eventual cap. -/
theorem generic_fixed_finite_carrier_has_no_eventual_uniform_cap :
    ¬ ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (∑ n ∈ (Finset.Icc 1 1 : Finset ℕ), if n = 2 then A else 0) +
        (∑ n ∈ (Finset.Ioc 1 2 : Finset ℕ), if n = 2 then A else 0) ≤ D := by
  intro h
  rcases h with ⟨D, R, _, _, hbound⟩
  have hp : Finset.Icc (1 : ℕ) 1 = {1} := by decide
  have ht : Finset.Ioc (1 : ℕ) 2 = {2} := by decide
  have hs := hbound (max R (D + 1)) (le_max_left R (D + 1))
  norm_num [hp, ht] at hs
  have hl := le_max_right R (D + 1)
  linarith

end FormalResearch.RiemannHypothesis.SourcePhysicalCutoffComplementFixtures
```
