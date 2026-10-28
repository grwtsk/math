/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral
import GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion

/-!
# Signed quadrature of the actual pickup and its refinement consumers

The already constructed five-moment polynomial is integrated exactly on every
birth cell. Its coefficient readout and RS symbol readout are source-derived.
Only observation uncertainty is bounded absolutely; the cell values and their
sum remain signed. Existing max-range and prime-pair certificates are optional
independent bounds of the SAME source, combined by minimum, not subtracted twice.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement

open GRWTSK.Analysis.ErrorBounds

/-- Literal signed integral, using all five original arithmetic moments through the coefficients. -/
def cellValue (N : ℕ) (a b : ℝ) : ℝ :=
  ExponentialQuadraticIntegral.value (coefficient0 N) (coefficient1 N) (coefficient2 N) a b

/-- Same quadratic readout expressed through the actual changing prime-square sieve. -/
def sievedCellValue (P : Finset ℕ) (N : ℕ) (a b : ℝ) : ℝ :=
  let S := sieveMoment P N 1 0
  let A := sieveMoment P N 1 1
  ExponentialQuadraticIntegral.value
    (4 * (A ^ 2 - sieveMoment P N 2 2))
    (-8 * (A * S - sieveMoment P N 2 1))
    (4 * (S ^ 2 - sieveMoment P N 2 0)) a b

/-- Apply the existing sieve-moment identities, with no survivor renormalization. -/
theorem sievedCellValue_eq (P : Finset ℕ) (hp : ∀ p ∈ P, p.Prime)
    (N : ℕ) (a b : ℝ) : sievedCellValue P N a b = cellValue N a b := by
  have hS : sieveMoment P N 1 0 = signedMass N := by
    rw [sieveMoment_eq P hp]
    simp only [pow_one, pow_zero, mul_one, signedMass]
  have hA : sieveMoment P N 1 1 = weightedMass N := by
    rw [sieveMoment_eq P hp]
    simp only [pow_one, weightedMass]
  have hQ (j : ℕ) : sieveMoment P N 2 j = squareMoment N j :=
    sieveMoment_eq P hp N 2 j
  simp only [sievedCellValue, hS, hA, hQ, cellValue, coefficient0, coefficient1, coefficient2]

/-- Arbitrary stage changes preserve the exact integral as well as the source moments. -/
theorem sievedCellValue_stage_invariant (P Q : Finset ℕ)
    (hp : ∀ p ∈ P, p.Prime) (hq : ∀ p ∈ Q, p.Prime) (N : ℕ) (a b : ℝ) :
    sievedCellValue P N a b = sievedCellValue Q N a b := by
  rw [sievedCellValue_eq P hp, sievedCellValue_eq Q hq]

/-- Source identification and FTC, including the zero-response right birth endpoint. -/
theorem integral_crossDensity_eq_cellValue {T a b : ℝ} {N : ℕ}
    (hab : a ≤ b) (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (hleft : Real.log (N : ℝ) ≤ a) (hright : b ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    (∫ u in a..b, crossDensity T u) = cellValue N a b := by
  calc
    (∫ u in a..b, crossDensity T u) =
        ∫ u in a..b, ExponentialQuadraticIntegral.density (coefficient0 N) (coefficient1 N) (coefficient2 N) u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [Set.uIcc_of_le hab] at hu
      exact crossDensity_eq_polynomial hN hNT (hleft.trans hu.1) (hu.2.trans hright)
    _ = cellValue N a b := ExponentialQuadraticIntegral.integral_density _ _ _ _ _

/-- Exact physical subdivision, as opposed to taking the maximum of refined subcurves. -/
theorem cellValue_add_adjacent (N : ℕ) (a c b : ℝ) :
    cellValue N a c + cellValue N c b = cellValue N a b :=
  ExponentialQuadraticIntegral.value_add_adjacent _ _ _ _ _ _

/-- No whole-cell supremum is left in this source-level expression. -/
def partitionValue {T : ℝ} (P : BirthPartition T) : ℝ :=
  ∑ k ∈ Finset.range P.length, cellValue (P.index k) (P.cut k) (P.cut (k + 1))

theorem partitionValue_eq_cross {T : ℝ} (P : BirthPartition T) :
    partitionValue P = pickupCross T := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (f := crossDensity T) (a := P.cut) (n := P.length)
    (fun k _ => (crossDensity_continuous T).intervalIntegrable _ _)
  rw [P.first, P.last, integral_crossDensity] at hsum
  calc
    partitionValue P = ∑ k ∈ Finset.range P.length,
        ∫ u in P.cut k..P.cut (k + 1), crossDensity T u := by
      apply Finset.sum_congr rfl
      intro k hk
      have hk' := Finset.mem_range.mp hk
      exact (integral_crossDensity_eq_cellValue (P.ordered k hk') (P.positive k hk')
        (P.inventory k hk') (P.left_birth k hk') (P.right_birth k hk')).symm
    _ = pickupCross T := hsum

/-- Different valid partitions are exactly synchronized to the same source. -/
theorem partitionValue_independent {T : ℝ} (P Q : BirthPartition T) :
    partitionValue P = partitionValue Q := by
  rw [partitionValue_eq_cross, partitionValue_eq_cross]

/-- Quantifies exactly the old whole-cell overestimate. -/
theorem partitionUpper_slack {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) :
    partitionUpper P depth - pickupCross T =
      ∑ k ∈ Finset.range P.length,
        ((P.cut (k + 1) - P.cut k) *
          cellUpper (P.index k) (P.cut k) (P.cut (k + 1)) (depth k) -
          cellValue (P.index k) (P.cut k) (P.cut (k + 1))) := by
  rw [← partitionValue_eq_cross P]
  unfold partitionUpper partitionValue
  rw [Finset.sum_sub_distrib]

theorem partitionValue_le_partitionUpper {T : ℝ} (P : BirthPartition T) (depth : ℕ → ℕ) :
    partitionValue P ≤ partitionUpper P depth := by
  rw [partitionValue_eq_cross]
  exact cross_le_partitionUpper P depth

/-- Constructed for every nonnegative time by the EXISTING canonical birth partition. -/
def canonicalValue (T : ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    cellValue (k + 1) (eventCut T k) (eventCut T (k + 1))

theorem canonicalValue_eq_cross {T : ℝ} (hT : 0 ≤ T) :
    canonicalValue T = pickupCross T :=
  partitionValue_eq_cross (canonicalPartition T hT)

/-- Independently supplied observed coefficients. They are NOT defined from the desired budget. -/
def observedValue {T : ℝ} (P : BirthPartition T) (A B C : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range P.length, ExponentialQuadraticIntegral.value (A k) (B k) (C k) (P.cut k) (P.cut (k + 1))

def uncertainty {T : ℝ} (P : BirthPartition T) (e0 e1 e2 : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range P.length,
    (ExponentialQuadraticIntegral.weight0 (P.cut k) (P.cut (k + 1)) * e0 k +
      ExponentialQuadraticIntegral.weight1 (P.cut k) (P.cut (k + 1)) * e1 k +
      ExponentialQuadraticIntegral.weight2 (P.cut k) (P.cut (k + 1)) * e2 k)

/-- Signs and inter-cell cancellation are kept until after the exact sum has been returned. -/
theorem observedValue_error {T : ℝ} (P : BirthPartition T)
    (A B C e0 e1 e2 : ℕ → ℝ)
    (h0 : ∀ k < P.length, |A k - coefficient0 (P.index k)| ≤ e0 k)
    (h1 : ∀ k < P.length, |B k - coefficient1 (P.index k)| ≤ e1 k)
    (h2 : ∀ k < P.length, |C k - coefficient2 (P.index k)| ≤ e2 k) :
    |observedValue P A B C - pickupCross T| ≤ uncertainty P e0 e1 e2 := by
  rw [← partitionValue_eq_cross P]
  unfold observedValue partitionValue
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.range P.length,
        |ExponentialQuadraticIntegral.value (A k) (B k) (C k) (P.cut k) (P.cut (k + 1)) -
          cellValue (P.index k) (P.cut k) (P.cut (k + 1))| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ uncertainty P e0 e1 e2 := by
      apply Finset.sum_le_sum
      intro k hk
      have hk' := Finset.mem_range.mp hk
      exact ExponentialQuadraticIntegral.coefficient_error (P.ordered k hk') _ _ _ _ _ _ _ _ _
        (h0 k hk') (h1 k hk') (h2 k hk')

theorem cross_le_observedValue_add_uncertainty {T : ℝ} (P : BirthPartition T)
    (A B C e0 e1 e2 : ℕ → ℝ)
    (h0 : ∀ k < P.length, |A k - coefficient0 (P.index k)| ≤ e0 k)
    (h1 : ∀ k < P.length, |B k - coefficient1 (P.index k)| ≤ e1 k)
    (h2 : ∀ k < P.length, |C k - coefficient2 (P.index k)| ≤ e2 k) :
    pickupCross T ≤ observedValue P A B C + uncertainty P e0 e1 e2 := by
  have h := (abs_le.mp (observedValue_error P A B C e0 e1 e2 h0 h1 h2)).1
  linarith

/-- Every valid partition starts at zero and is ordered, so no negative-time weight is used. -/
theorem cut_nonnegative {T : ℝ} (P : BirthPartition T) {k : ℕ} (hk : k ≤ P.length) :
    0 ≤ P.cut k := by
  revert hk
  induction k with
  | zero => intro _; rw [P.first]
  | succ k ih =>
      intro hk
      exact (ih (by omega)).trans (P.ordered k (by omega))

private theorem cut_length_sum (cut : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.range n, (cut (k + 1) - cut k)) = cut n - cut 0 := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, ih]; ring

/-- The entire exponentially growing inventory pays elapsed time, not its cardinality. -/
theorem uniform_uncertainty_le {T : ℝ} (P : BirthPartition T)
    {ε : ℝ} (hε : 0 ≤ ε) :
    uncertainty P (fun _ => ε) (fun _ => ε) (fun _ => ε) ≤ 3 * ε * T := by
  calc
    uncertainty P (fun _ => ε) (fun _ => ε) (fun _ => ε) ≤
        ∑ k ∈ Finset.range P.length, 3 * ε * (P.cut (k + 1) - P.cut k) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk' := Finset.mem_range.mp hk
      obtain ⟨h1, h2⟩ := ExponentialQuadraticIntegral.weights_le_length
        (cut_nonnegative P (Nat.le_of_lt hk')) (P.ordered k hk')
      have e1 := mul_le_mul_of_nonneg_right h1 hε
      have e2 := mul_le_mul_of_nonneg_right h2 hε
      change ExponentialQuadraticIntegral.weight0 _ _ * ε +
        ExponentialQuadraticIntegral.weight1 _ _ * ε +
        ExponentialQuadraticIntegral.weight2 _ _ * ε ≤ _
      unfold ExponentialQuadraticIntegral.weight0 at e1 e2 ⊢
      linarith
    _ = 3 * ε * T := by
      rw [← Finset.mul_sum, cut_length_sum, P.last, P.first]
      ring

/-- A fixed absolute coefficient precision yields only a linear total error. -/
theorem observedValue_uniform_error {T : ℝ} (P : BirthPartition T)
    (A B C : ℕ → ℝ) {ε : ℝ} (hε : 0 ≤ ε)
    (h0 : ∀ k < P.length, |A k - coefficient0 (P.index k)| ≤ ε)
    (h1 : ∀ k < P.length, |B k - coefficient1 (P.index k)| ≤ ε)
    (h2 : ∀ k < P.length, |C k - coefficient2 (P.index k)| ≤ ε) :
    |observedValue P A B C - pickupCross T| ≤ 3 * ε * T :=
  (observedValue_error P A B C (fun _ => ε) (fun _ => ε) (fun _ => ε) h0 h1 h2).trans
    (uniform_uncertainty_le P hε)

/-- The existing polynomial-to-exponential supplier prices this error explicitly. -/
theorem precision_error_subexponential {ε : ℝ} (hε : 0 ≤ ε) :
    SubexponentialUpper (fun T => 3 * ε * T) := by
  intro δ hδ
  refine ⟨3 * ε / δ, by positivity, ?_⟩
  intro T hT
  have hb : T ≤ (1 / δ) * Real.exp (δ * T) := by
    simpa using pow_le_factorial_mul_exp hδ hT 1
  calc
    3 * ε * T ≤ (3 * ε) * ((1 / δ) * Real.exp (δ * T)) :=
      mul_le_mul_of_nonneg_left hb (by positivity)
    _ = (3 * ε / δ) * Real.exp (δ * T) := by ring

/-- Observable made from independently evaluated coefficients on canonical source cells. -/
def coefficientObservation (T : ℝ) (A B C : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    ExponentialQuadraticIntegral.value (A k) (B k) (C k) (eventCut T k) (eventCut T (k + 1))

/-- Reconstruction growth is DISCHARGED: the only growth premise is on the signed observed sum.
The fixed precision is absolute coefficient error, not a relative bound or finite sample test. -/
theorem riemannHypothesis_of_fixed_precision_observation
    (A B C : ℝ → ℕ → ℝ) {ε : ℝ} (hε : 0 ≤ ε)
    {G : Set ℝ} (hcover : AffineFrequent G)
    (h0 : ∀ T ∈ G, 0 ≤ T → ∀ k < ⌊Real.exp T⌋₊, |A T k - coefficient0 (k + 1)| ≤ ε)
    (h1 : ∀ T ∈ G, 0 ≤ T → ∀ k < ⌊Real.exp T⌋₊, |B T k - coefficient1 (k + 1)| ≤ ε)
    (h2 : ∀ T ∈ G, 0 ≤ T → ∀ k < ⌊Real.exp T⌋₊, |C T k - coefficient2 (k + 1)| ≤ ε)
    (hbudget : SubexponentialOn (fun T => coefficientObservation T (A T) (B T) (C T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_mono (add_global hbudget (precision_error_subexponential hε))
  intro T hG hT
  have h := observedValue_uniform_error (canonicalPartition T hT) (A T) (B T) (C T)
    hε (h0 T hG hT) (h1 T hG hT) (h2 T hG hT)
  have hl := (abs_le.mp h).1
  change -(3 * ε * T) ≤ coefficientObservation T (A T) (B T) (C T) - pickupCross T at hl
  linarith

/-- Deterministic integer quantization, not a fitted model or an unrestricted remainder. -/
def integerFloor (x : ℝ) : ℝ := (⌊x⌋ : ℤ)

theorem integerFloor_error (x : ℝ) : |integerFloor x - x| ≤ 1 := by
  have hlo := Int.floor_le x
  have hhi := Int.lt_floor_add_one x
  rw [abs_le]
  change -1 ≤ (⌊x⌋ : ℝ) - x ∧ (⌊x⌋ : ℝ) - x ≤ 1
  constructor <;> linarith

def roundedObservation (T : ℝ) : ℝ :=
  coefficientObservation T
    (fun k => integerFloor (coefficient0 (k + 1)))
    (fun k => integerFloor (coefficient1 (k + 1)))
    (fun k => integerFloor (coefficient2 (k + 1)))

/-- Every coefficient uncertainty is now supplied by the actual floor theorem. -/
theorem roundedObservation_error {T : ℝ} (hT : 0 ≤ T) :
    |roundedObservation T - pickupCross T| ≤ 3 * T := by
  have h := observedValue_uniform_error (canonicalPartition T hT)
    (fun k => integerFloor (coefficient0 (k + 1)))
    (fun k => integerFloor (coefficient1 (k + 1)))
    (fun k => integerFloor (coefficient2 (k + 1)))
    (ε := 1) (by norm_num)
    (fun k _ => integerFloor_error _) (fun k _ => integerFloor_error _)
    (fun k _ => integerFloor_error _)
  simpa only [roundedObservation, coefficientObservation, observedValue,
    canonicalPartition, mul_one] using h

/-- Positivity of integration weights, not positivity of the signed arithmetic polynomial. -/
theorem roundedObservation_le_cross {T : ℝ} (hT : 0 ≤ T) :
    roundedObservation T ≤ pickupCross T := by
  rw [← canonicalValue_eq_cross hT]
  unfold roundedObservation coefficientObservation canonicalValue
  apply Finset.sum_le_sum
  intro k hk
  have horder := (canonicalPartition T hT).ordered k (Finset.mem_range.mp hk)
  obtain ⟨w0, w1, w2⟩ := ExponentialQuadraticIntegral.weights_nonnegative horder
  unfold cellValue ExponentialQuadraticIntegral.value integerFloor
  exact add_le_add (add_le_add
    (mul_le_mul_of_nonneg_left (Int.floor_le _) w0)
    (mul_le_mul_of_nonneg_left (Int.floor_le _) w1))
    (mul_le_mul_of_nonneg_left (Int.floor_le _) w2)

/-- The full signed target lies in an explicitly supplied O(T)-width interval. -/
theorem cross_le_roundedObservation_add {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ roundedObservation T + 3 * T := by
  have h := (abs_le.mp (roundedObservation_error hT)).1
  linarith

/-- The all-positive-rate obligation is unchanged by this concrete integer quantization. -/
theorem rounded_subexponential_iff {G : Set ℝ} :
    SubexponentialOn roundedObservation G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro h
    have herr : SubexponentialUpper (fun T : ℝ => 3 * T) := by
      simpa only [mul_one] using (precision_error_subexponential (ε := 1) (by norm_num))
    exact subexponentialOn_mono (add_global h herr)
      (fun _ _ hT => cross_le_roundedObservation_add hT)
  · intro h
    exact subexponentialOn_mono h (fun _ _ hT => roundedObservation_le_cross hT)

/-- Canonical, lattice-coefficient RH target with no unsupplied precision/coverage interface. -/
theorem riemannHypothesis_of_rounded_good_scales {G : Set ℝ} (hcover : AffineFrequent G)
    (hbudget : SubexponentialOn roundedObservation G) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover (rounded_subexponential_iff.mp hbudget)

/-- A fully source-derived graph observation: no empirical interval error is postulated. -/
def roundedPickupSandwich {V : Type*} (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich V :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.fromErrorBounds
    guard (fun v => pickupCross (time v)) (fun v => roundedObservation (time v))
    (fun v => 3 * time v) tolerance (fun v => by
      simpa only [Real.norm_eq_abs] using roundedObservation_error (nonnegative v))

/-- The literal polynomial coefficients are the source of this four-symbol RS code. -/
def coefficientPayload (N : ℕ) : Fin 3 → ℝ :=
  ![coefficient0 N, coefficient1 N, coefficient2 N]

theorem rs_sample_eq_polynomial (code : QuadraticEvaluationCode ℝ) (N : ℕ) (i : Fin 4) :
    code.encode (coefficientPayload N) i = polynomial N (code.nodes i) := by
  rw [code.encode_apply]
  change coefficient0 N + code.nodes i * coefficient1 N +
    code.nodes i ^ 2 * coefficient2 N = _
  unfold polynomial
  ring

/-- Recover the actual cell integral directly from three declared RS nodes. -/
theorem cellValue_eq_rs_readout (code : QuadraticEvaluationCode ℝ)
    (i j k : Fin 4) (hij : i ≠ j) (hik : i ≠ k) (hjk : j ≠ k)
    (N : ℕ) (a b : ℝ) :
    cellValue N a b = ExponentialQuadraticIntegral.sampleReadout (code.nodes i) (code.nodes j) (code.nodes k)
      (ExponentialQuadraticIntegral.weight0 a b) (ExponentialQuadraticIntegral.weight1 a b) (ExponentialQuadraticIntegral.weight2 a b)
      (code.encode (coefficientPayload N) i)
      (code.encode (coefficientPayload N) j)
      (code.encode (coefficientPayload N) k) := by
  rw [rs_sample_eq_polynomial, rs_sample_eq_polynomial, rs_sample_eq_polynomial]
  exact ExponentialQuadraticIntegral.value_eq_samples _ _ _ _ _ _ _ _
    (fun h => hij (code.nodes_injective h))
    (fun h => hik (code.nodes_injective h))
    (fun h => hjk (code.nodes_injective h))

/-- The fourth symbol may be retained for consistency checks; its error is not charged here. -/
theorem rs_integral_error (code : QuadraticEvaluationCode ℝ)
    (i j k : Fin 4) (hij : i ≠ j) (hik : i ≠ k) (hjk : j ≠ k)
    (N : ℕ) (a b : ℝ) (received : Fin 4 → ℝ) (ei ej ek : ℝ)
    (hi : |received i - code.encode (coefficientPayload N) i| ≤ ei)
    (hj : |received j - code.encode (coefficientPayload N) j| ≤ ej)
    (hk : |received k - code.encode (coefficientPayload N) k| ≤ ek) :
    |ExponentialQuadraticIntegral.sampleReadout (code.nodes i) (code.nodes j) (code.nodes k)
      (ExponentialQuadraticIntegral.weight0 a b) (ExponentialQuadraticIntegral.weight1 a b) (ExponentialQuadraticIntegral.weight2 a b)
      (received i) (received j) (received k) - cellValue N a b| ≤
      |ExponentialQuadraticIntegral.sampleWeight0 (code.nodes i) (code.nodes j) (code.nodes k)
        (ExponentialQuadraticIntegral.weight0 a b) (ExponentialQuadraticIntegral.weight1 a b) (ExponentialQuadraticIntegral.weight2 a b)| * ei +
      |ExponentialQuadraticIntegral.sampleWeight1 (code.nodes i) (code.nodes j) (code.nodes k)
        (ExponentialQuadraticIntegral.weight0 a b) (ExponentialQuadraticIntegral.weight1 a b) (ExponentialQuadraticIntegral.weight2 a b)| * ej +
      |ExponentialQuadraticIntegral.sampleWeight2 (code.nodes i) (code.nodes j) (code.nodes k)
        (ExponentialQuadraticIntegral.weight0 a b) (ExponentialQuadraticIntegral.weight1 a b) (ExponentialQuadraticIntegral.weight2 a b)| * ek := by
  rw [cellValue_eq_rs_readout code i j k hij hik hjk N a b]
  exact ExponentialQuadraticIntegral.three_sample_error _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hi hj hk

/-- A returned error at each actual cell gives a complete signed source comparison.
This consumes, for example, rs_integral_error rather than an invented source identification. -/
theorem sum_cell_error {T : ℝ} (P : BirthPartition T) (sample error : ℕ → ℝ)
    (h : ∀ k < P.length,
      |sample k - cellValue (P.index k) (P.cut k) (P.cut (k + 1))| ≤ error k) :
    |(∑ k ∈ Finset.range P.length, sample k) - pickupCross T| ≤
      ∑ k ∈ Finset.range P.length, error k := by
  rw [← partitionValue_eq_cross P]
  unfold partitionValue
  rw [← Finset.sum_sub_distrib]
  exact (Finset.abs_sum_le_sum_abs _ _).trans
    (Finset.sum_le_sum (fun k hk => h k (Finset.mem_range.mp hk)))

/-- The returned observation and its uncertainty are separate signed/error channels. -/
def sampledValue (T : ℝ) (sample : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊, sample k

def sampledError (T : ℝ) (error : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊, error k

def sampledUpper (T : ℝ) (sample error : ℕ → ℝ) : ℝ :=
  sampledValue T sample + sampledError T error

/-- A precise local supplier, instantiated by rs_integral_error or coefficient_error.
This keeps the real birth index, clipped final cell, and all ordered mixed terms. -/
def CellErrorBound (T : ℝ) (sample error : ℕ → ℝ) : Prop :=
  ∀ k < ⌊Real.exp T⌋₊,
    |sample k - cellValue (k + 1) (eventCut T k) (eventCut T (k + 1))| ≤ error k

theorem sampledValue_error {T : ℝ} (hT : 0 ≤ T) (sample error : ℕ → ℝ)
    (h : CellErrorBound T sample error) :
    |sampledValue T sample - pickupCross T| ≤ sampledError T error :=
  sum_cell_error (canonicalPartition T hT) sample error h

theorem cross_le_sampledUpper {T : ℝ} (hT : 0 ≤ T) (sample error : ℕ → ℝ)
    (h : CellErrorBound T sample error) : pickupCross T ≤ sampledUpper T sample error := by
  have hl := (abs_le.mp (sampledValue_error hT sample error h)).1
  unfold sampledUpper
  linarith

/-- An independently checked interval for the actual pickup, fed into the old graph sandwich. -/
def sampledPickupSandwich {V : Type*} (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v)
    (sample error : V → ℕ → ℝ) (bounds : ∀ v, CellErrorBound (time v) (sample v) (error v))
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich V :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.fromErrorBounds
    guard (fun v => pickupCross (time v)) (fun v => sampledValue (time v) (sample v))
    (fun v => sampledError (time v) (error v)) tolerance (fun v => by
      simpa only [Real.norm_eq_abs] using
        sampledValue_error (nonnegative v) (sample v) (error v) (bounds v))

/-- Source identity needed to combine old range evidence with new integral evidence. -/
theorem sampled_and_range_same_middle {V : Type*}
    (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v)
    (sample error : V → ℕ → ℝ) (bounds : ∀ v, CellErrorBound (time v) (sample v) (error v))
    (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    (sampledPickupSandwich time nonnegative sample error bounds guard tolerance).middle =
      (canonicalPickupSandwich time nonnegative depth guard tolerance).middle := rfl

/-- Existing graph evidence accumulation is applied to the identical arithmetic relation. -/
theorem sampled_range_unresolved_subset {V : Type*}
    (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v)
    (sample error : V → ℕ → ℝ) (bounds : ∀ v, CellErrorBound (time v) (sample v) (error v))
    (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    let old := canonicalPickupSandwich time nonnegative depth guard tolerance
    let new := sampledPickupSandwich time nonnegative sample error bounds guard tolerance
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Subrelation
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved
        (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.meetEvidence old new rfl))
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved old) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved_meet_subset _ _ rfl

/-- Independent upper certificates combine by minimum; negative prime credit is not subtracted twice. -/
def combinedUpper (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ)
    (sample error : ℕ → ℝ) : ℝ :=
  min (sampledUpper T sample error) (hybridUpper T depth primes)

theorem combinedUpper_le_old (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ)
    (sample error : ℕ → ℝ) : combinedUpper T depth primes sample error ≤ hybridUpper T depth primes :=
  min_le_right _ _

theorem cross_le_combinedUpper {T : ℝ} (hT : 0 ≤ T) (depth : ℕ → ℕ)
    (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime) (sample error : ℕ → ℝ)
    (h : CellErrorBound T sample error) :
    pickupCross T ≤ combinedUpper T depth primes sample error :=
  le_min (cross_le_sampledUpper hT sample error h) (cross_le_hybridUpper hT depth primes hp)

/-- Downstream RH uses the SAME signed cumulative-energy return, not a new analytic interface. -/
theorem riemannHypothesis_of_signed_quadrature
    (sample error : ℝ → ℕ → ℝ) {G : Set ℝ} (hcover : AffineFrequent G)
    (hsource : ∀ T ∈ G, 0 ≤ T → CellErrorBound T (sample T) (error T))
    (hbudget : SubexponentialOn (fun T => sampledUpper T (sample T) (error T)) G) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  exact subexponentialOn_mono hbudget
    (fun T hG hT => cross_le_sampledUpper hT (sample T) (error T) (hsource T hG hT))

/-- No new sampling premise is needed when the literal five moments are used exactly. -/
theorem riemannHypothesis_of_exact_good_scales {G : Set ℝ} (hcover : AffineFrequent G)
    (hbudget : SubexponentialOn canonicalValue G) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_mono hbudget
  intro T _ hT
  exact (canonicalValue_eq_cross hT).ge

/-- Methods can cooperate on complementary regions using their actual returned signed budgets. -/
theorem riemannHypothesis_of_combined_finite_cover {ι : Type*}
    (methods : Finset ι) (regions : ι → Set ℝ)
    (depth : ι → ℝ → ℕ → ℕ) (primes : ι → ℝ → Finset ℕ)
    (sample error : ι → ℝ → ℕ → ℝ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hp : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ primes i T, p.Prime)
    (hsource : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T →
      CellErrorBound T (sample i T) (error i T))
    (hbudget : ∀ i ∈ methods, SubexponentialOn
      (fun T => combinedUpper T (depth i T) (primes i T) (sample i T) (error i T)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact subexponentialOn_mono (hbudget i hi)
    (fun T hG hT => cross_le_combinedUpper hT (depth i T) (primes i T)
      (hp i hi T hG hT) (sample i T) (error i T) (hsource i hi T hG hT))

end GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature
