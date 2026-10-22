/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 4.1.

This module formalizes only the finite algebraic linearization at the beginning
of the geometry-of-numbers argument.  It reuses the existing anatomic box and
does not prove the Heath--Brown lattice-point estimate, divisor-fibre bounds,
Proposition 4.1, the exceptional-set theorem, or the abc conjecture.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #417.  Stacked parent: draft PR #416.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators
open AnatomicBoxes

namespace ExceptionalSetAnalyticInterfaces

/-- The selected monomial factor `∏_(i∈I) x_i^(i+1)`.  The exponent uses the
paper index, so a zero-based Lean coordinate `i` contributes `i.val+1`. -/
def paperSelectedMonomial {d : ℕ} (I : Finset (Fin d))
    (x : Fin d → ℕ) : ℕ :=
  ∏ i ∈ I, x i ^ paperIndex i

/-- The complementary monomial factor over the literal finite complement of
`I` inside `Fin d`. -/
def paperComplementMonomial {d : ℕ} (I : Finset (Fin d))
    (x : Fin d → ℕ) : ℕ :=
  ∏ i ∈ Iᶜ, x i ^ paperIndex i

/-- The complementary and selected coordinates form a literal partition of
the complete monomial. -/
theorem paperComplementMonomial_mul_selected {d : ℕ}
    (I : Finset (Fin d)) (x : Fin d → ℕ) :
    paperComplementMonomial I x * paperSelectedMonomial I x = monomial x := by
  classical
  simpa [paperComplementMonomial, paperSelectedMonomial, monomial, paperIndex]
    using Finset.prod_compl_mul_prod I (fun i : Fin d => x i ^ paperIndex i)

/-- Commuted form of the same exact partition. -/
theorem paperSelectedMonomial_mul_complement {d : ℕ}
    (I : Finset (Fin d)) (x : Fin d → ℕ) :
    paperSelectedMonomial I x * paperComplementMonomial I x = monomial x := by
  rw [mul_comm, paperComplementMonomial_mul_selected]

/-- The coefficient `a' = a₀ ∏_(i∉I) a_i^i` in Proposition 4.1. -/
def geometryCoefficientA {d : ℕ} (p : Parameters d)
    (I : Finset (Fin d)) (q : Point d) : ℕ :=
  p.residual 0 * paperComplementMonomial I q.1

/-- The selected variable `x = ∏_(i∈I) a_i^i`. -/
def geometryVariableA {d : ℕ} (I : Finset (Fin d))
    (q : Point d) : ℕ :=
  paperSelectedMonomial I q.1

/-- The coefficient `b' = b₀ ∏_(i∉I') b_i^i`. -/
def geometryCoefficientB {d : ℕ} (p : Parameters d)
    (I' : Finset (Fin d)) (q : Point d) : ℕ :=
  p.residual 1 * paperComplementMonomial I' q.2.1

/-- The selected variable `y = ∏_(i∈I') b_i^i`. -/
def geometryVariableB {d : ℕ} (I' : Finset (Fin d))
    (q : Point d) : ℕ :=
  paperSelectedMonomial I' q.2.1

/-- The coefficient `c' = c₀ ∏_(i∉I'') c_i^i`. -/
def geometryCoefficientC {d : ℕ} (p : Parameters d)
    (I'' : Finset (Fin d)) (q : Point d) : ℕ :=
  p.residual 2 * paperComplementMonomial I'' q.2.2

/-- The selected variable `z = ∏_(i∈I'') c_i^i`. -/
def geometryVariableC {d : ℕ} (I'' : Finset (Fin d))
    (q : Point d) : ℕ :=
  paperSelectedMonomial I'' q.2.2

/-- Exact reconstruction of the first monomial coordinate. -/
theorem geometryCoefficientA_mul_variableA {d : ℕ}
    (p : Parameters d) (I : Finset (Fin d)) (q : Point d) :
    geometryCoefficientA p I q * geometryVariableA I q = p.totalA q.1 := by
  unfold geometryCoefficientA geometryVariableA Parameters.totalA
  rw [mul_assoc, paperComplementMonomial_mul_selected]

/-- Exact reconstruction of the second monomial coordinate. -/
theorem geometryCoefficientB_mul_variableB {d : ℕ}
    (p : Parameters d) (I' : Finset (Fin d)) (q : Point d) :
    geometryCoefficientB p I' q * geometryVariableB I' q = p.totalB q.2.1 := by
  unfold geometryCoefficientB geometryVariableB Parameters.totalB
  rw [mul_assoc, paperComplementMonomial_mul_selected]

/-- Exact reconstruction of the third monomial coordinate. -/
theorem geometryCoefficientC_mul_variableC {d : ℕ}
    (p : Parameters d) (I'' : Finset (Fin d)) (q : Point d) :
    geometryCoefficientC p I'' q * geometryVariableC I'' q = p.totalC q.2.2 := by
  unfold geometryCoefficientC geometryVariableC Parameters.totalC
  rw [mul_assoc, paperComplementMonomial_mul_selected]

/-- The finite linear equation isolated at the start of Proposition 4.1. -/
def GeometryLinearEquation {d : ℕ} (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop :=
  geometryCoefficientA p I q * geometryVariableA I q +
      geometryCoefficientB p I' q * geometryVariableB I' q =
    geometryCoefficientC p I'' q * geometryVariableC I'' q

/-- Every existing box point satisfies the exact selected-variable linear
equation.  This is only algebraic reconstruction of the inherited box
identity; no lattice-point estimate is used. -/
theorem geometryLinearEquation_of_mem_boxFinset {d : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ boxFinset p) :
    GeometryLinearEquation p q I I' I'' := by
  unfold GeometryLinearEquation
  rw [geometryCoefficientA_mul_variableA,
    geometryCoefficientB_mul_variableB,
    geometryCoefficientC_mul_variableC]
  exact (mem_boxFinset.mp hq).2.2.2.2.2.2.1

/-- The strict paper box is a subfamily of the existing box, so the same
linearization applies without defining another source. -/
theorem geometryLinearEquation_of_mem_paperBoxFinset {d : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ paperBoxFinset p) :
    GeometryLinearEquation p q I I' I'' :=
  geometryLinearEquation_of_mem_boxFinset I I' I''
    (paperBoxFinset_subset_boxFinset p hq)

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.paperComplementMonomial_mul_selected
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryLinearEquation_of_mem_boxFinset
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryLinearEquation_of_mem_paperBoxFinset
