# Complete source: GRWTSK.Analysis.BranchCorrelationEdge.Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a3a4701cef8979e811839c42115da9add5faef8` · SHA-256 `448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchProfileSeams
import FormalResearch.RiemannHypothesis.Conversation.BranchCorrelationHigher
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Exact polynomial at the actual correlation support edge

Batch 26, `exact-profile-descent.md`, section 4, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The full double coefficient sum
comes from integrating the actual support intersection. All seven endpoint
coefficients and their signs are retained. This is a fixed positive real
source scale; a fifth derivative in the moving scale is a separate claim.

Human mathematical direction: grwtsk contributors. Lean formalization:
OpenAI Codex, using the literal source profile and Mathlib interval integrals.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchCorrelationEdge

open MeasureTheory Set Filter
open scoped Topology ContDiff
open SourcePairing BranchProfileSeams
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Exact beta weight for the two endpoint monomials of degrees i+2 and j+2. -/
def overlapWeight (i j : Fin 7) : ℝ :=
  ((i.val + 2).factorial : ℝ) * ((j.val + 2).factorial : ℝ) /
    ((i.val + j.val + 5).factorial : ℝ)

/-- The complete degree-seventeen edge polynomial, with the literal scale and Z. -/
def edgeCorrelationPolynomial (A y : ℝ) : ℝ :=
  (∑ i : Fin 7, ∑ j : Fin 7,
    edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
      y ^ (i.val + j.val + 5)) / (A * sourceNormalization A)

/-- The exact closed support intersection retains both touching endpoints. -/
theorem actual_overlap_eq_indicator {A t : ℝ} (hA : 0 < A) (ht : 0 ≤ t) :
    (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) =
      (Icc (t - A) A).indicator
        (fun x ↦ normalizedInterior A x * normalizedInterior A (x - t)) := by
  rw [normalizedTest_eq_indicator A hA]
  funext x
  have hs : x ∈ Icc (-A) A ∧ x - t ∈ Icc (-A) A ↔ x ∈ Icc (t - A) A := by
    simp only [mem_Icc]
    constructor
    · rintro ⟨⟨_, hx1⟩, ⟨hy0, _⟩⟩
      exact ⟨by linarith, hx1⟩
    · rintro ⟨hx0, hx1⟩
      exact ⟨⟨by linarith, hx1⟩, ⟨by linarith, by linarith⟩⟩
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hy : x - t ∈ Icc (-A) A
    · simp [hx, hy, hs.mp ⟨hx, hy⟩]
    · have hm : x ∉ Icc (t - A) A := fun h ↦ hy (hs.mpr h).2
      simp [hx, hy, hm]
  · have hm : x ∉ Icc (t - A) A := fun h ↦ hx (hs.mpr h).1
    simp [hx, hm]

/-- The actual correlation is an oriented polynomial integral only on its stated half-support. -/
theorem actual_correlation_overlap_integral {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ x : ℝ in (t - A)..A, normalizedInterior A x * normalizedInterior A (x - t) := by
  rw [sourceCorrelation, actual_overlap_eq_indicator hA ht0,
    zeroExtension_integral _ (t - A) A (by linarith)]

set_option maxHeartbeats 2000000 in
-- Exact polynomial integration checks all 49 monomial pairs in the fixed finite inventory.
private theorem beta_seven (i j : Fin 7) (y : ℝ) :
    (∫ x : ℝ in (0 : ℝ)..y, x ^ (i.val + 2) * (y - x) ^ (j.val + 2)) =
      overlapWeight i j * y ^ (i.val + j.val + 5) := by
  unfold overlapWeight
  fin_cases i <;> fin_cases j <;> norm_num only [Fin.isValue, Fin.reduceFinMk, Nat.reduceAdd,
    Nat.factorial, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one]
  all_goals
    conv_lhs => enter [1, x]; ring_nf
    simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
      [intervalIntegral.integral_add, intervalIntegral.integral_sub,
       intervalIntegral.integral_mul_const, integral_pow]
    norm_num
    ring

/-- Integration of every endpoint monomial is exact, including y=0 and oriented negative y. -/
theorem endpoint_polynomial_overlap (A y : ℝ) :
    (∫ x : ℝ in (0 : ℝ)..y, edgePolynomial A x * edgePolynomial A (y - x)) =
      ∑ i : Fin 7, ∑ j : Fin 7,
        edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
          y ^ (i.val + j.val + 5) := by
  have he : (fun x ↦ edgePolynomial A x * edgePolynomial A (y - x)) =
      fun x ↦ ∑ i : Fin 7, ∑ j : Fin 7,
        (edgeCoefficient A i * edgeCoefficient A j) *
          (x ^ (i.val + 2) * (y - x) ^ (j.val + 2)) := by
    funext x
    dsimp only [edgePolynomial]
    rw [Finset.sum_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [he]
  simp (disch := (intros; apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_finsetSum, intervalIntegral.integral_const_mul, beta_seven]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Reflection and the exact √A √Z factors identify the complete source edge integrand. -/
theorem interior_edge_product {A : ℝ} (hA : 0 < A) (y x : ℝ) :
    normalizedInterior A x * normalizedInterior A (x - (2 * A - y)) =
      (edgePolynomial A (A - x) * edgePolynomial A (y - (A - x))) /
        (A * sourceNormalization A) := by
  have hx := normalizedInterior_edge_polynomial hA (A - x)
  have hy := normalizedInterior_edge_polynomial hA (y - (A - x))
  rw [show A - (A - x) = x by ring] at hx
  rw [show A - (y - (A - x)) = -(x - (2 * A - y)) by ring,
    normalizedInterior_even A] at hy
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hr : (Real.sqrt A * Real.sqrt (sourceNormalization A)) *
      (Real.sqrt A * Real.sqrt (sourceNormalization A)) = A * sourceNormalization A := by
    calc
      _ = (Real.sqrt A) ^ 2 * (Real.sqrt (sourceNormalization A)) ^ 2 := by ring
      _ = _ := by rw [Real.sq_sqrt hA.le, Real.sq_sqrt hz.le]
  rw [hx, hy, div_mul_div_comm, hr]

/-- The full finite beta sum is the actual correlation for every edge distance in [0,2A]. -/
theorem actual_correlation_edge_polynomial {A y : ℝ} (hA : 0 < A)
    (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - y) =
      edgeCorrelationPolynomial A y := by
  rw [actual_correlation_overlap_integral hA (by linarith) (by linarith)]
  simp_rw [interior_edge_product hA]
  rw [intervalIntegral.integral_div]
  have hc := intervalIntegral.integral_comp_sub_left
    (fun z ↦ edgePolynomial A z * edgePolynomial A (y - z))
    (a := 2 * A - y - A) (b := A) A
  simp only [sub_self, show A - (2 * A - y - A) = y by ring] at hc
  rw [hc, endpoint_polynomial_overlap]
  rfl

/-- The full edge tail after factoring only the fifth power, without truncation. -/
def edgeTail (A y : ℝ) : ℝ :=
  (∑ i : Fin 7, ∑ j : Fin 7,
    edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
      y ^ (i.val + j.val)) / (A * sourceNormalization A)

/-- The fifth power factors from the entire actual polynomial, not just its leading term. -/
theorem edgeCorrelationPolynomial_factor (A y : ℝ) :
    edgeCorrelationPolynomial A y = y ^ 5 * edgeTail A y := by
  unfold edgeCorrelationPolynomial edgeTail
  rw [← mul_div_assoc, Finset.mul_sum]
  apply congrArg (fun z : ℝ ↦ z / (A * sourceNormalization A))
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  rw [pow_add]
  ring

/-- The full untruncated tail has the exact leading coefficient at zero. -/
theorem edgeTail_zero {A : ℝ} (hA : 0 < A) :
    edgeTail A 0 = 6144 / (5 * A ^ 9 * sourceNormalization A) := by
  unfold edgeTail
  norm_num [Fin.sum_univ_succ, Fin.succ, edgeCoefficient, overlapWeight]
  field_simp [hA.ne']
  ring

/-- At a fixed source scale the entire tail is continuous, including zero edge distance. -/
theorem edgeTail_continuous (A : ℝ) : Continuous (edgeTail A) := by
  unfold edgeTail
  fun_prop

/-- The actual correlation has exactly the stated fifth-order inward asymptotic. -/
theorem actual_correlation_fifth_order_limit {A : ℝ} (hA : 0 < A) :
    Tendsto (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y) / y ^ 5)
      (𝓝[>] 0) (𝓝 (6144 / (5 * A ^ 9 * sourceNormalization A))) := by
  have ht := ((edgeTail_continuous A).continuousAt (x := (0 : ℝ))).tendsto.mono_left
    (nhdsWithin_le_nhds (s := Ioi (0 : ℝ)))
  rw [edgeTail_zero hA] at ht
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin,
    nhdsWithin_le_nhds (s := Ioi (0 : ℝ))
      (Iio_mem_nhds (by linarith : (0 : ℝ) < 2 * A))] with y hy hy2
  rw [actual_correlation_edge_polynomial hA hy.le hy2.le,
    edgeCorrelationPolynomial_factor]
  exact (mul_div_cancel_left₀ _ (pow_ne_zero _ hy.ne')).symm

/-- The polynomial extension is smooth at every real edge distance. -/
theorem edgeCorrelationPolynomial_contDiff (A : ℝ) :
    ContDiff ℝ ∞ (edgeCorrelationPolynomial A) := by
  unfold edgeCorrelationPolynomial
  fun_prop

/-- Differentiating the full double sum retains the exact finite monomial jets. -/
theorem edgeCorrelationPolynomial_jet (A : ℝ) (n : ℕ) (y : ℝ) :
    iteratedDeriv n (edgeCorrelationPolynomial A) y =
      (∑ i : Fin 7, ∑ j : Fin 7,
        edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
          ((i.val + j.val + 5).descFactorial n : ℝ) *
            y ^ (i.val + j.val + 5 - n)) / (A * sourceNormalization A) := by
  unfold edgeCorrelationPolynomial
  rw [iteratedDeriv_div_const]
  simp (disch := (intros; fun_prop)) only
    [iteratedDeriv_fun_sum, iteratedDeriv_const_mul_field, iteratedDeriv_pow]
  apply congrArg (fun z : ℝ ↦ z / (A * sourceNormalization A))
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- All jets below order five vanish at the touching edge. -/
theorem edgeCorrelationPolynomial_low_jets (A : ℝ) {n : ℕ} (hn : n < 5) :
    iteratedDeriv n (edgeCorrelationPolynomial A) 0 = 0 := by
  rw [edgeCorrelationPolynomial_jet]
  have hpos (i j : Fin 7) : i.val + j.val + 5 - n ≠ 0 := by omega
  simp [hpos]

/-- The first nonzero interior jet has the exact positive coefficient from the source note. -/
theorem edgeCorrelationPolynomial_fifth_jet {A : ℝ} (hA : 0 < A) :
    iteratedDeriv 5 (edgeCorrelationPolynomial A) 0 =
      147456 / (A ^ 9 * sourceNormalization A) := by
  rw [edgeCorrelationPolynomial_jet]
  norm_num [Fin.sum_univ_succ, Fin.succ, overlapWeight, edgeCoefficient,
    Nat.descFactorial]
  field_simp [hA.ne']
  ring

set_option maxHeartbeats 1000000 in
-- The fixed 49-term factorial sum needs extra normalization steps.
/-- The sixth-order jet records the next signed term, rather than dropping it. -/
theorem edgeCorrelationPolynomial_sixth_jet {A : ℝ} (hA : 0 < A) :
    iteratedDeriv 6 (edgeCorrelationPolynomial A) 0 =
      -2949120 / (A ^ 10 * sourceNormalization A) := by
  rw [edgeCorrelationPolynomial_jet]
  norm_num [Fin.sum_univ_succ, Fin.succ, overlapWeight, edgeCoefficient,
    Nat.descFactorial]
  field_simp [hA.ne']
  ring

/-- The actual inward edge coordinate has the same one-sided fifth jet as the exact polynomial. -/
theorem actual_inward_fifth_jet {A : ℝ} (hA : 0 < A) :
    iteratedDerivWithin 5
        (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y))
        (Icc 0 (2 * A)) 0 = 147456 / (A ^ 9 * sourceNormalization A) := by
  have he : EqOn (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y))
      (edgeCorrelationPolynomial A) (Icc 0 (2 * A)) :=
    fun _ hy ↦ actual_correlation_edge_polynomial hA hy.1 hy.2
  have hp : ContDiffAt ℝ 5 (edgeCorrelationPolynomial A) 0 := by
    unfold edgeCorrelationPolynomial
    fun_prop
  rw [iteratedDerivWithin_congr he (show (0 : ℝ) ∈ Icc 0 (2 * A) by
    constructor <;> linarith),
    iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : 0 < 2 * A))
      hp
      (show (0 : ℝ) ∈ Icc 0 (2 * A) by constructor <;> linarith),
    edgeCorrelationPolynomial_fifth_jet hA]

/-- Outside the touching edge the actual inward coordinate has every positive-order jet zero. -/
theorem actual_outward_fifth_jet {A : ℝ} (hA : 0 < A) :
    iteratedDerivWithin 5
        (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y))
        (Iic 0) 0 = 0 := by
  have he : EqOn (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y))
      (fun _ ↦ 0) (Iic 0) := by
    intro y hy
    change y ≤ 0 at hy
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    exact (by linarith : 2 * A ≤ 2 * A - y).trans (le_abs_self _)
  rw [iteratedDerivWithin_congr he (show (0 : ℝ) ∈ Iic 0 by simp)]
  simp

/-- The two one-sided fifth jets rule out C⁵ at the actual upper correlation seam. -/
theorem actual_correlation_not_contDiffAt_five_upper {A : ℝ} (hA : 0 < A) :
    ¬ ContDiffAt ℝ 5 (sourceCorrelation explicitSecondDerivative A) (2 * A) := by
  intro hc
  have hc' : ContDiffAt ℝ 5 (sourceCorrelation explicitSecondDerivative A)
      (2 * A - (0 : ℝ)) := by simpa using hc
  have hi : ContDiffAt ℝ 5 (fun y : ℝ ↦ 2 * A - y) 0 := by fun_prop
  have hg : ContDiffAt ℝ 5
      (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y)) 0 := by
    exact hc'.comp (x := (0 : ℝ)) hi
  have hi := actual_inward_fifth_jet hA
  have ho := actual_outward_fifth_jet hA
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : 0 < 2 * A))
    hg (show (0 : ℝ) ∈ Icc 0 (2 * A) by constructor <;> linarith)] at hi
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Iic (0 : ℝ))
    hg (show (0 : ℝ) ∈ Iic 0 by simp)] at ho
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hp : 0 < 147456 / (A ^ 9 * sourceNormalization A) := by positivity
  linarith

/-- Global C⁵ is consequently impossible for this unchanged positive-scale source correlation. -/
theorem actual_correlation_not_contDiff_five {A : ℝ} (hA : 0 < A) :
    ¬ ContDiff ℝ 5 (sourceCorrelation explicitSecondDerivative A) :=
  fun hc ↦ actual_correlation_not_contDiffAt_five_upper hA hc.contDiffAt

/-- The literal source correlation has the sharp global regularity C⁴ and fails C⁵. -/
theorem actual_correlation_sharp_regularity {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) ∧
      ¬ ContDiff ℝ 5 (sourceCorrelation explicitSecondDerivative A) :=
  ⟨BranchCorrelationHigher.sourceCorrelation_contDiff_four hA,
    actual_correlation_not_contDiff_five hA⟩

end FormalResearch.RiemannHypothesis.BranchCorrelationEdge
```
