/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib retain their attribution and licenses. -/
import GRWTSK.RealFunctions.DyadicSlidingSuppliers
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelDyadicReadout

/-!
# Short-interval literature interfaces for the actual signed Abel readout

The finite sliding and fixed-grid quantities use the ACTUAL Mobius sequence.
The all-interval interface matches the natural-parameter specialization of
Theorem 1.4 in arXiv:2610.09567v1. It is an explicit hypothesis, NOT an axiom
or an imported proof. The finite exceptional-set consumer is motivated by
Theorem 1 of arXiv:1501.04585v4; its inclusive left endpoint costs one term.
No analytic theorem or asymptotic constant is supplied by reading a paper.
All boundary, mean, head, scale and inherited proof obligations remain.
Depends on the unintegrated four-source dyadic overlay from issue #1395.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelShortIntervalBridge
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.Analysis.FiniteSums.SlidingWindowSampling
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.Analysis.FiniteSums.DyadicContrastBudgets
open GRWTSK.Analysis.FiniteSums.DyadicSlidingSuppliers
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout

/-- Exact ordinary open-left Mobius window, not a logarithmic average. -/
def moebiusWindow (o H : ℕ) : ℝ := windowSum (positiveInput moebiusReal) o H

theorem moebiusWindow_eq_positive_sum (o H : ℕ) :
    moebiusWindow o H = ∑ a ∈ Finset.Icc 1 H, moebiusReal (o + a) := by
  rw [positive_sum_eq_range]
  simp only [moebiusWindow, windowSum, finitePrefixSum, shiftedSequence,
    positiveInput, Nat.add_assoc]

theorem positive_moebius_oneBounded (n : ℕ) : |positiveInput moebiusReal n| ≤ 1 :=
  moebiusReal_abs_le_one (n+1)

/-- Fixed-grid consequence of an actual discrete sliding moment, with no analytic estimate assumed. -/
theorem moebius_grid_sampling (c : ℝ) (o H J R : ℕ) (hR : 0 < R) (hRH : R ≤ H) :
    gridContrastEnergy (positiveInput moebiusReal) o H J ≤
      (2 * slidingEnergy (positiveInput moebiusReal) c o H ((2 * J) * H) +
        16 * (J : ℝ) * (R : ℝ)^3) / ((R : ℝ) * (H : ℝ)) :=
  gridContrastEnergy_le_sliding _ positive_moebius_oneBounded c o H J R hR hRH

/-- The global sliding-moment comparison applies to the ACTUAL combined arithmetic row.
No individual-parent moment estimate is required for this complete layer. -/
theorem actual_row_layer_sliding_comparison (j m o J R : ℕ) (c : ℝ)
    (hR : 0 < R) (hRH : R ≤ 2^m) :
    gridPairing (dyadicRow sqrtWidth j) (positiveInput moebiusReal) o (2^m) J ^ 2 ≤
      gridContrastEnergy (dyadicRow sqrtWidth j) o (2^m) J *
        ((2 * slidingEnergy (positiveInput moebiusReal) c o (2^m) ((2*J)*2^m) +
          16 * (J : ℝ) * (R : ℝ)^3) / ((R : ℝ) * ((2^m : ℕ) : ℝ))) :=
  gridPairing_sq_le_sliding _ _ positive_moebius_oneBounded c o (2^m) J R hR hRH

/-- A centered all-but-bad estimate supplies the discrete moment; every exception is paid. -/
theorem moebius_sliding_energy_of_exceptions (c : ℝ) (o H T : ℕ) (bad : Finset ℕ)
    {A : ℝ} (hA : 0 ≤ A)
    (hgood : ∀ n ∈ Finset.range T, n ∉ bad →
      |centeredWindow (positiveInput moebiusReal) c (o+n) H| ≤ A) :
    slidingEnergy (positiveInput moebiusReal) c o H T ≤
      (T : ℝ) * A^2 + (bad.card : ℝ) * ((H : ℝ) * (1 + |c|))^2 := by
  exact finite_exceptional_square_bound
    (fun n => centeredWindow (positiveInput moebiusReal) c (o+n) H) T bad hA
    (by positivity) hgood
    (fun n _ => centeredWindow_abs_le _ positive_moebius_oneBounded c (o+n) H)

/-- Complete packet consumer: the root mean and unchanged signed head are still present. -/
theorem full_packet_sliding_moment_comparison
    (select : ℕ → ℕ → Prop) (radius : ℕ → ℕ → ℕ)
    (center moment : ℕ → ℕ → ℝ) (j : ℕ)
    (hnode : ∀ r a : ℕ, 0 < r → a + 2^r ≤ 2^(j+1) → ¬ select r a →
      0 < radius r a ∧ radius r a ≤ 2^(r-1) ∧
      slidingEnergy (positiveInput moebiusReal) (center r a) a (2^(r-1)) (2^r) ≤ moment r a) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤
      2 + contrastBudget (fun r a => ¬ select r a) (nodeAllowance radius moment)
        (dyadicRow sqrtWidth j) (j+1) 0 / 6 := by
  apply full_packet_contrast_comparison
  apply contrastBound_of_sliding_moments _ radius center moment
    (positiveInput moebiusReal) positive_moebius_oneBounded (j+1) 0
  intro r a hr _ hsize hs
  exact hnode r a hr (by simpa only [Nat.zero_add] using hsize) hs

/-- The precise natural-parameter range in arXiv:2610.09567v1, Theorem 1.4.
This predicate does not assert that the associated estimate has been proved. -/
def ShortIntervalEligible (ε : ℝ) (o H : ℕ) : Prop :=
  3 ≤ o ∧ (o : ℝ)^((19/35 : ℝ) + ε) ≤ (H : ℝ) ∧ H ≤ o

def shortIntervalAllowance (ε C : ℝ) (o H : ℕ) : ℝ :=
  C * (H : ℝ) / (Real.log (o : ℝ))^((1/3 : ℝ)-ε)

/-- Explicit NOT_SUPPLIED analytic input, never a new project axiom.
The paper provides existence of an implied constant for fixed ε>0;
this local interface retains the actual chosen constant C. -/
def MoebiusShortIntervalEstimate (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 < C ∧ ∀ o H : ℕ, ShortIntervalEligible ε o H →
    |moebiusWindow o H| ≤ shortIntervalAllowance ε C o H

/-- Both children must satisfy the input range; ineligible nodes must be retained or paid elsewhere. -/
def ChildPairEligible (ε : ℝ) (r o : ℕ) : Prop :=
  ShortIntervalEligible ε o (2^(r-1)) ∧
  ShortIntervalEligible ε (o + 2^(r-1)) (2^(r-1))

/-- Direct finite transfer from the EXACT declared all-interval supplier. No witness is constructed. -/
theorem full_packet_of_short_interval_estimate
    (ε C : ℝ) (hpaper : MoebiusShortIntervalEstimate ε C)
    (select : ℕ → ℕ → Prop) (j : ℕ)
    (hscope : ∀ r a : ℕ, 0 < r → a + 2^r ≤ 2^(j+1) → ¬ select r a →
      ChildPairEligible ε r a) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel select sqrtWidth j (headPacket sqrtWidth j)| ≤
      2 + contrastBudget (fun r a => ¬ select r a)
        (fun r a => shortIntervalAllowance ε C a (2^(r-1)) +
          shortIntervalAllowance ε C (a + 2^(r-1)) (2^(r-1)))
        (dyadicRow sqrtWidth j) (j+1) 0 / 6 := by
  apply full_packet_contrast_comparison
  apply contrastBound_of_child_windows
  intro r a hr _ hsize hs
  obtain ⟨hl, hr'⟩ := hscope r a hr (by simpa only [Nat.zero_add] using hsize) hs
  exact ⟨hpaper.2.2 a (2^(r-1)) hl, hpaper.2.2 (a + 2^(r-1)) (2^(r-1)) hr'⟩

/-- The origin-zero root is never in the arXiv all-interval range. -/
theorem origin_zero_ineligible (ε : ℝ) (H : ℕ) : ¬ ShortIntervalEligible ε 0 H := by
  simp [ShortIntervalEligible]

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelShortIntervalBridge
