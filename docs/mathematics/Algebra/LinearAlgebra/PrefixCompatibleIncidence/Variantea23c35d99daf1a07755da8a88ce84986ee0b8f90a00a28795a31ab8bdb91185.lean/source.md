# Complete source: GRWTSK.Algebra.LinearAlgebra.PrefixCompatibleIncidence.Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04f108942317692ada1ef09e9e4f2d6ce84b3d09` · SHA-256 `ea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Normed.Operator.Basic
public import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Prefix-compatible incidence and residual families

A maximal Type II argument needs one filtration, not an unrelated packet
model reconstructed at every cutoff.  These structures record only the exact
successor laws for an operator-valued incidence family and a matrix-valued
residual family.

They contain no localization predicate, decay estimate, correlation bound,
or theorem authority.  Such data belongs to later geometric and analytic
layers.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- An operator-valued prefix filtration with explicitly recorded one-moment
increments. -/
structure PrefixCompatibleIncidence
    (RightSpace LeftSpace : Type*)
    [NormedAddCommGroup RightSpace] [NormedSpace ℂ RightSpace]
    [NormedAddCommGroup LeftSpace] [NormedSpace ℂ LeftSpace] where
  incidence : ℕ → RightSpace →L[ℂ] LeftSpace
  increment : ℕ → RightSpace →L[ℂ] LeftSpace
  zero : incidence 0 = 0
  succ : ∀ x,
    incidence (x + 1) = incidence x + increment (x + 1)

/-- The incidence increment is literally the successor difference. -/
@[surface_novel, surface_published]
theorem PrefixCompatibleIncidence.succ_sub
    {RightSpace LeftSpace : Type*}
    [NormedAddCommGroup RightSpace] [NormedSpace ℂ RightSpace]
    [NormedAddCommGroup LeftSpace] [NormedSpace ℂ LeftSpace]
    (family : PrefixCompatibleIncidence RightSpace LeftSpace) (x : ℕ) :
    family.incidence (x + 1) - family.incidence x =
      family.increment (x + 1) := by
  rw [family.succ]
  abel

/-- Every incidence prefix is the finite sum of the fixed increments that
have entered so far. -/
@[surface_novel, surface_published]
theorem PrefixCompatibleIncidence.incidence_eq_sum_increments
    {RightSpace LeftSpace : Type*}
    [NormedAddCommGroup RightSpace] [NormedSpace ℂ RightSpace]
    [NormedAddCommGroup LeftSpace] [NormedSpace ℂ LeftSpace]
    (family : PrefixCompatibleIncidence RightSpace LeftSpace) (x : ℕ) :
    family.incidence x =
      ∑ n ∈ Finset.range x, family.increment (n + 1) := by
  induction x with
  | zero => simpa using family.zero
  | succ x ih =>
      rw [family.succ, ih]
      simp only [Finset.sum_range_succ]

/-- A matrix-valued residual filtration with its exact one-moment leakage
increments.  The structure says how the residual is constructed over the
prefix order; it says nothing about its size. -/
structure PrefixCompatibleResidual (Left Right : Type*) where
  residual : ℕ → Matrix Left Right ℂ
  increment : ℕ → Matrix Left Right ℂ
  zero : residual 0 = 0
  succ : ∀ x,
    residual (x + 1) = residual x + increment (x + 1)

/-- The residual increment is literally the successor difference. -/
@[surface_novel, surface_published]
theorem PrefixCompatibleResidual.succ_sub
    {Left Right : Type*}
    (family : PrefixCompatibleResidual Left Right) (x : ℕ) :
    family.residual (x + 1) - family.residual x =
      family.increment (x + 1) := by
  rw [family.succ]
  abel

/-- Every residual prefix is the finite sum of its fixed leakage
increments. -/
@[surface_novel, surface_published]
theorem PrefixCompatibleResidual.residual_eq_sum_increments
    {Left Right : Type*}
    (family : PrefixCompatibleResidual Left Right) (x : ℕ) :
    family.residual x =
      ∑ n ∈ Finset.range x, family.increment (n + 1) := by
  induction x with
  | zero => simpa using family.zero
  | succ x ih =>
      rw [family.succ, ih]
      simp only [Finset.sum_range_succ]

end

end Surface.Core.TypeII

end
```
