/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 4.1.

This module supplies only positivity for the six factors in the existing
finite geometry linearization. It proves no primitivity, lattice-point bound,
divisor-fibre estimate, Proposition 4.1, exceptional-set theorem, or abc
conjecture.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #417. Stacked PR: #418.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLinearization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators
open AnatomicBoxes

namespace ExceptionalSetAnalyticInterfaces

/-- Strict paper-dyadic membership forces the represented coordinate to be
positive, even when its dyadic scale is zero. -/
theorem coordinate_pos_of_paperDyadic {x A : ℕ}
    (member : PaperDyadic x A) : 0 < x :=
  lt_of_le_of_lt (Nat.zero_le A) member.1

/-- A selected product of positive coordinates is positive. -/
theorem paperSelectedMonomial_pos {d : ℕ}
    (I : Finset (Fin d)) {x : Fin d → ℕ}
    (positive : ∀ i, 0 < x i) :
    0 < paperSelectedMonomial I x := by
  unfold paperSelectedMonomial
  apply Finset.prod_pos
  intro i hi
  exact pow_pos (positive i) _

/-- The complementary product is positive under the same coordinate premise. -/
theorem paperComplementMonomial_pos {d : ℕ}
    (I : Finset (Fin d)) {x : Fin d → ℕ}
    (positive : ∀ i, 0 < x i) :
    0 < paperComplementMonomial I x := by
  unfold paperComplementMonomial
  apply Finset.prod_pos
  intro i hi
  exact pow_pos (positive i) _

/-- Positivity package needed before a positive-lattice-point theorem can
consume the exact linear equation. -/
structure GeometryPositiveFactors {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop where
  coefficientA_pos : 0 < geometryCoefficientA p I q
  variableA_pos : 0 < geometryVariableA I q
  coefficientB_pos : 0 < geometryCoefficientB p I' q
  variableB_pos : 0 < geometryVariableB I' q
  coefficientC_pos : 0 < geometryCoefficientC p I'' q
  variableC_pos : 0 < geometryVariableC I'' q

/-- Strict paper-box membership and positive residual factors make all six
geometry factors positive. No coprimality conclusion is included. -/
theorem geometryPositiveFactors_of_mem_paperBoxFinset {d : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (residual_pos : ∀ r : Fin 3, 0 < p.residual r)
    (hq : q ∈ paperBoxFinset p) :
    GeometryPositiveFactors p q I I' I'' := by
  classical
  have filtered := Finset.mem_filter.mp hq
  have strictA : ∀ i, PaperDyadic (q.1 i) (p.A i) := filtered.2.1
  have strictB : ∀ i, PaperDyadic (q.2.1 i) (p.B i) := filtered.2.2.1
  have strictC : ∀ i, PaperDyadic (q.2.2 i) (p.C i) := filtered.2.2.2
  have positiveA : ∀ i, 0 < q.1 i :=
    fun i => coordinate_pos_of_paperDyadic (strictA i)
  have positiveB : ∀ i, 0 < q.2.1 i :=
    fun i => coordinate_pos_of_paperDyadic (strictB i)
  have positiveC : ∀ i, 0 < q.2.2 i :=
    fun i => coordinate_pos_of_paperDyadic (strictC i)
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · unfold geometryCoefficientA
    exact Nat.mul_pos (residual_pos 0)
      (paperComplementMonomial_pos I positiveA)
  · unfold geometryVariableA
    exact paperSelectedMonomial_pos I positiveA
  · unfold geometryCoefficientB
    exact Nat.mul_pos (residual_pos 1)
      (paperComplementMonomial_pos I' positiveB)
  · unfold geometryVariableB
    exact paperSelectedMonomial_pos I' positiveB
  · unfold geometryCoefficientC
    exact Nat.mul_pos (residual_pos 2)
      (paperComplementMonomial_pos I'' positiveC)
  · unfold geometryVariableC
    exact paperSelectedMonomial_pos I'' positiveC

/-- The exact source-paper admissibility predicate already supplies residual
positivity, so it discharges the only extra premise of the factor theorem. -/
theorem geometryPositiveFactors_of_paperAdmissible
    {d : ℕ} {lam ε₀ : ℝ} {X : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (admissible : PaperAdmissible lam ε₀ X p)
    (hq : q ∈ paperBoxFinset p) :
    GeometryPositiveFactors p q I I' I'' := by
  apply geometryPositiveFactors_of_mem_paperBoxFinset I I' I''
    (fun r => (admissible.2.2.1 r).1) hq

/-- Positive factor data together with the inherited exact linear equation. -/
structure PositiveGeometryLinearization {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop where
  positive : GeometryPositiveFactors p q I I' I''
  equation : GeometryLinearEquation p q I I' I''

/-- One paper-admissible strict-box point yields the positive exact linear
equation used at the start of the geometry-of-numbers route. -/
theorem positiveGeometryLinearization_of_paperAdmissible
    {d : ℕ} {lam ε₀ : ℝ} {X : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (admissible : PaperAdmissible lam ε₀ X p)
    (hq : q ∈ paperBoxFinset p) :
    PositiveGeometryLinearization p q I I' I'' :=
  ⟨geometryPositiveFactors_of_paperAdmissible I I' I''
      admissible hq,
    geometryLinearEquation_of_mem_paperBoxFinset I I' I'' hq⟩

/-- Product positivity does not prove primitivity; the latter remains a
separate arithmetic obligation. -/
theorem positive_factors_do_not_encode_coprimality_fixture :
    0 < (2 : ℕ) ∧ 0 < (4 : ℕ) ∧ ¬ Nat.Coprime 2 4 := by
  norm_num

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryPositiveFactors_of_mem_paperBoxFinset
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.positiveGeometryLinearization_of_paperAdmissible
