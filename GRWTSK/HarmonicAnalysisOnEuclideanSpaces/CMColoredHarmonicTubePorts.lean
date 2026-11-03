/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ColoredSourcePorts
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdS5HalfLaplacianScalar
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteMoebiusResidueWaypoints
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators MatrixGroups UpperHalfPlane

/-!
# Color-indexed finite harmonic tubes with exact signed return at the boundary

This is a lossless container for source labels, signed coefficients, frequencies,
channel assignments, and file provenance. The separately stored modular element
moves exact positions of the full original integer labels. It does not act
on the original arithmetic coefficient or change the Fourier packet.

Finite Fourier modes give linear color-filtered waves and harmonic second jets.
Their sum restores the complete SIGNED packet, without positive-energy
replacement. The neutral x=0, z=0 trace restores the original coefficient sum.

These are algebraic/source-identity results. No complete 4D field recovery,
experimental measurement, zeta cancellation bound, optimal runtime, or
conformal covariance of the Fourier packet is claimed.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMColoredHarmonicTubePorts

open GRWTSK.Topology.PortFiber.Colored
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteModularLattice
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdS5HalfLaplacianScalar
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteMoebiusResidueWaypoints

/-- One exactly indexed finite symbolic waveform inventory.
Every amplitude is signed and every file source retains its symbol template. -/
structure SourceFrame (N : ℕ) where
  originalIndex : Fin N → ℕ
  frequency : Fin N → ℝ
  signedAmplitude : Fin N → ℝ
  channel : Fin N → Channel
  provenance : Fin N → SymbolTemplate

/-- A harmonic tube is a frame plus an independently chosen real modular
coordinate chart. This is a carrier, not a finite field reconstruction. -/
structure Tube (N : ℕ) where
  frame : SourceFrame N
  modularTransform : SL(2, ℤ)

/-- Exact lift, keeping every frame field as source data. -/
def lift {N : ℕ} (F : SourceFrame N) (g : SL(2, ℤ)) : Tube N :=
  ⟨F, g⟩

/-- Exact lowering from the tube to the original source frame. -/
def lower {N : ℕ} (T : Tube N) : SourceFrame N :=
  T.frame

@[simp] theorem lower_lift {N : ℕ} (F : SourceFrame N) (g : SL(2, ℤ)) :
    lower (lift F g) = F := rfl

@[simp] theorem lift_lower {N : ℕ} (T : Tube N) :
    lift (lower T) T.modularTransform = T := by
  cases T
  rfl

/-- Genuine multiplication in SL(2,Z) updates only the geometric chart. -/
def move {N : ℕ} (g : SL(2, ℤ)) (T : Tube N) : Tube N :=
  { T with modularTransform := g * T.modularTransform }

@[simp] theorem lower_move {N : ℕ} (g : SL(2, ℤ)) (T : Tube N) :
    lower (move g T) = lower T := rfl

@[simp] theorem move_one {N : ℕ} (T : Tube N) :
    move (1 : SL(2, ℤ)) T = T := by
  cases T
  simp [move]

theorem move_mul {N : ℕ} (g h : SL(2, ℤ)) (T : Tube N) :
    move g (move h T) = move (g * h) T := by
  cases T
  simp [move, mul_assoc]

/-- Geometric position of the ORIGINAL source integer, not its residue class. -/
def sourcePosition {N : ℕ} (T : Tube N) (i : Fin N) : UpperHalfPlane :=
  transformedLatticePoint T.modularTransform
    (sourceLatticeSite (T.frame.originalIndex i))

/-- The position really transforms by the specified group action. -/
theorem sourcePosition_move {N : ℕ} (g : SL(2, ℤ))
    (T : Tube N) (i : Fin N) :
    sourcePosition (move g T) i = g • sourcePosition T i := by
  exact latticeAction_comp g T.modularTransform
    (sourceLatticeSite (T.frame.originalIndex i))

/-- No position collisions when the finite inventory has distinct source
integers; residue collisions alone are irrelevant. -/
theorem sourcePosition_injective {N : ℕ} (T : Tube N)
    (hindex : Function.Injective T.frame.originalIndex) :
    Function.Injective (sourcePosition T) := by
  intro i j hij
  apply hindex
  exact transformed_source_injective T.modularTransform hij

/-- An exact color filter: a suppressed channel gets literal zero, not a
missing or recoded Möbius coefficient. The whole inventory is still stored. -/
def channelAmplitude {N : ℕ} (F : SourceFrame N)
    (c : Channel) : Fin N → ℝ :=
  fun i => if F.channel i = c then F.signedAmplitude i else 0

/-- All color filters recombine to the original SIGNED coefficient. -/
theorem channelAmplitude_partition {N : ℕ} (F : SourceFrame N)
    (i : Fin N) :
    (∑ c : Channel, channelAmplitude F c i) = F.signedAmplitude i := by
  classical
  simp [channelAmplitude]

/-- The complete signed finite harmonic packet in a four-coordinate boundary
chart. The existing benchmark mode depends only on coordinate zero. -/
def fullWave {N : ℕ} (T : Tube N) (x : BoundaryR4) (z : ℝ) : ℝ :=
  finiteFourierPacket T.frame.frequency T.frame.signedAmplitude x z

/-- One colored packet uses the SAME source frequency and signed amplitudes. -/
def channelWave {N : ℕ} (T : Tube N) (c : Channel)
    (x : BoundaryR4) (z : ℝ) : ℝ :=
  finiteFourierPacket T.frame.frequency (channelAmplitude T.frame c) x z

/-- Every color channel returns to the one original finite signed packet.
No cross term has been dropped: the equality holds BEFORE squaring. -/
theorem sum_channelWave {N : ℕ} (T : Tube N)
    (x : BoundaryR4) (z : ℝ) :
    (∑ c : Channel, channelWave T c x z) = fullWave T x z := by
  classical
  calc
    (∑ c : Channel, channelWave T c x z) =
        ∑ c : Channel, ∑ i : Fin N,
          channelAmplitude T.frame c i *
            halfSpaceFourierMode (T.frame.frequency i) x z := rfl
    _ = ∑ i : Fin N, ∑ c : Channel,
          channelAmplitude T.frame c i *
            halfSpaceFourierMode (T.frame.frequency i) x z := by
      rw [Finset.sum_comm]
    _ = ∑ i : Fin N,
          (∑ c : Channel, channelAmplitude T.frame c i) *
            halfSpaceFourierMode (T.frame.frequency i) x z := by
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.sum_mul]
    _ = fullWave T x z := by
      simp only [channelAmplitude_partition, fullWave, finiteFourierPacket]

/-- The original amplitude sum is exactly the neutral boundary evaluation.
This is a trace of the CHOSEN finite Fourier model, not an AdS/CFT theorem. -/
theorem fullWave_neutral_boundary {N : ℕ} (T : Tube N) :
    fullWave T (fun _ => (0 : ℝ)) 0 =
      ∑ i : Fin N, T.frame.signedAmplitude i := by
  simp [fullWave, finiteFourierPacket, halfSpaceFourierMode]

/-- The existing half-space Fourier model supplies each channel with a
second jet whose radial and boundary Laplacian contributions cancel. -/
def channelJet {N : ℕ} (T : Tube N) (c : Channel)
    (x : BoundaryR4) (z : ℝ) : HalfSpaceScalarJet :=
  finiteFourierPacketJet T.frame.frequency (channelAmplitude T.frame c) x z

theorem channelJet_harmonic {N : ℕ} (T : Tube N) (c : Channel)
    (x : BoundaryR4) (z : ℝ) :
    (channelJet T c x z).radialSecond +
      (channelJet T c x z).boundaryLaplacian = 0 :=
  finiteFourierPacketJet_harmonic
    T.frame.frequency (channelAmplitude T.frame c) x z

/-- Moving the sampled geometry preserves each field packet because its source
coefficients and frequencies were not transported by an unproved field law. -/
@[simp] theorem channelWave_move {N : ℕ} (g : SL(2, ℤ))
    (T : Tube N) (c : Channel) (x : BoundaryR4) (z : ℝ) :
    channelWave (move g T) c x z = channelWave T c x z := rfl

@[simp] theorem channelJet_move {N : ℕ} (g : SL(2, ℤ))
    (T : Tube N) (c : Channel) (x : BoundaryR4) (z : ℝ) :
    channelJet (move g T) c x z = channelJet T c x z := rfl

/-- Original arithmetic Möbius signed readout remains the independent source
identity in the existing modular-lattice implementation. No Fourier field
is silently identified with the original causal pickup waveform. -/
theorem exact_modular_moebius_source (g : SL(2, ℤ))
    (d j : ℕ) [NeZero d] (t : ℝ) :
    transformedLatticeReadout g d j t =
      GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeWave
        j d t :=
  transformedLatticeReadout_complete g d j t

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMColoredHarmonicTubePorts
