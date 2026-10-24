# Complete source: GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cec65f74cdf4efd3839898cb1ab1f45087de973` · SHA-256 `a20a25e6dc1f40499d7743b90221c0f6ce9f5e73c7e96f08dee31ed67205f71b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External source pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/05c-cm-types.tex.
This file proves only the finite-dimensional Hodge-number last mile after a
weak-admissibility equality has already been supplied. -/
import Mathlib

/-!
# Degree-one pure-slope Hodge-number interface

For a degree-one filtered vector space, the only Hodge filtration step is
\`F¹\`. If a separately supplied weak-admissibility argument identifies its
Hodge number with the Newton number of a pure slope \`t ∈ {0,1}\`, then:

* slope 0 forces \`F¹ = ⊥\`, corresponding to pure type \`(0,1)\`;
* slope 1 forces \`F¹ = ⊤\`, corresponding to pure type \`(1,0)\`.

This file does not define Frobenius, prove weak admissibility, or prove that a
projector preserves a filtration. Those are upstream obligations.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope

variable {K D : Type*} [Field K] [AddCommGroup D] [Module K D]
  [FiniteDimensional K D]

/-- The two pure Hodge types available in weight one. -/
inductive PureDegreeOneHodgeType
  | holomorphic
  | antiholomorphic
  deriving DecidableEq

/-- A degree-one filtration is represented by its \`F¹\` subspace. -/
structure DegreeOneFiltration (K D : Type*) [Field K] [AddCommGroup D]
    [Module K D] where
  F1 : Submodule K D

/-- Exact interpretation of the two pure degree-one types in terms of \`F¹\`. -/
def HasPureType (F : DegreeOneFiltration K D) :
    PureDegreeOneHodgeType → Prop
  | .holomorphic => F.F1 = ⊤
  | .antiholomorphic => F.F1 = ⊥

/-- Numerical data remaining after the upstream filtered-Frobenius theorem has
supplied the Hodge/Newton equality on one projected summand. -/
structure PureSlopeNumerics (K D : Type*) [Field K] [AddCommGroup D]
    [Module K D] [FiniteDimensional K D] where
  filtration : DegreeOneFiltration K D
  slope : ℕ
  slope_zero_or_one : slope = 0 ∨ slope = 1
  hodge_eq_newton :
    Module.finrank K filtration.F1 = slope * Module.finrank K D

/-- Pure Newton slope zero plus the supplied Hodge/Newton equality forces the
degree-one filtration to be purely antiholomorphic. -/
theorem antiholomorphic_of_slope_zero
    (P : PureSlopeNumerics K D)
    (hs : P.slope = 0) :
    HasPureType P.filtration .antiholomorphic := by
  unfold HasPureType
  apply Submodule.finrank_eq_zero.mp
  rw [P.hodge_eq_newton, hs]
  simp

/-- Pure Newton slope one plus the supplied Hodge/Newton equality forces the
degree-one filtration to be purely holomorphic. -/
theorem holomorphic_of_slope_one
    (P : PureSlopeNumerics K D)
    (hs : P.slope = 1) :
    HasPureType P.filtration .holomorphic := by
  unfold HasPureType
  apply Submodule.eq_top_of_finrank_eq
  rw [P.hodge_eq_newton, hs]
  simp

/-- The exact two-case terminal classification. -/
theorem pureType_of_zero_or_one_slope
    (P : PureSlopeNumerics K D) :
    (P.slope = 0 ∧ HasPureType P.filtration .antiholomorphic) ∨
      (P.slope = 1 ∧ HasPureType P.filtration .holomorphic) := by
  rcases P.slope_zero_or_one with hs | hs
  · exact Or.inl ⟨hs, antiholomorphic_of_slope_zero P hs⟩
  · exact Or.inr ⟨hs, holomorphic_of_slope_one P hs⟩

end GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope
```
