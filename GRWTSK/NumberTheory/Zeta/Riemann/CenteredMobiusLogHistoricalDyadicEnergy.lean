/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authenticated from historical commit f047ec7814a03bf2b6175fc3b96a465ff2b86804,
DyadicDiscrepancy blob faaef84a44f9c5e052bb76050453c2c2ce89317d.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenThreeSupplier
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Exact historical boundary mass 0 body. -/
def mass0 (X : ℕ) : ℝ :=
  (∑ n ∈ GRWTSK.RiemannHypothesis.centeredGreenWindow X,
      GRWTSK.RiemannHypothesis.centeredGreenArithmeticCoefficient n) -
    Real.log 2

/-- Exact historical boundary mass 1 body. -/
def mass1 (X : ℕ) : ℝ :=
  (∑ n ∈ GRWTSK.RiemannHypothesis.centeredGreenWindow X,
      GRWTSK.RiemannHypothesis.centeredGreenArithmeticCoefficient n *
        GRWTSK.RiemannHypothesis.centeredGreenLocation X n) -
    (1 - Real.log 2)

/-- Exact historical centered cumulative source. -/
def cumulative (X : ℕ) (t : ℝ) : ℝ :=
  (∑ n ∈ GRWTSK.RiemannHypothesis.centeredGreenWindow X,
      GRWTSK.RiemannHypothesis.centeredGreenArithmeticCoefficient n *
        (if GRWTSK.RiemannHypothesis.centeredGreenLocation X n ≤ t then 1 else 0)) -
    Real.log (1 + t)

/-- Exact historical center body. -/
def center (X : ℕ) : ℝ := mass0 X - mass1 X

/-- Exact historical Green energy body, using Lebesgue restriction to [0,1]. -/
def greenEnergy (X : ℕ) : ℝ :=
  ∫ t in Set.Icc (0 : ℝ) 1, (cumulative X t - center X)^2

def augmentedEnergy (X : ℕ) : ℝ :=
  greenEnergy X + (mass0 X)^2 + (mass1 X)^2

def dyadicScale (j : ℕ) : ℕ := 2^(j+1)

def AllDyadicEnergyBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, augmentedEnergy (dyadicScale j) ≤
        C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Exact algebraic identity between the thin supplier shape and historical
AllDyadicEnergyBound once thinGreenEnergy is identified with greenEnergy. -/
theorem allDyadicEnergyBound_of_thin_and_parseval
    (hparseval : ∀ X : ℕ, 2 ≤ X → thinGreenEnergy X = greenEnergy X)
    (hthin : ThinAllDyadicAugmentedEnergyBound
      dyadicScale mass0 mass1 thinGreenEnergy) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨C, hC, j0, h⟩ := hthin η hη
  refine ⟨C, hC, j0, ?_⟩
  intro j hj
  have hscale : 2 ≤ dyadicScale j := by
    unfold dyadicScale
    omega
  have hjb := h j hj
  unfold augmentedEnergy
  rw [← hparseval (dyadicScale j) hscale]
  nlinarith

end GRWTSK.RiemannHypothesis
