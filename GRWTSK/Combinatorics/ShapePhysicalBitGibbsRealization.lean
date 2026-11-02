/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitSharpRowVariance
import Mathlib.Tactic

/-!
# A true finite Gibbs realization of the original signed-row sampling law

The actual original endpoint-index subtype W_T, the exact signed
originalRowSum, and the positive normalized regularizedRowWeight
were previously defined. This module shows that this *same law*
is a genuine FiniteAdmissibleSampler.Sampler row: every arc is
allowed, beta=1, and its nonnegative cost is minus the logarithm of
the ACTUAL original-row sampling probability.

For ε>0, |W_T|>0, and every original-index source port j:
  c(i,j) = -log (regularizedRowWeight T ε j).
Since every weight is in (0,1], c>=0. Its actual Gibbs weight is
  exp(-c(i,j))=regularizedRowWeight T ε j,
and the partition is EXACTLY 1, yielding the same source law.
This is a mathematical realization of the chosen index sampling
probabilities, not a model of independent Möbius signs, a new
physical energy, or a small-variance arithmetic guarantee.

No inverse Gibbs cost theorem is assumed, and no original source
index, ordered Gram sign or readout defect is changed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace Folder.Research.ShapePhysicalBitGibbsRealization

open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning
open Folder.Research.ShapePhysicalBitOptimizedRowLaw
open Folder.Research.ShapePhysicalBitSharpRowVariance
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

/-- Positive normalization forces every original-index probability
to be at most one, even at a source whose signed row is zero. -/
theorem regularizedRowWeight_le_one
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    regularizedRowWeight T ε m ≤ 1 := by
  have hs := regularizedRowWeight_total_one T ε hε hcard
  have hsingle :
      regularizedRowWeight T ε m ≤
      ∑ n ∈ endpointIndex T, regularizedRowWeight T ε n :=
    Finset.single_le_sum
      (fun n hn => (regularizedRowWeight_pos T ε hε hcard n hn).le) hm
  rw [hs] at hsingle
  exact hsingle

/-- A concrete source-derived Gibbs sampler on the ORIGINAL integer
window, not on an uncorrelated surrogate sample alphabet. -/
noncomputable def rowGibbsSampler
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card) :
    Sampler (OriginalWindowIndex T) where
  allowed := fun _ _ => true
  arcCost := fun _ j => -Real.log (regularizedRowWeight T ε j.val)
  beta := 1
  beta_nonneg := by norm_num
  arcCost_nonneg := by
    intro i j
    have hp : 0 < regularizedRowWeight T ε j.val :=
      regularizedRowWeight_pos T ε hε hcard j.val j.property
    have hle : regularizedRowWeight T ε j.val ≤ 1 :=
      regularizedRowWeight_le_one T ε hε hcard j.val j.property
    exact neg_nonneg.mpr (Real.log_nonpos hp.le hle)
  outgoing := by
    intro i
    exact ⟨i, rfl⟩

/-- The true Gibbs exponential is exactly the prior strictly positive
source-informed weight, including at a zero signed row. -/
theorem rowGibbsSampler_weight
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (i j : OriginalWindowIndex T) :
    (rowGibbsSampler T ε hε hcard).weight i j =
      regularizedRowWeight T ε j.val := by
  have hp : 0 < regularizedRowWeight T ε j.val :=
    regularizedRowWeight_pos T ε hε hcard j.val j.property
  change
    Real.exp (-(1 : ℝ) * (-Real.log (regularizedRowWeight T ε j.val))) =
      regularizedRowWeight T ε j.val
  have harg : -(1 : ℝ) * (-Real.log (regularizedRowWeight T ε j.val)) =
      Real.log (regularizedRowWeight T ε j.val) := by ring
  rw [harg, Real.exp_log hp]

/-- The actual source-derived Gibbs partition equals one for every
starting index, because the parent normalized real law is unchanged. -/
theorem rowGibbsSampler_partition
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (i : OriginalWindowIndex T) :
    (rowGibbsSampler T ε hε hcard).partition i = 1 := by
  unfold Sampler.partition
  simp only [rowGibbsSampler_weight]
  calc
    (∑ j : OriginalWindowIndex T, regularizedRowWeight T ε j.val) =
      ∑ n ∈ endpointIndex T, regularizedRowWeight T ε n :=
        Finset.sum_coe_sort (endpointIndex T) (regularizedRowWeight T ε)
    _ = 1 := regularizedRowWeight_total_one T ε hε hcard

/-- Exact original-index equality of the selected Gibbs probability
row and the source-informed, normalized regularized sampling law. -/
theorem rowGibbsSampler_probability
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (i j : OriginalWindowIndex T) :
    (rowGibbsSampler T ε hε hcard).probability i j =
      regularizedRowWeight T ε j.val := by
  unfold Sampler.probability
  rw [rowGibbsSampler_weight, rowGibbsSampler_partition]
  ring

/-- The full-support hypothesis of the exact signed source-importance
return is explicitly witnessed, not imported as an unexplained axiom. -/
theorem rowGibbsSampler_fullSupport
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (origin j : OriginalWindowIndex T) :
    (rowGibbsSampler T ε hε hcard).allowed origin j = true := rfl

/-- The established original-window Gibbs wrapper is the SAME
source-derived law on every original integer, including zeros outside
the source window, preserving all integer and pair metadata. -/
theorem windowGibbsWeight_rowGibbsSampler
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (origin : OriginalWindowIndex T) (n : ℕ) :
    windowGibbsWeight T (rowGibbsSampler T ε hε hcard) origin n =
      regularizedRowWeight T ε n := by
  by_cases hn : n ∈ endpointIndex T
  · simp [windowGibbsWeight, regularizedRowWeight, hn,
      rowGibbsSampler_probability T ε hε hcard]
  · simp [windowGibbsWeight, regularizedRowWeight, hn]

/-- The actual original-source Gibbs sampler, its explicit positive
support, and the source-exact signed arithmetic return coexist with
the finite near-sharp variance accounting. The arithmetic source is
still pickupCross T PLUS its exact physical readout defect. -/
theorem actualGibbsRow_sourceAndVariance
    (T ε : ℝ) (hε : 0 < ε)
    (hcard : 0 < (endpointIndex T).card)
    (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters)
    (chart : ℝ)
    (stream : GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn.PhysicalStream) :
    let S := rowGibbsSampler T ε hε hcard
    (∀ origin j : OriginalWindowIndex T, S.allowed origin j = true) ∧
    (singleExpectation T (regularizedRowWeight T ε)
        (originalRowImportance T (regularizedRowWeight T ε)) =
      GRWTSK.RiemannHypothesis.CCC.pickupCross T) ∧
    (rowLawMismatch T (regularizedRowWeight T ε) ≤
        ε * ((endpointIndex T).card : ℝ) * originalRowAbsMass T) ∧
    (GRWTSK.RiemannHypothesis.CCC.pickupCross T =
      GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn.observedPacket
        p chart T stream +
      GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn.signedReadoutDefect
        p chart T stream) := by
  let S := rowGibbsSampler T ε hε hcard
  have hw := regularizedRowWeight_isPositiveWindowLaw T ε hε hcard
  refine ⟨?_, singleExpectation_originalRowImportance_eq_pickupCross T
    (regularizedRowWeight T ε) hw,
    regularizedRowMismatch_le T ε hε hcard, ?_⟩
  · intro origin j
    exact rowGibbsSampler_fullSupport T ε hε hcard origin j
  · exact GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn.pickupCross_eq_observed_add_defect
      p chart T stream

end Folder.Research.ShapePhysicalBitGibbsRealization
