/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePadicSignFidelity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleTwoThreeCornerPacket
import Mathlib

/-!
# Integer-cleared original Liouville 2-by-3 weighted Gram

For indices q,2q,3q,6q in the original positive inventory, clearing
the four reciprocal max-weights and the terminal N+1 face by
D=6q(N+1) produces the EXACT integer signed Gram with
row max factors (6,3,2,1). No signed pair is dropped.

At true source signs (a,-a,-a,a), this integer Gram equals
4(N+1), matching D times the original real packet 2/(3q).
This is the finite signed rational-to-integer comparison required
before a 2-adic residue tower can represent the original packet.

It does NOT provide a uniformly bounded denominator for the full
Liouville weighted-prefix source, a completed prismatic RΓ comparison,
cohomology vanishing, or an all-rate arithmetic energy estimate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvilleTwoThreePadicClearing

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleTwoThreeCornerPacket
open GRWTSK.NumberTheory.LiouvillePadicSignFidelity

/-- The exact 4-by-4 ordered integer Gram obtained by multiplying the
original weighted max-kernel entries by 6*q*(N+1).
One diagonal of length four and all six off-diagonal pairs, each in both
orientations. The terminal factor 6*q is retained in every entry. -/
def integerClearedPanelGram (N q : ℕ) (a b c d : ℤ) : ℤ :=
  let t : ℤ := (N + 1 : ℕ)
  let z : ℤ := 6 * (q : ℤ)
  a ^ 2 * (6 * t - z) +
  b ^ 2 * (3 * t - z) +
  c ^ 2 * (2 * t - z) +
  d ^ 2 * (t - z) +
  2 * (a * b * (3 * t - z) +
       a * c * (2 * t - z) +
       a * d * (t - z) +
       b * c * (2 * t - z) +
       b * d * (t - z) +
       c * d * (t - z))

/-- Integer cancellation with ALL original terminal charges. -/
theorem integerClearedPanel_alternating (N q : ℕ) (a : ℤ) :
    integerClearedPanelGram N q a (-a) (-a) a =
      4 * ((N + 1 : ℕ) : ℤ) * a ^ 2 := by
  unfold integerClearedPanelGram
  ring

/-- Existing actual real Liouville doubling is transported back to
the exact original integer coefficient without changing its value. -/
theorem actualInt_doubling (q : ℕ) :
    actualCoefficientInt (2 * q) = -actualCoefficientInt q := by
  have h := coefficient_doubling q
  change (actualCoefficientInt (2 * q) : ℝ) =
    -(actualCoefficientInt q : ℝ) at h
  exact_mod_cast h

theorem actualInt_three_multiple (q : ℕ) :
    actualCoefficientInt (3 * q) = -actualCoefficientInt q := by
  have h := coefficient_three_mul q
  change (actualCoefficientInt (3 * q) : ℝ) =
    -(actualCoefficientInt q : ℝ) at h
  exact_mod_cast h

theorem actualInt_six_multiple (q : ℕ) :
    actualCoefficientInt (6 * q) = actualCoefficientInt q := by
  have h := coefficient_six_mul q
  change (actualCoefficientInt (6 * q) : ℝ) =
    (actualCoefficientInt q : ℝ) at h
  exact_mod_cast h

/-- Every positive true coefficient has integer square one. -/
theorem actualInt_square_one (q : ℕ) (hq : 1 ≤ q) :
    actualCoefficientInt q ^ 2 = 1 := by
  rcases actualCoefficientInt_sign q hq with h | h
  · simp [h]
  · simp [h]

/-- The complete signed original arithmetic panel, at every positive q,
has an exact integer-cleared value, without a hidden cancellation axiom. -/
theorem integerClearedPanel_true (N q : ℕ) (hq : 1 ≤ q) :
    integerClearedPanelGram N q
      (actualCoefficientInt q)
      (actualCoefficientInt (2 * q))
      (actualCoefficientInt (3 * q))
      (actualCoefficientInt (6 * q)) =
      4 * ((N + 1 : ℕ) : ℤ) := by
  rw [actualInt_doubling, actualInt_three_multiple, actualInt_six_multiple,
    integerClearedPanel_alternating, actualInt_square_one q hq]
  ring

/-- The source-specific, fully cleared integer observation. -/
def actualClearedPanel (N q : ℕ) : ℤ :=
  integerClearedPanelGram N q
    (actualCoefficientInt q)
    (actualCoefficientInt (2 * q))
    (actualCoefficientInt (3 * q))
    (actualCoefficientInt (6 * q))

/-- Exact finite source return, with the original terminal weighted REAL
Gram as the target. Its normalization is D=6*q*(N+1) and is not
uniformly invertible as an integral 2-adic unit. -/
theorem actualClearedPanel_eq_real_source (N q : ℕ)
    (hq : 1 ≤ q) (_hN : 6 * q ≤ N) :
    (actualClearedPanel N q : ℝ) =
      6 * (q : ℝ) * (((N + 1 : ℕ) : ℝ)) *
        twoThreeOrderedSource N q := by
  rw [show actualClearedPanel N q = 4 * ((N + 1 : ℕ) : ℤ) by
    exact integerClearedPanel_true N q hq,
    twoThreeOrderedSource_closed N q hq]
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast (show q ≠ 0 by omega)
  push_cast
  field_simp
  ring

/-- Actual source-preserving finite residue shadow after the exact integer
clearing. The index k controls coefficient precision independently of N. -/
def actualClearedPanelResidue (k N q : ℕ) :
    ZMod (2 ^ (k + 1)) :=
  (actualClearedPanel N q : ZMod (2 ^ (k + 1)))

/-- Each finite 2-adic precision stage receives the same exact signed
integer-cleared packet; at small k its numerical value is only a residue. -/
theorem actualClearedPanelResidue_closed (k N q : ℕ) (hq : 1 ≤ q) :
    actualClearedPanelResidue k N q =
      ((4 * ((N + 1 : ℕ) : ℤ)) : ZMod (2 ^ (k + 1))) := by
  simp only [actualClearedPanelResidue, actualClearedPanel,
    integerClearedPanel_true N q hq]

end GRWTSK.NumberTheory.LiouvilleTwoThreePadicClearing
