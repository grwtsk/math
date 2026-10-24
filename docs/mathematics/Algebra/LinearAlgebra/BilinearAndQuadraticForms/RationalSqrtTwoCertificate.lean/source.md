# Complete source: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.RationalSqrtTwoCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce132e758905ebacc112934c7dc9f44bbcf5152c` · SHA-256 `89bf8cf37dbbeb02f0d4892713a8dafbdb98b6380029bf599af12c6d2cabb9be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Research direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Standalone leaf; no root import.
-/
import Mathlib.NumberTheory.Real.Irrational
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Ring

/-!
# An exact rational two-moment certificate at sqrt(2)

For a finite vector of rational differences and positive normalized rational
weights, the weighted mean and the centered squared energy vanish together
exactly when every difference vanishes. Rational independence of 1 and sqrt(2)
packages this predicate into one exact real equality.

These are finite algebraic statements. They do not identify mathematical roots,
authenticate data, prove completeness, implement compression or supply an RH
premise. The two moments are not a reversible encoding of the signed vector.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.RationalSqrtTwoCertificate

/-- Rational coordinates cannot cancel across the fixed irrational anchor. -/
theorem rational_pair_eq_zero_iff (a b : ℚ) :
    (a : ℝ) + Real.sqrt 2 * (b : ℝ) = 0 ↔ a = 0 ∧ b = 0 := by
  constructor
  · intro h
    by_cases hb : b = 0
    · have ha : a = 0 := by simpa [hb] using h
      exact ⟨ha, hb⟩
    · have hi : Irrational ((a : ℝ) + Real.sqrt 2 * (b : ℝ)) :=
        (irrational_sqrt_two.mul_ratCast hb).ratCast_add a
      exact False.elim (hi.ne_zero h)
  · rintro ⟨rfl, rfl⟩
    simp

variable {ι : Type*} [Fintype ι]

/-- Weighted mean of the complete stored rational difference vector. -/
def weightedMean (p delta : ι → ℚ) : ℚ :=
  ∑ i, p i * delta i

/-- Keep each signed centered difference; the moments alone do not recover it. -/
def centeredResidual (p delta : ι → ℚ) (i : ι) : ℚ :=
  delta i - weightedMean p delta

/-- Complete weighted squared energy of the original differences. -/
def weightedEnergy (p delta : ι → ℚ) : ℚ :=
  ∑ i, p i * (delta i) ^ 2

/-- Complete weighted squared energy of the centered residuals. -/
def residualEnergy (p delta : ι → ℚ) : ℚ :=
  ∑ i, p i * (centeredResidual p delta i) ^ 2

/-- Normalization makes the signed centered residual have weighted sum zero. -/
theorem centeredResidual_sum_eq_zero (p delta : ι → ℚ)
    (hnorm : ∑ i, p i = 1) :
    (∑ i, p i * centeredResidual p delta i) = 0 := by
  classical
  unfold centeredResidual
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, hnorm, one_mul]
  exact sub_self _

/-- The weighted second moment splits into squared mean plus residual energy. -/
theorem energy_decomposition (p delta : ι → ℚ)
    (hnorm : ∑ i, p i = 1) :
    (weightedMean p delta) ^ 2 + residualEnergy p delta =
      weightedEnergy p delta := by
  classical
  have hr : residualEnergy p delta =
      weightedEnergy p delta - (2 * weightedMean p delta) * weightedMean p delta +
        (weightedMean p delta) ^ 2 := by
    unfold residualEnergy centeredResidual
    calc
      (∑ i, p i * (delta i - weightedMean p delta) ^ 2) =
          ∑ i, (p i * (delta i) ^ 2 -
            (2 * weightedMean p delta) * (p i * delta i) +
            (weightedMean p delta) ^ 2 * p i) := by
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ = weightedEnergy p delta -
          (2 * weightedMean p delta) * weightedMean p delta +
          (weightedMean p delta) ^ 2 * (∑ i, p i) := by
        simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
          ← Finset.mul_sum, weightedMean, weightedEnergy]
      _ = _ := by rw [hnorm, mul_one]
  rw [hr]
  ring

/-- Strictly positive weights make zero full energy equivalent to zero data. -/
theorem weightedEnergy_eq_zero_iff (p delta : ι → ℚ)
    (hpos : ∀ i, 0 < p i) :
    weightedEnergy p delta = 0 ↔ ∀ i, delta i = 0 := by
  classical
  constructor
  · intro h
    have hterms : ∀ i ∈ Finset.univ, p i * (delta i) ^ 2 = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun i (_ : i ∈ Finset.univ) =>
          mul_nonneg (le_of_lt (hpos i)) (sq_nonneg (delta i)))).1 h
    intro i
    have hsquare : (delta i) ^ 2 = 0 :=
      (mul_eq_zero.mp (hterms i (Finset.mem_univ i))).resolve_left
        (ne_of_gt (hpos i))
    exact sq_eq_zero_iff.mp hsquare
  · intro h
    simp [weightedEnergy, h]

/-- Both rational moments vanish exactly when all finite differences vanish. -/
theorem moments_eq_zero_iff (p delta : ι → ℚ)
    (hpos : ∀ i, 0 < p i) (hnorm : ∑ i, p i = 1) :
    weightedMean p delta = 0 ∧ residualEnergy p delta = 0 ↔
      ∀ i, delta i = 0 := by
  constructor
  · rintro ⟨hm, hr⟩
    apply (weightedEnergy_eq_zero_iff p delta hpos).1
    calc
      weightedEnergy p delta =
          (weightedMean p delta) ^ 2 + residualEnergy p delta :=
        (energy_decomposition p delta hnorm).symm
      _ = 0 := by rw [hm, hr]; ring
  · intro h
    constructor
    · simp [weightedMean, h]
    · simp [residualEnergy, centeredResidual, weightedMean, h]

/-- The exact sqrt(2) certificate for positive normalized rational weights.
No floating tolerance, arbitrary real weights or irrational differences occur. -/
theorem exact_sqrtTwo_certificate_iff (p delta : ι → ℚ)
    (hpos : ∀ i, 0 < p i) (hnorm : ∑ i, p i = 1) :
    (weightedMean p delta : ℝ) +
        Real.sqrt 2 * (residualEnergy p delta : ℝ) = 0 ↔
      ∀ i, delta i = 0 := by
  exact (rational_pair_eq_zero_iff (weightedMean p delta)
    (residualEnergy p delta)).trans (moments_eq_zero_iff p delta hpos hnorm)

end GRWTSK.LinearAlgebra.RationalSqrtTwoCertificate
```
