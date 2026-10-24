# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeWeylFunction.Variant62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8de4d782ccb67d2e6d47760bd0f76a213097646` · SHA-256 `62d7815faf5b7161da585dcc7fa023ed7a7575acac0c54519b28f6afd10dbc99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCompletedL
public import Surface.Core.NevanlinnaKernel
public import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
public import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Tactic

/-!
# Conductor-three Weyl function

The Weyl pivot is defined from the completed function, never from an
enumeration of zeros.  Our sign convention sends a critical-line zero of
multiplicity `m` and ordinate `gamma` to a boundary pole at `z = -gamma`
with principal part `m / (-gamma - z)`, the positive-mass Herglotz sign.

Lean's `logDeriv` is totalized by field division, so its point value at a zero
is not a residue.  Every future atom/multiplicity proof must use meromorphic
germs and `conductorThreeXiDivisor`, not evaluation at the pole.
-/

public section

namespace Surface.Core.ConductorThreeWeylFunction

noncomputable section

open scoped LSeries.notation
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCompletedL
open Surface.Core.NevanlinnaKernel

/-- `M_3(z) = (Xi_3'/Xi_3)(-z)`. -/
@[expose]
def conductorThreeWeylFunction (z : ℂ) : ℂ :=
  logDeriv conductorThreeXi (-z)

/-- The conductor-three Nevanlinna kernel with the Herglotz sign convention. -/
@[expose]
def conductorThreeNevanlinnaKernel (z w : ℂ) : ℂ :=
  nevanlinnaKernel conductorThreeWeylFunction z w

/-- Finite positive-semidefiniteness of the conductor-three kernel on the
upper half-plane. -/
@[expose]
def ConductorThreeKernelPositive : Prop :=
  PositiveSemidefiniteKernelOn upperHalfPlane
    conductorThreeNevanlinnaKernel

@[surface_adapter, surface_published]
theorem conductorThreeKernelPositive_iff :
    ConductorThreeKernelPositive ↔
      HasPositiveNevanlinnaKernel conductorThreeWeylFunction := by
  rfl

/-- The same Weyl function in completed-`L` coordinates:
`M_3(z) = i (Lambda_3'/Lambda_3)(1/2 - i z)`. -/
@[surface_novel, surface_published]
theorem conductorThreeWeylFunction_eq_lambdaLogDeriv (z : ℂ) :
    conductorThreeWeylFunction z =
      Complex.I * logDeriv conductorThreeLambda
        ((1 / 2 : ℂ) - Complex.I * z) := by
  have hcomp := logDeriv_comp
    (f := conductorThreeLambda)
    (g := fun w : ℂ ↦ (1 / 2 : ℂ) + Complex.I * w)
    (x := -z)
    (differentiable_conductorThreeLambda.differentiableAt)
    (by fun_prop)
  rw [show deriv (fun w : ℂ ↦ (1 / 2 : ℂ) + Complex.I * w) (-z) =
      Complex.I by
        rw [deriv_const_add, deriv_const_mul_id]] at hcomp
  change logDeriv (fun w : ℂ ↦
      conductorThreeLambda ((1 / 2 : ℂ) + Complex.I * w)) (-z) = _ at hcomp
  unfold conductorThreeWeylFunction conductorThreeXi
  rw [hcomp]
  ring_nf

/-- Prime-side expression on `Im z > 1/2`.  It is defined independently of
zeros and is meaningful on the absolutely convergent Dirichlet-series
half-plane. -/
@[expose]
def conductorThreePrimeWeylCandidate (z : ℂ) : ℂ :=
  let s := (1 / 2 : ℂ) - Complex.I * z
  Complex.I *
    ((1 / 2 : ℂ) * Complex.log (3 / Real.pi) +
      (1 / 2 : ℂ) * Complex.digamma ((s + 1) / 2) -
      L (↗conductorThreeCharacter * ↗ArithmeticFunction.vonMangoldt) s)

/-- Exact gamma-factor and twisted-series expansion still to be proved from
the pinned Dirichlet-character API. -/
@[expose]
def ConductorThreePrimeSideWeylFormula : Prop :=
  ∀ z : ℂ, 1 / 2 < z.im →
    conductorThreeWeylFunction z = conductorThreePrimeWeylCandidate z

/-- GRH/Herglotz equivalence obligation.  Besides zero location it requires
the completed functional equation, root-number symmetry, a Hadamard product,
and control of the affine term. -/
@[expose]
def GRHIffConductorThreeWeylHerglotz : Prop :=
  GRHForConductorThreeCharacter ↔
    IsHerglotz conductorThreeWeylFunction

/-- Herglotz-to-kernel direction follows from the missing generic
Herglotz-representation theorem; the reverse direction is already algebraic
once upper-half-plane differentiability is supplied. -/
@[surface_novel, surface_published]
theorem weylFunction_herglotz_iff_kernelPositive_of_representation
    (hRepresentation : HerglotzImpliesPositiveNevanlinnaKernel) :
    IsHerglotz conductorThreeWeylFunction ↔
      DifferentiableOn ℂ conductorThreeWeylFunction upperHalfPlane ∧
      HasPositiveNevanlinnaKernel conductorThreeWeylFunction := by
  constructor
  · intro hHerglotz
    exact ⟨hHerglotz.1, hRepresentation _ hHerglotz⟩
  · rintro ⟨hDiff, hKernel⟩
    exact isHerglotz_of_positiveKernel hDiff hKernel

/-- Conditional composition of the proposed GRH/kernel criterion, with both
nontrivial analytic ingredients visible at the call site. -/
@[surface_novel, surface_published]
theorem grh_iff_weylKernelPositive_of_obligations
    (hGRH : GRHIffConductorThreeWeylHerglotz)
    (hRepresentation : HerglotzImpliesPositiveNevanlinnaKernel) :
    GRHForConductorThreeCharacter ↔
      DifferentiableOn ℂ conductorThreeWeylFunction upperHalfPlane ∧
      HasPositiveNevanlinnaKernel conductorThreeWeylFunction :=
  hGRH.trans
    (weylFunction_herglotz_iff_kernelPositive_of_representation
      hRepresentation)

end

end Surface.Core.ConductorThreeWeylFunction
```
