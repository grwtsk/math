/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePrincipalSimplicity

/-!
# Qualitative strict separation of actual Wilson variational values

The second variational value is bounded by the first from their definitions.
Equality at the positive principal value would give a nonzero orthogonal
principal eigenvector by compact attainment, contradicting actual simplicity.
The zero second-value case is included; no positivity premise on lambda1 is
required. The resulting positive difference depends on the fixed regulator and
coupling. No numerical finite separation certificate or regulator-uniform
physical mass gap or continuum construction is supplied.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, transitive axiom audit and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceStrictSeparation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalSimplicity
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable (L : ℕ) [NeZero L]

/-- The actual infimum over hyperplanes cannot exceed the whole-space supremum. -/
theorem lambda1_le_lambda0 (β : ℝ) (hβ : 0 ≤ β) :
    lambda1 L β hβ ≤ lambda0 L β hβ := by
  apply (secondValue_le (invariantOperator L β hβ) 0).trans
  apply csSup_le ⟨0, zero_mem_ballValues _ _⟩
  rintro r ⟨x, hx, hn, rfl⟩
  exact quadratic_le_ballValue (invariantOperator L β hβ) ⊤ Submodule.mem_top hn

/-- Strictness uses the actual compact second-value attainment and simplicity. -/
theorem lambda1_lt_lambda0 (β : ℝ) (hβ : 0 < β) :
    lambda1 L β hβ.le < lambda0 L β hβ.le := by
  apply lt_of_le_of_ne (lambda1_le_lambda0 L β hβ.le)
  intro heq
  obtain ⟨u, hn, hu, hp⟩ := exists_unit_principal_strictly_positive L β hβ
  have hsecond : 0 < secondValue (invariantOperator L β hβ.le) := by
    change 0 < lambda1 L β hβ.le
    rw [heq]
    exact lambda0_pos L β hβ
  obtain ⟨v, hv, he, ho⟩ := secondValue_hasEigenvector
    (invariantOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le) hn hu hsecond
  have hev : invariantOperator L β hβ.le v = lambda0 L β hβ.le • v := by
    change invariantOperator L β hβ.le v = lambda1 L β hβ.le • v at he
    simpa only [heq] using he
  exact hv (principal_orthogonal_eq_zero L β hβ.le u v hp hev ho)

/-- Positive fixed-regulator difference, with no uniform lower bound asserted. -/
theorem principal_difference_pos (β : ℝ) (hβ : 0 < β) :
    0 < lambda0 L β hβ.le - lambda1 L β hβ.le :=
  sub_pos.mpr (lambda1_lt_lambda0 L β hβ)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceStrictSeparation
