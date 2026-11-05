/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticWeilSourceComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteFieldVerticalCertificates
import Mathlib.Data.ZMod.Basic

/-!
# One finite disk for the actual F3 Gauss product and genuine zeta approximation

The source is actual `riemannZeta`; the finite approximation is the existing
`QuarticApproximation.approximation4 200`; the spectral product uses actual
`gaussSpectrum [chi] psi` and the existing parameter `fieldParameter 3`.
No source reciprocal or zero exclusion is assumed.

The selected disk has center 723/1000+(3697/40)i and radius 10^-6. Its entire
closure lies in the right strip and has norm at most 94. The published quartic
source bound is 346484/73085409 < 1/200. A center error <=1/1000 and complete
boundary variation <=2004/10^6 yield total error <1/100. At level 3 and degree
one, the inverse bound is 5 and the source residual is <=3/10.

The classical three-term F3 sum for the quadratic character and standard
primitive additive character is i*sqrt(3). Explicit character construction and
its Lean evaluation remain an `evaluation` input below. The contraction follows
analytically from Re(s)>18/25 and the exact inequality 3^11*(4/5)^50>1.
The complete variation follows from |A4_200'|<2000 and |P'|<4 on the disk.
These contraction, parameter-regularity and variation proof terms remain explicit
inputs. They are not hidden in a generic unknown zeta-to-model comparison.

An exact-integer interval computation of the finite center expression gives
error <1/1000, using log/exp/sine/cosine Taylor remainders and Machin's pi
identity. This is ordinary checked finite arithmetic, not a Lean proof term;
`centerEnclosure` remains an input. The finite expression was matched directly
to the actual published `approximation4` definition. A floating point search
located the center; floating point values are not inputs to the interval bound.

Consumer: `certificate` returns the existing actual-source Boundary.Certificate
on this one disk. Its hypotheses are finite, explicit formalization obligations.
No assertion quantifies over a cover of all heights or proves RH/GRH.
Human research direction: grwtsk contributors. AI-assisted analytic estimates,
finite interval calculation, and Lean candidate construction. Classical
Euler--Maclaurin mathematics; novelty NOT_ASSESSED. Compilation, fresh kernel
replay, transitive axiom audit, independent external review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.BoundedGaussZetaProbe

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.GeometricProduct
open GRWTSK.NumberTheory.FiniteFieldCertificates
open GRWTSK.NumberTheory.WeilCertificates

local instance : Fact (Nat.Prime 3) := ⟨by norm_num⟩

abbrev F3 := ZMod 3

def center : ℂ := ⟨723 / 1000, 3697 / 40⟩
def radius : ℝ := 1 / 1000000
def region : Set ℂ := Metric.ball center radius
def gaussValue : ℂ := Complex.I * (Real.sqrt 3 : ℂ)
def parameter : ℂ → ℂ := fieldParameter 3
def model (s : ℂ) : ℂ := factorProduct [gaussValue] (parameter s)
def mismatch (s : ℂ) : ℂ := QuarticApproximation.approximation4 200 s - model s
def totalError : ℝ := QuarticApproximation.radiusBudget 94 200 +
  1 / 1000 + 2004 / 1000000

theorem region_open : IsOpen region := Metric.isOpen_ball

theorem region_bounded : Bornology.IsBounded region := Metric.isBounded_ball

theorem closure_near {s : ℂ} (inside : s ∈ closure region) :
    ‖s - center‖ ≤ radius := by
  have inclusion : closure region ⊆ Metric.closedBall center radius :=
    closure_minimal Metric.ball_subset_closedBall Metric.isClosed_closedBall
  simpa only [Metric.mem_closedBall, dist_eq_norm] using inclusion inside

theorem closure_in_strip : closure region ⊆ rightCriticalStrip := by
  intro s hs
  have hr := (Complex.abs_re_le_norm (s - center)).trans (closure_near hs)
  change |s.re - 723 / 1000| ≤ radius at hr
  obtain ⟨lower, upper⟩ := abs_le.mp hr
  dsimp [radius] at lower upper
  exact ⟨by linarith, by linarith⟩

theorem closure_radius {s : ℂ} (inside : s ∈ closure region) : ‖s‖ ≤ (94 : ℝ) := by
  have identity : ‖center‖ ^ 2 = (723 / 1000 : ℝ) ^ 2 + (3697 / 40 : ℝ) ^ 2 := by
    simpa [center] using EulerApproximation.HeightSix.norm_add_real_sq center 0
  have centerSize : ‖center‖ ≤ (93 : ℝ) := by nlinarith [norm_nonneg center]
  have near := closure_near inside
  have normBound := norm_le_norm_sub_add s center
  dsimp [radius] at near
  linarith

theorem tail_value :
    QuarticApproximation.radiusBudget 94 200 = (346484 / 73085409 : ℝ) := by
  norm_num [QuarticApproximation.radiusBudget,
    GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.cutoff]

theorem error_budget : totalError < (1 / 100 : ℝ) ∧ 5 * totalError < 1 / 4 := by
  norm_num [totalError, tail_value]

/-- A small rational certificate for the elementary contraction estimate. -/
theorem contraction_power_budget : (1 : ℝ) < 3 ^ 11 * (4 / 5) ^ 50 := by norm_num

/-- Actual finite-field data are used after their explicit three-term evaluation. -/
theorem spectrum_value (χ : MulChar F3 ℂ) (ψ : AddChar F3 ℂ)
    (evaluation : gaussSum χ ψ = gaussValue) : gaussSpectrum [χ] ψ = [gaussValue] := by
  simp [gaussSpectrum, evaluation]

private theorem spectrum_contraction (χ : MulChar F3 ℂ) (ψ : AddChar F3 ℂ)
    (evaluation : gaussSum χ ψ = gaussValue)
    (contraction : ∀ s ∈ frontier region, ‖gaussValue * parameter s‖ ≤ (4 / 5 : ℝ)) :
    ∀ s ∈ frontier region, ∀ a ∈ gaussSpectrum [χ] ψ,
      ‖a * parameter s‖ ≤ ratio 3 := by
  intro s hs a ha
  rw [spectrum_value χ ψ evaluation] at ha
  have same : a = gaussValue := List.mem_singleton.mp ha
  subst a
  convert contraction s hs using 1 <;> norm_num [ratio]

/-- The remaining point and variation witnesses concern finite expressions only. -/
def certificate (χ : MulChar F3 ℂ) (ψ : AddChar F3 ℂ)
    (evaluation : gaussSum χ ψ = gaussValue)
    (regular : DiffContOnCl ℂ parameter region)
    (contraction : ∀ s ∈ frontier region, ‖gaussValue * parameter s‖ ≤ (4 / 5 : ℝ))
    (centerEnclosure : ‖mismatch center‖ ≤ (1 / 1000 : ℝ))
    (variation : ∀ s ∈ frontier region,
      ‖mismatch s - mismatch center‖ ≤ (2004 / 1000000 : ℝ)) :
    Boundary.Certificate riemannZeta region := by
  apply QuarticWeilComparison.boundaryCertificateFromCenter 200 3
    (gaussSpectrum [χ] ψ) parameter region 94 (1 / 1000) (2004 / 1000000) center
    closure_in_strip regular
    (fun s hs => closure_radius (frontier_subset_closure hs))
    (spectrum_contraction χ ψ evaluation contraction)
  · simpa only [spectrum_value χ ψ evaluation, mismatch, model] using centerEnclosure
  · intro s hs
    simpa only [spectrum_value χ ψ evaluation, mismatch, model] using variation s hs
  · norm_num [gaussSpectrum, tail_value]

/-- Complete actual-source residual on every boundary point of the chosen disk. -/
theorem source_residual_bound (χ : MulChar F3 ℂ) (ψ : AddChar F3 ℂ)
    (evaluation : gaussSum χ ψ = gaussValue)
    (contraction : ∀ s ∈ frontier region, ‖gaussValue * parameter s‖ ≤ (4 / 5 : ℝ))
    (centerEnclosure : ‖mismatch center‖ ≤ (1 / 1000 : ℝ))
    (variation : ∀ s ∈ frontier region,
      ‖mismatch s - mismatch center‖ ≤ (2004 / 1000000 : ℝ))
    (s : ℂ) (boundary : s ∈ frontier region) :
    ‖residual (riemannZeta s)
      (familyApproximation (gaussSpectrum [χ] ψ) 3 (parameter s)) 1‖ ≤ (3 / 10 : ℝ) := by
  have inside := closure_in_strip (frontier_subset_closure boundary)
  have finiteComparison :
      ‖QuarticApproximation.approximation4 200 s -
        factorProduct (gaussSpectrum [χ] ψ) (parameter s)‖ ≤
          (1 / 1000 : ℝ) + 2004 / 1000000 := by
    apply QuarticWeilComparison.finite_mismatch_from_center 200
      (gaussSpectrum [χ] ψ) parameter center s
    · simpa only [spectrum_value χ ψ evaluation, mismatch, model] using centerEnclosure
    · simpa only [spectrum_value χ ψ evaluation, mismatch, model] using variation s boundary
  have source := QuarticWeilComparison.source_residual 200 3 s (parameter s)
    (gaussSpectrum [χ] ψ) (R := 94) (by linarith [inside.1])
    (strip_ne_one inside.2) (closure_radius (frontier_subset_closure boundary))
    (spectrum_contraction χ ψ evaluation contraction s boundary) finiteComparison
  apply source.trans
  norm_num [gaussSpectrum, tail_value]

end GRWTSK.NumberTheory.Conditional.BoundedGaussZetaProbe
