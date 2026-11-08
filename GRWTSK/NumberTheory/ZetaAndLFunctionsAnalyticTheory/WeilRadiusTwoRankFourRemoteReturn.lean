/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@fe3fd586707c81fdd693a076c4971bea6fbe51e8.
Canonical workflow source: grwtsk/noeaaeue@
9d456d64a0137289cddc416ea78f043cf345873a.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidObservedGridReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteProjection

/-!
# Source-bound remote return for the radius-two rank-four reconstruction

The maintained rank-four stage-one consumer still asks for an outward enclosure
of the complete remote congruence

`Xᵀ * completeRemoteMatrix 512 2048 8192 2 (1/8) * X`.

This module constructs that enclosure from the existing literal radius-two
boundary and prime observations.  It uses the exact rational rank-four
reconstruction, 45-bit outward arithmetic, 2048 retained boundary terms, every
prime signal required through mode 8192, both signed leading traces, the pole
trace, the complete cubic remainder diagonal, and the existing infinite linear
and derivative tail allowances.

The proof first returns the complete boundary and prime observations to their
literal source values.  `projectedTablesFrom_sound` then transports those values
through the actual reconstruction.  `completeRemoteEntryBounds_sound` assembles
the signed leading Gram and all remainder terms and returns every entry to the
same complete remote matrix consumed by `stageLower_one_rankFour`.

This closes the remote-enclosure premise for this concrete source recipe.  It
does not prove that the resulting paid intervals lie inside the maintained
finite packet, and it does not prove
`OddLiteralWindow.HighFloor 2 (-1/2) (1/5) 64`.  Those two premises remain
jointly necessary for `OddLiteralCofinal.StageLower 1`.  A different
reconstruction, boundary truncation, observation precision, or remote recipe
requires a new source comparison and a new packet-containment proof.

The primary argument is the existing interval source return and exact matrix
congruence.  It is not independent of the imported boundary, prime, remote-tail,
or reconstruction theorems.  The hostile boundary is explicit: entrywise
outward intervals may contain signed endpoints even though the exact remote
matrix is positive semidefinite, so entrywise positivity is neither used nor
inferred.  No cofinal zeta family, character-sector sign, RH, or Dirichlet GRH
is asserted.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteReturn

open Matrix
open RadiusTwoCandidateEntries RadiusTwoRemoteProjection
open RadiusTwoRemoteScalars RadiusTwoPrimeObservations
open OddBoundarySignalBounds OddPrimeRow OddRemoteAllowanceMatrix LowSchur
open RadiusTwoPaidObservationBounds RadiusTwoPaidObservedGridReturn
open RadiusTwoPaidLowerBounds (symmetricBounds)
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Outward precision used by the maintained raw residual grid. -/
def observationBits : ℕ := 45

/-- Boundary-series depth retained before the proved positive tail allowance. -/
def boundaryTerms : ℕ := 2048

/-- Complete boundary-signal intervals for every physical trial mode. -/
def boundary (n : ℕ) : Bounds :=
  boundaryBounds observationBits n boundaryTerms

/-- Complete prime-signal intervals, including the modes used in the derivative tail. -/
def prime (n : ℕ) : Bounds :=
  primeSignalBounds observationBits n

/-- The boundary interval returns to the literal complete boundary signal. -/
theorem boundary_sound (n : ℕ) :
    Encloses (boundary n) (boundarySignal 2 n) := by
  exact boundaryBounds_sound observationBits n (K := boundaryTerms)
    (by norm_num [boundaryTerms])

/-- The prime interval returns to the literal signed prime signal. -/
theorem prime_sound (n : ℕ) :
    Encloses (prime n) (primeSignal 2 (n : ℝ)) := by
  exact primeSignalBounds_sound observationBits n

/-- All projected scalar inputs for the maintained rank-four reconstruction. -/
def projectedTables : ProjectedTables :=
  projectedTablesFrom observationBits
    RadiusTwoSchurPaidReconstruction.reconstructionQ boundary prime

/-- The projected scalar packet encloses the exact traces and remainder matrix. -/
theorem projectedTables_sound :
    projectedTables.Sound RadiusTwoSchurPaidReconstruction.reconstruction := by
  unfold projectedTables
  simpa [RadiusTwoSchurPaidReconstruction.reconstruction] using
    (projectedTablesFrom_sound observationBits
      RadiusTwoSchurPaidReconstruction.reconstructionQ
      (boundary := boundary) (prime := prime)
      (fun n _ _ => boundary_sound n)
      (fun n _ _ => prime_sound n))

/-- Concrete outward interval for the complete rank-four remote congruence. -/
def remote (i j : Head) : Bounds :=
  completeRemoteEntryBounds observationBits projectedTables i j

/-- Every concrete remote interval encloses the exact complete remote entry. -/
theorem remote_sound (i j : Head) :
    Encloses (remote i j)
      (congruence RadiusTwoSchurPaidReconstruction.reconstruction
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j) := by
  exact completeRemoteEntryBounds_sound observationBits projectedTables_sound i j

/-- The exact calculated paid interval after the source-bound remote return. -/
def calculatedBounds (i j : Head) : Bounds :=
  symmetricBounds
    (paidBounds RadiusTwoPaidObservedGridReturn.head
      RadiusTwoPaidObservedGridReturn.centres
      RadiusTwoPaidObservedGridReturn.radii
      RadiusTwoSchurPaidReconstruction.reconstructionQ remote) i j

/-- Once the calculated intervals are contained in the maintained finite packet,
only the independent literal high floor remains before the exact stage-one
return. -/
theorem stageLower_one_of_packetContainment
    (hCover : ∀ i j,
      (RadiusTwoRankFourPaidPacket.bounds i j).1 ≤ (calculatedBounds i j).1 ∧
      (calculatedBounds i j).2 ≤ (RadiusTwoRankFourPaidPacket.bounds i j).2)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  exact RadiusTwoPaidObservedGridReturn.stageLower_one_rankFour remote remote_sound
    (by simpa only [calculatedBounds] using hCover) hfloor

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteReturn
