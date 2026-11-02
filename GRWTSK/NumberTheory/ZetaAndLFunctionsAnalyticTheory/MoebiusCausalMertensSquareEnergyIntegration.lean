/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusBalancedEndpointRateOne
import Mathlib

/-!
# Close the original causal Möbius Mertens-square energy integration seam

This source proves, as Lean SOURCE_PROOF_CANDIDATES, the exact existing
whole-energy comparison from the original finite signed Möbius
amplitude and the already proved nonnegative original causal drops.
It does NOT assume quantitative PNT, RH, a selected good-scale set,
or a new spectral/elliptic positive substitute.

Step 1: the ORIGINAL source equality pickupEnergy =
pickupDiagonal + pickupCross equals pickupFullGram. Reindex the actual
closed inventory Icc 1 floor(exp T) as range N of k+1, and exchange
only FINITE sums with the original interval integral, using the
already-maintained positive-index response integrability lemma.
This identifies the original physical pickupEnergy with the
integral of (finitePickup N)^2, not merely a new wave model.

Step 2: the previous exact finite Abel/Young theorem bounds the
signed WHOLE response square by the positive Mertens-prefix
response-drop budget, at every u in [0,T]. Integrate using the true
continuity of the original response, commute the finite sum,
and identify the time integral as the original Gram difference
  pickupResponseGram T 1 (k+1) - pickupResponseGram T 1 (k+2).
The original endpoint, all squareful zero coefficients and
both ordered Gram directions remain.

This supplies the prior named OriginalCausalMertensSquareEnergyTarget
as a theorem candidate without any new arithmetic hypothesis.
A quantitative Mertens log-power estimate is STILL independent and
NOT formalized in Lean, and the all-positive-rate RH supplier is OPEN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction

/-- Exact ORIGINAL occurrence reindex: the complete closed interval
1..N is the image of the source's 0..N-1 j+1 indexing. No term is
deleted, and this identity includes the N=0 empty inventory. -/
private theorem sum_Icc_one_eq_range
    (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      ∑ j ∈ Finset.range N, f (j + 1) := by
  classical
  have heq :
      Finset.Icc 1 N =
        (Finset.range N).image (fun j => j + 1) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_image, Finset.mem_range]
    constructor
    · intro hn
      refine ⟨n - 1, by omega, by omega⟩
    · rintro ⟨j, hj, rfl⟩
      omega
  rw [heq, Finset.sum_image]
  intro a ha b hb hab
  omega

/-- The previous finitePickup is precisely the original CLOSED integer
Gram inventory, with the same true Möbius signs. -/
theorem finitePickup_eq_original_closed_inventory (N : ℕ) (u : ℝ) :
    finitePickup N u =
      ∑ n ∈ Finset.Icc 1 N, moebiusReal n * pickupResponse n u := by
  change
    (∑ j ∈ Finset.range N,
      moebiusReal (j + 1) * pickupResponse (j + 1) u) =
    ∑ n ∈ Finset.Icc 1 N,
      moebiusReal n * pickupResponse n u
  exact (sum_Icc_one_eq_range N
    (fun n => moebiusReal n * pickupResponse n u)).symm

/-- Genuine continuity of the signed finite SOURCE amplitude. Its
continuity is inherited only from the original causal positive-index
birth response; no smoothing parameter or substitute kernel appears. -/
theorem finitePickup_continuous (N : ℕ) :
    Continuous (finitePickup N) := by
  classical
  unfold finitePickup
  have hsum (S : Finset ℕ) :
      Continuous (fun u : ℝ =>
        ∑ j ∈ S,
          moebiusReal (j + 1) * pickupResponse (j + 1) u) := by
    induction S using Finset.induction_on with
    | empty =>
        simpa using (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
    | @insert j S hj ih =>
        have hjc :
            Continuous (fun u : ℝ =>
              moebiusReal (j + 1) * pickupResponse (j + 1) u) :=
          (pickupResponse_continuous (j + 1) (by omega)).const_mul _
        simpa only [Finset.sum_insert hj] using hjc.add ih
  exact hsum (Finset.range N)

/-- The full ORIGINAL energy, not only a selected subsource or a
separately defined finite quadratic, equals the integral of the
source-faithful finitePickup with the ACTUAL global endpoint
N=floor(exp T). The proof pays finite Fubini from the maintained
integrability theorem and the COMPLETE diagonal+cross identity. -/
theorem pickupEnergy_eq_integral_finitePickup
    (T : ℝ) (hT : 0 ≤ T) :
    pickupEnergy T =
      ∫ u in (0 : ℝ)..T,
        finitePickup ⌊Real.exp T⌋₊ u ^ 2 := by
  classical
  let N : ℕ := ⌊Real.exp T⌋₊
  let S : Finset ℕ := Finset.Icc 1 N
  have hfixed (u : ℝ) :
      finitePickup N u =
        ∑ n ∈ S, moebiusReal n * pickupResponse n u :=
    finitePickup_eq_original_closed_inventory N u
  have hInt :
      ∀ n ∈ S, ∀ m ∈ S,
      IntervalIntegrable
        (fun u : ℝ =>
          (moebiusReal n * moebiusReal m) *
            (pickupResponse n u * pickupResponse m u))
        volume 0 T := by
    intro n hn m hm
    have hnpos : 0 < n := by
      have := (Finset.mem_Icc.mp hn).1
      omega
    have hmpos : 0 < m := by
      have := (Finset.mem_Icc.mp hm).1
      omega
    exact (pickupResponse_product_intervalIntegrable
      n m hnpos hmpos T).const_mul _
  have hExpand (u : ℝ) :
      (∑ n ∈ S, moebiusReal n * pickupResponse n u) ^ 2 =
        ∑ n ∈ S, ∑ m ∈ S,
          (moebiusReal n * moebiusReal m) *
            (pickupResponse n u * pickupResponse m u) := by
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    apply Finset.sum_congr rfl
    intro m hm
    ring
  have hIntegrate :
      (∫ u in (0 : ℝ)..T, finitePickup N u ^ 2) =
        pickupFullGram T := by
    calc
      (∫ u in (0 : ℝ)..T, finitePickup N u ^ 2) =
          ∫ u in (0 : ℝ)..T,
            ∑ n ∈ S, ∑ m ∈ S,
              (moebiusReal n * moebiusReal m) *
                (pickupResponse n u * pickupResponse m u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [hfixed u, hExpand u]
      _ = ∑ n ∈ S, ∑ m ∈ S,
            ∫ u in (0 : ℝ)..T,
              (moebiusReal n * moebiusReal m) *
                (pickupResponse n u * pickupResponse m u) :=
        integrate_finite_double_sum S T _ hInt
      _ = pickupFullGram T := by
        unfold pickupFullGram pickupResponseGram
        apply Finset.sum_congr rfl
        intro n hn
        apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_const_mul]
        ring
  have henergy :
      pickupEnergy T = pickupFullGram T := by
    have hcomplete := pickup_full_gram_split T
    have hsource := pickupEnergy_eq_diagonal_add_cross hT
    linarith
  exact henergy.trans hIntegrate.symm

/-- Original finite absolute Mertens-prefix envelope, formed only
AFTER the genuine signed source has been Abel-transformed. Its
nonnegative weights are the ACTUAL causal response drops. Unlike the
coarser Cauchy majorant, this retains a sharp one-coordinate L1
arithmetic envelope before taking the physical-time square. -/
def absMertensDropWave (N : ℕ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N,
    |finiteMertensPrefix (k + 1)| * responseDrop k u

/-- The genuine absolute-prefix envelope cannot be negative, even
when individual Mertens prefixes have either sign. -/
theorem absMertensDropWave_nonneg (N : ℕ) (u : ℝ) :
    0 ≤ absMertensDropWave N u := by
  unfold absMertensDropWave
  apply Finset.sum_nonneg
  intro k hk
  exact mul_nonneg (abs_nonneg _) (responseDrop_nonneg k u)

/-- The original causal envelope is continuous at each true birth:
both source responses join at their exact zero value. -/
theorem absMertensDropWave_continuous (N : ℕ) :
    Continuous (absMertensDropWave N) := by
  classical
  have hterm (k : ℕ) :
      Continuous (fun u : ℝ =>
        |finiteMertensPrefix (k + 1)| * responseDrop k u) := by
    unfold responseDrop
    have hc1 := pickupResponse_continuous (k + 1) (by omega)
    have hc2 := pickupResponse_continuous (k + 2) (by omega)
    exact (hc1.sub hc2).const_mul _
  unfold absMertensDropWave
  have hsum (S : Finset ℕ) :
      Continuous (fun u : ℝ =>
        ∑ k ∈ S,
          |finiteMertensPrefix (k + 1)| * responseDrop k u) := by
    induction S using Finset.induction_on with
    | empty =>
        simpa using (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
    | @insert k S hk ih =>
        simpa only [Finset.sum_insert hk] using (hterm k).add ih
  exact hsum (Finset.range N)

/-- Stronger source-preserving Mertens bound: integrate the square of
the actual one-coordinate absolute-prefix Abel envelope rather than
first applying the less precise weighted Cauchy step. This has no
quantitative Mertens hypothesis or all-rate arithmetic premise. -/
theorem pickupEnergy_le_integral_absMertensDrops
    (T : ℝ) (hT : 0 ≤ T) :
    pickupEnergy T ≤
      ∫ u in (0 : ℝ)..T,
        absMertensDropWave ⌊Real.exp T⌋₊ u ^ 2 := by
  let N : ℕ := ⌊Real.exp T⌋₊
  have hIntL :
      IntervalIntegrable (fun u : ℝ => finitePickup N u ^ 2)
        volume 0 T :=
    ((finitePickup_continuous N).pow 2).intervalIntegrable 0 T
  have hIntR :
      IntervalIntegrable (fun u : ℝ => absMertensDropWave N u ^ 2)
        volume 0 T :=
    ((absMertensDropWave_continuous N).pow 2).intervalIntegrable 0 T
  have hpoint (u : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) T) :
      finitePickup N u ^ 2 ≤ absMertensDropWave N u ^ 2 := by
    have habs : |finitePickup N u| ≤ absMertensDropWave N u := by
      simpa only [absMertensDropWave] using
        (terminalPickup_abs_le_MertensDrops T u hu.2)
    have hsquared := (sq_le_sq₀
      (abs_nonneg (finitePickup N u))
      (absMertensDropWave_nonneg N u)).mpr habs
    simpa only [sq_abs] using hsquared
  have hsource := pickupEnergy_eq_integral_finitePickup T hT
  calc
    pickupEnergy T =
        ∫ u in (0 : ℝ)..T, finitePickup N u ^ 2 := hsource
    _ ≤ ∫ u in (0 : ℝ)..T,
          absMertensDropWave N u ^ 2 := by
      apply intervalIntegral.integral_mono_on hT hIntL hIntR
      intro u hu
      exact hpoint u hu

/-- ORIGINAL weighted Gram-drop integrand, with the exact Mertens
prefix, no unsigned replacement arithmetic coefficient and no
fitted boundary. -/
private def actualSquareDropTerm (k : ℕ) (u : ℝ) : ℝ :=
  finiteMertensPrefix (k + 1) ^ 2 *
    (pickupResponse 1 u * responseDrop k u)

/-- The finite weighted square-drop summand is continuous and hence
interval integrable, using both actual original positive-index causal
responses, even across their birth times. -/
private theorem squareDropTerm_continuous (k : ℕ) :
    Continuous (actualSquareDropTerm k) := by
  unfold actualSquareDropTerm responseDrop
  have h1 := pickupResponse_continuous 1 (by omega)
  have hk := pickupResponse_continuous (k + 1) (by omega)
  have hks := pickupResponse_continuous (k + 2) (by omega)
  exact (h1.mul (hk.sub hks)).const_mul _

private theorem squareDropSum_continuous (N : ℕ) :
    Continuous (fun u : ℝ =>
      ∑ k ∈ Finset.range N, actualSquareDropTerm k u) := by
  classical
  have hsum (S : Finset ℕ) :
      Continuous (fun u : ℝ =>
        ∑ k ∈ S, actualSquareDropTerm k u) := by
    induction S using Finset.induction_on with
    | empty =>
        simpa using (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
    | @insert k S hk ih =>
        simpa only [Finset.sum_insert hk] using
          (squareDropTerm_continuous k).add ih
  exact hsum (Finset.range N)

/-- Integrating the EXACT source one-coordinate Mertens-square
inequality closes the previously named full physical-time positive
energy budget. No PNT, exponent saving or RH input is assumed. -/
theorem pickupEnergy_le_MertensSquareGramDrop
    (T : ℝ) (hT : 0 ≤ T) :
    pickupEnergy T ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        finiteMertensPrefix (k + 1) ^ 2 *
          (pickupResponseGram T 1 (k + 1) -
            pickupResponseGram T 1 (k + 2)) := by
  classical
  let N : ℕ := ⌊Real.exp T⌋₊
  have hpoint (u : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) T) :
      finitePickup N u ^ 2 ≤
        ∑ k ∈ Finset.range N, actualSquareDropTerm k u := by
    have hc := finitePickup_square_le_MertensSquareDropBudget
      N u (original_terminal_response_zero T u hu.2)
    calc
      finitePickup N u ^ 2 ≤
          pickupResponse 1 u *
            (∑ k ∈ Finset.range N,
              finiteMertensPrefix (k + 1) ^ 2 * responseDrop k u) := hc
      _ = ∑ k ∈ Finset.range N, actualSquareDropTerm k u := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k hk
        unfold actualSquareDropTerm
        ring
  have hleft :
      IntervalIntegrable (fun u : ℝ => finitePickup N u ^ 2)
        volume 0 T :=
    ((finitePickup_continuous N).pow 2).intervalIntegrable 0 T
  have hright :
      IntervalIntegrable (fun u : ℝ =>
        ∑ k ∈ Finset.range N, actualSquareDropTerm k u)
        volume 0 T :=
    (squareDropSum_continuous N).intervalIntegrable 0 T
  have hterms :
      ∀ k ∈ Finset.range N,
        IntervalIntegrable (actualSquareDropTerm k) volume 0 T := by
    intro k hk
    exact (squareDropTerm_continuous k).intervalIntegrable 0 T
  have htermGram (k : ℕ) :
      (∫ u in (0 : ℝ)..T, actualSquareDropTerm k u) =
        finiteMertensPrefix (k + 1) ^ 2 *
          (pickupResponseGram T 1 (k + 1) -
            pickupResponseGram T 1 (k + 2)) := by
    have hbase1 :
        IntervalIntegrable
          (fun u : ℝ =>
            pickupResponse 1 u * pickupResponse (k + 1) u)
          volume 0 T :=
      pickupResponse_product_intervalIntegrable
        1 (k + 1) (by omega) (by omega) T
    have hbase2 :
        IntervalIntegrable
          (fun u : ℝ =>
            pickupResponse 1 u * pickupResponse (k + 2) u)
          volume 0 T :=
      pickupResponse_product_intervalIntegrable
        1 (k + 2) (by omega) (by omega) T
    calc
      (∫ u in (0 : ℝ)..T, actualSquareDropTerm k u) =
          finiteMertensPrefix (k + 1) ^ 2 *
            (∫ u in (0 : ℝ)..T,
              (pickupResponse 1 u * pickupResponse (k + 1) u -
                pickupResponse 1 u * pickupResponse (k + 2) u)) := by
        unfold actualSquareDropTerm responseDrop
        rw [intervalIntegral.integral_const_mul]
        congr 1
        apply intervalIntegral.integral_congr
        intro u hu
        ring
      _ = finiteMertensPrefix (k + 1) ^ 2 *
            (pickupResponseGram T 1 (k + 1) -
              pickupResponseGram T 1 (k + 2)) := by
        rw [intervalIntegral.integral_sub hbase1 hbase2]
        rfl
  have henergy := pickupEnergy_eq_integral_finitePickup T hT
  calc
    pickupEnergy T =
        ∫ u in (0 : ℝ)..T, finitePickup N u ^ 2 := henergy
    _ ≤ ∫ u in (0 : ℝ)..T,
          ∑ k ∈ Finset.range N, actualSquareDropTerm k u := by
      apply intervalIntegral.integral_mono_on hT hleft hright
      intro u hu
      exact hpoint u hu
    _ = ∑ k ∈ Finset.range N,
          ∫ u in (0 : ℝ)..T, actualSquareDropTerm k u :=
      intervalIntegral.integral_finsetSum hterms
    _ = ∑ k ∈ Finset.range N,
          finiteMertensPrefix (k + 1) ^ 2 *
            (pickupResponseGram T 1 (k + 1) -
              pickupResponseGram T 1 (k + 2)) := by
      apply Finset.sum_congr rfl
      intro k hk
      exact htermGram k

/-- The PREVIOUS explicit original-source energy-target proposition
is now furnished by the integration source candidate. It remains
unaccepted by Lean until pinned elaboration and kernel replay run. -/
theorem originalCausalMertensSquareEnergyTarget :
    OriginalCausalMertensSquareEnergyTarget := by
  intro T hT
  exact pickupEnergy_le_MertensSquareGramDrop T hT

/-- Every exact original response Gram drop is nonnegative at
T >= 0, a useful independent check on the source Mertens-square
majorant. -/
theorem original_GramDrop_nonneg (T : ℝ) (hT : 0 ≤ T) (k : ℕ) :
    0 ≤ pickupResponseGram T 1 (k + 1) -
      pickupResponseGram T 1 (k + 2) := by
  have hi1 :
      IntervalIntegrable
        (fun u : ℝ =>
          pickupResponse 1 u * pickupResponse (k + 1) u)
        volume 0 T :=
    pickupResponse_product_intervalIntegrable
      1 (k + 1) (by omega) (by omega) T
  have hi2 :
      IntervalIntegrable
        (fun u : ℝ =>
          pickupResponse 1 u * pickupResponse (k + 2) u)
        volume 0 T :=
    pickupResponse_product_intervalIntegrable
      1 (k + 2) (by omega) (by omega) T
  have hpoint (u : ℝ) :
      pickupResponse 1 u * pickupResponse (k + 2) u ≤
        pickupResponse 1 u * pickupResponse (k + 1) u :=
    mul_le_mul_of_nonneg_left
      (pickupResponse_antitone_positive (k + 1) (by omega) u)
      (pickupResponse_nonneg_positive 1 (by omega) u)
  have hmon :
      pickupResponseGram T 1 (k + 2) ≤
        pickupResponseGram T 1 (k + 1) := by
    unfold pickupResponseGram
    apply intervalIntegral.integral_mono_on hT hi2 hi1
    intro u hu
    exact hpoint u
  linarith

end GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration
