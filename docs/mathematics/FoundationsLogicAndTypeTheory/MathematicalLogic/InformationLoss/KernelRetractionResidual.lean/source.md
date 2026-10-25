# Complete source: GRWTSK.Logic.InformationLoss.KernelRetractionResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a23da086c9a61578d22551febec5ca677beb8f69` · SHA-256 `8fe281e87853abd0882e72c3a2f22d0e26771777eb604784db7a71188d8d9f41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.KernelSplittingSharpness

/-!
# Explicit residual decomposition from a kernel retraction

An assumed linear retraction onto ker P splits each vector into the old
invisible coordinate and a residual on which that retraction vanishes.
This proves concrete algebraic identities and does NOT construct the
retraction from mere finite dimensionality or any analytic assumptions.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- Residual after removing the kernel coordinate of a supplied retraction. -/
def kernelRetractionResidual
    (P : V →ₗ[K] Y) (projection : V →ₗ[K] P.ker) (x : V) : V :=
  x - (projection x).1

/-- Removing the kernel coordinate leaves the original P-observation. -/
theorem kernelRetractionResidual_preserves_observation
    (P : V →ₗ[K] Y) (projection : V →ₗ[K] P.ker) (x : V) :
    P (kernelRetractionResidual P projection x) = P x := by
  unfold kernelRetractionResidual
  rw [map_sub]
  have hz : P (projection x).1 = 0 := (LinearMap.mem_ker).mp (projection x).2
  rw [hz, sub_zero]

/-- Under the supplied left-inverse premise, the residual has zero
kernel-coordinate readout. -/
theorem kernelRetractionResidual_projection_zero
    (P : V →ₗ[K] Y) (projection : V →ₗ[K] P.ker)
    (hleft : projection.comp P.ker.subtype = LinearMap.id)
    (x : V) :
    projection (kernelRetractionResidual P projection x) = 0 := by
  unfold kernelRetractionResidual
  rw [map_sub]
  have hx := kernel_retraction_of_left_inverse P projection hleft (projection x)
  rw [hx, sub_self]

/-- The source is exactly the sum of its kernel component and residual;
no topological closure or infinite-dimensional boundedness is asserted. -/
theorem kernelRetraction_decompose
    (P : V →ₗ[K] Y) (projection : V →ₗ[K] P.ker) (x : V) :
    (projection x).1 + kernelRetractionResidual P projection x = x := by
  unfold kernelRetractionResidual
  rw [add_comm]
  exact sub_add_cancel x (projection x).1

end GRWTSK.Logic.InformationLoss
```
