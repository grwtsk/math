/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothFiniteComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib.Tactic

/-!
# Exact all-rate equivalence: original Möbius coherent energy vs fixed-bank LOW

The fixed-bank HIGH shell is uniformly bounded by source counting and
elementary geometric decay (the adjacent scalar closure). The original
signed LOW is the exact complementary finite-inventory Möbius sum
(the adjacent disjoint-shell complement closure). The complete original
HIGH+LOW cross term is preserved by the exact square identity.

Consequently all-positive-rate bounds on the ORIGINAL pickupEnergy
at dyadic time are equivalent to all-positive-rate bounds on the
actual original LOW energy. This is a NONCIRCULAR analytic reduction,
but it does not supply the hard signed LOW estimate or prove RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothAllRateEquivalence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPhysicalEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure

/-- The fixed-high polynomial-time price is subexponential, including
the entire original source signed high/low mixed term through the
previous source pointwise comparisons. -/
private theorem high_linear_price_subexponential (K : ℝ) :
    SubexponentialUpper (fun T : ℝ => 2 * K ^ 2 * T) := by
  apply subexponentialUpper_of_polynomial
    (C := 2 * K ^ 2) (q := 1) (by positivity)
  intro T hT
  rw [Real.rpow_one]
  nlinarith [sq_nonneg K]

/-- The exact high-shell and scalar normalization have SOURCE proofs,
rather than an additional high arithmetic supplier assumption.
Only the original LOW signed energy bound is independent. -/
theorem originalLowAllRate_iff_originalGrid
    (B : PrimeBand) :
    OriginalLowAllRate B ↔
      AllGridUpper pickupEnergy (Real.log 2) := by
  obtain ⟨K, hK, hhigh⟩ :=
    originalHighWave_uniform_of_global_envelope B globalHighEnvelope_proof
  have hlinear := high_linear_price_subexponential K
  constructor
  · intro hlow ε hε
    obtain ⟨C, hC, hc⟩ := hlow ε hε
    obtain ⟨D, hD, hd⟩ := hlinear ε hε
    refine ⟨2 * C + D, by positivity, ?_⟩
    intro j
    have horig := pickupEnergy_le_two_low_plus_high B j K (hhigh j)
    calc
      pickupEnergy (dyadicTime j) ≤
          2 * originalLowEnergy B j + 2 * K ^ 2 * dyadicTime j :=
        horig
      _ ≤ 2 * (C * Real.exp (ε * dyadicTime j)) +
            D * Real.exp (ε * dyadicTime j) := by
        apply add_le_add
        · exact mul_le_mul_of_nonneg_left (hc j) (by norm_num)
        · exact hd (dyadicTime j) (dyadicTime_nonnegative j)
      _ = (2 * C + D) * Real.exp (ε * dyadicTime j) := by ring
  · intro hgrid ε hε
    obtain ⟨C, hC, hc⟩ := hgrid ε hε
    obtain ⟨D, hD, hd⟩ := hlinear ε hε
    refine ⟨2 * C + D, by positivity, ?_⟩
    intro j
    have hlow := originalLowEnergy_le_two_pickup_plus_high
      B j K (hhigh j)
    calc
      originalLowEnergy B j ≤
          2 * pickupEnergy (dyadicTime j) + 2 * K ^ 2 * dyadicTime j :=
        hlow
      _ ≤ 2 * (C * Real.exp (ε * dyadicTime j)) +
            D * Real.exp (ε * dyadicTime j) := by
        apply add_le_add
        · exact mul_le_mul_of_nonneg_left (hc j) (by norm_num)
        · exact hd (dyadicTime j) (dyadicTime_nonnegative j)
      _ = (2 * C + D) * Real.exp (ε * dyadicTime j) := by ring

/-- On genuine dyadic good scales this is also equivalent to
the maintained global monotone all-rate energy target; it is not
an unconditional arithmetic theorem. -/
theorem originalLowAllRate_iff_globalEnergy
    (B : PrimeBand) :
    OriginalLowAllRate B ↔ PickupEnergySubexp := by
  rw [originalLowAllRate_iff_originalGrid]
  rw [allGridUpper_iff_subexponentialOn log_two_positive]
  exact (pickupEnergySubexp_iff_good_scales dyadic_coverage).symm

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothAllRateEquivalence
