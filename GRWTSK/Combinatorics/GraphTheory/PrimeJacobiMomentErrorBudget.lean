/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean 4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit and fresh kernel replay: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Certified moment -> Hankel determinant -> exact prime-bond thresholds

The adjacent mathematical record proves the entrywise determinant error
bound |det Htilde - det H| <= k! k epsilon (M+1)^(k-1) by the finite
Leibniz expansion. The lemmas here formalize its downstream interval
accounting and integer-rounding threshold without adding an RH theorem,
a zeta-zero oracle or a Hilbert-Polya spectral claim.

The true positive Hankel determinants and their prime ratio are supplied
by the independent prime-only source:
  PrimeJacobiKrylovFrontier.primeRootHankelDet_positive
  PrimeJacobiKrylovFrontier.bond_sq_from_hankel_determinants

Those candidate source modules are deliberately not imported here.
The analytic entrywise determinant bound remains a separate Lean task.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentErrorBudget

/-- Turn a verified absolute determinant error budget into a relative one. -/
theorem relative_error_of_absolute_budget
    {D measured C epsilon delta : ℝ}
    (herror : |measured - D| ≤ C * epsilon)
    (hbudget : C * epsilon ≤ delta * D) :
    |measured - D| ≤ delta * D :=
  le_trans herror hbudget

/-- A true positive determinant remains positive once its relative error
is strictly below one. No invertibility is silently assumed. -/
theorem determinant_positive_of_relative_error
    {D measured delta : ℝ}
    (hD : 0 < D) (hdelta : delta < 1)
    (herror : |measured - D| ≤ delta * D) :
    0 < measured := by
  have hlo := (abs_le.mp herror).1
  have hpos : 0 < (1 - delta) * D :=
    mul_pos (sub_pos.mpr hdelta) hD
  nlinarith

/-- Compose the absolute source budget with strict determinant positivity. -/
theorem determinant_positive_of_moment_budget
    {D measured C epsilon delta : ℝ}
    (hD : 0 < D) (hdelta : delta < 1)
    (herror : |measured - D| ≤ C * epsilon)
    (hbudget : C * epsilon ≤ delta * D) :
    0 < measured :=
  determinant_positive_of_relative_error hD hdelta
    (relative_error_of_absolute_budget herror hbudget)

/-- The exact universal relative-error threshold used to identify an
original integer prime from three consecutive Hankel determinants. -/
theorem half_unit_margin_of_relative_error
    (p : ℕ) (delta : ℝ)
    (hdelta : 0 ≤ delta)
    (hsmall : delta < 1 / (4 * (p : ℝ) + 1)) :
    (2 * delta * (p : ℝ)) / (1 - delta) < 1 / 2 := by
  have hden : (0 : ℝ) < 4 * (p : ℝ) + 1 := by positivity
  have hmul : delta * (4 * (p : ℝ) + 1) < 1 :=
    (lt_div_iff₀ hden).mp hsmall
  have hdelta_one : delta < 1 := by
    nlinarith [mul_nonneg hdelta (Nat.cast_nonneg (α := ℝ) p)]
  have hpositive : 0 < 1 - delta := sub_pos.mpr hdelta_one
  apply (div_lt_iff₀ hpositive).mpr
  nlinarith

/-- A certified inverse ratio with this error bound is closer than
half a unit to its true integer prime. Nearest-integer decoding is
therefore unique; no rounding oracle is presumed. -/
theorem reconstructed_bond_half_unit
    (p : ℕ) (measured delta : ℝ)
    (hdelta : 0 ≤ delta)
    (hsmall : delta < 1 / (4 * (p : ℝ) + 1))
    (herror :
      |measured - (p : ℝ)| ≤
        (2 * delta * (p : ℝ)) / (1 - delta)) :
    |measured - (p : ℝ)| < 1 / 2 :=
  lt_of_le_of_lt herror
    (half_unit_margin_of_relative_error p delta hdelta hsmall)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentErrorBudget
