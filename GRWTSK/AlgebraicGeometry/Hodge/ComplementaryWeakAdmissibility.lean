/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/05c-cm-types.tex.
This file formalizes only the complementary-projector numerical argument. -/
import GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.ComplementaryWeakAdmissibility

structure ComplementaryNumerics where
  hodgeLeft : ℕ
  hodgeRight : ℕ
  hodgeTotal : ℕ
  newtonLeft : ℕ
  newtonRight : ℕ
  newtonTotal : ℕ
  hodgeLeft_le_newtonLeft : hodgeLeft ≤ newtonLeft
  hodgeRight_le_newtonRight : hodgeRight ≤ newtonRight
  hodge_add : hodgeLeft + hodgeRight = hodgeTotal
  newton_add : newtonLeft + newtonRight = newtonTotal
  total_eq : hodgeTotal = newtonTotal

theorem component_equalities (P : ComplementaryNumerics) :
    P.hodgeLeft = P.newtonLeft ∧ P.hodgeRight = P.newtonRight := by
  omega

theorem left_eq (P : ComplementaryNumerics) :
    P.hodgeLeft = P.newtonLeft :=
  (component_equalities P).1

theorem right_eq (P : ComplementaryNumerics) :
    P.hodgeRight = P.newtonRight :=
  (component_equalities P).2

theorem pureType_of_complementary_projector
    {K D : Type*} [Field K] [AddCommGroup D] [Module K D]
    [FiniteDimensional K D]
    (P : ComplementaryNumerics)
    (F : DegreeOneSlope.DegreeOneFiltration K D)
    (slope : ℕ)
    (hslope : slope = 0 ∨ slope = 1)
    (hHodge : P.hodgeLeft = Module.finrank K F.F1)
    (hNewton : P.newtonLeft = slope * Module.finrank K D) :
    (slope = 0 ∧ DegreeOneSlope.HasPureType F .antiholomorphic) ∨
      (slope = 1 ∧ DegreeOneSlope.HasPureType F .holomorphic) := by
  let Q : DegreeOneSlope.PureSlopeNumerics K D :=
    { filtration := F
      slope := slope
      slope_zero_or_one := hslope
      hodge_eq_newton := by
        rw [← hHodge, P.left_eq, hNewton] }
  exact DegreeOneSlope.pureType_of_zero_or_one_slope Q

end GRWTSK.AlgebraicGeometry.Hodge.ComplementaryWeakAdmissibility
