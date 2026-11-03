/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronPrimeKernel
import GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy
import Mathlib

/-!
# Positive prime-dependent torsion phase, without changing the causal source

Local attribution: grwtsk contributors.

The existing PrimeIndex is used definitionally: a proof of Nat.Prime
selects the local ZMod p phase type, not a scalar pretending to be
the actual integer n. A full source state remains Sigma Fiber.
An additional local phase can reflect or wind while the original
integer index, Möbius signs and causal Gram remain fixed.

The added positive finite-phase energy is zero exactly at phase zero.
It is a measurement on the auxiliary torsion group and IS NOT a
positive bound on A_j, the signed Möbius energy, or the Dirichlet
character sector (nonunit residues must still be separately counted).
The prime index and phase are typed independently of generic Bool colors.

Lean compilation, fresh kernel checking and axiom auditing: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AutomircronRootedPrimePhase

open GRWTSK.NumberTheory.AutomircronPrimeKernel
open GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy

universe u

/-- Retain the exact current prime-index type from the source development. -/
abbrev PrimeIndex :=
  GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport.PrimeIndex

/-- Every prime chooses its own finite additive phase group. -/
abbrev PrimePhase (p : PrimeIndex) := ZMod p.1

/-- The full dependent source state and a separately typed local phase. -/
structure FramedSource (Fiber : PrimeIndex → Type u) where
  atom : Sigma Fiber
  phase : PrimePhase atom.1

/-- The root is phase zero; the source atom itself need not vanish. -/
def AtPhaseRoot {Fiber : PrimeIndex → Type u}
    (x : FramedSource Fiber) : Prop :=
  x.phase = 0

/-- A signed, reversible flic on the phase, not on the arithmetic integer. -/
def flic {Fiber : PrimeIndex → Type u}
    (x : FramedSource Fiber) : FramedSource Fiber :=
  { atom := x.atom, phase := -x.phase }

/-- Reflection twice restores both the original prime-dependent source and
the phase. -/
theorem flic_involution {Fiber : PrimeIndex → Type u}
    (x : FramedSource Fiber) :
    flic (flic x) = x := by
  cases x with
  | mk atom phase =>
      simp [flic]

/-- The source index survives reflection literally, without a source axiom. -/
theorem flic_source_index
    {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (x : FramedSource Fiber) :
    A.sourceIndex (flic x).atom = A.sourceIndex x.atom := by
  rfl

/-- The ORIGINAL causal signed Gram, unmodified by phase or chosen frame. -/
def sourceGram
    {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (T : ℝ)
    (x y : FramedSource Fiber) : ℝ :=
  A.signedGram T x.atom y.atom

theorem sourceGram_flic_invariant
    {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (T : ℝ)
    (x y : FramedSource Fiber) :
    sourceGram A T (flic x) (flic y) = sourceGram A T x y := by
  rfl

/-- A positive phase tariff is distinct from the signed arithmetic Gram. -/
def phaseEnergy {Fiber : PrimeIndex → Type u}
    (κ : ℝ) (x : FramedSource Fiber) : ℝ := by
  classical
  letI : NeZero x.atom.1.1 := ⟨x.atom.1.2.ne_zero⟩
  exact energy κ x.phase

/-- Positive phase energy on each individual prime's nonzero phase fiber. -/
theorem phaseEnergy_pos_of_not_root
    {Fiber : PrimeIndex → Type u}
    (κ : ℝ) (hκ : 0 < κ) (x : FramedSource Fiber)
    (hx : ¬ AtPhaseRoot x) :
    0 < phaseEnergy κ x := by
  classical
  letI : NeZero x.atom.1.1 := ⟨x.atom.1.2.ne_zero⟩
  have hphase : x.phase ≠ 0 := hx
  simpa [phaseEnergy] using
    (energy_pos_off_root κ hκ x.phase hphase)

/-- Reflection preserves auxiliary phase energy but never changes the
complete signed original causal Gram. -/
theorem phaseEnergy_flic
    {Fiber : PrimeIndex → Type u}
    (κ : ℝ) (x : FramedSource Fiber) :
    phaseEnergy κ (flic x) = phaseEnergy κ x := by
  classical
  letI : NeZero x.atom.1.1 := ⟨x.atom.1.2.ne_zero⟩
  simpa [phaseEnergy, flic] using
    (energy_neg κ x.phase)

end GRWTSK.NumberTheory.AutomircronRootedPrimePhase

end
