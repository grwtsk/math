/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion
import GRWTSK.Geometry.CMSpinHolonomyEventWalk
import GRWTSK.Geometry.CMActualPeriodCoverCurvature
import Mathlib.Algebra.Ring.Int.Parity
import Mathlib.Tactic

/-!
# Source-derived parity and genuine CM spin diffusion on event walks

The phase of each original CM O_E period edge is the parity of its ORIGINAL
integer trace-area exponent, including negative exponents. This discharges
the previously explicit BitRealizesSource proposition rather than assuming
an arbitrarily selected Bool field.

A separately given finite row-stochastic event weight inventory may now
consume these actual CM phases via SpinHolonomyFiniteDiffusion. The original
CM period sites are STILL an explicit map from every parity/nonunit residue
sector into O_E, not a canonical map from the integer-labeled Möbius source.

An odd actual relative area for three sites gives a negative source triangle,
and the resulting chronological event walk provably changes the lifted
sheet. This is the precise loop obstruction; it does not imply positivity
of an independent arithmetic operator, an analytic semigroup, a uniform
graph-size spectral gap, RH, GRH or a physical Chern connection.

All statements are finite source-proof candidates. No Lean compilation,
fresh kernel replay or transitive axiom audit has been run.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMSpinHolonomyFiniteDiffusion

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMSpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor

/-- True means an odd integer source exponent, not a selected arbitrary
sign of an external graph. -/
def integralParity (z : ℤ) : Bool := decide (Odd z)

/-- Exact Z/2 sign return even for negative integer period exponents. -/
theorem integralParity_bitSign (z : ℤ) :
    bitSign ℂ (integralParity z) = (-1 : ℂ) ^ z := by
  by_cases h : Odd z
  · simp [integralParity, h, bitSign, h.neg_one_zpow]
  · have he : Even z := Int.not_odd_iff_even.mp h
    simp [integralParity, h, bitSign, he.neg_one_zpow]

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Existing residue-sector quiver: retain the chosen source and target.
Every ordered pair has its unique tagged PUnit arrow. -/
local instance residueQuiver (d : ℕ) : Quiver (Sector d) :=
  ⟨fun _ _ => PUnit⟩

/-- The phase is constructed from the ACTUAL O_E integer period pairing. -/
def sourceParity
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (e : Event (Sector d)) : Bool :=
  integralParity (actualIntegerPeriodFlux E epsilon (sites e.1) (sites e.2.1))

/-- Discharge the outstanding source-phase interface; no new assumptions. -/
theorem sourceParity_realizes_original
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d) :
    BitRealizesSource E epsilon d sites (sourceParity E epsilon d sites) := by
  intro e
  change bitSign ℂ
    (integralParity (actualIntegerPeriodFlux E epsilon (sites e.1) (sites e.2.1))) =
      (-1 : ℂ) ^
        (actualIntegerPeriodFlux E epsilon (sites e.1) (sites e.2.1))
  exact integralParity_bitSign _

/-- Replace only the Boolean readout of a supplied finite Markov inventory.
Weights, event identities, stochasticity and any zero-weight source labels
are unchanged. No prime-to-CM-site map is introduced. -/
def withOriginalCMPhase
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) [Fintype (Sector d)] [DecidableEq (Sector d)]
    [Fintype (Event (Sector d))]
    (sites : IntegralResidueSites E d)
    (D : EventDiffusion (Sector d)) : EventDiffusion (Sector d) :=
  { D with phase := sourceParity E epsilon d sites }

/-- The modified stochastic lift has precisely the original source
phase, so its odd sheet sector is the CM-period signed diffusion. -/
theorem withOriginalCMPhase_matches
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) [Fintype (Sector d)] [DecidableEq (Sector d)]
    [Fintype (Event (Sector d))]
    (sites : IntegralResidueSites E d)
    (D : EventDiffusion (Sector d)) :
    BitRealizesSource E epsilon d sites
      (withOriginalCMPhase E epsilon d sites D).phase := by
  exact sourceParity_realizes_original E epsilon d sites

/-- Exact one-step diffusion decomposition at the actual CM parity source;
the signed sector remains signed and need not preserve probability mass. -/
theorem cm_diffusion_odd_sector
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) [Fintype (Sector d)] [DecidableEq (Sector d)]
    [Fintype (Event (Sector d))]
    (sites : IntegralResidueSites E d)
    (D : EventDiffusion (Sector d)) (f : Sector d → ℝ) :
    (withOriginalCMPhase E epsilon d sites D).liftStep
        (EventDiffusion.oddLift f) =
      EventDiffusion.oddLift
        ((withOriginalCMPhase E epsilon d sites D).signedStep f) :=
  EventDiffusion.liftStep_odd _ _

/-- Three literal chronological original sector arrows, not an unbased
unoriented or deduplicated cycle. -/
def triangleEvents (d : ℕ) (i j k : Sector d) :
    List (Event (Sector d)) :=
  [⟨i, j, PUnit.unit⟩, ⟨j, k, PUnit.unit⟩, ⟨k, i, PUnit.unit⟩]

theorem triangleEvents_valid (d : ℕ) (i j k : Sector d) :
    ValidFrom i (triangleEvents d i j k) := by
  exact ⟨rfl, rfl, rfl, trivial⟩

theorem triangleEvents_closed (d : ℕ) (i j k : Sector d) :
    finish i (triangleEvents d i j k) = i := rfl

/-- Exact ordered source triangle product with BOTH original orientation
and all three CM links. -/
theorem triangle_source_product
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d) :
    walkWeight (sourceEdge E epsilon d sites)
      (triangleEvents d i j k) =
    triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k := by
  simp [triangleEvents, walkWeight, sourceEdge, triangleHolonomy]
  ring

/-- An odd ORIGINAL CM period triangle changes the two-sheet label
at its same basepoint. No arbitrary source-phase matching remains. -/
theorem odd_original_CM_triangle_changes_sheet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d)
    (hodd : Odd (actualIntegerPeriodFlux E epsilon
      (sites j - sites i) (sites k - sites i))) :
    sheetFinish (sourceParity E epsilon d sites) false
      (triangleEvents d i j k) = true := by
  have hneg : walkWeight (sourceEdge E epsilon d sites)
      (triangleEvents d i j k) = -1 := by
    rw [triangle_source_product]
    rw [actualPeriodResidueLinks_relative_area]
    exact hodd.neg_one_zpow
  exact negative_source_walk_changes_sheet
    E epsilon d sites (sourceParity E epsilon d sites)
      (sourceParity_realizes_original E epsilon d sites)
      (triangleEvents d i j k) hneg

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMSpinHolonomyFiniteDiffusion
