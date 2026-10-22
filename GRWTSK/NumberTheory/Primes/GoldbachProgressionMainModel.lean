/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Canonical progression model for the Goldbach rational arcs

The exact prime-log sum in one residue class is compared with the canonical
finite progression model

`1_{gcd(r,q)=1} * φ(q)⁻¹ * V_N(β)`,

where `V_N(β)` is the complete finite integer exponential kernel through `N`.
The difference is retained as an exact residue-class discrepancy. Summing over
the rational phases produces the normalized finite Ramanujan coefficient and
an exact model-plus-discrepancy decomposition.

No estimate for primes in arithmetic progressions is supplied. In particular,
the discrepancy is defined but not bounded, and no singular-integral,
singular-series, minor-arc, finite-exception, or Goldbach theorem is asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition

noncomputable section

/-- The complete finite unweighted integer exponential kernel through `N`. -/
def goldbachIntegerExponentialKernel (N : ℕ) (β : ℝ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1), unitCharacter (n : ℤ) β

/-- The complete finite prime-log mass used as a pointwise norm budget. -/
def goldbachPrimeLogTotal (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), primeLogWeight n

/-- The canonical finite progression main term for one residue class.
It is supported only on reduced residue classes. -/
def goldbachCoprimeResidueMain
    (N q r : ℕ) (β : ℝ) : ℂ :=
  if q.Coprime r then
    ((Nat.totient q : ℂ)⁻¹) *
      goldbachIntegerExponentialKernel N β
  else
    0

/-- The exact discrepancy between the prime-log residue sum and the canonical
finite progression main term. -/
def goldbachResidueProgressionDiscrepancy
    (N q r : ℕ) (β : ℝ) : ℂ :=
  goldbachResidueClassPrimeSum N q r β -
    goldbachCoprimeResidueMain N q r β

/-- The finite sum of rational-center phases over reduced residue classes. -/
def goldbachCoprimePhaseSum (a q : ℕ) : ℂ :=
  ∑ r ∈ Finset.range q with q.Coprime r,
    goldbachRationalPhase a q r

/-- The normalized finite Ramanujan coefficient attached to `a/q`. -/
def goldbachNormalizedRamanujanCoefficient
    (a q : ℕ) : ℂ :=
  ((Nat.totient q : ℂ)⁻¹) *
    goldbachCoprimePhaseSum a q

/-- The canonical progression model for the centered prime-log exponential
sum. -/
def goldbachProgressionExponentialModel
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachNormalizedRamanujanCoefficient a q *
    goldbachIntegerExponentialKernel N β

/-- The phase-weighted finite sum of all residue-class discrepancies. -/
def goldbachProgressionExponentialDiscrepancy
    (N a q : ℕ) (β : ℝ) : ℂ :=
  ∑ r ∈ Finset.range q,
    goldbachRationalPhase a q r *
      goldbachResidueProgressionDiscrepancy N q r β

/-- The canonical quadratic progression model with the exact negative target
phase retained. -/
def goldbachProgressionCircleKernel
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachProgressionExponentialModel N a q β *
    goldbachProgressionExponentialModel N a q β *
      unitCharacter (-(N : ℤ))
        (goldbachRationalArcCenter a q) *
      unitCharacter (-(N : ℤ)) β

/-- The canonical progression circle model as a function of the original
frequency coordinate. -/
def goldbachProgressionCircleModel
    (N a q : ℕ) (x : ℝ) : ℂ :=
  goldbachProgressionCircleKernel N a q
    (goldbachRationalArcOffset a q x)

/-- The exact centered circle residual after subtracting the canonical
progression model. -/
def goldbachCenteredProgressionCircleResidual
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachResidueClassCircleKernel N a q β -
    goldbachProgressionCircleKernel N a q β

/-- The exact circle residual in the original frequency coordinate. -/
def goldbachProgressionCircleResidual
    (N a q : ℕ) (x : ℝ) : ℂ :=
  goldbachCircleIntegrand N x -
    goldbachProgressionCircleModel N a q x

/-- Every residue-class prime sum is exactly its declared progression main
term plus its exact discrepancy. -/
theorem goldbachResidueClassPrimeSum_eq_main_add_discrepancy
    (N q r : ℕ) (β : ℝ) :
    goldbachResidueClassPrimeSum N q r β =
      goldbachCoprimeResidueMain N q r β +
        goldbachResidueProgressionDiscrepancy N q r β := by
  unfold goldbachResidueProgressionDiscrepancy
  ring

/-- The phase-weighted sum of the residue main terms is exactly the normalized
Ramanujan coefficient times the finite integer kernel. -/
theorem goldbachPhaseWeightedResidueMain_eq_progressionModel
    (N a q : ℕ) (β : ℝ) :
    (∑ r ∈ Finset.range q,
        goldbachRationalPhase a q r *
          goldbachCoprimeResidueMain N q r β) =
      goldbachProgressionExponentialModel N a q β := by
  classical
  unfold goldbachCoprimeResidueMain
    goldbachProgressionExponentialModel
    goldbachNormalizedRamanujanCoefficient
    goldbachCoprimePhaseSum
  simp_rw [mul_ite, mul_zero]
  rw [← Finset.sum_filter]
  simp_rw [← mul_assoc]
  rw [← Finset.sum_mul, ← Finset.sum_mul]
  ring

/-- Exact model-plus-discrepancy decomposition of the centered exponential
kernel. -/
theorem goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy
    (N a q : ℕ) (β : ℝ) :
    goldbachResidueClassExponentialKernel N a q β =
      goldbachProgressionExponentialModel N a q β +
        goldbachProgressionExponentialDiscrepancy N a q β := by
  unfold goldbachResidueClassExponentialKernel
    goldbachProgressionExponentialDiscrepancy
  simp_rw [goldbachResidueClassPrimeSum_eq_main_add_discrepancy, mul_add]
  rw [Finset.sum_add_distrib,
    goldbachPhaseWeightedResidueMain_eq_progressionModel]

/-- The weighted discrepancy is literally the exact centered exponential
kernel minus its canonical progression model. -/
theorem goldbachProgressionExponentialDiscrepancy_eq_sub
    (N a q : ℕ) (β : ℝ) :
    goldbachProgressionExponentialDiscrepancy N a q β =
      goldbachResidueClassExponentialKernel N a q β -
        goldbachProgressionExponentialModel N a q β := by
  have h :=
    goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy
      N a q β
  rw [h]
  ring

/-- Exact difference-of-squares factorization for the centered circle
residual. The negative target phases remain attached. -/
theorem goldbachCenteredProgressionCircleResidual_factor
    (N a q : ℕ) (β : ℝ) :
    goldbachCenteredProgressionCircleResidual N a q β =
      goldbachProgressionExponentialDiscrepancy N a q β *
        (goldbachResidueClassExponentialKernel N a q β +
          goldbachProgressionExponentialModel N a q β) *
        unitCharacter (-(N : ℤ))
          (goldbachRationalArcCenter a q) *
        unitCharacter (-(N : ℤ)) β := by
  unfold goldbachCenteredProgressionCircleResidual
    goldbachResidueClassCircleKernel
    goldbachProgressionCircleKernel
  rw [goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy]
  ring

/-- The exact circle integrand is the canonical progression model plus its
exact residual. -/
theorem goldbachCircleIntegrand_eq_progressionModel_add_residual
    (N a q : ℕ) (x : ℝ) :
    goldbachCircleIntegrand N x =
      goldbachProgressionCircleModel N a q x +
        goldbachProgressionCircleResidual N a q x := by
  unfold goldbachProgressionCircleResidual
  ring


/-- At every frequency, the original-coordinate residual is the centered
residual evaluated at the exact local offset. -/
theorem goldbachProgressionCircleResidual_eq_centered
    (N a q : ℕ) (hq : 0 < q) (x : ℝ) :
    goldbachProgressionCircleResidual N a q x =
      goldbachCenteredProgressionCircleResidual N a q
        (goldbachRationalArcOffset a q x) := by
  unfold goldbachProgressionCircleResidual
    goldbachProgressionCircleModel
    goldbachCenteredProgressionCircleResidual
  rw [goldbachCircleIntegrand_recenter]
  exact congrArg
    (fun z =>
      z - goldbachProgressionCircleKernel N a q
        (goldbachRationalArcOffset a q x))
    (goldbachCenteredCircleIntegrand_eq_residueClassKernel
      N a q hq (goldbachRationalArcOffset a q x))

/-- In central coordinates, the original-coordinate residual is exactly the
centered residual. -/
theorem goldbachProgressionCircleResidual_at_center
    (N a q : ℕ) (hq : 0 < q) (β : ℝ) :
    goldbachProgressionCircleResidual N a q
        (goldbachRationalArcCenter a q + β) =
      goldbachCenteredProgressionCircleResidual N a q β := by
  unfold goldbachProgressionCircleResidual
    goldbachProgressionCircleModel
    goldbachCenteredProgressionCircleResidual
  have hoff :
      goldbachRationalArcOffset a q
        (goldbachRationalArcCenter a q + β) = β := by
    unfold goldbachRationalArcOffset
    ring
  rw [goldbachCircleIntegrand_recenter, hoff]
  exact congrArg
    (fun z => z - goldbachProgressionCircleKernel N a q β)
    (goldbachCenteredCircleIntegrand_eq_residueClassKernel
      N a q hq β)

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
