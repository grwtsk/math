/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicWeightedCorrelationInterface
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicTwoPowerTower
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The established signed residue convolution, now on the ACTUAL weighted pickup

Issues #625 and #629 and merged source PRs #626 and #631 already establish
unweighted SAME-PARITY Mobius signed residue convolution and its growing
shift-affine form with residue coordinate floor(m/2)+floor(n/2) mod d².

The new consumer does NOT repeat that work. It carries the COMPLETE ORIGINAL
REAL-VALUED, TIME-DEPENDENT signed pickup source to the same square-modulus
coordinate, with four endpoint-parity sectors (00,01,10,11), all ordered
off-diagonal pairs, and its original causal response weights.

The mixed parity sectors are essential: the earlier same-parity Fourier
square-minus-diagonal is not the whole pickupCross. The new buckets preserve
both mixed channels and all composite/squareful source labels. No
absolute value, positive variance, prime-only sieve, or arbitrary shifted
coefficient is inserted before exact residue regrouping. Historical source
PRs remain separately pinned, with their own explicit verification status.

The q=d² residue axis is arithmetic. The second, independent 2^(k+1)
coefficient-precision axis is already built in DyadicTwoPowerTower: it must
not be identified with the geometric dyadic cutoff j or with the modulus d².

No ordinary Chowla, uniform growing shift estimate, spectrum-to-zero
comparison, PDE cusp result, or Riemann Hypothesis is proved here.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicWeightedResidueClasses

open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift
open GRWTSK.NumberTheory.Moebius.DyadicTwoPowerTower
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic

/-- The full ordered index product, including the original zero diagonal.
Every n in 1..2^j is kept, including squareful integers. -/
def orderedIndices (j : ℕ) : Finset (ℕ × ℕ) :=
  (indices j).product (indices j)

/-- The original two-parity classification of each endpoint. -/
def pairParity (mn : ℕ × ℕ) : ℕ × ℕ :=
  (mn.1 % 2, mn.2 % 2)

/-- The established square-modulus additive residue coordinate.
The division is NATURAL half-index division, exactly as in #625/#629. -/
def pairResidue (d : ℕ) [NeZero d] (mn : ℕ × ℕ) :
    ZMod (d * d) :=
  ((mn.1 / 2 : ℕ) : ZMod (d * d)) +
    ((mn.2 / 2 : ℕ) : ZMod (d * d))

/-- The ACTUAL causal-weighted signed bucket, at height 2^j, time u,
both source parities r and s, and additive residue a mod d². -/
def weightedResidueBucket
    (j d r s : ℕ) [NeZero d] (a : ZMod (d * d)) (u : ℝ) : ℝ :=
  ∑ mn ∈ orderedIndices j,
    if mn.1 % 2 = r ∧ mn.2 % 2 = s ∧ pairResidue d mn = a then
      contribution mn.1 mn.2 u
    else 0

/-- Summation over ALL residue classes returns the full signed
source for one ordered parity pair. No absolute values are taken. -/
theorem sum_weightedResidueBucket
    (j d r s : ℕ) [NeZero d] (u : ℝ) :
    (∑ a : ZMod (d * d), weightedResidueBucket j d r s a u) =
      ∑ mn ∈ orderedIndices j,
        if mn.1 % 2 = r ∧ mn.2 % 2 = s then
          contribution mn.1 mn.2 u else 0 := by
  classical
  unfold weightedResidueBucket
  calc
    (∑ a : ZMod (d * d),
      ∑ mn ∈ orderedIndices j,
        if mn.1 % 2 = r ∧ mn.2 % 2 = s ∧
            pairResidue d mn = a then
          contribution mn.1 mn.2 u else 0) =
        ∑ mn ∈ orderedIndices j,
          ∑ a : ZMod (d * d),
            if mn.1 % 2 = r ∧ mn.2 % 2 = s ∧
                pairResidue d mn = a then
              contribution mn.1 mn.2 u else 0 := by
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro mn _
      by_cases h : mn.1 % 2 = r ∧ mn.2 % 2 = s
      · simp [h]
      · simp [h]

/-- Every natural number has exactly one of the two endpoint parities;
we do not discard the cross-parity channels. -/
private theorem sum_two_parities (m n : ℕ) (v : ℝ) :
    (∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
      if m % 2 = r ∧ n % 2 = s then v else 0) = v := by
  classical
  have hm : m % 2 ∈ Finset.range 2 := Finset.mem_range.mpr (Nat.mod_lt _ (by omega))
  have hn : n % 2 ∈ Finset.range 2 := Finset.mem_range.mpr (Nat.mod_lt _ (by omega))
  calc
    (∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
        if m % 2 = r ∧ n % 2 = s then v else 0) =
      ∑ r ∈ Finset.range 2, if m % 2 = r then v else 0 := by
        apply Finset.sum_congr rfl
        intro r _
        by_cases hr : m % 2 = r
        · simp [hr, hn]
        · simp [hr]
    _ = v := by simp [hm]

/-- The decisive exact arithmetic interface: ALL four parity sectors
and ALL d² residue classes reconstruct the complete original
REAL-WEIGHTED, signed, ordered off-diagonal pickup source. This is not
merely the earlier unweighted same-parity Fourier object. -/
theorem crossDensity_eq_all_residueBuckets
    (j d : ℕ) [NeZero d] (u : ℝ) :
    crossDensity (dyadicTime j) u =
      ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
        ∑ a : ZMod (d * d), weightedResidueBucket j d r s a u := by
  classical
  have hsource :
      (∑ mn ∈ orderedIndices j, contribution mn.1 mn.2 u) =
        crossDensity (dyadicTime j) u := by
    rw [crossDensity_eq_ordered, dyadic_cutoff]
    simp only [orderedIndices, indices, Finset.sum_product]
    apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro n _
    by_cases h : m = n
    · simp [contribution, h]
    · simp [contribution, originalPair, h]
  have hswap :
      (∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
          ∑ mn ∈ orderedIndices j,
            if mn.1 % 2 = r ∧ mn.2 % 2 = s then
              contribution mn.1 mn.2 u else 0) =
        ∑ mn ∈ orderedIndices j,
          ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
            if mn.1 % 2 = r ∧ mn.2 % 2 = s then
              contribution mn.1 mn.2 u else 0 := by
    calc
      _ = ∑ r ∈ Finset.range 2, ∑ mn ∈ orderedIndices j,
          ∑ s ∈ Finset.range 2,
            if mn.1 % 2 = r ∧ mn.2 % 2 = s then
              contribution mn.1 mn.2 u else 0 := by
        apply Finset.sum_congr rfl
        intro r _
        rw [Finset.sum_comm]
      _ = _ := by rw [Finset.sum_comm]
  calc
    crossDensity (dyadicTime j) u =
      ∑ mn ∈ orderedIndices j, contribution mn.1 mn.2 u := hsource.symm
    _ = ∑ mn ∈ orderedIndices j, ∑ r ∈ Finset.range 2,
          ∑ s ∈ Finset.range 2,
            if mn.1 % 2 = r ∧ mn.2 % 2 = s then
              contribution mn.1 mn.2 u else 0 := by
      apply Finset.sum_congr rfl
      intro mn _
      exact (sum_two_parities mn.1 mn.2
        (contribution mn.1 mn.2 u)).symm
    _ = ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
          ∑ mn ∈ orderedIndices j,
            if mn.1 % 2 = r ∧ mn.2 % 2 = s then
              contribution mn.1 mn.2 u else 0 := hswap.symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro s _
      exact (sum_weightedResidueBucket j d r s u).symm

/-- An arithmetic estimate may be supplied only AFTER each complete
signed bucket is formed. The modulus d may grow with j. -/
theorem crossDensity_le_of_residueBucket_upper
    (j d : ℕ) [NeZero d] (u : ℝ)
    (upper : ℕ → ℕ → ZMod (d * d) → ℝ)
    (hupper : ∀ r ∈ Finset.range 2, ∀ s ∈ Finset.range 2,
      ∀ a : ZMod (d * d),
        weightedResidueBucket j d r s a u ≤ upper r s a) :
    crossDensity (dyadicTime j) u ≤
      ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
        ∑ a : ZMod (d * d), upper r s a := by
  rw [crossDensity_eq_all_residueBuckets j d u]
  apply Finset.sum_le_sum
  intro r hr
  apply Finset.sum_le_sum
  intro s hs
  apply Finset.sum_le_sum
  intro a _
  exact hupper r hr s hs a

/-- Exact return to the EXISTING RH-facing signed dyadic endpoint.
All original real source weights, four parity channels, both
ordered orientations, diagonal subtraction and the complete signed
curvature correction are retained. This is a representation theorem,
NOT a subpolynomial arithmetic estimate. -/
theorem dyadicBirthSum_eq_integral_residueBuckets
    (j d : ℕ) [NeZero d] :
    dyadicBirthSum j =
      (∫ u in (0 : ℝ)..dyadicTime j,
        ∑ r ∈ Finset.range 2, ∑ s ∈ Finset.range 2,
          ∑ a : ZMod (d * d), weightedResidueBucket j d r s a u) +
            dyadicCurvature j := by
  have h := dyadicBirthSum_exact_source_reconstruction j
  calc
    dyadicBirthSum j =
      (∫ u in (0 : ℝ)..dyadicTime j,
        (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u)) +
          dyadicCurvature j := h
    _ = _ := by
      congr 1
      apply intervalIntegral.integral_congr
      intro u _
      rw [← dyadic_crossDensity_decomposition,
        crossDensity_eq_all_residueBuckets j d u]

/-- A concrete signed midpoint bucket at a higher precision level:
the original REAL value is independent of the 2-adic coefficient
projection; its coefficient is recoverable through the already
formalized muLevel at every positive precision. -/
def coefficientResidue (k m n : ℕ) : Level k :=
  muLevel k m * muLevel k n

/-- When increasing arithmetic precision, the original signed
product has compatible reductions, rather than a new source. -/
theorem reduce_coefficientResidue (k m n : ℕ) :
    reduceLevel k (coefficientResidue (k + 1) m n) =
      coefficientResidue k m n := by
  unfold coefficientResidue
  rw [map_mul, reduce_muLevel, reduce_muLevel]

end GRWTSK.NumberTheory.Moebius.DyadicWeightedResidueClasses
