/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitFiniteSampling
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Sharp finite total variation and an exact common-index coupling allowance

The actual real Gibbs transition row in ShapePhysicalBitFiniteSampling
is compared with the SAME uniform finite slot law. An observable confined
to [0,1] has discrepancy at most HALF the L1 row gap. This is sharper
than the parent's general |f| <= 1 estimate, and the factor 1/2 comes
from both probability laws having exact unit mass. All source indices
are retained by the parent sourceIndex : Fin N -> Nat and by its
Option-valued physical reader.

The exact common-mass identity identifies how much of the two finite
laws can be placed on identical slots. Every explicitly supplied joint
coupling with the correct marginals has diagonal mass bounded by this
quantity. The uniform-row diagonal joint law attains this bound.
The general maximal-coupling existence theorem is NOT asserted here.

Nothing in this source supplies a law of independent repeated samples,
a cusp limit, a spectral metric isometry, or cancellation for the
original ordered signed Mobius Gram packet and defect.
-/

namespace Folder.Research.ShapePhysicalBitFiniteTVCoupling

open scoped BigOperators
open Carrier
open Mathematics.Cubical
open ShapePhysicalBitTransport
open ShapePhysicalBitFiniteSampling
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.RiemannHypothesis.CCC

/-- An exact signed row difference; the existing Gibbs Sampler is the
only random law, and the finite uniform baseline is not rescaled. -/
def rowDelta {N : ℕ} (S : Sampler (Fin N)) (origin i : Fin N) : ℝ :=
  S.probability origin i - (N : ℝ)⁻¹

/-- Both finite laws have unit total mass when the slot space is nonempty.
This zero-total-mass identity is essential to the sharp TV factor. -/
theorem rowDelta_sum_zero (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    (∑ i : Fin N, rowDelta S origin i) = 0 := by
  have huniform : (∑ i : Fin N, (N : ℝ)⁻¹) = 1 := by
    simpa [uniformAverage] using (uniformAverage_one N hN origin)
  simp only [rowDelta, Finset.sum_sub_distrib]
  rw [S.probability_row_sum_one, huniform]
  ring

/-- Centering a finite observable at 1/2 cancels the exact zero-mass
row difference. It does not discard either source index or bit. -/
theorem centered_row_delta (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) (f : Fin N → ℝ) :
    (∑ i : Fin N, rowDelta S origin i * (2 * f i - 1)) =
      2 * (∑ i : Fin N, rowDelta S origin i * f i) := by
  calc
    _ = ∑ i : Fin N, (2 * (rowDelta S origin i * f i) - rowDelta S origin i) := by
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = 2 * (∑ i : Fin N, rowDelta S origin i * f i) -
          ∑ i : Fin N, rowDelta S origin i := by
      rw [Finset.sum_sub_distrib, Finset.mul_sum]
    _ = 2 * (∑ i : Fin N, rowDelta S origin i * f i) := by
      rw [rowDelta_sum_zero N hN S origin]
      ring

/-- Actual total variation for two normalized real finite laws is half
the parent's L1 gap. Its value is determined by the SAME Gibbs row. -/
def rowTotalVariation {N : ℕ} (S : Sampler (Fin N))
    (origin : Fin N) : ℝ := probabilityL1Gap S origin / 2

/-- Exact sharp TV test-function bound for any finite [0,1]-valued
observable, with no assumption of independent draws. -/
theorem sampled_sub_uniform_abs_le_TV (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) (f : Fin N → ℝ)
    (hf : ∀ i, 0 ≤ f i ∧ f i ≤ 1) :
    |sampledExpectation S origin f - uniformAverage f| ≤
      rowTotalVariation S origin := by
  have hcenterBound : ∀ i, |2 * f i - 1| ≤ (1 : ℝ) := by
    intro i
    rw [abs_le]
    obtain ⟨h0, h1⟩ := hf i
    constructor <;> linarith
  have hL1 := sampled_sub_uniform_abs_le_L1 S origin
    (fun i => 2 * f i - 1) hcenterBound
  have hcenter :
      sampledExpectation S origin (fun i => 2 * f i - 1) -
          uniformAverage (fun i => 2 * f i - 1) =
        2 * (sampledExpectation S origin f - uniformAverage f) := by
    calc
      _ = ∑ i : Fin N, rowDelta S origin i * (2 * f i - 1) := by
        simpa [rowDelta] using sampled_sub_uniform_eq_sum S origin
          (fun i => 2 * f i - 1)
      _ = 2 * (∑ i : Fin N, rowDelta S origin i * f i) :=
        centered_row_delta N hN S origin f
      _ = 2 * (sampledExpectation S origin f - uniformAverage f) := by
        rw [sampled_sub_uniform_eq_sum]
        rfl
  rw [hcenter, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hL1
  unfold rowTotalVariation
  linarith

/-- The sharp TV bound for the ACTUAL two-bit normalized physical loss.
The entire index validity predicate is still the original Option check. -/
theorem random_uniform_maskedLoss_abs_le_TV
    (N : ℕ) (hN : 0 < N) {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    |randomMaskedLoss S origin p X Y sourceIndex -
        uniformMaskedLoss p X Y sourceIndex| ≤
      rowTotalVariation S origin := by
  exact sampled_sub_uniform_abs_le_TV N hN S origin
    (fun i => maskedNormalizedLoss p X Y (sourceIndex i))
    (fun i => maskedNormalizedLoss_bounds p X Y (sourceIndex i))

/-- The unavailable-mass law also satisfies the SHARP TV bound, not
merely the general L1 estimate. Valid zero coefficients remain distinct. -/
theorem random_uniform_unavailableMass_abs_le_TV
    (N : ℕ) (hN : 0 < N) {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    |randomUnavailableMass S origin p X Y sourceIndex -
        uniformUnavailableMass p X Y sourceIndex| ≤
      rowTotalVariation S origin := by
  apply sampled_sub_uniform_abs_le_TV N hN S origin
    (fun i => unavailableIndicator p X Y (sourceIndex i))
  intro i
  unfold unavailableIndicator
  cases indexedHilbertDistanceSq p X Y (sourceIndex i) <;> simp

/-- Explicit same-slot overlap of the two existing finite laws. -/
def commonIndexMass {N : ℕ} (S : Sampler (Fin N))
    (origin : Fin N) : ℝ :=
  ∑ i : Fin N, min (S.probability origin i) (N : ℝ)⁻¹

/-- The scalar common-overlap identity, without a stochastic axiom. -/
theorem twice_min_add_abs (a b : ℝ) :
    2 * min a b + |a - b| = a + b := by
  rcases le_total a b with hab | hba
  · rw [min_eq_left hab, abs_of_nonpos (sub_nonpos.mpr hab)]
    ring
  · rw [min_eq_right hba, abs_of_nonneg (sub_nonneg.mpr hba)]
    ring

/-- Every finite normalized row decomposes exactly into common mass and
its total variation against uniform. This is a numerical coupling budget,
not an assertion that an arbitrary joint coupling has been constructed. -/
theorem commonIndexMass_add_rowTotalVariation (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    commonIndexMass S origin + rowTotalVariation S origin = 1 := by
  have huniform : (∑ i : Fin N, (N : ℝ)⁻¹) = 1 := by
    simpa [uniformAverage] using (uniformAverage_one N hN origin)
  have hsum :
      2 * commonIndexMass S origin + probabilityL1Gap S origin = 2 := by
    calc
      _ = ∑ i : Fin N,
            (2 * min (S.probability origin i) (N : ℝ)⁻¹ +
              |rowDelta S origin i|) := by
          rw [Finset.sum_add_distrib, ← Finset.mul_sum]
          rfl
      _ = ∑ i : Fin N, (S.probability origin i + (N : ℝ)⁻¹) := by
          apply Finset.sum_congr rfl
          intro i _
          exact twice_min_add_abs _ _
      _ = 2 := by
          rw [Finset.sum_add_distrib, S.probability_row_sum_one, huniform]
          ring
  unfold rowTotalVariation
  linarith

/-- The overlap is a genuine nonnegative mass bounded by one. -/
theorem commonIndexMass_bounds (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    0 ≤ commonIndexMass S origin ∧ commonIndexMass S origin ≤ 1 := by
  have hu : 0 ≤ (N : ℝ)⁻¹ := inv_nonneg.mpr (Nat.cast_nonneg N)
  constructor
  · unfold commonIndexMass
    exact Finset.sum_nonneg (fun i _ => le_min (S.probability_nonneg origin i) hu)
  · calc
      commonIndexMass S origin ≤ ∑ i : Fin N, S.probability origin i := by
        unfold commonIndexMass
        apply Finset.sum_le_sum
        intro i _
        exact min_le_left _ _
      _ = 1 := S.probability_row_sum_one origin

/-- Sharp normalization: real finite TV is in [0,1] for the actual
Gibbs and uniform probability rows. -/
theorem rowTotalVariation_bounds (N : ℕ) (hN : 0 < N)
    (S : Sampler (Fin N)) (origin : Fin N) :
    0 ≤ rowTotalVariation S origin ∧ rowTotalVariation S origin ≤ 1 := by
  have hgap := probabilityL1Gap_nonneg S origin
  have hmass := commonIndexMass_bounds N hN S origin
  have heq := commonIndexMass_add_rowTotalVariation N hN S origin
  constructor
  · unfold rowTotalVariation
    linarith
  · linarith

/-- An explicit finite joint coupling is a nonnegative matrix with
exactly the existing Gibbs row and uniform row as its two marginals. -/
def HasRowUniformMarginals {N : ℕ} (S : Sampler (Fin N))
    (origin : Fin N) (C : Fin N → Fin N → ℝ) : Prop :=
  (∀ i j, 0 ≤ C i j) ∧
  (∀ i, (∑ j : Fin N, C i j) = S.probability origin i) ∧
  (∀ j, (∑ i : Fin N, C i j) = (N : ℝ)⁻¹)

/-- Every joint coupling with the correct marginals can agree on the
same index only up to the actual overlap mass. No independence assumed. -/
theorem diagonal_coupling_le_commonIndexMass
    {N : ℕ} (S : Sampler (Fin N)) (origin : Fin N)
    (C : Fin N → Fin N → ℝ)
    (hC : HasRowUniformMarginals S origin C) :
    (∑ i : Fin N, C i i) ≤ commonIndexMass S origin := by
  rcases hC with ⟨hpos, hrow, hcol⟩
  unfold commonIndexMass
  apply Finset.sum_le_sum
  intro i _
  apply le_min
  · calc
      C i i ≤ ∑ j : Fin N, C i j :=
        Finset.single_le_sum (fun j _ => hpos i j) (Finset.mem_univ i)
      _ = S.probability origin i := hrow i
  · calc
      C i i ≤ ∑ j : Fin N, C j i :=
        Finset.single_le_sum (fun j _ => hpos j i) (Finset.mem_univ i)
      _ = (N : ℝ)⁻¹ := hcol i

/-- The uniform sampler admits the diagonal (same-index) coupling.
It retains every slot and is exactly normalized; it is not an assumed
independence law and has no input from the Möbius signs. -/
def uniformDiagonalCoupling (N : ℕ) (i j : Fin N) : ℝ :=
  if i = j then (N : ℝ)⁻¹ else 0

theorem uniformDiagonalCoupling_hasMarginals (N : ℕ) (hN : 0 < N)
    (origin : Fin N) :
    HasRowUniformMarginals (uniformSampler N hN) origin
      (uniformDiagonalCoupling N) := by
  constructor
  · intro i j
    simp only [uniformDiagonalCoupling]
    split_ifs
    · exact inv_nonneg.mpr (Nat.cast_nonneg N)
    · exact le_refl 0
  constructor
  · intro i
    simp [uniformDiagonalCoupling, uniformSampler_probability]
  · intro j
    simp [uniformDiagonalCoupling]

/-- The diagonal uniform coupling saturates the common-index allowance.
The source is an *exact* finite law, not an asymptotic random limit. -/
theorem uniformDiagonalCoupling_agreement
    (N : ℕ) (hN : 0 < N) (origin : Fin N) :
    (∑ i : Fin N, uniformDiagonalCoupling N i i) =
      commonIndexMass (uniformSampler N hN) origin := by
  simp [commonIndexMass, uniformDiagonalCoupling,
    uniformSampler_probability]

/-- The sharp finite sampling law is returned to the ACTUAL ordered
signed arithmetic source with every physical readout defect retained.
Neither this comparison nor the overlap identity bounds pickupCross. -/
theorem finiteTV_comparison_with_original_signed_return
    (N : ℕ) (hN : 0 < N) {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (chart T : ℝ) (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    (|randomMaskedLoss S origin p X Y sourceIndex -
          uniformMaskedLoss p X Y sourceIndex| ≤ rowTotalVariation S origin) ∧
      (|randomUnavailableMass S origin p X Y sourceIndex -
          uniformUnavailableMass p X Y sourceIndex| ≤ rowTotalVariation S origin) ∧
      (pickupCross T = packet p chart T X + defect p chart T X) := by
  exact ⟨random_uniform_maskedLoss_abs_le_TV N hN S origin p X Y sourceIndex,
    random_uniform_unavailableMass_abs_le_TV N hN S origin p X Y sourceIndex,
    pickupCross_eq_packet_add_defect p chart T X⟩

/-- The exact uniform Gibbs row has zero discrepancy budget. -/
theorem rowTotalVariation_uniformSampler
    (N : ℕ) (hN : 0 < N) (origin : Fin N) :
    rowTotalVariation (uniformSampler N hN) origin = 0 := by
  simp [rowTotalVariation, probabilityL1Gap_uniformSampler]

end Folder.Research.ShapePhysicalBitFiniteTVCoupling
