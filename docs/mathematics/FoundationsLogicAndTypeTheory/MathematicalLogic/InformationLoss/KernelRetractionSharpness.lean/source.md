# Complete source: GRWTSK.Logic.InformationLoss.KernelRetractionSharpness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c521559de60eb9a85b038b1a2407e4ee65d6ca` · SHA-256 `4044d432ad534cae5f9e1f57d28d8738a4db164e8434b65c68b21c3e5384b511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; no root import.
-/
import GRWTSK.Logic.InformationLoss.FiniteRankMeasurementRange

/-!
# Sharpness under an explicitly supplied linear splitting

If the source decomposes as the kernel of P plus a chosen complementary
subspace, the kernel-coordinate projection is an extra observation with
target precisely ker P. The paired observation is injective and the
additional target dimension equals finrank ker P.

The splitting is a mathematical HYPOTHESIS, not constructed from a
physical/spectral source or asserted computationally canonical.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- A supplied left inverse on the old kernel is sufficient to construct
a sharp added linear measurement with target exactly that kernel. -/
theorem sharp_extra_of_kernel_retraction
    (P : V →ₗ[K] Y)
    (A : V →ₗ[K] P.ker)
    (hrestrict : ∀ x : P.ker, A x.1 = x) :
    Function.Injective (pairedLinearObservation P A) := by
  apply (pairedLinear_injective_iff_common_kernel_zero P A).2
  intro h hp ha
  have hx : A (⟨h, hp⟩ : P.ker).1 = (⟨h, hp⟩ : P.ker) :=
    hrestrict ⟨h, hp⟩
  have hz : (⟨h, hp⟩ : P.ker) = 0 := by
    calc
      (⟨h, hp⟩ : P.ker) = A h := hx.symm
      _ = 0 := ha
  exact congrArg Subtype.val hz

/-- A supplied kernel retraction makes the restricted measurement
surjective onto its target; no missing kernel coordinate remains. -/
theorem sharp_extra_restricted_surjective
    (P : V →ₗ[K] Y)
    (A : V →ₗ[K] P.ker)
    (hrestrict : ∀ x : P.ker, A x.1 = x) :
    Function.Surjective (extraOnOldKernel P A) := by
  intro x
  refine ⟨x, ?_⟩
  exact hrestrict x

end GRWTSK.Logic.InformationLoss
```
