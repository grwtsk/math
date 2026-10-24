# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CycleConvolution.Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `977b64c923a7c235c9c665b44165cfe3d68ea2a2` · SHA-256 `3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.FiniteDynamics.CycleTransport
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Convolution along an explicitly directed finite cycle

The kernel, direction, and ordered transport are independent inputs.  The
first edge acts first by the convention established in `CycleTransport`.
This construction is linear in the signal; it is not automatically an
involution for an arbitrary kernel.
-/

namespace FinitePermutationDynamics

open scoped BigOperators

universe u

/-- A period-indexed convolution kernel. -/
abbrev CycleKernel (period : Nat) (R : Type*) := Fin period → R

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- Convolution by ordered state transport around a directed cycle. -/
def cycleConvolution
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ)
    (f : X → ℝ) : X → ℝ :=
  fun x => ∑ k : Fin cycle.period,
    kernel k * f (cycle.orderedTransport k.val x)

@[simp]
theorem cycleConvolution_apply
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ)
    (f : X → ℝ) (x : X) :
    cycleConvolution cycle kernel f x =
      ∑ k : Fin cycle.period,
        kernel k * f (cycle.orderedTransport k.val x) :=
  rfl

/-- The convolution operator as a real-linear map on finite signals. -/
def cycleConvolutionLinear
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ) :
    (X → ℝ) →ₗ[ℝ] (X → ℝ) where
  toFun := cycleConvolution cycle kernel
  map_add' f g := by
    funext x
    simp only [cycleConvolution_apply, Pi.add_apply, mul_add,
      Finset.sum_add_distrib]
  map_smul' c f := by
    funext x
    simp only [cycleConvolution_apply, Pi.smul_apply, smul_eq_mul]
    change (∑ k : Fin cycle.period,
      kernel k * (c * f (cycle.orderedTransport k.val x))) =
      c * ∑ k : Fin cycle.period,
        kernel k * f (cycle.orderedTransport k.val x)
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring

@[simp]
theorem cycleConvolutionLinear_apply
    (cycle : DirectedCycleQuantum X)
    (kernel : CycleKernel cycle.period ℝ)
    (f : X → ℝ) :
    cycleConvolutionLinear cycle kernel f =
      cycleConvolution cycle kernel f :=
  rfl

/-- Kernel addition corresponds to operator addition. -/
theorem cycleConvolution_add_kernel
    (cycle : DirectedCycleQuantum X)
    (a b : CycleKernel cycle.period ℝ)
    (f : X → ℝ) :
    cycleConvolution cycle (a + b) f =
      cycleConvolution cycle a f + cycleConvolution cycle b f := by
  funext x
  simp only [cycleConvolution_apply, Pi.add_apply, add_mul,
    Finset.sum_add_distrib]

/-- Scaling the kernel scales the resulting signal. -/
theorem cycleConvolution_smul_kernel
    (cycle : DirectedCycleQuantum X)
    (c : ℝ) (a : CycleKernel cycle.period ℝ)
    (f : X → ℝ) :
    cycleConvolution cycle (c • a) f =
      c • cycleConvolution cycle a f := by
  funext x
  simp only [cycleConvolution_apply, Pi.smul_apply, smul_eq_mul]
  change (∑ k : Fin cycle.period,
    (c * a k) * f (cycle.orderedTransport k.val x)) =
    c * ∑ k : Fin cycle.period,
      a k * f (cycle.orderedTransport k.val x)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The delta kernel at prefix zero. -/
def identityCycleKernel (cycle : DirectedCycleQuantum X) :
    CycleKernel cycle.period ℝ :=
  fun k => if k = ⟨0, cycle.positive⟩ then 1 else 0

theorem cycleConvolution_identityKernel
    (cycle : DirectedCycleQuantum X) (f : X → ℝ) :
    cycleConvolution cycle (identityCycleKernel cycle) f = f := by
  funext x
  classical
  simp [cycleConvolution, identityCycleKernel]

end FinitePermutationDynamics
```
