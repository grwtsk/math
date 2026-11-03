/- Copyright (c) 2026 grwtsk contributors. MIT.
Source proof candidate: compilation NOT_RUN, kernel NOT_RUN,
expected types NOT_RUN, transitive axiom audit NOT_RUN.
Upstream GRWTSK/Mathlib attribution and licenses retained.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitFiniteTVCoupling
import GRWTSK.Geometry.SphereFourMobiusTorusPorts
import Mathlib.Tactic

/-!
# S4 original-index port to actual two-polarization physical bit reader

The source-port SphereFour is NOT identified with the integer Hilbert
numerator sphere of a two-bit record. The rendered torus is a VIEW,
not an invertible image of the whole S4. Physical bits are read at
the SourcePort original integer index, carrying Option.none and
incorrectly indexed records without converting them to valid μ=0.
Finite Gibbs-versus-uniform laws likewise use these original indices.
Neither modal energy nor geometric reversibility implies arithmetic
cancellation, an independent sampling law, or a random cusp limit.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.SphereFourPhysicalBitPortBridge

open Carrier
open Mathematics.Cubical
open Folder.Research.ShapeChangingBundle
open Folder.Research.ShapePhysicalBitTransport
open Folder.Research.ShapePhysicalBitHilbertComparator
open Folder.Research.ShapePhysicalBitFiniteSampling
open Folder.Research.ShapePhysicalBitFiniteTVCoupling
open GRWTSK.Geometry.SphereFourMobiusTorusPorts
open GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- Query the original integer-tagged physical stream, not the
projected sphere coordinates. Missing and bad-index records survive. -/
def indexedBitsAtPort (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) : Option (ℕ × StableBitfield 2) :=
  indexedBits p X port.sourceIndex

theorem indexedBitsAtPort_viewRoundtrip (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) :
    indexedBitsAtPort p X (lowerPort (liftPort port)) =
      indexedBitsAtPort p X port := by
  rfl

theorem indexedBitsAtPort_shellLift (p : Parameters)
    (base : GridShape) (k : ℕ) {level width m : ℕ}
    (P : ShapeStepPayload base k level)
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) :
    indexedBitsAtPort p (lift base k P X) port =
      indexedBitsAtPort p X port :=
  indexedBits_lift p base k P X port.sourceIndex

theorem indexedBitsAtPort_shift (p : Parameters) (s : ℝ)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) :
    indexedBitsAtPort p (shift s X) port =
      indexedBitsAtPort p X port :=
  indexedBits_shift p s X port.sourceIndex

theorem indexedBitsAtPort_advance (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (ν h : ℝ) (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (port : SourcePort m) :
    indexedBitsAtPort p X (advanceSource ν h angle port) =
      indexedBitsAtPort p X port := by
  rfl

/-- Distinguish missing observations from valid zero coefficients. -/
theorem indexedBitsAtPort_missing (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m)
    (h : X.stream.sample port.sourceIndex = none) :
    indexedBitsAtPort p X port = none :=
  indexedBits_missing p X port.sourceIndex h

/-- The separate finite Hilbert sphere numerator retains the exact
integer tag. It does not recover or replace the original S4 point. -/
def indexedNumeratorAtPort (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) :
    Option (ℕ × ((Fin 2 → ℤ) × ℤ)) :=
  (indexedBitsAtPort p X port).map
    (fun nb => (nb.1, sphereNumerator nb.2))

theorem indexedNumeratorAtPort_of_record (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (port : SourcePort m) (n : ℕ) (b : StableBitfield 2)
    (h : indexedBitsAtPort p X port = some (n, b)) :
    indexedNumeratorAtPort p X port =
      some (n, sphereNumerator b) := by
  simp [indexedNumeratorAtPort, h]

/-- The separately established finite-mode energy step retains the
same source index, but gives no bound on the signed Möbius Gram. -/
theorem advance_energy_and_bits (p : Parameters)
    {base : GridShape} {k level width m : ℕ}
    (X : ObservedShapeState base k level width)
    (ν h : ℝ) (hν : 0 ≤ ν) (hh : 0 ≤ h)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (port : SourcePort m) :
    (modalEnergy (advanceSource ν h angle port).modes ≤
        modalEnergy port.modes) ∧
    (indexedBitsAtPort p X (advanceSource ν h angle port) =
      indexedBitsAtPort p X port) :=
  ⟨advanceSource_energy_le ν h angle port hν hh,
   indexedBitsAtPort_advance p X ν h angle port⟩

def sampledPortLoss
    {N m : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (ports : Fin N → SourcePort m) : ℝ :=
  randomMaskedLoss S origin p X Y (fun i => (ports i).sourceIndex)

def uniformPortLoss
    {N m : ℕ} {base : GridShape} {k level width : ℕ}
    (p : Parameters) (X Y : ObservedShapeState base k level width)
    (ports : Fin N → SourcePort m) : ℝ :=
  uniformMaskedLoss p X Y (fun i => (ports i).sourceIndex)

/-- Finite source-port sampling uses the actual two-bit masked loss;
the TV bound does not control the signed source or its defect. -/
theorem sampledPort_vs_uniform_abs_le_TV
    (N : ℕ) (hN : 0 < N) {m : ℕ}
    {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (ports : Fin N → SourcePort m) :
    |sampledPortLoss S origin p X Y ports -
       uniformPortLoss p X Y ports| ≤ rowTotalVariation S origin :=
  random_uniform_maskedLoss_abs_le_TV N hN S origin p X Y
    (fun i => (ports i).sourceIndex)

/-- Source-port finite-mode evolution changes no original index. -/
theorem sampledPortLoss_advance
    {N m : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (ports : Fin N → SourcePort m) (ν h : ℝ)
    (angle : (Fin m → ℝ × ℝ) → Fin m → ℝ) :
    sampledPortLoss S origin p X Y
        (fun i => advanceSource ν h angle (ports i)) =
      sampledPortLoss S origin p X Y ports := by
  rfl

end GRWTSK.Geometry.SphereFourPhysicalBitPortBridge
