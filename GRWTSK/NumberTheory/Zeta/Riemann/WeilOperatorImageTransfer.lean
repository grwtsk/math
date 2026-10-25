/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream mathematical sources retain their authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion
import Mathlib.Analysis.InnerProductSpace.Basic

set_option autoImplicit false

/-!
# Operator quadratic positivity on the exact Weil test-image

An external finite-dimensional self-adjoint path positivity theorem can
supply the strictly positive operator quadratic-form hypothesis below,
but is NOT imported or reconstructed here. In particular the upstream
`OAI.TwoPointCorrelations.selfAdjoint_path_positive` at
`openai/math` commit `1581d4cbdd69a0faf34b2089614fe2a814316a6a`
concerns finite-dimensional Hilbert spaces, not the classical Weil form.

The comparison requires an EXACT equality with the admitted Weil
diagonal on each represented test vector, not merely two positive
forms on unrelated spaces. Positivity on this image is insufficient
for global Weil positivity unless a full-test approximation together
with continuity of the actual diagonal is separately established.

No classical Guinand--Weil representation, density, continuity,
accepted classical RH criterion, Connes trace formula, or unconditional
Riemann hypothesis result is provided in this file.

SOURCE_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.WeilOperatorImageTransfer

open Filter Topology

variable {T : Type*} [TopologicalSpace T] [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T}
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- Strict operator positivity gives nonnegativity at the zero vector as well.
The hypothesis is the exact kind of output supplied by a positive
self-adjoint-path theorem, not a theorem assumed about the Weil form. -/
theorem operator_diagonal_nonnegative
    (A : E →L[ℂ] E)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (x : E) :
    0 ≤ (inner ℂ (A x) x).re := by
  by_cases hx : x = 0
  · subst x
    simp
  · exact (hstrict x hx).le

/-- Image-scoped Weil positivity from the ACTUAL diagonal identification.
No surjectivity or density of the representation follows from linearity. -/
theorem positive_on_operator_image
    (form : WeilHermitianForm space)
    (A : E →L[ℂ] E)
    (representation : E →ₗ[ℂ] space.Vector)
    (hidentify : ∀ x : E,
      form.diagonal (representation x) = (inner ℂ (A x) x).re)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (x : E) :
    0 ≤ form.diagonal (representation x) := by
  rw [hidentify x]
  exact operator_diagonal_nonnegative A hstrict x

/-- A single source-faithful sequence of represented tests for each admitted
test, combined with continuity of the actual diagonal, extends the operator
positivity to the full criterion class.  Neither analytic supplier is
constructed by this transfer theorem. -/
theorem positiveDiagonal_of_operator_approximation
    (form : WeilHermitianForm space)
    (A : E →L[ℂ] E)
    (representation : E →ₗ[ℂ] space.Vector)
    (hidentify : ∀ x : E,
      form.diagonal (representation x) = (inner ℂ (A x) x).re)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (approximants : ∀ f : space.Vector, ℕ → E)
    (happroximates : ∀ f : space.Vector,
      Tendsto (fun n => representation (approximants f n)) atTop (𝓝 f))
    (hcontinuous : Continuous form.diagonal) :
    form.PositiveDiagonal := by
  refine form.positiveDiagonal_of_convergent_tests
    (fun f n => representation (approximants f n))
    happroximates hcontinuous ?_
  intro f n
  exact positive_on_operator_image form A representation
    hidentify hstrict (approximants f n)

/-- A negative diagonal witness prevents dense sequential image
approximation from a positive operator with exact diagonal agreement.
This obstruction does not refute the zeta Weil criterion or RH. -/
theorem negativeWitness_excludes_operator_approximation
    (form : WeilHermitianForm space)
    (A : E →L[ℂ] E)
    (representation : E →ₗ[ℂ] space.Vector)
    (hidentify : ∀ x : E,
      form.diagonal (representation x) = (inner ℂ (A x) x).re)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (hcontinuous : Continuous form.diagonal)
    (witness : ∃ f : space.Vector, form.diagonal f < 0) :
    ¬ (∀ f : space.Vector, ∃ approximants : ℕ → E,
      Tendsto (fun n => representation (approximants n)) atTop (𝓝 f)) := by
  intro happrox
  rcases witness with ⟨f, hnegative⟩
  rcases happrox f with ⟨approximants, hconv⟩
  have hlimit : Tendsto
      (fun n => form.diagonal (representation (approximants n)))
      atTop (𝓝 (form.diagonal f)) :=
    (hcontinuous.tendsto f).comp hconv
  have hnonnegative : 0 ≤ form.diagonal f := by
    apply ge_of_tendsto hlimit
    exact Filter.Eventually.of_forall (fun n =>
      positive_on_operator_image form A representation
        hidentify hstrict (approximants n))
  exact (not_lt_of_ge hnonnegative) hnegative

/-- Classical RH-B conditional interface. The source-bound criterion, exact
operator-to-Weil diagonal, full-test approximation, and diagonal continuity
are independent required inputs, NOT supplied by a finite operator theorem. -/
theorem riemannHypothesis_of_operator_approximation
    (form : WeilHermitianForm space)
    (criterion : WeilPositivityImpliesRH form)
    (A : E →L[ℂ] E)
    (representation : E →ₗ[ℂ] space.Vector)
    (hidentify : ∀ x : E,
      form.diagonal (representation x) = (inner ℂ (A x) x).re)
    (hstrict : ∀ x : E, x ≠ 0 → 0 < (inner ℂ (A x) x).re)
    (approximants : ∀ f : space.Vector, ℕ → E)
    (happroximates : ∀ f : space.Vector,
      Tendsto (fun n => representation (approximants f n)) atTop (𝓝 f))
    (hcontinuous : Continuous form.diagonal) :
    _root_.RiemannHypothesis :=
  criterion.proof
    (positiveDiagonal_of_operator_approximation form A representation
      hidentify hstrict approximants happroximates hcontinuous)

end GRWTSK.RiemannHypothesis.WeilOperatorImageTransfer
