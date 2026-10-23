/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
import GRWTSK.NumberTheory.Zeta.Riemann.WeilApproximatePositiveLimit
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology
open scoped BigOperators

/-!
# Canonical square-tent zeta approximation with a vanishing tail defect

This module constructs one concrete source-bound inhabitant of
`ApproximatePositiveApproximation`.

The test family is the discrete family of canonical square tents indexed by `m : ℕ`;
the represented square stage is `m + 2`.  The target diagonal is the complete
square-tent zeta explicit-formula correction.  At height stage `N`, the approximant
uses the complete finite zero head with cutoff `N + 2`.  Off-diagonal values are
declared zero in both the target and the approximants.

The exact source residual is `CanonicalTentLedger.finiteHeadBalance`.  Its norm is
bounded by the existing `canonicalTailBudget`, and that budget tends to zero for every
fixed square-tent test.  The target diagonal is independently identified with the
source-faithful finite prime-power Gram, so the finite zero-head approximants are
bounded below by the negative tail budget.

This is a genuine zeta explicit-formula instance on one precisely declared discrete
test family.  It is not the full classical Weil test space, not a Hermitian
polarization of arbitrary test functions, and not a `WeilCriterionForZeta`.
Consequently this module proves no RH implication.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation

open GRWTSK.RiemannHypothesis
open GRWTSK.Analysis.ErrorBounds
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection

/-- One canonical square-tent test.  Index `m` represents the square interval
associated to source stage `m + 2`. -/
structure CanonicalSquareTentTest where
  index : ℕ
deriving DecidableEq, Repr

/-- Exact source binding for this discrete zeta test family. -/
def sourceBinding : SourceBinding where
  sourceId := "Riemann-zeta canonical absolutely-summed square-tent explicit formula"
  revision :=
    "grwtsk/math@c59bffa1b34996d87cd1efb13ad1c90ae3861082;" ++
    "CanonicalTentLedger:d5f4cdab9316269cc8ab1383f3810d057a95453b;" ++
    "CanonicalTentAtomStage:88ac98a84b68999824b68e9015bee8ca5627359d;" ++
    "CanonicalSpectralPort:858fb52930dd89de451224aeaf81dcea37d362af"
  normalizationId :=
    "square tent: arithmetic=sum Lambda(k)*weight on (m+2)^2<k<=(m+3)^2;" ++
    " spectral=radius-complete-zero-divisor+rational-trivial-zero-correction;" ++
    " finite head uses |Im rho|<=N+2 with multiplicities"

/-- Exact test-class identifier.  This is deliberately a discrete source family,
not an assertion that these labels form the full classical Weil vector space. -/
def testClassId : String :=
  "m:N represents x |-> tent(squareCenter(m+2),squareRadius(m+2),x);" ++
  " target and finite approximants are diagonal in these labels"

/-- Source stage represented by one test label. -/
def testStage (f : CanonicalSquareTentTest) : ℕ :=
  f.index + 2

/-- The actual real square-tent function represented by a test label. -/
noncomputable def testFunction (f : CanonicalSquareTentTest) (x : ℝ) : ℝ :=
  tent (squareCenter (testStage f)) (squareRadius (testStage f)) x

/-- Cofinal finite-zero-height cutoff. -/
def zeroHeightCutoff (N : ℕ) : ℝ :=
  (N : ℝ) + 2

theorem testStage_ge_two (f : CanonicalSquareTentTest) :
    2 ≤ testStage f := by
  unfold testStage
  omega

theorem zeroHeightCutoff_ge_two (N : ℕ) :
    2 ≤ zeroHeightCutoff N := by
  unfold zeroHeightCutoff
  positivity

theorem zeroHeightCutoff_tendsto_atTop :
    Tendsto zeroHeightCutoff atTop atTop := by
  simpa [zeroHeightCutoff] using
    (tendsto_atTop_add_const_right atTop (2 : ℝ)
      tendsto_natCast_atTop_atTop)

/-- Complete finite-height spectral side at one test and cutoff.  Every zero in the
head carries its actual multiplicity. -/
noncomputable def finiteSpectralValue
    (N : ℕ) (f : CanonicalSquareTentTest) : ℂ :=
  (squareRadius (testStage f) : ℂ) -
    (∑ z ∈ heightHead (zeroHeightCutoff N),
      (multiplicity z : ℂ) *
        tentKernel (squareCenter (testStage f))
          (squareRadius (testStage f)) z.1) +
    (rationalTentCorrection
      (squareCenter (testStage f)) (squareRadius (testStage f)) : ℂ)

/-- The complete zeta target on this declared test family.  Off-diagonal values are
zero by declaration; no unsupported polarization identity is asserted. -/
noncomputable def zetaTarget
    (f g : CanonicalSquareTentTest) : ℝ :=
  if f = g then canonicalCorrection f.index else 0

/-- Finite-height approximation on the same declared test family. -/
noncomputable def finiteApproximant
    (N : ℕ) (f g : CanonicalSquareTentTest) : ℝ :=
  if f = g then (finiteSpectralValue N f).re else 0

/-- Canonical nonnegative majorant for the omitted complete-zero tail. -/
noncomputable def lowerDefect
    (N : ℕ) (f : CanonicalSquareTentTest) : ℝ :=
  canonicalTailBudget
    (squareCenter (testStage f)) (squareRadius (testStage f))
    (zeroHeightCutoff N)

/-- Exact complete arithmetic residual identity.  The residual is the existing signed
finite-head balance, whose channels retain the prime-power source, zero head, pole,
actual trivial-zero correction, endpoint convention and omitted complete-zero tail. -/
theorem finiteSpectralValue_sub_target_eq_residual
    (N : ℕ) (f : CanonicalSquareTentTest) :
    finiteSpectralValue N f - (canonicalCorrection f.index : ℂ) =
      finiteHeadBalance (testStage f) (zeroHeightCutoff N) := by
  unfold finiteSpectralValue testStage canonicalCorrection
  rw [spectralCorrectionReal_eq_squareTentMangoldt
    (f.index + 2) (by omega)]
  unfold finiteHeadBalance
  ring

/-- The complete residual identity is controlled by the source-bound tail theorem. -/
theorem norm_finiteSpectralValue_sub_target_le
    (N : ℕ) (f : CanonicalSquareTentTest) :
    ‖finiteSpectralValue N f - (canonicalCorrection f.index : ℂ)‖ ≤
      lowerDefect N f := by
  rw [finiteSpectralValue_sub_target_eq_residual]
  exact norm_finiteHeadBalance_le
    (testStage f) (testStage_ge_two f)
    (zeroHeightCutoff N) (zeroHeightCutoff_ge_two N)

/-- The target diagonal is reconstructed from the independently defined finite
prime-power Gram; target positivity is not an input. -/
theorem zetaTarget_diagonal_eq_sourceGram
    (f : CanonicalSquareTentTest) :
    zetaTarget f f =
      stageEnergy (canonicalStage f.index) (canonicalAmplitude f.index) := by
  simp only [zetaTarget, if_pos rfl]
  exact (canonicalStageEnergy_eq_correction f.index).symm

theorem zetaTarget_diagonal_nonnegative
    (f : CanonicalSquareTentTest) :
    0 ≤ zetaTarget f f := by
  rw [zetaTarget_diagonal_eq_sourceGram]
  exact stageEnergy_nonneg (canonicalStage f.index) (canonicalAmplitude f.index)

/-- Real diagonal comparison is bounded by the complete omitted-tail budget. -/
theorem abs_target_sub_finiteApproximant_le
    (N : ℕ) (f : CanonicalSquareTentTest) :
    |zetaTarget f f - finiteApproximant N f f| ≤ lowerDefect N f := by
  have hnorm := norm_finiteSpectralValue_sub_target_le N f
  calc
    |zetaTarget f f - finiteApproximant N f f| =
        |(finiteSpectralValue N f -
          (canonicalCorrection f.index : ℂ)).re| := by
            simp only [zetaTarget, finiteApproximant, if_pos rfl,
              map_sub, ofReal_re]
            rw [abs_sub_comm]
    _ ≤ ‖finiteSpectralValue N f -
          (canonicalCorrection f.index : ℂ)‖ :=
      Complex.abs_re_le_norm _
    _ ≤ lowerDefect N f := hnorm

theorem lowerDefect_nonnegative
    (N : ℕ) (f : CanonicalSquareTentTest) :
    0 ≤ lowerDefect N f :=
  (norm_nonneg _).trans (norm_finiteSpectralValue_sub_target_le N f)

/-- The finite zero-head diagonal may be negative, but only by the certified omitted
tail. -/
theorem finiteApproximant_diagonal_lower_bound
    (N : ℕ) (f : CanonicalSquareTentTest) :
    -lowerDefect N f ≤ finiteApproximant N f f := by
  have herror := abs_target_sub_finiteApproximant_le N f
  have hside :
      zetaTarget f f - finiteApproximant N f f ≤ lowerDefect N f :=
    (le_abs_self _).trans herror
  have htarget := zetaTarget_diagonal_nonnegative f
  linarith

theorem lowerDefect_tendsto_zero
    (f : CanonicalSquareTentTest) :
    Tendsto (fun N => lowerDefect N f) atTop (𝓝 0) := by
  simpa [lowerDefect] using
    (canonical_tail_budget_tendsto_zero (testStage f)).comp
      zeroHeightCutoff_tendsto_atTop

/-- Bridge the imported topological limit to the repository's explicit epsilon
predicate. -/
theorem vanishesAtInfinity_of_tendsto_zero
    {u : ℕ → ℝ} (hu : Tendsto u atTop (𝓝 0)) :
    VanishesAtInfinity u := by
  intro ε hε
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.1 hu ε hε
  refine ⟨N, ?_⟩
  intro n hn
  have hdist := hN n hn
  have habs : |u n| < ε := by
    simpa [Real.dist_eq] using hdist
  exact habs.le

theorem lowerDefect_vanishes
    (f : CanonicalSquareTentTest) :
    VanishesAtInfinity (fun N => lowerDefect N f) :=
  vanishesAtInfinity_of_tendsto_zero (lowerDefect_tendsto_zero f)

theorem diagonalComparison_vanishes
    (f : CanonicalSquareTentTest) :
    VanishesAtInfinity
      (fun N => zetaTarget f f - finiteApproximant N f f) :=
  VanishesAtInfinity.of_nonnegative_bound
    (lowerDefect_vanishes f)
    (fun N => lowerDefect_nonnegative N f)
    (fun N => abs_target_sub_finiteApproximant_le N f)

/-- Pointwise pairwise comparison on the declared diagonal test family. -/
theorem comparison_vanishes
    (f g : CanonicalSquareTentTest) :
    VanishesAtInfinity
      (fun N => zetaTarget f g - finiteApproximant N f g) := by
  by_cases hfg : f = g
  · subst g
    exact diagonalComparison_vanishes f
  · simpa [zetaTarget, finiteApproximant, hfg] using
      (VanishesAtInfinity.zero :
        VanishesAtInfinity (fun _ : ℕ => (0 : ℝ)))

/-- The requested concrete zeta explicit-formula instance. -/
noncomputable def approximatePositiveApproximation :
    ApproximatePositiveApproximation
      CanonicalSquareTentTest zetaTarget where
  approximant := finiteApproximant
  lowerDefect := lowerDefect
  lowerDefect_nonnegative := lowerDefect_nonnegative
  diagonal_lower_bound := finiteApproximant_diagonal_lower_bound
  lowerDefect_vanishes := lowerDefect_vanishes
  comparison_vanishes := comparison_vanishes

/-- Source-bound wrapper that prevents this instance from silently drifting to a
different zeta normalization or test family. -/
structure SourceBoundZetaApproximation where
  binding : SourceBinding
  testClass : String
  binding_eq : binding = sourceBinding
  testClass_eq : testClass = testClassId
  approximation :
    ApproximatePositiveApproximation
      CanonicalSquareTentTest zetaTarget

/-- Fully constructed source-bound packet.  It still supplies no classical Weil
criterion for this restricted diagonal family. -/
noncomputable def sourceBoundZetaApproximation :
    SourceBoundZetaApproximation where
  binding := sourceBinding
  testClass := testClassId
  binding_eq := rfl
  testClass_eq := rfl
  approximation := approximatePositiveApproximation

/-- Hostile control: distinct square-tent labels are not assigned an invented
off-diagonal zeta pairing. -/
theorem offDiagonal_zero
    {f g : CanonicalSquareTentTest} (hfg : f ≠ g) :
    zetaTarget f g = 0 ∧
      ∀ N, finiteApproximant N f g = 0 := by
  constructor
  · simp [zetaTarget, hfg]
  · intro N
    simp [finiteApproximant, hfg]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
