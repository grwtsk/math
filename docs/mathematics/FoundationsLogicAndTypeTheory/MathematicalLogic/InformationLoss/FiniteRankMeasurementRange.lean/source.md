# Complete source: GRWTSK.Logic.InformationLoss.FiniteRankMeasurementRange

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab79d157b60ae8dd33f8fff2b664e88f26772be4` · SHA-256 `93e793f22abbcc55cf670feb1b7f30f8b08d764c558aebba4d2928102b83bc39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Standalone leaf; no root import or kernel-acceptance claim.
-/
import GRWTSK.Logic.InformationLoss.FiniteMeasurementCapacity
import Mathlib.LinearAlgebra.Dimension.Finrank

/-!
# Rank bound through restriction to invisible directions

The additional measurement, restricted to the old kernel, is a linear
map. Under joint injectivity, this restriction is injective and its range
has exactly the finrank of the old kernel. This is an algebraic intermediate
for a numerical sensor lower bound. No sharpness, minimal sensor family,
or stability statement is claimed.
-/
set_option autoImplicit false
noncomputable section

universe u v w
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]

/-- The extra linear observation restricted to the old kernel. -/
def extraOnOldKernel (P : V →ₗ[K] Y) (A : V →ₗ[K] W) :
    P.ker →ₗ[K] W :=
  A.comp P.ker.subtype

/-- Joint injectivity makes the restricted linear observation injective. -/
theorem extraOnOldKernel_injective
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Function.Injective (extraOnOldKernel P A) := by
  intro x y hxy
  apply Subtype.ext
  apply hpair
  apply Prod.ext
  · have hx : P x.1 = 0 := x.2
    have hy : P y.1 = 0 := y.2
    simp [pairedLinearObservation, hx, hy]
  · exact hxy

/-- Exact finrank of the added measurement's range on the old kernel.
This is not yet the final inequality against the entire target W. -/
theorem finrank_extra_range_eq_old_kernel
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Module.finrank K (extraOnOldKernel P A).range =
      Module.finrank K P.ker := by
  exact LinearMap.finrank_range_of_inj
    (extraOnOldKernel_injective P A hpair)

end GRWTSK.Logic.InformationLoss
```
