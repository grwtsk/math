# Complete source: GRWTSK.Logic.InformationLoss.KernelRestrictedDetection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `242fdd63d842b1fe7b14efb1727f1f198656324e` · SHA-256 `9c97253f2e82acf8c5431d5d4b98f5614fd92379d81f5b92539c3e7611616f3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.JointLinearIdentifiability

/-!
# Restrict the extra measurement to the old invisible subspace

The pair (P,A) identifies every vector precisely when A detects every
nonzero vector in the kernel of P. More generally, recovery of a target R
requires only that the kernel of A restricted to ker P lies in ker R.

These are exact algebraic prerequisites for dimension/rank bounds, not
claims that a minimum number of measurements has been attained.
-/
set_option autoImplicit false

universe u v w t
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]
variable {Z : Type t} [AddCommGroup Z] [Module K Z]

/-- Joint identifiability is exactly injectivity of the extra
measurement on vectors invisible to the original one. -/
theorem pairedLinear_injective_iff_extra_detects_old_kernel
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) :
    Function.Injective (pairedLinearObservation P A) ↔
      ∀ h : V, P h = 0 → A h = 0 → h = 0 := by
  exact pairedLinear_injective_iff_common_kernel_zero P A

/-- If A separates any two vectors in the kernel of P, then the joint
observation separates all source vectors. -/
theorem pairedLinear_injective_of_kernel_restriction
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hsep : ∀ x y : V, P x = 0 → P y = 0 →
      A x = A y → x = y) :
    Function.Injective (pairedLinearObservation P A) := by
  apply (pairedLinear_injective_iff_common_kernel_zero P A).2
  intro h hp ha
  apply hsep h 0 hp (map_zero P)
  simpa using ha

/-- A kernel-restricted detection condition is sufficient to recover
only the specified readout, even if the full source stays unidentified. -/
theorem readout_recoverable_of_kernel_restriction
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (R : V →ₗ[K] Z)
    (hdetect : ∀ h : V, P h = 0 → A h = 0 → R h = 0) :
    ∃! decode : Set.range (pairedLinearObservation P A) → Z,
      (fun x : V => R x) =
        decode ∘ observedProfile (pairedLinearObservation P A) := by
  exact (linear_augmented_unique_reconstruction_iff P A R).2 hdetect

end GRWTSK.Logic.InformationLoss
```
