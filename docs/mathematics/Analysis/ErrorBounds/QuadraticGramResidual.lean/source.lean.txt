/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
import Mathlib.Data.Fintype.BigOperators

set_option autoImplicit false

open scoped BigOperators

/-!
# Quadratic Gram models as complete pair-coordinate residuals

This profile retains all ordered pair coordinates of a real finite Gram.
This module derives that lift, its positive quadratic readout, and the complete
injection produced by an affine feature update. Both mixed terms are retained.
A weighted column bound r on the feature transition gives r*r on the lifted
transition with product weights.

The source matrix is supplied independently and need NOT be positive or a Gram.
The terminal theorem reuses the source-defect fixed-witness consumer; its source
readout and vanishing full net defect remain independent analytic premises.
Matching vector injections alone does not match their quadratic injections.

This is a fixed finite real coordinate/rank profile. It does not provide a
complex Hermitian realification, a growing-coordinate tower, a Weil source
identification, or an arithmetic construction of the required approximation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free dependency audit.
-/

namespace GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
open GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution

noncomputable section

variable {ι κ : Type*} [ιFinite : Fintype ι] [Fintype κ]

/-- Ordered pair coordinates; no off-diagonal coordinate is discarded. -/
def outer (x y : ι → ℝ) (p : ι × ι) : ℝ := x p.1 * y p.2

/-- One finite linear feature transition. -/
def featureStep (A : ι → ι → ℝ) (x : ι → ℝ) (i : ι) : ℝ :=
  ∑ j, A i j * x j

/-- Congruence on matrix entries, viewed as a linear map on pair coordinates. -/
def liftedGain (A : ι → ι → ℝ) (p q : ι × ι) : ℝ :=
  A p.1 q.1 * A p.2 q.2

/-- Product weights for the lifted weighted absolute-sum estimate. -/
def pairWeight (weight : ι → ℝ) (p : ι × ι) : ℝ :=
  weight p.1 * weight p.2

/-- An actual finite sum-of-squares Gram, not an arbitrary purported positive matrix. -/
def gram (feature : κ → ι → ℝ) (p : ι × ι) : ℝ :=
  ∑ k, outer (feature k) (feature k) p

/-- The same quadratic test readout on a supplied signed source or a positive model. -/
def quadraticReadout (test : ι → ℝ) (matrix : ι × ι → ℝ) : ℝ :=
  ∑ p, outer test test p * matrix p

/-- The complete quadratic injection of an affine feature update. -/
def gramInjection (A : ι → ι → ℝ) (feature injection : κ → ι → ℝ)
    (p : ι × ι) : ℝ :=
  ∑ k, (outer (featureStep A (feature k)) (injection k) p +
    outer (injection k) (featureStep A (feature k)) p +
    outer (injection k) (injection k) p)

/-- A product of two finite sums, retaining every mixed coordinate. -/
theorem sum_pair_mul (left right : ι → ℝ) :
    (∑ p : ι × ι, left p.1 * right p.2) = (∑ i, left i) * (∑ j, right j) := by
  rw [Fintype.sum_prod_type, Finset.sum_mul]
  simp_rw [Finset.mul_sum]

/-- The pair-coordinate lift represents the genuine quadratic transition. -/
theorem outer_featureStep (A : ι → ι → ℝ) (x y : ι → ℝ) (p : ι × ι) :
    outer (featureStep A x) (featureStep A y) p =
      ∑ q, liftedGain A p q * outer x y q := by
  calc
    _ = ∑ q : ι × ι, (A p.1 q.1 * x q.1) * (A p.2 q.2 * y q.2) :=
      (sum_pair_mul (fun i => A p.1 i * x i) (fun j => A p.2 j * y j)).symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro q _
      simp only [liftedGain, outer]
      ring

/-- Congruence transports the complete Gram, including its mixed entries. -/
theorem gram_transport (A : ι → ι → ℝ) (feature : κ → ι → ℝ) (p : ι × ι) :
    gram (fun k => featureStep A (feature k)) p =
      ∑ q, liftedGain A p q * gram feature q := by
  unfold gram
  simp_rw [outer_featureStep, Finset.mul_sum]
  rw [Finset.sum_comm]

/-- Expanding an affine feature update produces two mixed terms and an injection square. -/
theorem gram_update (A : ι → ι → ℝ) (feature injection : κ → ι → ℝ)
    (p : ι × ι) :
    gram (fun k i => featureStep A (feature k) i + injection k i) p =
      (∑ q, liftedGain A p q * gram feature q) + gramInjection A feature injection p := by
  rw [← gram_transport A feature p]
  simp only [gram, gramInjection, outer]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The lifted linear readout is exactly the original sum of squared feature evaluations. -/
theorem gram_readout (test : ι → ℝ) (feature : κ → ι → ℝ) :
    quadraticReadout test (gram feature) = ∑ k, (∑ i, test i * feature k i) ^ 2 := by
  unfold quadraticReadout gram
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  calc
    (∑ p, outer test test p * outer (feature k) (feature k) p) =
        ∑ p : ι × ι, (test p.1 * feature k p.1) * (test p.2 * feature k p.2) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [outer]
      ring
    _ = (∑ i, test i * feature k i) * (∑ i, test i * feature k i) :=
      sum_pair_mul (fun i => test i * feature k i) (fun i => test i * feature k i)
    _ = (∑ i, test i * feature k i) ^ 2 := by ring

/-- Positivity is proved for the model, not assumed for the independent source. -/
theorem gram_readout_nonnegative (test : ι → ℝ) (feature : κ → ι → ℝ) :
    0 ≤ quadraticReadout test (gram feature) := by
  rw [gram_readout]
  exact Finset.sum_nonneg fun k _ => sq_nonneg _

/-- The absolute column mass factorizes exactly before any gain bound is applied. -/
theorem lifted_column_factorization (weight : ι → ℝ) (A : ι → ι → ℝ)
    (q : ι × ι) :
    (∑ p, pairWeight weight p * |liftedGain A p q|) =
      (∑ i, weight i * |A i q.1|) * (∑ j, weight j * |A j q.2|) := by
  calc
    (∑ p, pairWeight weight p * |liftedGain A p q|) =
        ∑ p : ι × ι, (weight p.1 * |A p.1 q.1|) *
          (weight p.2 * |A p.2 q.2|) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [pairWeight, liftedGain, abs_mul]
      ring
    _ = _ := sum_pair_mul (fun i => weight i * |A i q.1|)
      (fun j => weight j * |A j q.2|)

/-- A feature gain r supplies a pair-coordinate gain r*r with product weights. -/
theorem lifted_column_bound (weight : ι → ℝ) (A : ι → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ j, (∑ i, weight i * |A i j|) ≤ r * weight j)
    (q : ι × ι) :
    (∑ p, pairWeight weight p * |liftedGain A p q|) ≤
      (r * r) * pairWeight weight q := by
  rw [lifted_column_factorization]
  calc
    _ ≤ (r * weight q.1) * (r * weight q.2) :=
      mul_le_mul (columnBound q.1) (columnBound q.2)
        (Finset.sum_nonneg fun i _ => mul_nonneg (weightsNonnegative i) (abs_nonneg _))
        (mul_nonneg rateNonnegative (weightsNonnegative q.1))
    _ = _ := by unfold pairWeight; ring

omit ιFinite in
/-- Bounded test coordinates give a bounded consumer on the SAME product weights. -/
theorem pair_consumer_bound [Fintype ι] (weight test : ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (testBound : ∀ i, |test i| ≤ weight i) (p : ι × ι) :
    |outer test test p| ≤ pairWeight weight p := by
  simp only [outer, pairWeight, abs_mul]
  exact mul_le_mul (testBound p.1) (testBound p.2)
    (abs_nonneg _) (weightsNonnegative p.1)

/-- The model's quadratic defect is derived from its affine feature update. -/
theorem gram_stageDefect (gain : ℕ → ι → ι → ℝ)
    (feature injection : ℕ → κ → ι → ℝ)
    (update : ∀ n k i, feature (n + 1) k i =
      featureStep (gain n) (feature n k) i + injection n k i)
    (n : ℕ) (p : ι × ι) :
    stageDefect (fun n => liftedGain (gain n)) (fun n => gram (feature n)) n p =
      gramInjection (gain n) (feature n) (injection n) p := by
  have next : feature (n + 1) =
      (fun k i => featureStep (gain n) (feature n k) i + injection n k i) := by
    funext k i
    exact update n k i
  change gram (feature (n + 1)) p -
      (∑ q, liftedGain (gain n) p q * gram (feature n) q) = _
  rw [next, gram_update]
  ring

/-- The full net forcing compares a supplied SIGNED source defect with the Gram injection. -/
theorem gram_residual_forcing (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι × ι → ℝ) (feature injection : ℕ → κ → ι → ℝ)
    (update : ∀ n k i, feature (n + 1) k i =
      featureStep (gain n) (feature n k) i + injection n k i)
    (n : ℕ) :
    residualForcing (fun n => liftedGain (gain n)) source (fun n => gram (feature n)) n =
      (fun p => stageDefect (fun n => liftedGain (gain n)) source n p -
        gramInjection (gain n) (feature n) (injection n) p) := by
  funext p
  unfold residualForcing
  rw [gram_stageDefect gain feature injection update n p]

/-- A positive Gram model enters the existing fixed-witness theorem through its actual lift.
The arbitrary source may be indefinite. Its exact readout and net-defect decay are NOT proved
by this theorem. Fixed finite coordinates do not establish an all-test Weil approximation. -/
theorem no_fixed_negative_of_gram_defects
    (weight : ι → ℝ) (test : ℕ → ι → ℝ) (source : ℕ → ι × ι → ℝ)
    (feature injection : ℕ → κ → ι → ℝ) (gain : ℕ → ι → ι → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (sourceReadout : ∀ n, actual = quadraticReadout (test n) (source n))
    (testBound : ∀ n i, |test n i| ≤ weight i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (update : ∀ n k i, feature (n + 1) k i =
      featureStep (gain n) (feature n k) i + injection n k i)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight weight) (fun p =>
        stageDefect (fun n => liftedGain (gain n)) source n p -
          gramInjection (gain n) (feature n) (injection n) p)))
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have netForcingVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight weight)
        (residualForcing (fun n => liftedGain (gain n)) source
          (fun n => gram (feature n)) n)) := by
    simpa only [gram_residual_forcing gain source feature injection update] using mismatchVanishes
  have liftedStrict : r * r < 1 := by
    have productPositive := mul_pos (sub_pos.mpr rateStrict)
      (by linarith : 0 < 1 + r)
    nlinarith
  exact no_fixed_negative_of_source_defects
    (pairWeight weight) (fun n => outer (test n) (test n))
    source (fun n => gram (feature n)) (fun n => liftedGain (gain n))
    (fun n => quadraticReadout (test n) (gram (feature n))) (fun _ => 0)
    (r * r) actual strength
    (fun p => mul_nonneg (weightsNonnegative p.1) (weightsNonnegative p.2))
    (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    sourceReadout (fun _ => rfl)
    (fun n => pair_consumer_bound weight (test n) weightsNonnegative (testBound n))
    (fun n => lifted_column_bound weight (gain n) r weightsNonnegative
      rateNonnegative (columnBound n))
    netForcingVanishes VanishesAtInfinity.zero strengthPositive negative
    (fun n => by simpa only [neg_zero] using gram_readout_nonnegative (test n) (feature n))

/-- Equal vector injections need not cancel after quadratic lifting. -/
theorem shared_injection_quadratic_difference (a s x b : ℝ) :
    ((a * s + b) ^ 2 - (a * s) ^ 2) -
        ((a * x + b) ^ 2 - (a * x) ^ 2) = 2 * a * b * (s - x) := by
  ring

/-- Dropping both mixed terms loses an exact nonzero contribution. -/
theorem mixed_terms_required_fixture :
    ((1 / 2 : ℝ) + 1 / 2) ^ 2 - (1 / 2 : ℝ) ^ 2 - (1 / 2 : ℝ) ^ 2 = 1 / 2 := by
  norm_num

/-- A real reflected-pair block, without any assertion that it comes from a zeta zero. -/
def reflectionBlock (p : Fin 2 × Fin 2) : ℝ := if p.1 = p.2 then 0 else 1

def antisymmetricTest (i : Fin 2) : ℝ := if i = 0 then 1 else -1

/-- The antisymmetric direction is retained rather than projected away. -/
theorem reflection_block_negative : quadraticReadout antisymmetricTest reflectionBlock = -2 := by
  norm_num [quadraticReadout, outer, reflectionBlock, antisymmetricTest,
    Fintype.sum_prod_type, Fin.sum_univ_two]

/-- Every positive Gram stays at least two away on this particular negative readout.
This exact obstruction is not a global negative Weil test construction. -/
theorem reflection_block_gram_error_floor (feature : κ → Fin 2 → ℝ) :
    2 ≤ |quadraticReadout antisymmetricTest reflectionBlock -
      quadraticReadout antisymmetricTest (gram feature)| := by
  exact positive_model_error_floor
    (actual := quadraticReadout antisymmetricTest reflectionBlock)
    (approximate := quadraticReadout antisymmetricTest (gram feature))
    (strength := 2)
    (by simpa only [reflection_block_negative] using (le_refl (-2 : ℝ)))
    (gram_readout_nonnegative antisymmetricTest feature) le_rfl

end

end GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
