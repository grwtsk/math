/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# Arithmetic Mellin-to-Xi pole ledger and divisor resolvent identities

These source-level algebra lemmas support the exact original-xi
mathematical proof in AlpogeXiSmoothedTrace.md. The original source
is Riemann's completed zeta, not a fitted spectrum.

The external Alpoge / Claude Lean proof is studied only to identify
the independently required arithmetic window supplier. No imported
RH theorem, everyCharacter, positivity axiom or synthetic operator.

The infinite Mellin integral identity, gamma functional identity,
Hadamard zero divisor, von Mangoldt zero count and Fredholm
trace-norm bound are MATHEMATICALLY DERIVED in the adjacent .md,
not formalized or Lean-kernel-checked here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeXiSmoothedTrace

/-- The exact complex algebra of the smoothed prime Mellin transform,
including BOTH pole subtractions and the Euler-constant linear term.
For Re(s)>1, r(s)=-zeta'(s)/zeta(s) and M(s) is the true Mellin
transform of the centered von Mangoldt ramp. The entire analytic
source identification remains separate from this algebra lemma. -/
theorem mellin_to_completed_log_derivative_algebra
    (s r euler logPi digamma : ℂ)
    (hs : s ≠ 0) (hs1 : s ≠ 1) :
    1 / s + 1 / (s - 1) - logPi / 2 + digamma / 2 - r =
      1 / s - 1 + (1 + euler) * s - logPi / 2 + digamma / 2 -
      s * (s - 1) *
        (r / (s * (s - 1)) - 1 / (s - 1) ^ 2 +
          (1 + euler) / (s - 1)) := by
  have hs1' : s - 1 ≠ 0 := sub_ne_zero.mpr hs1
  field_simp [hs, hs1']
  ring

/-- Each original nonzero xi zero w_j contributes the exact
normal diagonal factor mu_j=-1/w_j, including multiplicities.
This does not assert that mu_j is real or positive. -/
theorem original_divisor_normal_factor
    (root w : ℂ) (hroot : root ≠ 0) :
    1 + w * (-(1 / root)) = 1 - w / root := by
  ring

/-- Resolvent factor identity for an actual divisor zero root,
with nonzero denominators stated rather than silently assumed.
Realness/positivity of the factor is NOT a conclusion. -/
theorem original_divisor_resolvent_factor
    (root w : ℂ) (hroot : root ≠ 0)
    (hw : w - root ≠ 0)
    (hden : 1 - w / root ≠ 0) :
    (-(1 / root)) / (1 - w / root) = 1 / (w - root) := by
  field_simp [hroot, hw, hden]
  ring

end GRWTSK.NumberTheory.AlpogeXiSmoothedTrace
