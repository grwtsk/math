/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitFiniteTVCoupling
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# An explicit maximal same-index coupling for the existing Gibbs row

An actual FiniteAdmissibleSampler.Sampler row supplies p(i);
ShapePhysicalBitFiniteSampling supplies the *same* finite uniform law
u(i) = 1/N, and ShapePhysicalBitFiniteTVCoupling supplies the exact
zero-mass, overlap and total-variation identities.

Let a(i) = min (p(i)) (u(i)), r(i) = p(i)-a(i),
t(i) = u(i)-a(i), and δ = (∑ |p-u|)/2. The constructed
coupling is

  C(i,j) = 1_{i=j} a(i) + r(i) t(j)/δ.

When δ = 0 all residuals vanish and Lean's zero-division value is
zero. When δ > 0, residual supports are disjoint on the diagonal,
their total masses both equal δ, and this *one* formula has the exact
given Gibbs and uniform marginals. Its diagonal mass is ∑ a = 1-δ.
No arbitrary probabilistic independence, empirical limit, or
arithmetic independence of Möbius coefficients is postulated.

The source labels are unchanged because the coupling lives on the
same original Fin N slots used by ShapePhysicalBitFiniteSampling.
-/

namespace Folder.Research.ShapePhysicalBitMaximalCoupling

open scoped BigOperators
open Folder.Research.ShapePhysicalBitFiniteSampling
open Folder.Research.ShapePhysicalBitFiniteTVCoupling
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

/-- Excess Gibbs mass above the shared same-index overlap. -/
def gibbsResidual {N : ℕ} (S : Sampler (Fin N)) (origin i : Fin N) : ℝ :=
  S.probability origin i - min (S.probability origin i) (N : ℝ)⁻¹

/-- Excess uniform mass above the same overlap. -/
def uniformResidual {N : ℕ} (S : Sampler (Fin N)) (origin i : Fin N) : ℝ :=
  (N : ℝ)⁻¹ - min (S.probability origin i) (N : ℝ)⁻¹

theorem gibbsResidual_nonneg {N : ℕ}
    (S : Sampler (Fin N)) (origin i : Fin N) :
    0 ≤ gibbsResidual S origin i := by
  unfold gibbsResidual
  exact sub_nonneg.mpr (min_le_left _ _)

theorem uniformResidual_nonneg {N : ℕ}
    (S : Sampler (Fin N)) (origin i : Fin N) :
    0 ≤ uniformResidual S origin i := by
  unfold uniformResidual
  exact sub_nonneg.mpr (min_le_right _ _)

/-- One index cannot simultaneously have positive excess in BOTH laws.
This is a real finite coupling fact, not an arithmetic sign assumption. -/
theorem residual_product_zero {N : ℕ}
    (S : Sampler (Fin N)) (origin i : Fin N) :
    gibbsResidual S origin i * uniformResidual S origin i = 0 := by
  rcases le_total (S.probability origin i) (N : ℝ)⁻¹ with h | h
  · simp [gibbsResidual, uniformResidual, min_eq_left h]
  · simp [gibbsResidual, uniformResidual, min_eq_right h]

/-- The total Gibbs excess equals the previously defined real TV gap. -/
theorem gibbsResidual_sum (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    (∑ i : Fin N, gibbsResidual S origin i) =
      rowTotalVariation S origin := by
  have hoverlap := commonIndexMass_add_rowTotalVariation N hN S origin
  calc
    (∑ i : Fin N, gibbsResidual S origin i) =
        (∑ i : Fin N, S.probability origin i) - commonIndexMass S origin := by
          simp only [gibbsResidual, Finset.sum_sub_distrib, commonIndexMass]
    _ = 1 - commonIndexMass S origin := by
          rw [S.probability_row_sum_one]
    _ = rowTotalVariation S origin := by linarith

/-- The total uniform excess equals the SAME TV gap. -/
theorem uniformResidual_sum (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    (∑ i : Fin N, uniformResidual S origin i) =
      rowTotalVariation S origin := by
  have hoverlap := commonIndexMass_add_rowTotalVariation N hN S origin
  have huniform : (∑ i : Fin N, (N : ℝ)⁻¹) = 1 := by
    simpa [uniformAverage] using uniformAverage_one N hN origin
  calc
    (∑ i : Fin N, uniformResidual S origin i) =
        (∑ i : Fin N, (N : ℝ)⁻¹) - commonIndexMass S origin := by
          simp only [uniformResidual, Finset.sum_sub_distrib, commonIndexMass]
    _ = 1 - commonIndexMass S origin := by rw [huniform]
    _ = rowTotalVariation S origin := by linarith

/-- Zero TV forces every nonnegative Gibbs residual to vanish. -/
theorem gibbsResidual_zero_of_TV_zero
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin i : Fin N) (hTV : rowTotalVariation S origin = 0) :
    gibbsResidual S origin i = 0 := by
  have hsum := gibbsResidual_sum N hN S origin
  have hle :
      gibbsResidual S origin i ≤
        ∑ j : Fin N, gibbsResidual S origin j :=
    Finset.single_le_sum
      (fun j _ => gibbsResidual_nonneg S origin j) (Finset.mem_univ i)
  rw [hsum, hTV] at hle
  exact le_antisymm hle (gibbsResidual_nonneg S origin i)

/-- Zero TV also forces every nonnegative uniform residual to vanish. -/
theorem uniformResidual_zero_of_TV_zero
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin i : Fin N) (hTV : rowTotalVariation S origin = 0) :
    uniformResidual S origin i = 0 := by
  have hsum := uniformResidual_sum N hN S origin
  have hle :
      uniformResidual S origin i ≤
        ∑ j : Fin N, uniformResidual S origin j :=
    Finset.single_le_sum
      (fun j _ => uniformResidual_nonneg S origin j) (Finset.mem_univ i)
  rw [hsum, hTV] at hle
  exact le_antisymm hle (uniformResidual_nonneg S origin i)

/-- One explicit coupling works even at total variation zero.
Zero division is safe ONLY because both residuals then vanish. -/
def maximalCouplingMatrix {N : ℕ} (S : Sampler (Fin N))
    (origin i j : Fin N) : ℝ :=
  (if i = j then min (S.probability origin i) (N : ℝ)⁻¹ else 0) +
    gibbsResidual S origin i * uniformResidual S origin j /
      rowTotalVariation S origin

/-- Every entry is genuinely nonnegative. -/
theorem maximalCouplingMatrix_nonneg {N : ℕ}
    (S : Sampler (Fin N)) (origin i j : Fin N) :
    0 ≤ maximalCouplingMatrix S origin i j := by
  have hu : 0 ≤ (N : ℝ)⁻¹ := inv_nonneg.mpr (Nat.cast_nonneg N)
  have hm : 0 ≤ min (S.probability origin i) (N : ℝ)⁻¹ :=
    le_min (S.probability_nonneg origin i) hu
  have ht := (probabilityL1Gap_nonneg S origin)
  have htv : 0 ≤ rowTotalVariation S origin := by
    unfold rowTotalVariation
    linarith
  unfold maximalCouplingMatrix
  apply add_nonneg
  · split_ifs <;> positivity
  · exact div_nonneg
      (mul_nonneg (gibbsResidual_nonneg S origin i)
        (uniformResidual_nonneg S origin j)) htv

/-- The complete Gibbs-side marginal sum, before normalization algebra. -/
theorem maximalCouplingMatrix_row_formula {N : ℕ}
    (S : Sampler (Fin N)) (origin i : Fin N) :
    (∑ j : Fin N, maximalCouplingMatrix S origin i j) =
      min (S.probability origin i) (N : ℝ)⁻¹ +
        gibbsResidual S origin i *
          (∑ j : Fin N, uniformResidual S origin j) /
            rowTotalVariation S origin := by
  unfold maximalCouplingMatrix
  rw [Finset.sum_add_distrib]
  have hdiag :
      (∑ j : Fin N,
         if i = j then min (S.probability origin i) (N : ℝ)⁻¹ else 0) =
        min (S.probability origin i) (N : ℝ)⁻¹ := by simp
  rw [hdiag, Finset.sum_div, ← Finset.mul_sum]

/-- Analogous uniform-side marginal sum; retaining both orientations
is necessary to certify the two marginals separately. -/
theorem maximalCouplingMatrix_column_formula {N : ℕ}
    (S : Sampler (Fin N)) (origin j : Fin N) :
    (∑ i : Fin N, maximalCouplingMatrix S origin i j) =
      min (S.probability origin j) (N : ℝ)⁻¹ +
        (∑ i : Fin N, gibbsResidual S origin i) *
          uniformResidual S origin j / rowTotalVariation S origin := by
  unfold maximalCouplingMatrix
  rw [Finset.sum_add_distrib]
  have hdiag :
      (∑ i : Fin N,
         if i = j then min (S.probability origin i) (N : ℝ)⁻¹ else 0) =
        min (S.probability origin j) (N : ℝ)⁻¹ := by simp
  rw [hdiag, Finset.sum_div, ← Finset.sum_mul]

/-- The constructed joint matrix has the EXACT Gibbs row as marginal. -/
theorem maximalCouplingMatrix_row
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin i : Fin N) :
    (∑ j : Fin N, maximalCouplingMatrix S origin i j) =
      S.probability origin i := by
  rw [maximalCouplingMatrix_row_formula, uniformResidual_sum N hN]
  by_cases ht : rowTotalVariation S origin = 0
  · have hr := gibbsResidual_zero_of_TV_zero N hN S origin i ht
    rw [ht]
    simp only [mul_zero, div_zero, add_zero]
    unfold gibbsResidual at hr
    linarith
  · have hcancel :
        gibbsResidual S origin i * rowTotalVariation S origin /
          rowTotalVariation S origin = gibbsResidual S origin i := by
      field_simp [ht]
    rw [hcancel]
    unfold gibbsResidual
    ring

/-- The other marginal is exactly uniform on the SAME finite slots. -/
theorem maximalCouplingMatrix_column
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin j : Fin N) :
    (∑ i : Fin N, maximalCouplingMatrix S origin i j) =
      (N : ℝ)⁻¹ := by
  rw [maximalCouplingMatrix_column_formula, gibbsResidual_sum N hN]
  by_cases ht : rowTotalVariation S origin = 0
  · have hr := uniformResidual_zero_of_TV_zero N hN S origin j ht
    rw [ht]
    simp only [zero_mul, zero_div, add_zero]
    unfold uniformResidual at hr
    linarith
  · have hcancel :
        rowTotalVariation S origin * uniformResidual S origin j /
          rowTotalVariation S origin = uniformResidual S origin j := by
      field_simp [ht]
    rw [hcancel]
    unfold uniformResidual
    ring

/-- This is an actual joint coupling of the given nonuniform Gibbs row
and the uniform finite law, not merely a numerical overlap allowance. -/
theorem maximalCouplingMatrix_hasMarginals
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin : Fin N) :
    HasRowUniformMarginals S origin (maximalCouplingMatrix S origin) := by
  refine ⟨fun i j => maximalCouplingMatrix_nonneg S origin i j, ?_, ?_⟩
  · intro i
    exact maximalCouplingMatrix_row N hN S origin i
  · intro j
    exact maximalCouplingMatrix_column N hN S origin j

/-- On a shared index the residual cross-term is exactly zero, even
when the Gibbs row is not uniform. -/
theorem maximalCouplingMatrix_diagonal {N : ℕ}
    (S : Sampler (Fin N)) (origin i : Fin N) :
    maximalCouplingMatrix S origin i i =
      min (S.probability origin i) (N : ℝ)⁻¹ := by
  simp only [maximalCouplingMatrix, if_pos rfl]
  rw [residual_product_zero]
  ring

/-- The maximal coupling attains the entire same-index overlap. -/
theorem maximalCouplingMatrix_diagonal_sum {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) :
    (∑ i : Fin N, maximalCouplingMatrix S origin i i) =
      commonIndexMass S origin := by
  simp only [maximalCouplingMatrix_diagonal, commonIndexMass]

/-- The probability of *different indices* in the constructed coupling
equals total variation, with NO independence assumption. -/
theorem maximalCouplingMatrix_mismatch_eq_TV
    (N : ℕ) (hN : 0 < N) (S : Sampler (Fin N))
    (origin : Fin N) :
    1 - (∑ i : Fin N, maximalCouplingMatrix S origin i i) =
      rowTotalVariation S origin := by
  rw [maximalCouplingMatrix_diagonal_sum]
  have h := commonIndexMass_add_rowTotalVariation N hN S origin
  linarith

/-- Optimality: every OTHER joint law with these same marginals has
no greater same-index agreement. The explicit matrix attains it. -/
theorem maximalCouplingMatrix_optimal
    {N : ℕ} (S : Sampler (Fin N)) (origin : Fin N)
    (C : Fin N → Fin N → ℝ)
    (hC : HasRowUniformMarginals S origin C) :
    (∑ i : Fin N, C i i) ≤
      ∑ i : Fin N, maximalCouplingMatrix S origin i i := by
  rw [maximalCouplingMatrix_diagonal_sum]
  exact diagonal_coupling_le_commonIndexMass S origin C hC

/-- Joint transport does not act on the original bitfields or the
original signed Möbius source; only sample-slot coupling changes. -/
theorem maximalCouplingMatrix_with_original_signed_return
    (N : ℕ) (hN : 0 < N)
    {base : Carrier.GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N)
    (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters)
    (chart T : ℝ)
    (X : Folder.Research.ShapePhysicalBitTransport.ObservedShapeState base k level width) :
    HasRowUniformMarginals S origin (maximalCouplingMatrix S origin) ∧
      (GRWTSK.RiemannHypothesis.CCC.pickupCross T =
        Folder.Research.ShapePhysicalBitTransport.packet p chart T X +
          Folder.Research.ShapePhysicalBitTransport.defect p chart T X) := by
  exact ⟨maximalCouplingMatrix_hasMarginals N hN S origin,
    Folder.Research.ShapePhysicalBitTransport.pickupCross_eq_packet_add_defect
      p chart T X⟩

end Folder.Research.ShapePhysicalBitMaximalCoupling
