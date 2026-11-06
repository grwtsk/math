/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticZetaSourceBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticHeightSixCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilModelResidualTransfer

/-!
# Genuine quartic-source error composed with a finite Weil-model discrepancy

The intermediate function is the existing `approximation4 N`, with its proved
actual-zeta source identity. It is not identified with a finite spectral
product. Their discrepancy remains a separate, whole-boundary hypothesis.
The complete budget is
  (radiusBudget R N + delta) * (level+2)^spectrum.length <= 1/4.
Increasing N controls only radiusBudget; it does not prove delta small.

The explicit region below is (5/8,7/8) x (-6,6), already constructed by
QuarticHeightSixCertificate. Its closure has norm at most 7, so this comparison
uses the numerical tail 7/(3*(N+1)^3). Contraction, parameter regularity and
the finite approximant-to-product estimate are retained. No zero exclusion,
target reciprocal, RH or GRH is an input. The conclusion is one finite-region
certificate. No existence assertion for its model comparison is made.

Primary argument: the exact two-stage triangle inequality followed by the
published geometric-product residual supplier. The classical source estimate
is Euler--Maclaurin; all original hypotheses and source definitions are reused.
Human research direction: grwtsk contributors; AI-assisted candidate argument
and Lean construction. Novelty: NOT_ASSESSED. Compilation, fresh kernel replay,
transitive axiom audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.QuarticWeilComparison

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.GeometricProduct

/-- A finite-to-finite discrepancy must be paid in addition to the actual-source tail. -/
theorem source_comparison (N : ℕ) (s z : ℂ) (as : List ℂ) {R delta : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R)
    (finiteComparison : ‖QuarticApproximation.approximation4 N s -
      factorProduct as z‖ ≤ delta) :
    ‖riemannZeta s - factorProduct as z‖ ≤
      QuarticApproximation.radiusBudget R N + delta :=
  Approximation.source_error_two_stages
    (QuarticApproximation.source_radius_bound N s halfPlane pole size)
    finiteComparison

/-- The retained finite-to-finite error is amplified by the full spectral dimension. -/
theorem source_residual (N level : ℕ) (s z : ℂ) (as : List ℂ) {R delta : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R)
    (contractive : ∀ a ∈ as, ‖a * z‖ ≤ ratio level)
    (finiteComparison : ‖QuarticApproximation.approximation4 N s -
      factorProduct as z‖ ≤ delta) :
    ‖residual (riemannZeta s) (familyApproximation as level z) 1‖ ≤
      1 / 4 + (QuarticApproximation.radiusBudget R N + delta) *
        ((level : ℝ) + 2) ^ as.length :=
  GRWTSK.Analysis.GeometricProduct.source_residual_bound as level z (riemannZeta s)
    contractive (source_comparison N s z as halfPlane pole size finiteComparison)

/-- A finite center enclosure still requires the complete between-point variation. -/
theorem finite_mismatch_from_center (N : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (center s : ℂ) {centerError variation : ℝ}
    (atCenter : ‖QuarticApproximation.approximation4 N center -
      factorProduct as (parameter center)‖ ≤ centerError)
    (between : ‖(QuarticApproximation.approximation4 N s - factorProduct as (parameter s)) -
      (QuarticApproximation.approximation4 N center -
        factorProduct as (parameter center))‖ ≤ variation) :
    ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤
      centerError + variation := by
  have h := norm_le_norm_sub_add
    (QuarticApproximation.approximation4 N s - factorProduct as (parameter s))
    (QuarticApproximation.approximation4 N center - factorProduct as (parameter center))
  linarith

/-- Construct one region certificate; its nonvanishing consumer also needs boundedness. -/
def boundaryCertificate (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (regular : DiffContOnCl ℂ parameter U)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as,
      ‖a * parameter s‖ ≤ ratio level)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (budget : (QuarticApproximation.radiusBudget R N + delta) *
      ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate riemannZeta U :=
  transferredCertificate riemannZeta parameter as level U
    (QuarticApproximation.radiusBudget R N + delta)
    (differentiableOn_zeta_rightStrip.mono contained).diffContOnCl regular
    contractive
    (fun s hs => source_comparison N s (parameter s) as
      (by have h := contained (frontier_subset_closure hs); linarith [h.1])
      (strip_ne_one (contained (frontier_subset_closure hs)).2) (size s hs)
      (finiteComparison s hs)) budget

/-- Sampled finite data produce a certificate only with a proved all-boundary remainder. -/
def boundaryCertificateFromCenter (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R centerError variation : ℝ) (center : ℂ)
    (contained : closure U ⊆ rightCriticalStrip)
    (regular : DiffContOnCl ℂ parameter U)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as,
      ‖a * parameter s‖ ≤ ratio level)
    (atCenter : ‖QuarticApproximation.approximation4 N center -
      factorProduct as (parameter center)‖ ≤ centerError)
    (between : ∀ s ∈ frontier U,
      ‖(QuarticApproximation.approximation4 N s - factorProduct as (parameter s)) -
        (QuarticApproximation.approximation4 N center -
          factorProduct as (parameter center))‖ ≤ variation)
    (budget : (QuarticApproximation.radiusBudget R N + centerError + variation) *
      ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate riemannZeta U :=
  boundaryCertificate N level as parameter U R (centerError + variation)
    contained regular size contractive
    (fun s hs => finite_mismatch_from_center N as parameter center s atCenter (between s hs))
    (by simpa only [add_assoc] using budget)

/-- A norm radius for the entire closure, not a finite collection of boundary nodes. -/
theorem height_six_closure_radius {s : ℂ} (inside : s ∈ closure QuarticSeed.region) :
    ‖s‖ ≤ (7 : ℝ) := by
  have h := QuarticSeed.closure_region inside
  have identity := EulerApproximation.HeightSix.norm_add_real_sq s 0
  simp only [Complex.ofReal_zero, add_zero] at identity
  obtain ⟨imagLower, imagUpper⟩ := abs_le.mp h.2.2
  have reSquare : s.re ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - s.re by linarith [h.2.1])
      (show 0 ≤ 1 + s.re by linarith [h.1])]
  have imSquare : s.im ^ 2 ≤ 36 := by
    nlinarith [mul_nonneg (show 0 ≤ 6 - s.im by linarith)
      (show 0 ≤ 6 + s.im by linarith)]
  nlinarith [norm_nonneg s]

/-- Explicit actual-source tail on the chosen finite rectangle. -/
theorem height_six_tail (N : ℕ) (s : ℂ) (inside : s ∈ closure QuarticSeed.region) :
    ‖riemannZeta s - QuarticApproximation.approximation4 N s‖ ≤
      QuarticApproximation.radiusBudget 7 N := by
  have h := QuarticSeed.closure_in_strip inside
  exact QuarticApproximation.source_radius_bound N s (by linarith [h.1])
    (strip_ne_one h.2) (height_six_closure_radius inside)

/-- The actual-source allowance on this rectangle is an explicit rational function of N. -/
theorem height_six_radiusBudget (N : ℕ) :
    QuarticApproximation.radiusBudget 7 N = 7 / (3 * ((N : ℝ) + 1) ^ 3) := by
  have positive : (0 : ℝ) < (N : ℝ) + 1 := by positivity
  unfold QuarticApproximation.radiusBudget
    GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.cutoff
  field_simp [ne_of_gt positive]
  <;> ring

/-- Each independent error may be assigned half of the available transfer allowance. -/
theorem split_budget (N level : ℕ) (d : ℕ) (delta : ℝ)
    (tailBudget : QuarticApproximation.radiusBudget 7 N * ((level : ℝ) + 2) ^ d ≤ 1 / 8)
    (finiteBudget : delta * ((level : ℝ) + 2) ^ d ≤ 1 / 8) :
    (QuarticApproximation.radiusBudget 7 N + delta) *
      ((level : ℝ) + 2) ^ d ≤ 1 / 4 := by
  nlinarith

/-- A concrete finite region with its error, inverse growth and contraction all visible. -/
def heightSixCertificate (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ) (delta : ℝ)
    (regular : DiffContOnCl ℂ parameter QuarticSeed.region)
    (contractive : ∀ s ∈ frontier QuarticSeed.region, ∀ a ∈ as,
      ‖a * parameter s‖ ≤ ratio level)
    (finiteComparison : ∀ s ∈ frontier QuarticSeed.region,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (budget : (QuarticApproximation.radiusBudget 7 N + delta) *
      ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate riemannZeta QuarticSeed.region :=
  boundaryCertificate N level as parameter QuarticSeed.region 7 delta
    QuarticSeed.closure_in_strip regular
    (fun s hs => height_six_closure_radius (frontier_subset_closure hs))
    contractive finiteComparison budget

end GRWTSK.NumberTheory.Conditional.QuarticWeilComparison
