/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletSignedCrossRatioMoment
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Explicit fixed-modulus arithmetic second-moment frontier

The previous source proves (as a candidate) the EXACT
finite all-character second moment of the ORIGINAL signed
Möbius offdiagonal physical-time Gram:
  sum_chi |Z_chi(T)|² = phi(q)*sum_(a unit)|B_(q,a)(T)|².

This file deliberately names the genuinely UNPROVED
ARITHMETIC premise needed for a characterwise all-rate
positive bound: every-rate decay of that ratio-class
second moment at one FIXED positive modulus q.

The proposed target is a PROP, not an axiom or fabricated
global GRH theorem. Its quantifiers include ALL j∈Nat
at the ORIGINAL dyadic physical times j*log 2 and constants
depending on q and the requested rate epsilon, not on j.

If this strong fourth-order ratio-energy premise were supplied,
the exact finite second moment and basic real algebra imply
each actual character's original signed full cross is
O_epsilon(exp(epsilon*T_j)). The proof below preserves the
full phi(q) cost inside the premise: it does not remove
the character-count loss, infer an individual estimate from
signed mean cancellation, or assume multiplicative independence.

The all-rate signed LOW-gcd source and the true
character-specific causal/Mellin/zero return require additional
source-specific work. This conditional result is NOT GRH.

Lean proof bodies SOURCE PROOF CANDIDATES pending native
compilation/expected types/fresh kernel/axiom audit.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletCrossMomentFrontier

open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment

variable (q : ℕ) [NeZero q]
classical

def dyadicTime (j : ℕ) : ℝ := (j : ℝ) * Real.log 2

/-- UNPROVED, genuine arithmetic fixed-q ratio-class energy
input. The phi(q) cost is visibly on the LEFT: no hiding
a large-character loss in the proof. The 2*epsilon exponent
is used because the source is a SECOND MOMENT. -/
def FixedModulusRatioMomentEveryRate : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        (q.totient : ℝ) *
          (∑ a : ZMod q,
            if IsUnit a
            then ‖originalRatioPacket q (dyadicTime j) a‖^2
            else 0) ≤
          C * Real.exp (2*ε*dyadicTime j)

/-- A mathematically NONCIRCULAR conditional consumer:
from a genuine fixed-modulus FOURTH-ORDER source bound,
recover a one-sided every-positive-rate original signed
full character cross for each actual complex character.
No signed low-gcd or GRH theorem is inserted. -/
theorem individualFamilyCross_everyRate_of_ratioMoment
    (hMoment : FixedModulusRatioMomentEveryRate q)
    (χ : DirichletCharacter ℂ q) :
    ∀ ε : ℝ, 0 < ε →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ j : ℕ,
          familyCross (dirichletCharacterCoefficients χ)
            (dyadicTime j) ≤
          C * Real.exp (ε*dyadicTime j) := by
  intro ε hε
  obtain ⟨C,hC,hAll⟩ := hMoment ε hε
  refine ⟨Real.sqrt C, Real.sqrt_nonneg _, ?_⟩
  intro j
  let T : ℝ := dyadicTime j
  let X : ℝ := familyCross (dirichletCharacterCoefficients χ) T
  have hsource : X^2 ≤
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then ‖originalRatioPacket q T a‖^2 else 0) :=
    individualFamilyCross_sq_le_ratioMoment q χ T
  have hsq : X^2 ≤ C * Real.exp (2*ε*T) :=
    hsource.trans (hAll j)
  have hExp : (Real.exp (ε*T))^2 =
      Real.exp (2*ε*T) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hYpos : 0 ≤ Real.sqrt C * Real.exp (ε*T) := by
    positivity
  have hYsq :
      (Real.sqrt C * Real.exp (ε*T))^2 =
        C * Real.exp (2*ε*T) := by
    rw [mul_pow, Real.sq_sqrt hC, hExp]
  have hbound : X ≤
      Real.sqrt C * Real.exp (ε*T) := by
    nlinarith [hsq, hYsq, hYpos]
  exact hbound

end GRWTSK.NumberTheory.Moebius.DirichletCrossMomentFrontier
