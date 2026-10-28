/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord
import GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature

/-!
# Endpoint-only pickup quadrature with an unconditional quarter-unit remainder

Use the existing actual five-moment source. The chord is in exp(-u/2), not u.
The local curvature error is at most 1/(4*N*(N+1)); it telescopes over the
canonical source birth cells to at most 1/4, independently of the horizon.
This bound uses only the existing one-bounded Mobius and cell-drift estimates.
It supplies an approximation-error theorem, not the remaining signed growth
estimate. The code does not identify the pickup with a different RH source.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
open GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

/-- A bound on a coefficient of the actual SIGNED quadratic, not a PSD argument. -/
theorem coefficient2_abs_le {N : ℕ} (hN : 1 ≤ N) :
    |coefficient2 N| ≤ 4 * (N : ℝ) ^ 2 := by
  have hn : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hm : |signedMass N| ≤ (N : ℝ) := by
    simpa [signedMass, mertensPrefix] using mertensPrefix_abs_le (Nat.cast_nonneg N)
  have hm2 : signedMass N ^ 2 ≤ (N : ℝ) ^ 2 := by
    have h := (sq_le_sq₀ (abs_nonneg (signedMass N)) (Nat.cast_nonneg N)).mpr hm
    simpa only [sq_abs] using h
  have hd0 : 0 ≤ squareMoment N 0 := by unfold squareMoment; positivity
  have hd1 : squareMoment N 0 ≤ (N : ℝ) := by
    calc
      squareMoment N 0 = ∑ n ∈ Finset.Icc 1 N, moebiusReal n ^ 2 := by
        simp only [squareMoment, pow_zero, mul_one]
      _ ≤ ∑ _n ∈ Finset.Icc 1 N, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro n _
        have ha : |moebiusReal n| ≤ 1 := by
          unfold moebiusReal
          exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
        have h := (sq_le_sq₀ (abs_nonneg (moebiusReal n)) (by norm_num : (0 : ℝ) ≤ 1)).mpr ha
        simpa only [sq_abs, one_pow] using h
      _ = (N : ℝ) := by simp [Finset.card_Icc]
  have hD : squareMoment N 0 ≤ (N : ℝ) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hn) (Nat.cast_nonneg N)]
  have hdiff : |signedMass N ^ 2 - squareMoment N 0| ≤ (N : ℝ) ^ 2 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (signedMass N)]
  rw [coefficient2, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
  exact mul_le_mul_of_nonneg_left hdiff (by norm_num)

/-- Reuse the already proved source-cell square-root drift estimate at its actual scale. -/
theorem scaled_birth_gap {N : ℕ} (hN : 1 ≤ N) :
    4 * (N : ℝ) ^ 2 *
      ((Real.sqrt N)⁻¹ - (Real.sqrt (N + 1 : ℕ))⁻¹) ^ 2 ≤
        (((N + 1 : ℕ) : ℝ))⁻¹ := by
  have hpos : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hnext : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  have hle : (N : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast Nat.le_succ N
  have hw : (Real.sqrt (N + 1 : ℕ)) ^ 2 - (Real.sqrt N) ^ 2 ≤ 1 := by
    rw [Real.sq_sqrt hnext.le, Real.sq_sqrt hpos.le]
    push_cast
    linarith
  have hm : |(N : ℝ)| ≤ (Real.sqrt N) ^ 2 := by
    rw [abs_of_pos hpos, Real.sq_sqrt hpos.le]
  have h := cell_drift_bound (Real.sqrt_pos.mpr hnext) (Real.sqrt_pos.mpr hpos)
    (Real.sqrt_le_sqrt hle) hw hm
  have hs := (sq_le_sq₀ (abs_nonneg _)
    (inv_nonneg.mpr (Real.sqrt_nonneg ((N + 1 : ℕ) : ℝ)))).mpr h
  rw [sq_abs, inv_pow, Real.sq_sqrt hnext.le] at hs
  nlinarith

/-- Physical-time cell length, including any clipped terminal cell. -/
theorem birth_width_le {N : ℕ} (hN : 1 ≤ N) {a b : ℝ}
    (ha : Real.log (N : ℝ) ≤ a) (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    b - a ≤ 1 / (N : ℝ) := by
  have hpos : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hnext : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  have h := Real.log_le_sub_one_of_pos (div_pos hnext hpos)
  rw [Real.log_div (ne_of_gt hnext) (ne_of_gt hpos)] at h
  have hr : ((N + 1 : ℕ) : ℝ) / (N : ℝ) - 1 = 1 / (N : ℝ) := by
    push_cast
    field_simp [ne_of_gt hpos]
    <;> ring
  rw [hr] at h
  linarith

/-- The complete quadratic-curvature error, not an assumed small-arithmetic input. -/
theorem curvature_scale_le {N : ℕ} (hN : 1 ≤ N) {a b : ℝ}
    (hab : a ≤ b) (ha : Real.log (N : ℝ) ≤ a)
    (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    |coefficient2 N| * (node a - node b) ^ 2 / 4 ≤
      1 / (4 * ((N + 1 : ℕ) : ℝ)) := by
  have hpos : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hnext : 1 ≤ N + 1 := by omega
  have hL : node a ≤ (Real.sqrt N)⁻¹ := by
    rw [← pickup_exp_negative_log_half hN]
    exact Real.exp_le_exp.mpr (by linarith)
  have hR : (Real.sqrt (N + 1 : ℕ))⁻¹ ≤ node b := by
    rw [← pickup_exp_negative_log_half hnext]
    exact Real.exp_le_exp.mpr (by linarith)
  have hgap0 : 0 ≤ node a - node b :=
    sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith))
  have hgap : node a - node b ≤ (Real.sqrt N)⁻¹ - (Real.sqrt (N + 1 : ℕ))⁻¹ := by
    linarith
  have hfull0 := hgap0.trans hgap
  have hgap2 := (sq_le_sq₀ hgap0 hfull0).mpr hgap
  have hprod := mul_le_mul (coefficient2_abs_le hN) hgap2
    (sq_nonneg (node a - node b)) (by positivity : (0 : ℝ) ≤ 4 * (N : ℝ) ^ 2)
  have hs := hprod.trans (scaled_birth_gap hN)
  have hd := div_le_div_of_nonneg_right hs (by norm_num : (0 : ℝ) ≤ 4)
  simpa only [one_div, mul_inv_rev, div_eq_mul_inv] using hd

/-- The source chord has a direct endpoint readout, retaining the actual polynomial. -/
def cellChord (N : ℕ) (a b : ℝ) : ℝ :=
  chordValue (coefficient0 N) (coefficient1 N) (coefficient2 N) a b

theorem cellChord_eq_endpoints {a b : ℝ} (hab : a ≤ b) (N : ℕ) :
    cellChord N a b = endpointReadout a b (polynomial N (node a)) (polynomial N (node b)) :=
  chordValue_eq_endpoints hab _ _ _

/-- All omitted curvature remains SIGNED in this identity. -/
theorem cellChord_exact_defect (N : ℕ) (a b : ℝ) :
    cellChord N a b - cellValue N a b = coefficient2 N * curvatureMass a b :=
  chord_minus_value _ _ _ _ _

/-- Both samples really are endpoints of the original physical source. -/
theorem cellChord_eq_source_endpoints {T a b : ℝ} {N : ℕ}
    (hab : a ≤ b) (hN : 1 ≤ N) (hNT : N ≤ ⌊Real.exp T⌋₊)
    (ha : Real.log (N : ℝ) ≤ a) (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    cellChord N a b = endpointReadout a b (crossDensity T a) (crossDensity T b) := by
  rw [crossDensity_eq_polynomial hN hNT ha (hab.trans hb),
    crossDensity_eq_polynomial hN hNT (ha.trans hab) hb]
  exact cellChord_eq_endpoints hab N

/-- Every whole or clipped birth cell pays a telescoping reciprocal-adjacent cost. -/
theorem cellChord_error {N : ℕ} (hN : 1 ≤ N) {a b : ℝ}
    (hab : a ≤ b) (ha : Real.log (N : ℝ) ≤ a)
    (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ)) :
    |cellChord N a b - cellValue N a b| ≤
      1 / (4 * (N : ℝ) * ((N : ℝ) + 1)) := by
  calc
    _ ≤ (b - a) * (|coefficient2 N| * (node a - node b) ^ 2 / 4) :=
      chord_error hab _ _ _
    _ ≤ (1 / (N : ℝ)) * (1 / (4 * ((N + 1 : ℕ) : ℝ))) :=
      mul_le_mul (birth_width_le hN ha hb) (curvature_scale_le hN hab ha hb)
        (by positivity) (by positivity)
    _ = _ := by
      push_cast
      simp only [one_div, mul_inv_rev]
      ring

/-- The same local bound after an actual changing prime-square sieve. -/
theorem cellChord_sieved_error {N : ℕ} (hN : 1 ≤ N) {a b : ℝ}
    (hab : a ≤ b) (ha : Real.log (N : ℝ) ≤ a)
    (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (P : Finset ℕ) (hp : ∀ p ∈ P, p.Prime) :
    |cellChord N a b - sievedCellValue P N a b| ≤
      1 / (4 * (N : ℝ) * ((N : ℝ) + 1)) := by
  rw [sievedCellValue_eq P hp]
  exact cellChord_error hN hab ha hb

/-- Apply the existing actual RS polynomial identity to ONLY the two endpoint symbols.
The unobserved curvature is paid; two symbols are not claimed to decode a quadratic. -/
theorem rs_endpoint_error {N : ℕ} (hN : 1 ≤ N) {a b : ℝ}
    (hab : a ≤ b) (ha : Real.log (N : ℝ) ≤ a)
    (hb : b ≤ Real.log ((N + 1 : ℕ) : ℝ))
    (code : GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement.QuadraticEvaluationCode ℝ)
    (i j : Fin 4) (hi : code.nodes i = node a) (hj : code.nodes j = node b)
    (received : Fin 4 → ℝ) (ε : ℝ)
    (bi : |received i - code.encode (coefficientPayload N) i| ≤ ε)
    (bj : |received j - code.encode (coefficientPayload N) j| ≤ ε) :
    |endpointReadout a b (received i) (received j) - cellValue N a b| ≤
      (b - a) * ε + 1 / (4 * (N : ℝ) * ((N : ℝ) + 1)) := by
  rw [rs_sample_eq_polynomial, hi] at bi
  rw [rs_sample_eq_polynomial, hj] at bj
  have hsample := endpoint_uniform_error hab (received i) (received j)
    (polynomial N (node a)) (polynomial N (node b)) ε bi bj
  rw [← cellChord_eq_endpoints hab N] at hsample
  have he : endpointReadout a b (received i) (received j) - cellValue N a b =
      (endpointReadout a b (received i) (received j) - cellChord N a b) +
      (cellChord N a b - cellValue N a b) := by ring
  rw [he]
  exact (abs_add _ _).trans (add_le_add hsample (cellChord_error hN hab ha hb))

/-- Explicit tail price: later births have total curvature allowance at most 1/(4*start). -/
theorem reciprocal_budget (start length : ℕ) (hstart : 1 ≤ start) :
    (∑ k ∈ Finset.range length,
      1 / (4 * ((start : ℝ) + k) * ((start : ℝ) + k + 1))) =
      1 / (4 * (start : ℝ)) - 1 / (4 * ((start : ℝ) + length)) := by
  have hs : (0 : ℝ) < start := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hstart)
  induction length with
  | zero => simp
  | succ length ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      field_simp [ne_of_gt hs,
        show (start : ℝ) + length ≠ 0 by positivity,
        show (start : ℝ) + length + 1 ≠ 0 by positivity]
      <;> ring

theorem reciprocal_budget_le (length : ℕ) :
    (∑ k ∈ Finset.range length, 1 / (4 * ((k : ℝ) + 1) * ((k : ℝ) + 2))) ≤ 1 / 4 := by
  have he : (∑ k ∈ Finset.range length,
      1 / (4 * ((k : ℝ) + 1) * ((k : ℝ) + 2))) =
      1 / 4 - 1 / (4 * (1 + (length : ℝ))) := by
    calc
      _ = ∑ k ∈ Finset.range length,
          1 / (4 * ((1 : ℝ) + k) * ((1 : ℝ) + k + 1)) := by
        apply Finset.sum_congr rfl
        intro k _
        congr 1 <;> ring
      _ = _ := by simpa using reciprocal_budget 1 length (by omega)
  rw [he]
  have hn : 0 ≤ 1 / (4 * (1 + (length : ℝ))) := by positivity
  linarith

/-- A concrete arithmetic tail: at most one selected subcell of each successive birth.
The inverse-start allowance justifies concentrating curvature refinement at small indices. -/
theorem tail_cell_error (start length : ℕ) (hstart : 1 ≤ start)
    (a b : ℕ → ℝ)
    (ordered : ∀ k < length, a k ≤ b k)
    (leftBirth : ∀ k < length, Real.log ((start + k : ℕ) : ℝ) ≤ a k)
    (rightBirth : ∀ k < length, b k ≤ Real.log ((start + k + 1 : ℕ) : ℝ)) :
    (∑ k ∈ Finset.range length,
      |cellChord (start + k) (a k) (b k) - cellValue (start + k) (a k) (b k)|) ≤
      1 / (4 * (start : ℝ)) := by
  calc
    _ ≤ ∑ k ∈ Finset.range length,
        1 / (4 * ((start : ℝ) + k) * ((start : ℝ) + k + 1)) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk' := Finset.mem_range.mp hk
      simpa only [Nat.cast_add] using
        cellChord_error (N := start + k) (by omega)
          (ordered k hk') (leftBirth k hk') (rightBirth k hk')
    _ = 1 / (4 * (start : ℝ)) - 1 / (4 * ((start : ℝ) + length)) :=
      reciprocal_budget start length hstart
    _ ≤ _ := sub_le_self _ (by positivity)

/-- No approximation parameter or fitted model is chosen here. -/
def endpointSum (T : ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    cellChord (k + 1) (eventCut T k) (eventCut T (k + 1))

/-- Uniform over EVERY nonnegative real horizon. Includes all source births and the clipped cell. -/
theorem endpointSum_error {T : ℝ} (hT : 0 ≤ T) :
    |endpointSum T - pickupCross T| ≤ 1 / 4 := by
  rw [← canonicalValue_eq_cross hT]
  unfold endpointSum canonicalValue
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        |cellChord (k + 1) (eventCut T k) (eventCut T (k + 1)) -
          cellValue (k + 1) (eventCut T k) (eventCut T (k + 1))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        1 / (4 * ((k : ℝ) + 1) * ((k : ℝ) + 2)) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk' := Finset.mem_range.mp hk
      have h := cellChord_error (N := k + 1) (by omega)
        ((canonicalPartition T hT).ordered k hk')
        ((canonicalPartition T hT).left_birth k hk')
        ((canonicalPartition T hT).right_birth k hk')
      convert h using 1 <;> push_cast <;> ring
    _ ≤ 1 / 4 := reciprocal_budget_le _

/-- Retain the exact signed correction before taking the uniform absolute allowance. -/
theorem endpointSum_signed_defect {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T - pickupCross T =
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        coefficient2 (k + 1) * curvatureMass (eventCut T k) (eventCut T (k + 1)) := by
  rw [← canonicalValue_eq_cross hT]
  unfold endpointSum canonicalValue
  rw [← Finset.sum_sub_distrib]
  exact Finset.sum_congr rfl (fun k _ => cellChord_exact_defect _ _ _)

/-- Independently observed endpoint values; every cell keeps its actual physical weights. -/
def observedEndpointSum (T : ℝ) (left right : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
    endpointReadout (eventCut T k) (eventCut T (k + 1)) (left k) (right k)

private theorem length_sum (cut : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.range n, (cut (k + 1) - cut k)) = cut n - cut 0 := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, ih]; ring

/-- Two uniform absolute sample errors pay elapsed time, without decoder conditioning. -/
theorem observedEndpointSum_vs_chord {T : ℝ} (hT : 0 ≤ T)
    (left right : ℕ → ℝ) (ε : ℝ)
    (hleft : ∀ k < ⌊Real.exp T⌋₊,
      |left k - polynomial (k + 1) (node (eventCut T k))| ≤ ε)
    (hright : ∀ k < ⌊Real.exp T⌋₊,
      |right k - polynomial (k + 1) (node (eventCut T (k + 1)))| ≤ ε) :
    |observedEndpointSum T left right - endpointSum T| ≤ T * ε := by
  unfold observedEndpointSum endpointSum
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        |endpointReadout (eventCut T k) (eventCut T (k + 1)) (left k) (right k) -
          cellChord (k + 1) (eventCut T k) (eventCut T (k + 1))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        (eventCut T (k + 1) - eventCut T k) * ε := by
      apply Finset.sum_le_sum
      intro k hk
      have hk' := Finset.mem_range.mp hk
      have ho := (canonicalPartition T hT).ordered k hk'
      rw [cellChord_eq_endpoints ho]
      exact endpoint_uniform_error ho _ _ _ _ ε (hleft k hk') (hright k hk')
    _ = T * ε := by
      rw [← Finset.sum_mul, length_sum, eventCut_last, eventCut_first hT]
      ring

/-- Curvature and observation uncertainty are different, fully paid channels. -/
theorem observedEndpointSum_error {T : ℝ} (hT : 0 ≤ T)
    (left right : ℕ → ℝ) (ε : ℝ)
    (hleft : ∀ k < ⌊Real.exp T⌋₊,
      |left k - polynomial (k + 1) (node (eventCut T k))| ≤ ε)
    (hright : ∀ k < ⌊Real.exp T⌋₊,
      |right k - polynomial (k + 1) (node (eventCut T (k + 1)))| ≤ ε) :
    |observedEndpointSum T left right - pickupCross T| ≤ T * ε + 1 / 4 := by
  have he : observedEndpointSum T left right - pickupCross T =
      (observedEndpointSum T left right - endpointSum T) +
      (endpointSum T - pickupCross T) := by ring
  rw [he]
  exact (abs_add _ _).trans
    (add_le_add (observedEndpointSum_vs_chord hT left right ε hleft hright)
      (endpointSum_error hT))

/-- The old actual source and the two-endpoint sum share one arithmetic growth obligation. -/
theorem quarter_subexponential : SubexponentialUpper (fun _ : ℝ => (1 / 4 : ℝ)) := by
  intro ε hε
  refine ⟨1 / 4, by norm_num, ?_⟩
  intro T hT
  have h := Real.one_le_exp_iff.mpr (mul_nonneg hε.le hT)
  nlinarith

theorem endpoint_subexponential_iff {G : Set ℝ} :
    SubexponentialOn endpointSum G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro h
    apply subexponentialOn_mono (add_global h quarter_subexponential)
    intro T _ hT
    have h := (abs_le.mp (endpointSum_error hT)).1
    linarith
  · intro h
    apply subexponentialOn_mono (add_global h quarter_subexponential)
    intro T _ hT
    have h := (abs_le.mp (endpointSum_error hT)).2
    linarith

/-- The existing analytic return is APPLIED; no new analytic closure is postulated. -/
theorem riemannHypothesis_of_endpoint_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) (hbudget : SubexponentialOn endpointSum G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover (endpoint_subexponential_iff.mp hbudget)

/-- Canonical bounded graph uncertainty, without a fitted error or a density hypothesis. -/
def endpointPickupSandwich {V : Type*} (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich V :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.fromErrorBounds
    guard (fun v => pickupCross (time v)) (fun v => endpointSum (time v))
    (fun _ => 1 / 4) tolerance (fun v => by
      simpa only [Real.norm_eq_abs] using endpointSum_error (nonnegative v))

/-- New endpoint evidence and prior range evidence describe the identical arithmetic relation. -/
theorem endpoint_and_range_same_middle {V : Type*}
    (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v) (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    (endpointPickupSandwich time nonnegative guard tolerance).middle =
      (canonicalPickupSandwich time nonnegative depth guard tolerance).middle := rfl

/-- Apply evidence accumulation: actual edges survive and unresolved comparisons can be reduced. -/
theorem endpoint_range_unresolved_subset {V : Type*}
    (time : V → ℝ) (nonnegative : ∀ v, 0 ≤ time v) (depth : V → ℕ → ℕ)
    (guard : GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.EdgeRelation V)
    (tolerance : V → V → ℝ) :
    let old := canonicalPickupSandwich time nonnegative depth guard tolerance
    let new := endpointPickupSandwich time nonnegative guard tolerance
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Subrelation
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved
        (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.meetEvidence old new rfl))
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved old) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ObservationSandwich.unresolved_meet_subset _ _ rfl

/-- Curve, sieve-pair and endpoint observations are upper bounds on exactly the SAME source. -/
def endpointHybridUpper (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (endpointSum T + 1 / 4) (hybridUpper T depth primes)

theorem cross_le_endpointHybridUpper {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ) (hp : ∀ p ∈ primes, p.Prime) :
    pickupCross T ≤ endpointHybridUpper T depth primes := by
  apply le_min ?_ (cross_le_hybridUpper hT depth primes hp)
  have h := (abs_le.mp (endpointSum_error hT)).1
  linarith

theorem endpointHybridUpper_le_old (T : ℝ) (depth : ℕ → ℕ) (primes : Finset ℕ) :
    endpointHybridUpper T depth primes ≤ hybridUpper T depth primes := min_le_right _ _

/-- Fixed finite methods cooperate regionally without paying the source more than once. -/
theorem riemannHypothesis_of_endpoint_finite_cover {ι : Type*}
    (methods : Finset ι) (regions : ι → Set ℝ)
    (depth : ι → ℝ → ℕ → ℕ) (primes : ι → ℝ → Finset ℕ)
    (hcover : AffineFrequent {T | ∃ i ∈ methods, T ∈ regions i})
    (hp : ∀ i ∈ methods, ∀ T ∈ regions i, 0 ≤ T → ∀ p ∈ primes i T, p.Prime)
    (hbudget : ∀ i ∈ methods,
      SubexponentialOn (fun T => endpointHybridUpper T (depth i T) (primes i T)) (regions i)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_cross_good_scales hcover
  apply subexponentialOn_finite_cover methods regions
  intro i hi
  exact subexponentialOn_mono (hbudget i hi)
    (fun T hG hT => cross_le_endpointHybridUpper hT (depth i T) (primes i T) (hp i hi T hG hT))

end GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
