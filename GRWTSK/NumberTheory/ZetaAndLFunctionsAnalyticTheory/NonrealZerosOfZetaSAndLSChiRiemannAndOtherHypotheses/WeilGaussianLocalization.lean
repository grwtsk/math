/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license. -/
import GRWTSK.FunctionalAnalysis.GaussianConjugatePairing
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorCertificateReduction

/-!
# Gaussian localization returned to the original Dirichlet arithmetic value

MSC2020: 11M06, 11M26, 11M41, 42A38.

RP-OC-02, math#1801; reuse RP-OC-07 math#1804 at inspected main
8d7c8b8084caa6ff3cf6b254da449042617519f8. The infinite tail inequality is now
DERIVED from the complex Gaussian, a fixed head, strip geometry and a supplied
weighted seed, rather than assumed as a scalar input. The existing logarithmic
horizon and whole-divisor perturbation theorems are reused unchanged.

The arithmetic consumer binds the final perturbed signed pairing to the
existing `primitiveArithmeticValue` for a primitive NONPRINCIPAL character.
Its smooth supported test, L2 and archimedean domains and exact source identity
are explicit premises. These premises are not produced by multiplying a
sequence by a Gaussian. The principal zeta sector and both of its poles remain
separate; no pole term, prime power, conductor or gamma/parity term is deleted.

No arithmetic seed, off-critical zero, positive certificate or GRH proof is
constructed. No universal support/conductor bound is claimed. Elaboration,
fresh kernel replay, transitive axiom audit, arithmetic certificate execution
and independent analytical review: NOT_RUN. No novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilNegativeWitness.GaussianLocalization

open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
open GRWTSK.FunctionalAnalysis.GaussianConjugatePairing (Seed phase)

variable {ι : Type*}

/-- A certified fixed negative head and the PROVED infinite Gaussian remainder. -/
theorem pairing_re_le_head_add
    (D : Seed ι) (head : Finset ι) (a t delta B R m0 : ℝ)
    (ha : 0 ≤ a) (hB : 0 ≤ B) (hR : 0 ≤ R)
    (hstrip : ∀ i, i ∉ head → |(D.location i).im| ≤ B)
    (hfar : ∀ i, i ∉ head → R ≤ |(D.location i).re - t|)
    (hfixed : ∀ i ∈ head, D.baseline i = 0 ∨ phase t delta (D.location i) = 0)
    (hnegative : (∑ i ∈ head,
      term D.multiplicity D.reflect D.baseline D.baseline i).re ≤ -2 * m0) :
    (pairing D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta)).re ≤
      -2 * m0 + (D.scale ^ 2 * D.mass) *
        Real.exp (-2 * a * (R ^ 2 + delta ^ 2 - B ^ 2)) := by
  have hnorm := D.fixed_head_remainder_le head a t delta B R ha hB hR hstrip hfar hfixed
  have hreal := (Complex.re_le_norm
    (pairing D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) -
      ∑ i ∈ head, term D.multiplicity D.reflect D.baseline D.baseline i)).trans hnorm
  simp only [Complex.sub_re] at hreal
  linarith

/-- The old scalar horizon now acts on an actual derived signed-series bound.
Positive K and gap are explicit; a finite head is not the full value. -/
theorem re_le_neg_of_log_horizon
    (D : Seed ι) (head : Finset ι) (a t delta B R m0 : ℝ)
    (ha : 0 ≤ a) (hB : 0 ≤ B) (hR : 0 ≤ R)
    (hstrip : ∀ i, i ∉ head → |(D.location i).im| ≤ B)
    (hfar : ∀ i, i ∉ head → R ≤ |(D.location i).re - t|)
    (hfixed : ∀ i ∈ head, D.baseline i = 0 ∨ phase t delta (D.location i) = 0)
    (hnegative : (∑ i ∈ head,
      term D.multiplicity D.reflect D.baseline D.baseline i).re ≤ -2 * m0)
    (hm0 : 0 < m0) (hK : 0 < D.scale ^ 2 * D.mass)
    (hgap : 0 < R ^ 2 + delta ^ 2 - B ^ 2)
    (hhorizon : max 0 (Real.log (2 * (D.scale ^ 2 * D.mass) / m0)) /
      (2 * (R ^ 2 + delta ^ 2 - B ^ 2)) ≤ a) :
    (pairing D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta)).re ≤
      -(3 / 2) * m0 := by
  have hupper := pairing_re_le_head_add D head a t delta B R m0 ha hB hR
    hstrip hfar hfixed hnegative
  have htail := gaussian_tail_at_log_horizon (D.scale ^ 2 * D.mass) m0
    (R ^ 2 + delta ^ 2 - B ^ 2) (a + 1) hK hm0 hgap (by linarith)
  have htail' : (D.scale ^ 2 * D.mass) *
      Real.exp (-2 * a * (R ^ 2 + delta ^ 2 - B ^ 2)) ≤ m0 / 2 := by
    simpa using htail
  linarith

open MeasureTheory
open GRWTSK.NumberTheory.WeilQuadraticForm
open LowSchur CharacterWindow OddRootProjection SourcePrimeCorrelation
open ConductorProfiles ConductorCertificates

/-- A genuinely realized, compact supported negative test must lie in Program 7's
residual conductor range. Both its source identity and cutoff error are explicit.
The admissibility/support premises specify the intended arithmetic test domain;
the conductor comparison itself needs only the supplied analytic integrability. -/
theorem conductor_bounds_of_localized_witness
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1) (T : ℝ) {f : ℝ → ℂ}
    (hadmissible : Admissible f)
    (hsupported : ∀ x, x ∉ Set.Icc (-T) T → f x = 0)
    (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (D : Seed ι) (head : Finset ι) (a t delta B R E m0 : ℝ) (e : ι → ℂ)
    (ha : 0 ≤ a) (hB : 0 ≤ B) (hR : 0 ≤ R)
    (hstrip : ∀ i, |(D.location i).im| ≤ B)
    (hfar : ∀ i, i ∉ head → R ≤ |(D.location i).re - t|)
    (hfixed : ∀ i ∈ head, D.baseline i = 0 ∨ phase t delta (D.location i) = 0)
    (hnegative : (∑ i ∈ head,
      term D.multiplicity D.reflect D.baseline D.baseline i).re ≤ -2 * m0)
    (hE : 0 ≤ E) (he : ∀ i, ‖e i‖ ≤ E * D.weight i) (hm0 : 0 < m0)
    (hbudget : (D.scale ^ 2 * D.mass) *
        Real.exp (-2 * a * (R ^ 2 + delta ^ 2 - B ^ 2)) +
      D.mass * (2 * (D.scale * Real.exp (a * B ^ 2)) * E + E ^ 2) ≤ m0)
    (hsource : primitiveArithmeticValue chi hp hn T f =
      (pairing D.multiplicity D.reflect (D.damped a t delta + e)
        (D.damped a t delta + e)).re) :
    0 < energy f ∧
      (chi.conductor : ℝ) ≤ conductorThreshold T (-m0 / energy f) ∧
      chi.conductor < conductorCutoff T := by
  have hupper := pairing_re_le_head_add D head a t delta B R m0 ha hB hR
    (fun i _ => hstrip i) hfar hfixed hnegative
  exact conductor_bounds_of_pairing_budget chi hp hn T hf harch
    D.multiplicity D.weight D.reflect (D.damped a t delta) e
    (D.scale * Real.exp (a * B ^ 2)) E D.mass m0
    ((D.scale ^ 2 * D.mass) * Real.exp (-2 * a * (R ^ 2 + delta ^ 2 - B ^ 2)))
    D.multiplicity_nonneg D.weight_nonneg D.weight_reflect
    (mul_nonneg D.scale_nonneg (Real.exp_nonneg _)) hE
    (D.damped_bound a t delta B ha hB hstrip) he D.moment_summable (le_refl _)
    hupper hbudget hm0 hsource

end GRWTSK.NumberTheory.WeilNegativeWitness.GaussianLocalization
