/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Complete squareful sector: exact all-scale signed cancellation

For the ORIGINAL Möbius source, a non-squarefree index has coefficient zero.
If an ORIGINAL matched pair touches one such index, its source kernel is zero
independently of T. When it is routed to an elliptic trace packet, the new
positive/signed elliptic term is cancelled exactly by the source-minus-elliptic
defect. The cancellation is termwise and preserves both ordered orientations.

This is a true unconditional all-positive-rate statement on a fully specified
source sector, including all prime powers and multiple selected primes.
It does NOT prove the same bound for the remaining squarefree/squarefree
source pairs, which retain the full RH-strength cancellation obligation.
-/

namespace GRWTSK.NumberTheory.Moebius.EllipticSquarefulCancellation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- The literal Möbius coefficient vanishes at every non-squarefree integer. -/
theorem moebiusReal_eq_zero_of_not_squarefree
    (m : ℕ) (hm : ¬Squarefree m) : moebiusReal m = 0 := by
  simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hm]

/-- One non-squarefree original index annihilates the entire literal signed
source pair, even if the elliptic Frobenius trace product is nonzero. -/
theorem sourceKernel_eq_zero_of_squareful
    (T : ℝ) (m n : ℕ) (h : ¬Squarefree m ∨ ¬Squarefree n) :
    sourceKernel T m n = 0 := by
  rcases h with hm | hn
  · simp [sourceKernel, moebiusReal_eq_zero_of_not_squarefree m hm]
  · simp [sourceKernel, moebiusReal_eq_zero_of_not_squarefree n hn]

/-- The COMPLETE routed trace packet on matched original ordered pairs
touching at least one squareful source index. -/
def squarefulEllipticPacket {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
        (¬Squarefree m ∨ ¬Squarefree n) then
      ellipticKernel B m n else 0

/-- The identical original ordered-pair sector of the ACTUAL signed
kernel defect; none of its negative terms is deleted or made absolute. -/
def squarefulSignedDefect {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
        (¬Squarefree m ∨ ¬Squarefree n) then
      sourceKernel T m n - ellipticKernel B m n else 0

/-- Exact noncircular all-horizon cancellation on the entire squareful
matched sector: original Möbius coefficient is zero, so source = 0.
Neither the size nor the sign of the elliptic readout is assumed. -/
theorem squareful_packet_add_signed_defect_eq_zero
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    squarefulEllipticPacket B T + squarefulSignedDefect B T = 0 := by
  classical
  unfold squarefulEllipticPacket squarefulSignedDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_eq_zero
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_eq_zero
  intro n hn
  by_cases h :
      m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
        (¬Squarefree m ∨ ¬Squarefree n)
  · have hz := sourceKernel_eq_zero_of_squareful T m n h.2.2.2
    simp only [if_pos h]
    rw [hz]
    ring
  · simp [h]

/-- The same exact zero is bounded at EVERY positive exponential rate with
constant zero. This does NOT cover the squarefree or unmatched sectors. -/
theorem squareful_combined_all_positive_rates
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) :
    ∀ ε : ℝ, 0 < ε →
      ∀ T : ℝ, 0 ≤ T →
        squarefulEllipticPacket B T + squarefulSignedDefect B T ≤
          0 * Real.exp (ε * T) := by
  intro ε hε T hT
  rw [squareful_packet_add_signed_defect_eq_zero]
  simp

/-- The complementary non-squarefree filter is the exact obstruction:
the original matched source kernel survives only if BOTH indices are
squarefree. This single identity allows the next consumer to discard
squareful rows only AFTER paying the elliptic cancellation above. -/
theorem sourceKernel_eq_zero_of_not_both_squarefree
    (T : ℝ) (m n : ℕ)
    (h : ¬(Squarefree m ∧ Squarefree n)) :
    sourceKernel T m n = 0 := by
  apply sourceKernel_eq_zero_of_squareful
  exact not_and_or.mp h


/-- The ONLY matched indices on which the original Möbius pair kernel
can survive are both squarefree. Every other matched original pair
is exactly zero, before any analytic bound is attempted. -/
def squarefreeMatchedSourcePacket {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
        Squarefree m ∧ Squarefree n then
      sourceKernel T m n else 0

/-- Exact squarefree reduction of the actual matched Möbius Type II
sector. All squareful rows vanish by genuine Möbius arithmetic,
not by a geometric phase comparison or an arbitrary sieve cutoff. -/
theorem firstTagTypeII_eq_squarefree_matched
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    firstTagTypeIICross B.support T =
      squarefreeMatchedSourcePacket B T := by
  classical
  unfold firstTagTypeIICross squarefreeMatchedSourcePacket
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hpair : m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0
  · by_cases hsq : Squarefree m ∧ Squarefree n
    · have hfull :
          m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
            Squarefree m ∧ Squarefree n :=
        ⟨hpair.1, hpair.2.1, hpair.2.2, hsq.1, hsq.2⟩
      simp only [if_pos hpair, if_pos hfull]
      rfl
    · have hz := sourceKernel_eq_zero_of_not_both_squarefree T m n hsq
      have hfull :
          ¬ (m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
            Squarefree m ∧ Squarefree n) := by
        intro hh
        exact hsq ⟨hh.2.2.2.1, hh.2.2.2.2⟩
      simp only [if_pos hpair, if_neg hfull]
      simpa only [sourceKernel] using hz
  · have hfull :
        ¬ (m ≠ n ∧ B.tag m ≠ 0 ∧ B.tag n ≠ 0 ∧
          Squarefree m ∧ Squarefree n) := by
      intro h
      exact hpair ⟨h.1, h.2.1, h.2.2.1⟩
    simp [hpair, hfull]

/-- A direct finite source return: the entire original matched elliptic
trace packet plus its complete signed defect is precisely the
squarefree/squarefree original Möbius sector. -/
theorem elliptic_add_defect_eq_squarefree_source
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    matchedEllipticPacket B T + matchedSignedDefect B T =
      squarefreeMatchedSourcePacket B T := by
  rw [← firstTagTypeII_eq_elliptic_add_defect]
  exact firstTagTypeII_eq_squarefree_matched B T

/-- After eliminating the squareful matched sector, the unchanged
complete RH source still contains ALL unmatched/rough, BOTH mixed
orientations and the genuinely difficult squarefree matched kernel. -/
theorem pickupCross_eq_rough_mixed_squarefree_matched
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (T : ℝ) :
    pickupCross T =
      firstTagRoughCross B.support T +
      firstTagMixedCross B.support T +
      squarefreeMatchedSourcePacket B T := by
  rw [pickupCross_eq_firstTag_sectors B.support T]
  rw [firstTagTypeII_eq_squarefree_matched]

end GRWTSK.NumberTheory.Moebius.EllipticSquarefulCancellation
