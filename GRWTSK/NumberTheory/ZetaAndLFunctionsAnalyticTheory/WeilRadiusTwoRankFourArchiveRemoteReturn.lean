/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Formal assurance is tracked in grwtsk/noeaaeue docs/verification.md with
exact-source receipts. Novelty and independent analytical review remain
unassessed. The remaining numerical containment and literal high floor are
explicit joint premises of the stage consumer, not conclusions of this file.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourRemoteEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidObservedGridReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainment

/-!
# Complete source return for the radius-two 64-bit remote recipe

The consumer is the radius-two stage-one paid lower form for the actual
maintained rank-four reconstruction. The closed checked scalar inputs use
64-bit endpoints, 1024 retained boundary terms with their proved positive tail,
prime observations through mode 8192, and complete linear and derivative tail
allowances. The exact integer reconstruction maps to the maintained rational
reconstruction on a common 24-bit grid, including the retained head and pole.

`project_sound` transports those closed inputs to every projected signed first
trace, derivative trace, pole trace, leading scalar moment and physical
remainder entry. `completeRemoteEntryBounds_sound` then combines all signed
leading terms with the complete remainder and returns every entry to

`Xᵀ * completeRemoteMatrix 512 2048 8192 2 (1/8) * X`.

The negative pole in the first trace, signed mixed leading moment, and physical
only remainder are retained. No finite numerical products need be evaluated
in this symbolic proof. The six literal product returns in the imported entries
module are narrower finite comparisons, not assumptions of full matrix equality.

The calculated paid intervals use this same reconstruction together with the
actual checked 44-bit head hull and 45-bit raw residual observations. Their
source theorem includes symmetrization. The final consumer uses the existing
finite sign of the literal 144-bit intervals and exact retained-coordinate
return. It still requires entrywise outward containment of the calculated
intervals in that literal table and the independent 1/5 high floor at N=64.
Thus a genuine remote-source premise is discharged, while neither that numeric
bridge nor the floor is assumed to have been proved.

The newly computed symbolic intervals are not identified with the archived
JSON or memoized 64-bit remote endpoint table. Equality or containment requires
its own comparison. They are also not identified with the distinct 45-bit,
2048-boundary-term recipe. The construction shares the archived scalar source
proofs and existing interval lemmas; it is not a second independent analytic
proof. Entrywise remote bounds need not be nonnegative even when their exact
matrix is positive semidefinite. No old-X 2/3 residual estimate, cofinal family,
RH or Dirichlet-GRH conclusion is transported. Source adaptation and symbolic
proof assembly were AI assisted; the actual kernel/axiom evidence remains a
separate, source-bound verification facet.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourArchiveRemoteReturn

open Matrix
open RadiusTwoCandidateEntries RadiusTwoRemoteProjection RadiusTwoRemoteDyadicProducts
open RadiusTwoPaidObservationBounds
open RadiusTwoPaidLowerBounds (symmetricBounds symmetricBounds_sound)
open OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Symbolic projection of the actual closed 64-bit scalar input tables. -/
def projectedTables : ProjectedTables :=
  project 64 24 RadiusTwoRankFourRemoteEntries.integerX
    RadiusTwoRankFourRemoteEntries.inputs

/-- All projected observations enclose their actual maintained source values. -/
theorem projectedTables_sound :
    projectedTables.Sound RadiusTwoSchurPaidReconstruction.reconstruction := by
  have h := project_sound 64 24 RadiusTwoRankFourRemoteEntries.integerX
    RadiusTwoRankFourRemoteEntries.inputs_sound
  rw [RadiusTwoRankFourRemoteEntries.integerX_real] at h
  exact h

/-- Computed outward interval for every complete remote-congruence entry. -/
def remote (i j : Head) : Bounds :=
  completeRemoteEntryBounds 64 projectedTables i j

/-- The complete symbolic remote interval encloses the exact source entry. -/
theorem remote_sound (i j : Head) :
    Encloses (remote i j)
      (congruence RadiusTwoSchurPaidReconstruction.reconstruction
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j) :=
  completeRemoteEntryBounds_sound 64 projectedTables_sound i j

/-- The source-paid matrix with the actual observed raw grid and this same X. -/
def paidMatrix : Matrix Head Head ℝ :=
  splitPaidLower RadiusTwoPaidObservedGridReturn.centres
    RadiusTwoPaidObservedGridReturn.radii RadiusTwoSchurPaidReconstruction.reconstructionQ

/-- The actual head/raw observations and closed remote return give paid enclosures. -/
theorem paidBounds_source (i j : Head) :
    Encloses (paidBounds RadiusTwoPaidObservedGridReturn.head
      RadiusTwoPaidObservedGridReturn.centres RadiusTwoPaidObservedGridReturn.radii
      RadiusTwoSchurPaidReconstruction.reconstructionQ remote i j) (paidMatrix i j) :=
  RadiusTwoPaidObservedGridReturn.paidBounds_source
    RadiusTwoSchurPaidReconstruction.reconstructionQ remote remote_sound i j

/-- Symmetrized calculated paid intervals, without identifying them with a table. -/
def calculatedBounds (i j : Head) : Bounds :=
  symmetricBounds
    (paidBounds RadiusTwoPaidObservedGridReturn.head
      RadiusTwoPaidObservedGridReturn.centres RadiusTwoPaidObservedGridReturn.radii
      RadiusTwoSchurPaidReconstruction.reconstructionQ remote) i j

/-- Every calculated interval encloses the actual symmetrized paid source matrix. -/
theorem calculatedBounds_source (i j : Head) :
    Encloses (calculatedBounds i j)
      (((1 / 2 : ℝ) • (paidMatrix + paidMatrix.transpose)) i j) :=
  symmetricBounds_sound paidBounds_source i j

/-- Literal table containment and the independent high floor remain jointly needed. -/
theorem stageLower_one_of_literalContainment
    (hCover : ∀ i j,
      (RadiusTwoRankFourContainment.bounds i j).1 ≤ (calculatedBounds i j).1 ∧
      (calculatedBounds i j).2 ≤ (RadiusTwoRankFourContainment.bounds i j).2)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  exact RadiusTwoPaidObservedGridReturn.stageLower_one_of_intervalSign
    RadiusTwoSchurPaidReconstruction.reconstructionQ remote remote_sound
    RadiusTwoSchurPaidReconstruction.reconstruction_match
    RadiusTwoRankFourContainment.bounds
    (by simpa only [calculatedBounds] using hCover)
    (fun _ h v => RadiusTwoRankFourContainment.intervalSign h v) hfloor

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourArchiveRemoteReturn
