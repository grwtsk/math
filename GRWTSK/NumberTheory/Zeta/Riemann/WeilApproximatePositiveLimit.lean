/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Vanishing lower-defect adapter for the Weil positive-limit endpoint

This module supplies one bounded interface theorem requested by issue #215.  A family
of real approximating forms may have a diagonal lower bound `-ηₙ(f)` rather than exact
nonnegativity, provided `ηₙ(f)` is nonnegative and tends to zero for every test object.
Adding the same lower defect in both arguments produces a comparison family with a
nonnegative diagonal and the same pointwise limit.

The corrected family is only an interface-level real form.  This module does not claim
that it is Gram, sesquilinear, Hermitian, positive semidefinite, source-faithful, or
arithmetically constructed.  It proves no decay estimate and constructs no zeta Weil
criterion.  The RH endpoint remains conditional on an independently supplied exact
`WeilCriterionForZeta` at the same test class and normalization.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Analysis.ErrorBounds

/-- Pointwise polarized convergence together with an explicit vanishing lower defect
on the diagonal.  The lower defect is data to be derived from the source; it is not an
assumption that the target form is positive. -/
structure ApproximatePositiveApproximation (T : Type*) (W : T → T → ℝ) where
  approximant : ℕ → T → T → ℝ
  lowerDefect : ℕ → T → ℝ
  lowerDefect_nonnegative : ∀ n f, 0 ≤ lowerDefect n f
  diagonal_lower_bound : ∀ n f, -lowerDefect n f ≤ approximant n f f
  lowerDefect_vanishes :
    ∀ f, VanishesAtInfinity (fun n => lowerDefect n f)
  comparison_vanishes :
    ∀ f g, VanishesAtInfinity (fun n => W f g - approximant n f g)

namespace ApproximatePositiveApproximation

/-- Symmetric scalar correction used only to reach the existing positive-limit
interface.  No bilinearity or Hermitian property is inferred for this correction. -/
def correctedApproximant {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W)
    (n : ℕ) (f g : T) : ℝ :=
  approximation.approximant n f g +
    approximation.lowerDefect n f + approximation.lowerDefect n g

/-- The corrected diagonal is nonnegative.  This is ordinary scalar nonnegativity,
not positive semidefiniteness of the full two-variable form. -/
theorem correctedApproximant_diagonal_nonnegative
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W)
    (n : ℕ) (f : T) :
    0 ≤ approximation.correctedApproximant n f f := by
  unfold correctedApproximant
  have hbound := approximation.diagonal_lower_bound n f
  have hdefect := approximation.lowerDefect_nonnegative n f
  linarith

/-- The correction does not change the pointwise limit because both lower-defect
terms vanish. -/
theorem correctedComparison_vanishes
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W) :
    ∀ f g, VanishesAtInfinity
      (fun n => W f g - approximation.correctedApproximant n f g) := by
  intro f g
  have hdefects :
      VanishesAtInfinity
        (fun n => approximation.lowerDefect n f + approximation.lowerDefect n g) :=
    (approximation.lowerDefect_vanishes f).add
      (approximation.lowerDefect_vanishes g)
  have htransport := (approximation.comparison_vanishes f g).sub hdefects
  simpa only [correctedApproximant, sub_sub, add_assoc] using htransport

/-- Exact adapter into the already declared terminal positive-limit interface. -/
def toPositiveApproximation
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W) :
    PolarizedPositiveApproximation T W where
  approximant := approximation.correctedApproximant
  diagonal_nonnegative := by
    intro n f
    exact approximation.correctedApproximant_diagonal_nonnegative n f
  comparison_vanishes := approximation.correctedComparison_vanishes

/-- Approximately nonnegative stages with a vanishing lower defect force a
nonnegative target diagonal. -/
theorem target_diagonal_nonnegative
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W) :
    ∀ f, 0 ≤ W f f :=
  positive_diagonal_of_positiveApproximation approximation.toPositiveApproximation

end ApproximatePositiveApproximation

/-- Conditional RH endpoint for the approximate-positive profile.  The exact zeta
criterion remains a separate explicit premise. -/
theorem riemannHypothesis_of_approximatePositiveLimit
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W)
    (criterion : WeilCriterionForZeta T W) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_positiveGramLimit
    approximation.toPositiveApproximation criterion

/-- A negative target witness excludes every approximation with vanishing lower
positivity defect. -/
theorem no_approximatePositiveApproximation_of_negativeWitness
    {T : Type*} {W : T → T → ℝ}
    (f : T) (hnegative : W f f < 0) :
    ¬ Nonempty (ApproximatePositiveApproximation T W) := by
  intro hexists
  rcases hexists with ⟨approximation⟩
  have hnonnegative := approximation.target_diagonal_nonnegative f
  linarith

namespace ApproximatePositiveApproximation

private def transientLowerDefect (n : ℕ) : ℝ :=
  if n = 0 then 1 else 0

private def transientApproximant (n : ℕ) : ℝ :=
  -transientLowerDefect n

private theorem transientLowerDefect_vanishes :
    VanishesAtInfinity transientLowerDefect := by
  intro ε hε
  refine ⟨1, ?_⟩
  intro n hn
  have hn0 : n ≠ 0 := by omega
  simpa [transientLowerDefect, hn0] using hε.le

/-- Finite hostile/positive fixture: the first diagonal stage is negative, but its
certified lower defect vanishes after that stage, and the target is zero. -/
def transientNegativeStageFixture :
    ApproximatePositiveApproximation Unit (fun _ _ => 0) where
  approximant := fun n _ _ => transientApproximant n
  lowerDefect := fun n _ => transientLowerDefect n
  lowerDefect_nonnegative := by
    intro n _
    by_cases hn : n = 0 <;> simp [transientLowerDefect, hn]
  diagonal_lower_bound := by
    intro n _
    simp [transientApproximant]
  lowerDefect_vanishes := by
    intro _
    exact transientLowerDefect_vanishes
  comparison_vanishes := by
    intro _ _
    simpa [transientApproximant] using transientLowerDefect_vanishes

/-- The fixture genuinely permits one negative stage; exact stagewise positivity was
not silently reintroduced. -/
theorem transientNegativeStageFixture_stage_zero :
    transientNegativeStageFixture.approximant 0 () () = -1 := by
  norm_num [transientNegativeStageFixture, transientApproximant,
    transientLowerDefect]

/-- A fixed unit lower defect does not vanish.  Thus the tempting constant-negative
model `W = q = -1`, `η = 1` cannot inhabit the new interface. -/
theorem constantLowerDefect_not_vanishes :
    ¬ VanishesAtInfinity (fun _ : ℕ => (1 : ℝ)) := by
  intro h
  obtain ⟨N, hN⟩ := h (1 / 2) (by norm_num)
  have hcontradiction := hN N (le_refl N)
  norm_num at hcontradiction

end ApproximatePositiveApproximation

end GRWTSK.RiemannHypothesis
