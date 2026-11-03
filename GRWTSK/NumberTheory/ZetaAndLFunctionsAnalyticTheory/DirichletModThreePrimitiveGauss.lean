/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Dirichlet conductors and Gauss sums retain upstream attribution
and Apache-2.0 license obligations. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeQuadraticConstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFiniteParseval

set_option autoImplicit false
noncomputable section

/-! Primitive interface and exact Gauss normalization for the constructed
genuine character. No analytic L-zero identification. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open DirichletModThreeQuadraticConstruction

theorem modThreeQuadratic_conductor : modThreeQuadratic.conductor=3 := by
  have hd := modThreeQuadratic.conductor_dvd_level
  rcases (Nat.dvd_prime (by decide : Nat.Prime 3)).mp hd with h | h
  · exact (modThreeQuadratic_nonprincipal
      (DirichletCharacter.eq_one_iff_conductor_eq_one.mpr h)).elim
  · exact h

theorem modThreeQuadratic_primitive : modThreeQuadratic.IsPrimitive :=
  modThreeQuadratic_conductor

theorem modThreeQuadratic_gauss_norm :
    ‖gaussSum modThreeQuadratic (ZMod.stdAddChar (N := 3))‖=Real.sqrt (3 : ℝ) :=
  DirichletFiniteParseval.primitive_gauss_norm 3 modThreeQuadratic modThreeQuadratic_primitive

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
