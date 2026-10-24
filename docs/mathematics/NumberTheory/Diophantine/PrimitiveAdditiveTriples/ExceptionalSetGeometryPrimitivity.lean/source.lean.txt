/-
Copyright (c) 2026 grwtsk contributors. MIT.

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 4.1.

The finite-box architecture used below is adapted from the Apache-2.0 Lean
work of Bhavik Mehta and Arend Mellendijk, as recorded in the imported
modules. The source paper separately acknowledges Bhavik Mehta for Lean
assistance on an earlier version.

This module derives the two exact primitivity statements at the start of the
geometry-of-numbers argument from the inherited support-carrier primitivity.
It proves no Heath--Brown lattice-point estimate, divisor-fibre estimate,
Proposition 4.1, exceptional-set theorem, or abc conjecture.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #417. Stacked PR: #418.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPositivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators
open AnatomicBoxes

namespace ExceptionalSetAnalyticInterfaces

/-- Raising every coordinate to a positive power does not change the prime
support. Hence coprimality of the two unweighted support carriers implies
coprimality of the corresponding weighted totals. -/
private theorem coprime_weighted_totals_of_support
    {d : ℕ} {r s : ℕ} {x y : Fin d → ℕ}
    (h : Nat.Coprime (r * supportProduct x)
      (s * supportProduct y)) :
    Nat.Coprime (r * monomial x) (s * monomial y) := by
  simpa only [supportProduct, monomial,
    Nat.coprime_mul_iff_left, Nat.coprime_mul_iff_right,
    Nat.coprime_prod_left_iff, Nat.coprime_prod_right_iff,
    Nat.succ_pos, Nat.coprime_pow_left_iff,
    Nat.coprime_pow_right_iff] using h

/-- The three reconstructed monomial totals are pairwise coprime. This is the
weighted consequence of the support-carrier primitivity already stored in the
existing `boxFinset`; no new primitive source is introduced. -/
theorem geometryTotals_pairwise_coprime_of_mem_boxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (hq : q ∈ boxFinset p) :
    Nat.Coprime (p.totalA q.1) (p.totalB q.2.1) ∧
      Nat.Coprime (p.totalA q.1) (p.totalC q.2.2) ∧
      Nat.Coprime (p.totalB q.2.1) (p.totalC q.2.2) := by
  have primitive : SupportPrimitive p q :=
    (mem_boxFinset.mp hq).2.2.2.2.2.2.2
  rcases primitive with ⟨hab, hac, hbc⟩
  refine ⟨?_, ?_, ?_⟩
  · change Nat.Coprime
      (p.residual 0 * monomial q.1)
      (p.residual 1 * monomial q.2.1)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierA, Parameters.carrierB] using hab
  · change Nat.Coprime
      (p.residual 0 * monomial q.1)
      (p.residual 2 * monomial q.2.2)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierA, Parameters.carrierC] using hac
  · change Nat.Coprime
      (p.residual 1 * monomial q.2.1)
      (p.residual 2 * monomial q.2.2)
    exact coprime_weighted_totals_of_support <| by
      simpa [Parameters.carrierB, Parameters.carrierC] using hbc

/-- A stronger pairwise form of the two three-variable gcd assertions printed
in Proposition 4.1. The exact paper predicates are exported separately below. -/
structure GeometryPairwisePrimitivity {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop where
  coefficients_ab :
    Nat.Coprime (geometryCoefficientA p I q)
      (geometryCoefficientB p I' q)
  coefficients_ac :
    Nat.Coprime (geometryCoefficientA p I q)
      (geometryCoefficientC p I'' q)
  coefficients_bc :
    Nat.Coprime (geometryCoefficientB p I' q)
      (geometryCoefficientC p I'' q)
  variables_ab :
    Nat.Coprime (geometryVariableA I q)
      (geometryVariableB I' q)
  variables_ac :
    Nat.Coprime (geometryVariableA I q)
      (geometryVariableC I'' q)
  variables_bc :
    Nat.Coprime (geometryVariableB I' q)
      (geometryVariableC I'' q)

/-- Each selected or complementary factor divides its reconstructed total, so
pairwise coprimality of the totals descends to all coefficient and variable
pairs occurring on different sides of the inherited abc equation. -/
theorem geometryPairwisePrimitivity_of_mem_boxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ boxFinset p) :
    GeometryPairwisePrimitivity p q I I' I'' := by
  rcases geometryTotals_pairwise_coprime_of_mem_boxFinset hq with
    ⟨hab, hac, hbc⟩
  have coefficientA_dvd :
      geometryCoefficientA p I q ∣ p.totalA q.1 :=
    ⟨geometryVariableA I q,
      (geometryCoefficientA_mul_variableA p I q).symm⟩
  have coefficientB_dvd :
      geometryCoefficientB p I' q ∣ p.totalB q.2.1 :=
    ⟨geometryVariableB I' q,
      (geometryCoefficientB_mul_variableB p I' q).symm⟩
  have coefficientC_dvd :
      geometryCoefficientC p I'' q ∣ p.totalC q.2.2 :=
    ⟨geometryVariableC I'' q,
      (geometryCoefficientC_mul_variableC p I'' q).symm⟩
  have variableA_dvd :
      geometryVariableA I q ∣ p.totalA q.1 := by
    refine ⟨geometryCoefficientA p I q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientA_mul_variableA p I q).symm
  have variableB_dvd :
      geometryVariableB I' q ∣ p.totalB q.2.1 := by
    refine ⟨geometryCoefficientB p I' q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientB_mul_variableB p I' q).symm
  have variableC_dvd :
      geometryVariableC I'' q ∣ p.totalC q.2.2 := by
    refine ⟨geometryCoefficientC p I'' q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientC_mul_variableC p I'' q).symm
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact (hab.coprime_dvd_left coefficientA_dvd).coprime_dvd_right
      coefficientB_dvd
  · exact (hac.coprime_dvd_left coefficientA_dvd).coprime_dvd_right
      coefficientC_dvd
  · exact (hbc.coprime_dvd_left coefficientB_dvd).coprime_dvd_right
      coefficientC_dvd
  · exact (hab.coprime_dvd_left variableA_dvd).coprime_dvd_right
      variableB_dvd
  · exact (hac.coprime_dvd_left variableA_dvd).coprime_dvd_right
      variableC_dvd
  · exact (hbc.coprime_dvd_left variableB_dvd).coprime_dvd_right
      variableC_dvd

/-- The strict source-paper box inherits the same stronger pairwise
primitivity from the existing endpoint-inclusive box. -/
theorem geometryPairwisePrimitivity_of_mem_paperBoxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ paperBoxFinset p) :
    GeometryPairwisePrimitivity p q I I' I'' :=
  geometryPairwisePrimitivity_of_mem_boxFinset I I' I''
    (paperBoxFinset_subset_boxFinset p hq)

/-- The exact two primitivity assertions printed in Proposition 4.1. The
three-variable gcd is represented by a left-associated binary `Nat.gcd`. -/
def GeometryPaperPrimitivity {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop :=
  Nat.gcd
      (Nat.gcd (geometryCoefficientA p I q)
        (geometryCoefficientB p I' q))
      (geometryCoefficientC p I'' q) = 1 ∧
    Nat.gcd
      (Nat.gcd (geometryVariableA I q)
        (geometryVariableB I' q))
      (geometryVariableC I'' q) = 1

/-- The stronger inherited pairwise statement implies the exact pair of
three-variable gcd statements used by the source paper. -/
theorem GeometryPairwisePrimitivity.toPaperPrimitivity
    {d : ℕ} {p : Parameters d} {q : Point d}
    {I I' I'' : Finset (Fin d)}
    (primitive : GeometryPairwisePrimitivity p q I I' I'') :
    GeometryPaperPrimitivity p q I I' I'' := by
  unfold GeometryPaperPrimitivity
  constructor
  · have hab :
        Nat.gcd (geometryCoefficientA p I q)
          (geometryCoefficientB p I' q) = 1 :=
      primitive.coefficients_ab
    rw [hab]
    simp
  · have hab :
        Nat.gcd (geometryVariableA I q)
          (geometryVariableB I' q) = 1 :=
      primitive.variables_ab
    rw [hab]
    simp

/-- Every existing box point satisfies the exact two primitivity predicates
printed immediately before the linear equation in Proposition 4.1. -/
theorem geometryPaperPrimitivity_of_mem_boxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ boxFinset p) :
    GeometryPaperPrimitivity p q I I' I'' :=
  (geometryPairwisePrimitivity_of_mem_boxFinset I I' I'' hq).toPaperPrimitivity

/-- Strict source-paper box form of the exact primitivity statements. -/
theorem geometryPaperPrimitivity_of_mem_paperBoxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ paperBoxFinset p) :
    GeometryPaperPrimitivity p q I I' I'' :=
  (geometryPairwisePrimitivity_of_mem_paperBoxFinset I I' I'' hq).toPaperPrimitivity

/-- Positivity, exact linear reconstruction, and the inherited stronger
pairwise primitivity, packaged for a future primitive lattice-point theorem. -/
structure PrimitivePositiveGeometryLinearization {d : ℕ}
    (p : Parameters d) (q : Point d)
    (I I' I'' : Finset (Fin d)) : Prop where
  positive : GeometryPositiveFactors p q I I' I''
  primitive : GeometryPairwisePrimitivity p q I I' I''
  equation : GeometryLinearEquation p q I I' I''

/-- Recover the source paper's exact gcd predicates from the stronger package. -/
theorem PrimitivePositiveGeometryLinearization.paperPrimitivity
    {d : ℕ} {p : Parameters d} {q : Point d}
    {I I' I'' : Finset (Fin d)}
    (linearization : PrimitivePositiveGeometryLinearization p q I I' I'') :
    GeometryPaperPrimitivity p q I I' I'' :=
  linearization.primitive.toPaperPrimitivity

/-- A paper-admissible strict-box point now supplies all algebraic and
primitivity inputs stated before the Heath--Brown estimate. -/
theorem primitivePositiveGeometryLinearization_of_paperAdmissible
    {d : ℕ} {lam ε₀ : ℝ} {X : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (admissible : PaperAdmissible lam ε₀ X p)
    (hq : q ∈ paperBoxFinset p) :
    PrimitivePositiveGeometryLinearization p q I I' I'' := by
  have positiveEquation :=
    positiveGeometryLinearization_of_paperAdmissible I I' I''
      admissible hq
  exact
    { positive := positiveEquation.positive
      primitive := geometryPairwisePrimitivity_of_mem_paperBoxFinset
        I I' I'' hq
      equation := positiveEquation.equation }

/-- Three-variable gcd one is weaker than pairwise coprimality; the source
paper uses the former, while the inherited box supplies the latter. -/
theorem joint_gcd_one_does_not_imply_pairwise_fixture :
    Nat.gcd (Nat.gcd 2 3) 6 = 1 ∧ ¬ Nat.Coprime 2 6 := by
  norm_num

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryTotals_pairwise_coprime_of_mem_boxFinset
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryPaperPrimitivity_of_mem_boxFinset
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.primitivePositiveGeometryLinearization_of_paperAdmissible
