# Complete source: GRWTSK.Logic.InformationLoss.AlgebraicKernelComplement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b082d468400ceb92637e177056ee8710478697a` · SHA-256 `c0b0c07b592addae4b4e1b63bbab3a5f854280b3fe1b7cd3ecd42c3a91775ed7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.Logic.InformationLoss.KernelComplementExistence
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!
# Kernel complement availability and optimal added measurement

Over a field a subspace admits an algebraic complement. This leaf attempts
to discharge the complement-existence premise in the previous module and
derive existence of an added observation with target ker P.

This is algebraic, generally noncomputable and not topologically bounded.
Pinned Mathlib complement-existence API and compilation require real replay.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- Algebraic complement existence for the actual kernel of a linear
observation; no canonical or continuous complement is claimed. -/
theorem exists_old_kernel_complement
    (P : V →ₗ[K] Y) :
    ∃ S : Submodule K V, IsCompl P.ker S := by
  exact Submodule.exists_isCompl P.ker

/-- An algebraic complement supplies an added observation taking values
in the old kernel, so its output finrank equals the lower-bound target. -/
theorem exists_sharp_extra_algebraically
    (P : V →ₗ[K] Y) :
    ∃ Q : V →ₗ[K] P.ker,
      Function.Injective (pairedLinearObservation P Q) := by
  obtain ⟨S, hS⟩ := exists_old_kernel_complement P
  exact exists_sharp_measurement_of_isCompl P S hS

end GRWTSK.Logic.InformationLoss
```
