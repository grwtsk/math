/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Scalar checks for the full Weil hard-cutoff residual obstruction

Analytical record:
  documentation/mathematics/_support/reviews/weil-hard-cutoff-residual.md

The note proves an obstruction for the hard cutoff of the limiting Xi kernel,
NOT the source's finite-parameter prolate approximation. Its arithmetic input is
Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.7)--(3.11), (3.19).
The normalization audit concerns the printed equation (13) in Alain Connes,
arXiv:2602.04022v1: its Mellin coefficient is s(s-1)/8 rather than s(s-1)/2.

THIS MODULE covers only the scalar algebra specified in each declaration.
It does not formalize the global radical identity, the closed Weil form,
operator-domain or boundary estimates, min--max, the prime-tail bound, the
analytic hard-cutoff theorem, RH, or Dirichlet GRH. The hypotheses of the scalar
inequalities are proved analytically for the explicit trials in the note, not
asserted to be discharged by these declarations.

Elaboration: NOT_RUN. Fresh kernel check: NOT_RUN. Transitive axiom audit:
NOT_RUN. No Lean executable was available. These are candidate proof scripts;
no root import, dependency pin, or mathematical acceptance status is changed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.HardCutoff

/-- Coefficient after applying Gamma recurrence to the printed Hermite kernel. -/
def printedMellinCoefficient (s : ℂ) : ℂ :=
  (2 * (s / 2) * (s / 2 + 1) - 3 * (s / 2)) / 4

/-- The coefficient calculation only; no Mellin integral is formalized here. -/
theorem printedMellinCoefficient_eq (s : ℂ) :
    printedMellinCoefficient s = s * (s - 1) / 8 := by
  unfold printedMellinCoefficient
  ring

/-- Four, not an unspecified scalar, restores the specified xi coefficient. -/
theorem correctedMellinCoefficient (s : ℂ) :
    4 * printedMellinCoefficient s = s * (s - 1) / 2 := by
  unfold printedMellinCoefficient
  ring

/-- The factor does not depend on the shared gamma/zeta factor. -/
theorem correctedMellinProduct (s g : ℂ) :
    4 * (printedMellinCoefficient s * g) = (s * (s - 1) / 2) * g := by
  unfold printedMellinCoefficient
  ring

/-- `2 Re(a * conjugate b)` in real coordinates. -/
def polePairing (ar ai br bi : ℝ) : ℝ := 2 * (ar * br + ai * bi)

/-- Real-coordinate version of the even-positive/odd-negative pole decomposition. -/
theorem polePairing_parity (cr ci sr si : ℝ) :
    polePairing (cr + sr) (ci + si) (cr - sr) (ci - si) =
      2 * (cr ^ 2 + ci ^ 2) - 2 * (sr ^ 2 + si ^ 2) := by
  unfold polePairing
  ring

/-- A tested complementary upper bound constrains every coercivity constant. -/
theorem complementaryGap_le {mu beta q B C : ℝ}
    (hbeta : beta ≤ q) (hq : q ≤ B) (hmu : -C ≤ mu) :
    beta - mu ≤ B + C := by
  linarith

/-- The same cap remains useful even when the trial Rayleigh value is negative. -/
theorem complementaryGap_le_twice {mu beta q B : ℝ}
    (hbeta : beta ≤ q) (hq : q ≤ B) (hmu : -B ≤ mu) :
    beta - mu ≤ 2 * B := by
  linarith

/-- Positive numerator and denominator bounds give a residual-ratio LOWER bound. -/
theorem residualRatio_lower {r c delta D : ℝ}
    (hc : 0 ≤ c) (hcr : c ≤ r) (hdelta : 0 < delta)
    (hD : 0 < D) (hdeltaD : delta ≤ D) :
    c / D ≤ r / delta := by
  apply (div_le_div_iff₀ hD hdelta).2
  nlinarith [mul_nonneg hc (sub_nonneg.mpr hdeltaD),
    mul_nonneg hD.le (sub_nonneg.mpr hcr)]

/-- The exponential mismatch in the analytic residual and Rayleigh bounds. -/
theorem exponentialMismatch (x : ℝ) :
    Real.exp (-x) / Real.exp (-2 * x) = Real.exp x := by
  rw [← Real.exp_sub]
  congr 1
  ring

/-- The mismatch survives arbitrary positive scalar prefactors. -/
theorem scaledExponentialMismatch (a b x : ℝ) :
    (a * Real.exp (-x)) / (b * Real.exp (-2 * x)) =
      (a / b) * Real.exp x := by
  rw [mul_div_mul_comm, exponentialMismatch]

end GRWTSK.NumberTheory.WeilQuadraticForm.HardCutoff
