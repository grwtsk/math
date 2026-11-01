/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapAllRate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exactly the remaining long-distance original Möbius source

The accompanying Putnam theorem pays the actual original source on
the additive band |m-n|<=floor(exp(epsilon*T/2)) with constant
32/epsilon² at every positive rate. We now isolate its EXACT
complement using the original signed pickupCross without reindexing,
dropping rough/mixed pairs, or declaring a new trace certificate.

We prove equivalence, on the SAME fixed set G of scales, between
all-positive-rate upper control of the complete original Möbius
pickupCross and all-positive-rate upper control of this dense
long-distance remainder. Thus the new source really closes the
sparse gap subproblem, but does NOT prove the long-gap supplier,
which is of the same ultimate RH strength.

No theorem in this file assumes RH as an input or concludes RH
without the separately quantified long-gap arithmetic hypothesis.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The original signed dense long-gap packet, after removing exactly
the already-paid sparse band. The difference remains SIGNED. -/
def denseLongGapSource (ε T : ℝ) : ℝ :=
  pickupCross T - endpointGapSetCross (putnamRateGapSet ε T) T

/-- The remaining arithmetic proposition on a FIXED G. Quantifiers
are the same as the original SubexponentialOn; no new automatic
good-scale selection or epsilon-dependent coverage is asserted. -/
def DenseLongGapAllRateOn (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        denseLongGapSource ε T ≤ C * Real.exp (ε * T)

/-- Completed sparse-band theorem makes the remaining dense-core
condition EXACTLY equivalent to the original RH-facing arithmetic
growth premise on the same G. It is not a proof of either premise. -/
theorem denseLongGapAllRateOn_iff_crossOn (G : Set ℝ) :
    DenseLongGapAllRateOn G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro hlong ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hlong ε hε
    have hgapC : 0 ≤ 32 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 32 / ε ^ 2, R, add_nonneg hC hgapC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hpart := hbound T hG hT
    have hgapUp :
        endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hgap
    unfold denseLongGapSource at hpart
    nlinarith
  · intro hcross ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hcross ε hε
    have hgapC : 0 ≤ 32 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 32 / ε ^ 2, R, add_nonneg hC hgapC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hgapNeg :
        -endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hgap
    have hsource := hbound T hG hT
    unfold denseLongGapSource
    nlinarith

/-- The requested RH implication is now localized to a single EXACT
surviving original source. The long-gap premise has NOT been proved. -/
theorem riemannHypothesis_of_dense_long_gap_good_scales
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hlong : DenseLongGapAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover
    ((denseLongGapAllRateOn_iff_crossOn G).mp hlong)

end GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
