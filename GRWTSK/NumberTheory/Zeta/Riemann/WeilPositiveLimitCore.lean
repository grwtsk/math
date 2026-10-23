/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature
import GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Positive limits with complete named residuals

This module proves the generic endpoint needed by a Weil-positive-limit route:

* an exact comparison identity with finitely many named residual channels;
* componentwise vanishing implies vanishing of the complete comparison error;
* a pointwise limit of forms with nonnegative diagonal has nonnegative diagonal;
* an exact positivity criterion then transports that conclusion to Mathlib's canonical
  `RiemannHypothesis` proposition;
* a negative witness excludes every such positive approximation family.

The source-faithful arithmetic/elliptic construction and the classical zeta Weil
criterion are not fabricated here.  They must be supplied by records carrying their
actual proofs, source identity, and normalization.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Analysis.ErrorBounds

/-- Named polarized residual channels for a complete source-to-target comparison. -/
structure ResidualFamily (T : Type*) where
  source : ℕ → T → T → ℝ
  prime : ℕ → T → T → ℝ
  archimedean : ℕ → T → T → ℝ
  pole : ℕ → T → T → ℝ
  zero : ℕ → T → T → ℝ
  endpoint : ℕ → T → T → ℝ
  geometric : ℕ → T → T → ℝ
  mirror : ℕ → T → T → ℝ
  tail : ℕ → T → T → ℝ

/-- The complete numerical residual is the sum of every active named channel. -/
def ResidualFamily.total {T : Type*} (residuals : ResidualFamily T)
    (n : ℕ) (f g : T) : ℝ :=
  residuals.source n f g +
  residuals.prime n f g +
  residuals.archimedean n f g +
  residuals.pole n f g +
  residuals.zero n f g +
  residuals.endpoint n f g +
  residuals.geometric n f g +
  residuals.mirror n f g +
  residuals.tail n f g

/-- Componentwise decay proves decay of the entire finite residual budget. -/
theorem ResidualFamily.total_vanishes {T : Type*} (residuals : ResidualFamily T)
    (hsource : ∀ f g, VanishesAtInfinity (fun n => residuals.source n f g))
    (hprime : ∀ f g, VanishesAtInfinity (fun n => residuals.prime n f g))
    (harchimedean : ∀ f g, VanishesAtInfinity (fun n => residuals.archimedean n f g))
    (hpole : ∀ f g, VanishesAtInfinity (fun n => residuals.pole n f g))
    (hzero : ∀ f g, VanishesAtInfinity (fun n => residuals.zero n f g))
    (hendpoint : ∀ f g, VanishesAtInfinity (fun n => residuals.endpoint n f g))
    (hgeometric : ∀ f g, VanishesAtInfinity (fun n => residuals.geometric n f g))
    (hmirror : ∀ f g, VanishesAtInfinity (fun n => residuals.mirror n f g))
    (htail : ∀ f g, VanishesAtInfinity (fun n => residuals.tail n f g)) :
    ∀ f g, VanishesAtInfinity (fun n => residuals.total n f g) := by
  intro f g
  have h1 := (hsource f g).add (hprime f g)
  have h2 := h1.add (harchimedean f g)
  have h3 := h2.add (hpole f g)
  have h4 := h3.add (hzero f g)
  have h5 := h4.add (hendpoint f g)
  have h6 := h5.add (hgeometric f g)
  have h7 := h6.add (hmirror f g)
  exact h7.add (htail f g)

/-- A comparison whose residual equality is derived at the target form itself. -/
structure ExactResidualComparison (T : Type*) where
  target : T → T → ℝ
  approximant : ℕ → T → T → ℝ
  residuals : ResidualFamily T
  identity : ∀ n f g, target f g - approximant n f g = residuals.total n f g

/-- The exact residual identity plus decay of every channel yields comparison decay. -/
theorem ExactResidualComparison.comparison_vanishes {T : Type*}
    (comparison : ExactResidualComparison T)
    (hsource : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.source n f g))
    (hprime : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.prime n f g))
    (harchimedean :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.archimedean n f g))
    (hpole : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.pole n f g))
    (hzero : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.zero n f g))
    (hendpoint :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.endpoint n f g))
    (hgeometric :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.geometric n f g))
    (hmirror : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.mirror n f g))
    (htail : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.tail n f g)) :
    ∀ f g, VanishesAtInfinity
      (fun n => comparison.target f g - comparison.approximant n f g) := by
  have htotal := comparison.residuals.total_vanishes hsource hprime harchimedean hpole
    hzero hendpoint hgeometric hmirror htail
  intro f g ε hε
  obtain ⟨N, hN⟩ := htotal f g ε hε
  refine ⟨N, ?_⟩
  intro n hn
  calc
    |comparison.target f g - comparison.approximant n f g| =
        |comparison.residuals.total n f g| :=
      congrArg abs (comparison.identity n f g)
    _ ≤ ε := hN n hn

/-- A source-independent polarized approximation family with nonnegative diagonal. -/
structure PolarizedPositiveApproximation (T : Type*) (W : T → T → ℝ) where
  approximant : ℕ → T → T → ℝ
  diagonal_nonnegative : ∀ n f, 0 ≤ approximant n f f
  comparison_vanishes :
    ∀ f g, VanishesAtInfinity (fun n => W f g - approximant n f g)

/-- An exact residual comparison becomes a positive approximation once positivity and
all componentwise decay theorems are supplied. -/
def ExactResidualComparison.toPositiveApproximation {T : Type*}
    (comparison : ExactResidualComparison T)
    (hpositive : ∀ n f, 0 ≤ comparison.approximant n f f)
    (hsource : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.source n f g))
    (hprime : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.prime n f g))
    (harchimedean :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.archimedean n f g))
    (hpole : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.pole n f g))
    (hzero : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.zero n f g))
    (hendpoint :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.endpoint n f g))
    (hgeometric :
      ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.geometric n f g))
    (hmirror : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.mirror n f g))
    (htail : ∀ f g, VanishesAtInfinity (fun n => comparison.residuals.tail n f g)) :
    PolarizedPositiveApproximation T comparison.target where
  approximant := comparison.approximant
  diagonal_nonnegative := hpositive
  comparison_vanishes := comparison.comparison_vanishes hsource hprime harchimedean hpole
    hzero hendpoint hgeometric hmirror htail

/-- A pointwise vanishing comparison with nonnegative approximants forces a
nonnegative target diagonal. -/
theorem positive_diagonal_of_positiveApproximation {T : Type*} {W : T → T → ℝ}
    (approximation : PolarizedPositiveApproximation T W) :
    ∀ f, 0 ≤ W f f := by
  intro f
  by_contra hnot
  have hnegative : W f f < 0 := lt_of_not_ge hnot
  have hepsilon : 0 < -(W f f) / 2 := by linarith
  obtain ⟨N, hN⟩ := approximation.comparison_vanishes f f (-(W f f) / 2) hepsilon
  have habs := hN N (le_refl N)
  have hleft :
      -(W f f - approximation.approximant N f f) ≤
        |W f f - approximation.approximant N f f| := neg_le_abs _
  have hbound := hleft.trans habs
  have hpositive := approximation.diagonal_nonnegative N f
  linarith

/-- Abstract exact criterion shared by any positivity formulation whose diagonal is
proved equivalent to the repository's canonical RH proposition. -/
structure ExactPositivityCriterion (T : Type*) (W : T → T → ℝ) where
  positivity_iff_rh : (∀ f, 0 ≤ W f f) ↔ _root_.RiemannHypothesis

/-- Source-bound specialization for the classical zeta Weil form.  Constructing a term
of this record requires the actual external or local criterion theorem; metadata alone
cannot inhabit the proof field. -/
structure WeilCriterionForZeta (T : Type*) (W : T → T → ℝ)
    extends ExactPositivityCriterion T W where
  sourceId : String
  normalizationId : String
  testSpaceId : String

/-- The exact terminal implication from a positive limit and a matching criterion. -/
theorem riemannHypothesis_of_positiveApproximation {T : Type*} {W : T → T → ℝ}
    (approximation : PolarizedPositiveApproximation T W)
    (criterion : ExactPositivityCriterion T W) :
    _root_.RiemannHypothesis :=
  criterion.positivity_iff_rh.mp
    (positive_diagonal_of_positiveApproximation approximation)

/-- The source-bound Weil-named terminal theorem.  Its criterion argument prevents an
unproved bibliographic citation or normalization mismatch from becoming a theorem edge. -/
theorem riemannHypothesis_of_positiveGramLimit {T : Type*} {W : T → T → ℝ}
    (approximation : PolarizedPositiveApproximation T W)
    (criterion : WeilCriterionForZeta T W) :
    _root_.RiemannHypothesis :=
  criterion.positivity_iff_rh.mp
    (positive_diagonal_of_positiveApproximation approximation)

/-- A single negative target witness excludes every nonnegative approximating family. -/
theorem no_positiveApproximation_of_negativeWitness {T : Type*} {W : T → T → ℝ}
    (f : T) (hnegative : W f f < 0) :
    ¬ Nonempty (PolarizedPositiveApproximation T W) := by
  intro hexists
  rcases hexists with ⟨approximation⟩
  have hnonnegative := positive_diagonal_of_positiveApproximation approximation f
  linarith

/-- Under an exact positivity criterion, failure of RH excludes every positive limit.
This records that an unconditional supplier for the approximation is already carrying
the full unresolved mathematical burden. -/
theorem not_rh_excludes_positiveApproximation {T : Type*} {W : T → T → ℝ}
    (criterion : ExactPositivityCriterion T W)
    (hnot : ¬ _root_.RiemannHypothesis) :
    ¬ Nonempty (PolarizedPositiveApproximation T W) := by
  intro hexists
  apply hnot
  rcases hexists with ⟨approximation⟩
  exact riemannHypothesis_of_positiveApproximation approximation criterion

end GRWTSK.RiemannHypothesis
