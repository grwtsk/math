# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FixedPointAuthority.Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdb62e1aa5d1dffdb098b4fbe6da3adc91ac0f20` · SHA-256 `f2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.FixedPoints
import Mathlib.Topology.MetricSpace.Contracting

/-!
# Fixed-point theorem authority bindings

This module gives stable project names to fixed-point results that are already
proved by the exact Mathlib revision pinned in `Surface/lake-manifest.json`.
It is an import adapter, not a project-owned reproof and not an executable
fixed-point solver.  Each declaration below preserves Mathlib's hypotheses and
conclusion; the glossary records the named theorems that have no local binding.
-/

namespace BitMatrix.Topology.FixedPointAuthority

open Filter Function

universe u

section BanachUniqueness

variable {α : Type u} [MetricSpace α] {K : NNReal} {f : α → α}

/-- Any two fixed points of a `ContractingWith` map in a metric space agree.

This is the uniqueness component of Mathlib's Banach fixed-point API.  It does
not require completeness because the two fixed points are supplied explicitly.
-/
theorem banach_unique (hf : ContractingWith K f) {x y : α}
    (hx : IsFixedPt f x) (hy : IsFixedPt f y) : x = y :=
  hf.fixedPoint_unique' hx hy

end BanachUniqueness

section BanachExistence

variable {α : Type u} [MetricSpace α] [CompleteSpace α] [Nonempty α]
variable {K : NNReal} {f : α → α}

/-- The canonical point selected by Mathlib's Banach fixed-point construction. -/
noncomputable abbrev banachPoint (hf : ContractingWith K f) : α :=
  ContractingWith.fixedPoint f hf

/-- A contraction on a nonempty complete metric space has a fixed point. -/
theorem banach_exists (hf : ContractingWith K f) : ∃ y, IsFixedPt f y :=
  ⟨banachPoint hf, hf.fixedPoint_isFixedPt⟩

/-- The selected Banach point is fixed by the contraction. -/
theorem banach_fixed (hf : ContractingWith K f) : IsFixedPt f (banachPoint hf) :=
  hf.fixedPoint_isFixedPt

/-- Every Picard iteration converges to the selected Banach point. -/
theorem banach_iteration (hf : ContractingWith K f) (x : α) :
    Tendsto (fun n ↦ f^[n] x) atTop (nhds (banachPoint hf)) :=
  hf.tendsto_iterate_fixedPoint x

end BanachExistence

section KnasterTarski

variable {α : Type u} [CompleteLattice α] (f : α →o α)

/-- The exact Mathlib complete-lattice structure on the fixed points of a
monotone endomap. -/
abbrev knasterTarskiFixedPointLattice :
    CompleteLattice (Function.fixedPoints f) :=
  fixedPoints.completeLattice f

/-- The least fixed point supplied by Knaster--Tarski is fixed. -/
theorem knasterTarski_least_fixed : IsFixedPt f f.lfp :=
  f.isFixedPt_lfp

/-- The greatest fixed point supplied by Knaster--Tarski is fixed. -/
theorem knasterTarski_greatest_fixed : IsFixedPt f f.gfp :=
  f.isFixedPt_gfp

/-- `lfp` is the least element of the fixed-point set. -/
theorem knasterTarski_least : IsLeast (Function.fixedPoints f) f.lfp :=
  f.isLeast_lfp

/-- `gfp` is the greatest element of the fixed-point set. -/
theorem knasterTarski_greatest : IsGreatest (Function.fixedPoints f) f.gfp :=
  f.isGreatest_gfp

/-- Mathlib's complete-lattice specialization of Kleene's fixed-point theorem:
an omega-Scott-continuous endomap has least fixed point equal to the supremum
of its iterates from bottom. -/
theorem kleene_completeLattice_iteration
    (h : OmegaCompletePartialOrder.ωScottContinuous f) :
    f.lfp = ⨆ n, f^[n] ⊥ :=
  fixedPoints.lfp_eq_sSup_iterate f h

end KnasterTarski

end BitMatrix.Topology.FixedPointAuthority
```
