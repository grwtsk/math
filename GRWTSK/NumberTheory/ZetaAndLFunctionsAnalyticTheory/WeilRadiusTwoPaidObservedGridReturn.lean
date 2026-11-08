/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidObservationBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoWholeResidualCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourPaidAllRows
import RadiusTwoHeadAllModes

/-!
# Paid intervals on the checked literal radius-two observation grid

The raw source comparisons are discharged here by
`RadiusTwoWholeResidualCertificate.entries`: all physical rows 65 through 2048
and all 513 physical/pole columns use the checked signed 2^-45 observations.
The rational decoder below has exactly the same cast as the existing real
`decodeGrid`.  It places no grid restriction on the reconstruction, so a new
rank-four rational reconstruction need not equal the older 2^-32 one.

The head enclosure is also source-bound: the checked retained scalar modes
supply `RadiusTwoHeadPacket.tables_sound`, and the existing head-hull return
compares every entry with the actual 64-mode bordered source at shift -1/2.
The head table has its own 2^-44 endpoint grid.  Equality with canonical 40-bit
observations is neither assumed nor needed.

The generic paid-entry theorem now consumes these actual head and raw source
facts.  Its stage return still requires the complete remote congruence enclosure
for the chosen reconstruction, an outward numerical comparison with the chosen
finite sign packet, that packet's sign, exact head/pole retention, and the
independent literal high floor.  A final specialization supplies the maintained
rank-four reconstruction's retained-coordinate identities and the checked
canonical finite packet sign.  It still requires the new reconstruction's remote
enclosure, numerical containment in that packet, and actual high floor.  The
packet's intervals are not identified with the calculated intervals here.
In particular, only the generic `entries` theorem is used from the whole
certificate; its old reconstruction-specific norm bound is not reused.

This is an exact source/decoder comparison followed by the existing finite
signed interval argument.  The entry theorem and its decoder identity share the
same stored arrays and are not independent analytic checks.  Independent
analytical review and novelty assessment remain pending.  Formal assurance and
exact-source receipts are tracked in grwtsk/noeaaeue `docs/verification.md`.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn

open Matrix RadiusTwoCandidateEntries
open RadiusTwoObservedResidual RadiusTwoTrialProjection
open OddTrialResidualMatrix OddRemoteAllowanceMatrix OddSchurAccounting
open RadiusTwoPaidObservationBounds
open RadiusTwoPaidLowerBounds (symmetricBounds)
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Rational decoding of the existing physical/pole lane order on the 2^-45 grid. -/
def decodeGridQ (digits : Matrix ResidualRows (Fin 513) ℤ) :
    Matrix ResidualRows Trial ℚ :=
  fun i j => (digits i (RadiusTwoObservedGrid.coordinateEquiv 512 j) : ℚ) / 2^45

/-- The rational and real decoders represent exactly the same observation. -/
theorem decodeGridQ_cast (digits : Matrix ResidualRows (Fin 513) ℤ) :
    (decodeGridQ digits).map (Rat.castHom ℝ) = decodeGrid digits := by
  ext i j
  rcases j with j | ⟨⟩
  · change (((digits i (Fin.castAdd 1 j) : ℚ) / (2 : ℚ)^45 : ℚ) : ℝ) =
      (digits i (Fin.castAdd 1 j) : ℝ) / 2^45
    push_cast
    rfl
  · change (((digits i (512 : Fin 513) : ℚ) / (2 : ℚ)^45 : ℚ) : ℝ) =
      (digits i (512 : Fin 513) : ℝ) / 2^45
    push_cast
    rfl

/-- The actual checked raw observation centres. -/
def centres : Matrix ResidualRows Trial ℚ := decodeGridQ R2Rect.observedCentres

/-- The actual checked raw observation radii. -/
def radii : Matrix ResidualRows Trial ℚ := decodeGridQ R2Rect.observedRadii

/-- Every raw interval already encloses its literal source entry, including
all overlap diagonals and the signed scalar-pole column. -/
theorem raw_entries (i : ResidualRows) (j : Trial) :
    |literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j - (centres i j : ℝ)| ≤
      (radii i j : ℝ) := by
  have hC : (centres i j : ℝ) = decodeGrid R2Rect.observedCentres i j :=
    congrArg (fun A : Matrix ResidualRows Trial ℝ => A i j)
      (decodeGridQ_cast R2Rect.observedCentres)
  have hR : (radii i j : ℝ) = decodeGrid R2Rect.observedRadii i j :=
    congrArg (fun A : Matrix ResidualRows Trial ℝ => A i j)
      (decodeGridQ_cast R2Rect.observedRadii)
  rw [hC, hR]
  exact RadiusTwoWholeResidualCertificate.entries i j

/-- The checked retained scalar observations give an actual head enclosure. -/
def head : Head → Head → Bounds :=
  RadiusTwoCandidateHead.headBoundsHull RadiusTwoHeadPacket.bits RadiusTwoHeadPacket.tables

theorem head_sound (i j : Head) :
    Encloses (head i j)
      (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j) :=
  RadiusTwoCandidateHead.headBoundsHull_sound _
    (RadiusTwoHeadPacket.tables_sound _root_.checkedModes) i j

/-- Actual head/raw source facts discharge the corresponding premises of the
paid interval return for every rational reconstruction. -/
theorem paidBounds_source (X : Matrix Trial Head ℚ) (remote : Head → Head → Bounds)
    (hRemote : ∀ i j, Encloses (remote i j)
      (congruence (X.map (Rat.castHom ℝ))
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j)) (i j : Head) :
    Encloses (paidBounds head centres radii X remote i j)
      (splitPaidLower centres radii X i j) :=
  paidBounds_sound head head_sound centres radii raw_entries X remote hRemote i j

/-- The concrete observed-grid stage return retains remote, finite-packet,
reconstruction-match and high-floor obligations, but no raw/head source premise. -/
theorem stageLower_one_of_intervalSign (X : Matrix Trial Head ℚ)
    (remote : Head → Head → Bounds)
    (hRemote : ∀ i j, Encloses (remote i j)
      (congruence (X.map (Rat.castHom ℝ))
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j))
    (hmatch : ∀ (v : Head → ℝ) (i : Head),
      (X.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i)
    (packet : Head → Head → Bounds)
    (hCover : ∀ i j,
      (packet i j).1 ≤ (symmetricBounds (paidBounds head centres radii X remote) i j).1 ∧
      (symmetricBounds (paidBounds head centres radii X remote) i j).2 ≤ (packet i j).2)
    (hSign : ∀ A : Matrix Head Head ℝ, (∀ i j, Encloses (packet i j) (A i j)) →
      ∀ v : Head → ℝ, 0 ≤ quadratic A v)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 :=
  RadiusTwoPaidObservationBounds.stageLower_one_of_intervalSign head head_sound
    centres radii raw_entries X remote hRemote hmatch packet hCover hSign hfloor

/-- The maintained rank-four packet and structural retained-coordinate proof
leave only the actual new-X remote enclosure, numerical source-paid interval
containment, and independent high floor as premises. -/
theorem stageLower_one_rankFour
    (remote : Head → Head → Bounds)
    (hRemote : ∀ i j, Encloses (remote i j)
      (congruence RadiusTwoSchurPaidReconstruction.reconstruction
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j))
    (hCover : ∀ i j,
      (RadiusTwoRankFourPaidPacket.bounds i j).1 ≤
        (symmetricBounds (paidBounds head centres radii
          RadiusTwoSchurPaidReconstruction.reconstructionQ remote) i j).1 ∧
      (symmetricBounds (paidBounds head centres radii
        RadiusTwoSchurPaidReconstruction.reconstructionQ remote) i j).2 ≤
          (RadiusTwoRankFourPaidPacket.bounds i j).2)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 :=
  stageLower_one_of_intervalSign RadiusTwoSchurPaidReconstruction.reconstructionQ
    remote hRemote RadiusTwoSchurPaidReconstruction.reconstruction_match
    RadiusTwoRankFourPaidPacket.bounds hCover
    (fun _ h v => RadiusTwoRankFourPaidPacket.paidIntervalSign h v) hfloor

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn
