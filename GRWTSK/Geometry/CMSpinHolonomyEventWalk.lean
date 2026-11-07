/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import GRWTSK.Geometry.CMActualChernStraightEdgeReturn
import GRWTSK.Geometry.CMActualPeriodCoverCurvature
import Mathlib.Tactic

/-!
# Source-exact CM period links on chronological spin/event walks

This consumes the ACTUAL ring-of-integers CM lattice source, with the
existing complete parity/nonunit residue-sector type. A site per sector
is an explicit argument; no map from integer Möbius source indices to
such sites has been silently manufactured.

The event carrier is the original source/target/arrow-tagged TotalEdge.
The ordinary source link equals the existing source straight-edge Chern
JET transport on every tagged event. On a valid closed event trace, arbitrary
Boolean vertex spins preserve that exact complex link product. Odd original
integer period area frustrates EVERY spin configuration on a triangle.

A compatible Boolean parity representation is separately typed below. It
must be supplied before a negative source loop may be interpreted as a
sheet-switch in a Z/2 event lift. No Chern descent, physical detector,
Möbius growth bound, spectral gap, RH or Dirichlet GRH is inferred.

This compares elementary loop/gauge algebra with the original CM source.
It does not claim independence from the imported period/holonomy lemmas.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMSpinHolonomyEventWalk

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernStraightEdgeReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- One tagged arrow between two selected original residue sectors.
The arrow is retained, even when the link weight depends only on endpoints. -/
local instance residueQuiver (d : ℕ) : Quiver (Sector d) :=
  ⟨fun _ _ => PUnit⟩

/-- All actual original residue-sector links, including nonunit sites. -/
def sourceEdge (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (e : Event (Sector d)) : ℂ :=
  (actualPeriodResidueLinks E epsilon d sites).transport e.1 e.2.1

/-- Straight-edge source Chern-JET transport, not a descended connection. -/
def straightEdge (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (e : Event (Sector d)) : ℂ :=
  actualPeriodStraightTransport E epsilon (sites e.1) (sites e.2.1)

/-- The original CM actual-link theorem discharges EVERY event comparison;
no random or independently selected link matrix substitutes for the source. -/
theorem sourceEdge_eq_straightEdge
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (e : Event (Sector d)) :
    sourceEdge E epsilon d sites e = straightEdge E epsilon d sites e := by
  exact (straightTransport_eq_actualResidueLink
    E epsilon d sites e.1 e.2.1).symm

theorem sourceWalk_eq_straightWalk
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (events : List (Event (Sector d))) :
    walkWeight (sourceEdge E epsilon d sites) events =
      walkWeight (straightEdge E epsilon d sites) events := by
  have h : sourceEdge E epsilon d sites =
      straightEdge E epsilon d sites := by
    funext e
    exact sourceEdge_eq_straightEdge E epsilon d sites e
  rw [h]

/-- Real Boolean spins live inside the SAME complex source sector here,
and cancel exactly on a typed, endpoint-valid closed original event walk. -/
theorem sourceClosedWalk_spin_invariant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (σ : Sector d → Bool)
    (root : Sector d) (events : List (Event (Sector d)))
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root) :
    walkWeight (spinGaugedEdge (sourceEdge E epsilon d sites) σ) events =
      walkWeight (sourceEdge E epsilon d sites) events := by
  exact closed_walk_spin_gauge_invariant
    (sourceEdge E epsilon d sites) σ root events hvalid hclosed

/-- Original CM links are gauge-conjugated only by Ising endpoint signs. -/
def spinLink (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (σ : Sector d → Bool) (i j : Sector d) : ℂ :=
  isingSign (R := ℂ) σ i *
    (actualPeriodResidueLinks E epsilon d sites).transport i j *
      isingSign (R := ℂ) σ j

theorem spinTriangle_eq_sourceHolonomy
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (σ : Sector d → Bool) (i j k : Sector d) :
    spinLink E epsilon d sites σ i j *
      spinLink E epsilon d sites σ j k *
        spinLink E epsilon d sites σ k i =
      triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k := by
  have hi := isingSign_sq (R := ℂ) σ i
  have hj := isingSign_sq (R := ℂ) σ j
  have hk := isingSign_sq (R := ℂ) σ k
  unfold spinLink triangleHolonomy
  calc
    _ = (isingSign (R := ℂ) σ i * isingSign (R := ℂ) σ i) *
        (isingSign (R := ℂ) σ j * isingSign (R := ℂ) σ j) *
        (isingSign (R := ℂ) σ k * isingSign (R := ℂ) σ k) *
        ((actualPeriodResidueLinks E epsilon d sites).transport i j *
         (actualPeriodResidueLinks E epsilon d sites).transport j k *
         (actualPeriodResidueLinks E epsilon d sites).transport k i) := by ring
    _ = _ := by rw [hi, hj, hk]; ring

/-- A source-specific odd AREA, not mere nondegeneracy, forces -1 for all
spin assignments. The full integer area is used BEFORE mod-two projection. -/
theorem odd_actual_area_frustrates_spin_triangle
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (σ : Sector d → Bool) (i j k : Sector d)
    (hodd : Odd (actualIntegerPeriodFlux E epsilon
      (sites j - sites i) (sites k - sites i))) :
    spinLink E epsilon d sites σ i j *
      spinLink E epsilon d sites σ j k *
        spinLink E epsilon d sites σ k i = -1 := by
  rw [spinTriangle_eq_sourceHolonomy,
      actualPeriodResidueLinks_relative_area, hodd.neg_one_zpow]

/-- In particular, the three original event links cannot all be satisfied
by any spin configuration when their actual source area is odd. -/
theorem odd_actual_area_not_all_spin_links_one
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (σ : Sector d → Bool) (i j k : Sector d)
    (hodd : Odd (actualIntegerPeriodFlux E epsilon
      (sites j - sites i) (sites k - sites i))) :
    ¬ (spinLink E epsilon d sites σ i j = 1 ∧
       spinLink E epsilon d sites σ j k = 1 ∧
       spinLink E epsilon d sites σ k i = 1) := by
  intro h
  rcases h with ⟨hij, hjk, hki⟩
  have hneg := odd_actual_area_frustrates_spin_triangle
    E epsilon d sites σ i j k hodd
  rw [hij, hjk, hki] at hneg
  norm_num at hneg

/-- Exact comparison data for a two-sheet REALIZATION of the original
complex period links; this is an explicit separate mathematical input.
The original integral period flux does yield +/-1, but a fully typed
choice of its bit parity is not declared proved by this record. -/
def BitRealizesSource
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (phase : Event (Sector d) → Bool) : Prop :=
  ∀ e, bitSign ℂ (phase e) = sourceEdge E epsilon d sites e

theorem negative_source_walk_changes_sheet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (phase : Event (Sector d) → Bool)
    (hmatch : BitRealizesSource E epsilon d sites phase)
    (events : List (Event (Sector d)))
    (hnegative : walkWeight (sourceEdge E epsilon d sites) events = -1) :
    sheetFinish phase false events = true := by
  have hsource :
      walkWeight (fun e => bitSign ℂ (phase e)) events =
        walkWeight (sourceEdge E epsilon d sites) events := by
    have h : (fun e => bitSign ℂ (phase e)) =
        sourceEdge E epsilon d sites := by
      funext e
      exact hmatch e
    rw [h]
  rw [walkWeight_phase, hnegative] at hsource
  have hodd : walkParity phase events = true := by
    cases hp : walkParity phase events with
    | false =>
        have hbad : (1 : ℂ) = -1 := by simpa [hp] using hsource
        norm_num at hbad
    | true => rfl
  exact odd_walk_changes_sheet phase events hodd

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMSpinHolonomyEventWalk
