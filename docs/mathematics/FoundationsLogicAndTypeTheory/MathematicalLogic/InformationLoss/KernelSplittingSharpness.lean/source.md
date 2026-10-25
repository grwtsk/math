# Complete source: GRWTSK.Logic.InformationLoss.KernelSplittingSharpness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09b7d2b4f5beab606da1950b06cd13a816ae5eab` · SHA-256 `6588ad3c2499f1b0b81001a97c6cec95fd19724d16c5d73668ab78d961803138`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.KernelRetractionSharpness

/-!
# Constructing the sharp added measurement from a linear splitting

An explicit linear left inverse to the inclusion of ker P produces
the required kernel-coordinate measurement. This isolates the exact
splitting hypothesis rather than assuming an analytic, canonical,
computable, or continuous complement.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- A linear left inverse of the kernel inclusion is exactly the
restriction identity demanded by the sharpness supplier. -/
theorem kernel_retraction_of_left_inverse
    (P : V →ₗ[K] Y)
    (projection : V →ₗ[K] P.ker)
    (hleft : projection.comp P.ker.subtype = LinearMap.id) :
    ∀ x : P.ker, projection x.1 = x := by
  intro x
  have hx := congrArg (fun f : P.ker →ₗ[K] P.ker => f x) hleft
  simpa [LinearMap.comp_apply] using hx

/-- A supplied splitting gives a sharp joint observation; the
additional output space has exactly the old kernel coordinates. -/
theorem sharp_joint_observation_of_left_inverse
    (P : V →ₗ[K] Y)
    (projection : V →ₗ[K] P.ker)
    (hleft : projection.comp P.ker.subtype = LinearMap.id) :
    Function.Injective (pairedLinearObservation P projection) := by
  exact sharp_extra_of_kernel_retraction P projection
    (kernel_retraction_of_left_inverse P projection hleft)

end GRWTSK.Logic.InformationLoss
```
