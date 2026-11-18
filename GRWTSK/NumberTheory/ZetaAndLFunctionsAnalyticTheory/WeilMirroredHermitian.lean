/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFixedWindowSemibounded
import Mathlib.Analysis.Complex.Basic

/-!
# Mirrored pairings of the literal signed Weil source

The prime term uses BOTH original shifts and its exact von Mangoldt
weights. Translation change-of-variables, already proved in the source,
gives symmetry of its mixed pairing. The literal gamma, mass, and pole
terms are kept, yielding a real symmetric source pairing. Its complex
extension is conjugate symmetric, and its diagonal equals the sum of the
original real energies of the real and imaginary parts.

These are exact algebra/integral identities. To interpret the pairings
as the closed form one must also retain the original finite-gamma-energy
domain, not rely on a totalized integral outside convergence. No general
VOA, source positivity, or self-adjoint operator association is asserted.

Source-proof candidate: elaboration, expected signatures, fresh kernel
replay, transitive axioms and independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.MirroredHermitian

open OddRootProjection OddPrimePoleOutput OddSineForm OddHighComplement
open OddLiteralWindow

/-- Hermitian mirroring is the two-orientation source identity, not the
replacement of a signed coefficient by its absolute value. -/
theorem prime_pairing_symmetric (T : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    (∫ t : ℝ, g t * primeOutput T f t) =
      ∫ t : ℝ, f t * primeOutput T g t := by
  rw [integral_mul_primeOutput T hf hg, integral_mul_primeOutput T hg hf]
  apply Finset.sum_congr rfl
  intro q _
  ring

def gammaPairing (f g : ℝ → ℝ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), parityKernel 0 r *
    (∫ t : ℝ, (f (t + r) - f t) * (g (t + r) - g t))

theorem gammaPairing_symmetric (f g : ℝ → ℝ) :
    gammaPairing f g = gammaPairing g f := by
  unfold gammaPairing
  congr 1
  funext r
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  ring

theorem gammaPairing_self (f : ℝ → ℝ) :
    gammaPairing f f = oddArchimedeanEnergy f := by
  simp only [gammaPairing, oddArchimedeanEnergy, pow_two]

/-- The same real arithmetic source, including its negative odd pole. -/
def sourcePairing (T β : ℝ) (f g : ℝ → ℝ) : ℝ :=
  (gammaConstant 1 0 - β) * (∫ t : ℝ, f t * g t) + gammaPairing f g -
    (∫ t : ℝ, g t * primeOutput T f t) -
    2 * (∫ t : ℝ, f t * Real.sinh (t / 2)) *
      (∫ t : ℝ, g t * Real.sinh (t / 2))

theorem sourcePairing_symmetric (T β : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    sourcePairing T β f g = sourcePairing T β g f := by
  have hmass : (∫ t : ℝ, f t * g t) = ∫ t : ℝ, g t * f t := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  unfold sourcePairing
  rw [hmass, gammaPairing_symmetric f g, prime_pairing_symmetric T hf hg]
  ring

/-- The diagonal is not a new positive model: it is the literal signed source. -/
theorem sourcePairing_self (T β : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    sourcePairing T β f f = shiftedOddWeilEnergy T β f := by
  have hp : (∫ t : ℝ, f t * primeOutput T f t) = primeEnergy T f := by
    rw [integral_mul_primeOutput T hf hf, primeEnergy, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q _
    ring
  unfold sourcePairing shiftedOddWeilEnergy shiftedOddCoreEnergy
  rw [gammaPairing_self, hp]
  simp only [Real.norm_eq_abs, sq_abs, pow_two]
  ring

/-- Conjugate-linear-first complexification of the real source pairing. -/
def complexSourcePairing (T β : ℝ) (f g : ℝ → ℂ) : ℂ :=
  Complex.mk
    (sourcePairing T β (fun t => (f t).re) (fun t => (g t).re) +
      sourcePairing T β (fun t => (f t).im) (fun t => (g t).im))
    (sourcePairing T β (fun t => (f t).re) (fun t => (g t).im) -
      sourcePairing T β (fun t => (f t).im) (fun t => (g t).re))

theorem complexSourcePairing_conj_symm (T β : ℝ) (f g : ℝ → ℂ)
    (hfr : MemLp (fun t => (f t).re) 2 volume)
    (hfi : MemLp (fun t => (f t).im) 2 volume)
    (hgr : MemLp (fun t => (g t).re) 2 volume)
    (hgi : MemLp (fun t => (g t).im) 2 volume) :
    star (complexSourcePairing T β g f) = complexSourcePairing T β f g := by
  have hrr := sourcePairing_symmetric T β hgr hfr
  have hii := sourcePairing_symmetric T β hgi hfi
  have hri := sourcePairing_symmetric T β hgr hfi
  have hir := sourcePairing_symmetric T β hgi hfr
  apply Complex.ext <;>
    simp [complexSourcePairing, hrr, hii, hri, hir] <;> ring

/-- Complex nonnegativity reduces to the original two real source energies,
not to a replacement absolute square. -/
theorem complexSourcePairing_self (T β : ℝ) (f : ℝ → ℂ)
    (hfr : MemLp (fun t => (f t).re) 2 volume)
    (hfi : MemLp (fun t => (f t).im) 2 volume) :
    complexSourcePairing T β f f =
      ((shiftedOddWeilEnergy T β (fun t => (f t).re) +
        shiftedOddWeilEnergy T β (fun t => (f t).im) : ℝ) : ℂ) := by
  have hcross := sourcePairing_symmetric T β hfr hfi
  apply Complex.ext <;>
    simp [complexSourcePairing, sourcePairing_self T β hfr,
      sourcePairing_self T β hfi, hcross]

end GRWTSK.NumberTheory.WeilQuadraticForm.MirroredHermitian
