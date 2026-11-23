/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE, Lean 4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, kernel replay, transitive axiom audit: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Independent finite arithmetic normalization of Alpoge's main inequality

The adjacent AlpogeMainPrimeArithmetic.md derives the original
prime-power cell summation, its centering and its exact error ledger.

This Lean file proves ONLY elementary local arithmetic identities
from that source: correct four-character signs, weight-dependent
cutoffs, and the complete algebraic normalization of the unnormalized
lattice error. The deep (M) source inequality, theta integrality,
lattice covolumes, trace formulas, character bounds and Galois
estimates remain OPEN independently. No imported RH or its conclusion.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeMainPrimeArithmetic

/-- The EXACT four Dirichlet-character signs after averaging
distinguished cells. Here q and d denote character VALUES,
not the prime moduli. The coefficient of the trivial source
is +1, not a nonnegative replacement for the twisted terms. -/
theorem four_character_signed_selector (q d : ℝ) :
    (1 + q) * (1 - d) = 1 + q - d - q * d := by
  ring

/-- If the original source weight is >=1, prime powers r>a
contribute zero to the positive-part expression (a/r-w)_+.
The lower-weight counterexamples below show why this premise
must not be deleted. -/
theorem large_prime_power_vanishes_at_weight_one
    (a w r : ℝ) (ha : 0 ≤ a) (hw : 1 ≤ w) (hr : a < r) :
    max (a / r - w) 0 = 0 := by
  have hrpos : 0 < r := lt_of_le_of_lt ha hr
  have hdiv : a / r < 1 :=
    (div_lt_iff₀ hrpos).2 (by simpa using hr)
  exact max_eq_right (by linarith)

/-- Actual prime power 5^7=78125 survives the model
a=10000 and weight=1/20 although it lies ABOVE a. -/
theorem low_weight_five_seventh_survives :
    (0 : ℚ) < max ((10000 : ℚ) / 78125 - 1 / 20) 0 := by
  norm_num

/-- Actual prime power 11^5=161051 likewise survives. -/
theorem low_weight_eleven_fifth_survives :
    (0 : ℚ) < max ((10000 : ℚ) / 161051 - 1 / 20) 0 := by
  norm_num

/-- EXACT algebra of the third unnormalized error contribution
of (II.15) after writing u=x^eps and x^(-eps)=1/u,
h₂=n*delta. Keep both nested n factors! -/
theorem third_source_error_term
    (n delta k b u : ℝ) (hn : n ≠ 0) (hu : u ≠ 0) :
    (n * delta * k * b * u) / (n * (n / u)) =
      delta * k * b * u ^ 2 / n := by
  field_simp [hn, hu]
  ring

/-- EXACT normalized source error (II.16), BEFORE the
density and power slack estimates. Variables:
 h=|T|, m=#theta lifts, b=distinguished weight,
 delta=|T₂|/n, n=|H|, k=initial rank,
 ae=aggregate arithmetic scale, u=x^eps.
The original (II.15) itself is a SEPARATE, unproved supplier;
this identity cannot be used to assume it. -/
theorem source_M_error_normalization
    (h ae m k n b delta u : ℝ)
    (hh : h ≠ 0) (hm : m ≠ 0) (hk : k ≠ 0)
    (hn : n ≠ 0) (hb : b ≠ 0) (hd : delta ≠ 0) :
    (h * ae * (1 + m ^ 2 / k) +
       m * (2 * n * m * b * u + delta * k * b * u ^ 2 / n)) /
       (h * m * b * delta / 2) =
       (2 * ae / (m * b * delta)) * (1 + m ^ 2 / k) +
       4 * n * m * u / (h * delta) +
       2 * k * u ^ 2 / (h * n) := by
  field_simp [hh, hm, hk, hn, hb, hd]
  ring

end GRWTSK.NumberTheory.AlpogeMainPrimeArithmetic
