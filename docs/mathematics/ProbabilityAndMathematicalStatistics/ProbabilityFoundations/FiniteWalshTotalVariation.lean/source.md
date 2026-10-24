# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshTotalVariation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbeaaf1fca22e3a5824d1ffe051907315ee43f80` · SHA-256 `fa59f86ce630d595881359b4711e5d88e11229eb0f7c6d54839021eff298d94a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Finite total-variation inequality proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite Walsh energy controls total variation

Issue grwtsk/math#630; draft PR #638.
Use the exact *full-cube* Parseval relation and Cauchy--Schwarz to bound
the empirical sign-pattern law's TV distance from the fair Bernoulli law.
The rational square bound is kept separate from its real square-root form.

All labels and root sets are arbitrary. A positive root count is required
for the probability interpretation. This makes NO Chowla cancellation,
sofic-limit, microscopic spectral, GUE, or RH claim.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- One half of the L1 distance from the empirical Boolean law to the
uniform law on the complete cube. The exact rational expression uses
the already-typed deviation q*P(a)-1. With roots.card=0 it has an
algebraic value but no probability-distance interpretation. -/
def totalVariationFromUniform (roots : Finset ℕ)
    (x : ℕ → ι → Bool) : ℚ :=
  (∑ a : ι → Bool, |scaledPatternDeviation roots x a|) /
    (2 * (Fintype.card (ι → Bool) : ℚ))

/-- A Boolean cube has at least one assignment, including when the
coordinate type is empty. -/
theorem boolCube_card_pos : (0 : ℚ) < (Fintype.card (ι → Bool) : ℚ) := by
  have : Nonempty (ι → Bool) := ⟨fun _ => false⟩
  exact_mod_cast (Fintype.card_pos (α := ι → Bool))

/-- The finite expression called total variation is nonnegative
regardless of sample size. Its probabilistic semantics require
an additional nonempty-root hypothesis. -/
theorem totalVariationFromUniform_nonneg (roots : Finset ℕ)
    (x : ℕ → ι → Bool) : 0 ≤ totalVariationFromUniform roots x := by
  unfold totalVariationFromUniform
  apply div_nonneg
  · exact Finset.sum_nonneg (fun a _ => abs_nonneg (scaledPatternDeviation roots x a))
  · have hq := boolCube_card_pos (ι := ι)
    positivity

/-- Finite Cauchy--Schwarz applied to the absolute scaled discrepancies:
the number of terms is exactly q, not the number of sampled roots. -/
theorem scaledDeviation_l1_sq_le_card_mul_l2 (roots : Finset ℕ)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool, |scaledPatternDeviation roots x a|) ^ 2 ≤
      (Fintype.card (ι → Bool) : ℚ) *
        (∑ a : ι → Bool, (scaledPatternDeviation roots x a) ^ 2) := by
  classical
  simpa only [Finset.card_univ, sq_abs] using
    (sq_sum_le_card_mul_sum_sq
      (s := (Finset.univ : Finset (ι → Bool)))
      (f := fun a : ι → Bool => |scaledPatternDeviation roots x a|))

/-- The L1-square numerator is bounded by q² times the exact
nonempty-correlation energy. No absolute-value/square confusion. -/
theorem scaledDeviation_l1_sq_le_energy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    (∑ a : ι → Bool, |scaledPatternDeviation roots x a|) ^ 2 ≤
      (Fintype.card (ι → Bool) : ℚ) ^ 2 *
        nonemptyCorrelationEnergy roots x := by
  calc
    _ ≤ (Fintype.card (ι → Bool) : ℚ) *
          (∑ a : ι → Bool, (scaledPatternDeviation roots x a) ^ 2) :=
      scaledDeviation_l1_sq_le_card_mul_l2 roots x
    _ = (Fintype.card (ι → Bool) : ℚ) *
          ((Fintype.card (ι → Bool) : ℚ) *
             nonemptyCorrelationEnergy roots x) := by
      rw [scaledPatternDeviation_parseval roots x hroots]
    _ = (Fintype.card (ι → Bool) : ℚ) ^ 2 *
          nonemptyCorrelationEnergy roots x := by ring

/-- Exact rational squared-TV form of the classical finite
Cauchy--Schwarz bound. Equivalently, 4*TV² ≤ correlation energy. -/
theorem two_mul_totalVariation_sq_le_energy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    ((2 : ℚ) * totalVariationFromUniform roots x) ^ 2 ≤
      nonemptyCorrelationEnergy roots x := by
  let q : ℚ := Fintype.card (ι → Bool)
  have hq : 0 < q := boolCube_card_pos (ι := ι)
  have hq2 : 0 < q ^ 2 := pow_pos hq 2
  have hform :
      (2 : ℚ) * totalVariationFromUniform roots x =
        (∑ a : ι → Bool, |scaledPatternDeviation roots x a|) / q := by
    dsimp [totalVariationFromUniform, q]
    field_simp [ne_of_gt (boolCube_card_pos (ι := ι))]
  rw [hform, div_pow]
  apply (div_le_iff₀ hq2).2
  calc
    _ ≤ q ^ 2 * nonemptyCorrelationEnergy roots x := by
      simpa only [q] using scaledDeviation_l1_sq_le_energy roots x hroots
    _ = nonemptyCorrelationEnergy roots x * q ^ 2 := by ring

/-- The familiar square-root bound is stated over reals. The
energy is explicitly cast from the finite rational coefficient sum.
No real-valued arithmetic hypothesis is inserted. -/
theorem totalVariation_le_half_sqrt_energy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    (totalVariationFromUniform roots x : ℝ) ≤
      Real.sqrt (nonemptyCorrelationEnergy roots x : ℝ) / 2 := by
  have hsquare :
      ((2 : ℝ) * (totalVariationFromUniform roots x : ℝ)) ^ 2 ≤
        (nonemptyCorrelationEnergy roots x : ℝ) := by
    exact_mod_cast two_mul_totalVariation_sq_le_energy roots x hroots
  have hroot := Real.le_sqrt_of_sq_le hsquare
  linarith

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
