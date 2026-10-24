# Complete source: GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52c632b11e1e8b05a90e5b78084135b2c7ff66e4` · SHA-256 `37982867d047cc4ee9bdec74a5ff748933d96bab5c52db34e190088e54b9d524`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.NumberTheory.VonMangoldt.GreenEnergyFormula
import GRWTSK.Analysis.MellinTransform.DyadicBounds

/-!
# Explicit unproved continuum and zeta-return goals

Every `...Goal` below is a proposition definition, NOT a theorem, an axiom,
an instance, or a completed proof. No terminal theorem consumes these goals
and is then advertised as an RH proof. The all-scale arithmetic premise is
also not constructed. These definitions preserve the intended exact targets.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def sineReading (X n : ℕ) : ℝ :=
  (∑ m∈window X, coefficient m*Real.sin (Real.pi*n*location X m))-
    ∫ t in (0:ℝ)..1, Real.sin (Real.pi*n*t)/(1+t)

/-- Infinite sine expansion, including a separate summability conclusion. -/
def SineExpansionGoal : Prop :=
  ∀ X : ℕ, 0<X →
    Summable (fun n : ℕ ↦ sineReading X (n+1)^2/((n+1:ℕ):ℝ)^2) ∧
    greenEnergy X=(2/Real.pi^2)*
      ∑' n : ℕ, sineReading X (n+1)^2/((n+1:ℕ):ℝ)^2

/-- Complexification, Mellin differentiation and positive-coordinate scaling. -/
def MellinBlockIdentityGoal : Prop :=
  ∀ X : ℕ, 0<X → ∀ s : ℂ,
    dirichletBlock X s=Complex.exp ((1-s)*(Real.log X:ℂ))*action X (mellinTest s)

/-- The finite starting interval (1,2] is explicitly retained. -/
def blockSeries (s : ℂ) : ℂ :=
  dirichletBlock 1 s+∑' j : ℕ, dirichletBlock (dyadicScale j) s

def NormalConvergenceGoal : Prop :=
  AllDyadicEnergyBound →
    (∀ s : ℂ, 1/2<s.re → Summable (fun j ↦ ‖dirichletBlock (dyadicScale j) s‖)) ∧
    DifferentiableOn ℂ blockSeries {s : ℂ | 1/2<s.re}

def EulerIdentificationGoal : Prop :=
  ∀ s : ℂ, 1<s.re →
    blockSeries s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)

/-- The exact paper-level implication. This declaration states, but does not prove, it. -/
def DyadicGreenReturnGoal : Prop := AllDyadicEnergyBound → _root_.RiemannHypothesis

/-- The arithmetic supplier, not a formalization task that this file discharges. -/
def ArithmeticEnergySupplierGoal : Prop := AllDyadicEnergyBound

end GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications
```
