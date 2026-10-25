# Complete source: GRWTSK.Logic.InformationLoss.SharpKernelBijection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdc48b442b8cdfa52c21531bad31fd711889892b` · SHA-256 `f3525a2c7ecf126d2e505d582efa4fe0d0272a12c3b8428f049b065254053e08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.Logic.InformationLoss.AlgebraicMeasurementOptimality

/-!
# A sharp algebraic measurement is an isomorphism on the old kernel

This witness improves the earlier tautological equality of target finranks:
the chosen added measurement restricts to an actual bijection from ker P
onto its entire target ker P. It uses the existing algebraic complement
existence and its projection identity. No topological stability or
computable complement is claimed.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- There is an algebraic extra observation whose restriction to the
old invisible directions is *bijective*, not merely a numerically
matching target. The construction is noncanonical. -/
theorem exists_sharp_extra_bijective_on_kernel
    (P : V →ₗ[K] Y) :
    ∃ Q : V →ₗ[K] P.ker,
      Function.Injective (pairedLinearObservation P Q) ∧
      Function.Bijective (extraOnOldKernel P Q) := by
  obtain ⟨S, hS⟩ := exists_old_kernel_complement P
  obtain ⟨Q, hfix⟩ := exists_kernel_retraction_of_isCompl P S hS
  refine ⟨Q, sharp_extra_of_kernel_retraction P Q hfix, ?_⟩
  constructor
  · exact extraOnOldKernel_injective P Q
      (sharp_extra_of_kernel_retraction P Q hfix)
  · intro x
    refine ⟨x, ?_⟩
    exact hfix x

end GRWTSK.Logic.InformationLoss
```
