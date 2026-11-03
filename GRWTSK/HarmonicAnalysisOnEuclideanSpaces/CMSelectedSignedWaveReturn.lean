/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Only an additive source leaf; no added logical assumptions or native evaluation, root import,
or claim of CM-to-Mobius intertwining. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleResidueHilbertAttachment
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleSignedPickupHilbertPort
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Tactic

/-!
# A common, source-identified Hilbert carrier for CM cycles and signed pickup

The geometric source is the ACTUAL rational CM Thom/Betti cycle image inside
`CMScaleResidueHilbertAttachment.actualSelectedCycleImages`. The arithmetic
source is the PREEXISTING signed `classWave j d r a u`: all parity and additive
residue coordinates, including nonunits and zeros, BEFORE taking a square.

For the constant positive square-modulus profile q=d^2, place the two parity
rows for dyadic inventory j at distinct stages 2j and 2j+1. This is a
bookkeeping embedding into the EXACT old `AllScaleHilbert` type, not an
assertion of equal physical scale or a canonical geometric polarization.

The finite coherent readout is source-exact. Its square, not the positive
Hilbert norm of the packet, reproduces the original signed pickup energy.
Projecting the common carrier onto actual CM cycles and their orthogonal
complement preserves the complete readout INCLUDING the signed cross term.
The two channels are not called independently positive arithmetic energies.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn

open scoped BigOperators
open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint

variable (d : ℕ) [NeZero d]

/-- A positive modulus at every *address* stage; parity is kept in the stage.
The selected CM source can use precisely this same Hilbert carrier. -/
abbrev squareProfile : ℕ → ℕ := fun _ => d * d

/-- Every signed class gets a distinct address at a fixed inventory j. -/
def classAddress (j : ℕ) (r : Fin 2) (a : ZMod (d * d)) :
    ScaleResidueIndex (squareProfile d) :=
  ⟨2 * j + r.val, a⟩

/-- An actual finite signed source packet in the FULL selected Hilbert sum.
Finitely many `lp.single` vectors guarantee ℓ² membership without assuming
that an uncontrolled family of packets is summable over all dyadic scales. -/
def actualSignedPacket (j : ℕ) (u : ℝ) :
    AllScaleHilbert (squareProfile d) :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d),
    (classWave j d r.val a u : ℂ) •
      lp.single (E := fun _ : ScaleResidueIndex (squareProfile d) => ℂ)
        2 (classAddress d j r a) (1 : ℂ)

/-- Source-address injectivity for fixed inventory j; no parity or nonunit
residue is lost when entering the selected all-scale carrier. -/
theorem classAddress_injective (j : ℕ) :
    Function.Injective (fun ra : Fin 2 × ZMod (d * d) =>
      classAddress d j ra.1 ra.2) := by
  intro ra sb h
  rcases ra with ⟨r, a⟩
  rcases sb with ⟨s, b⟩
  have hstage : 2 * j + r.val = 2 * j + s.val :=
    congrArg Sigma.fst h
  have hrs : r = s := Fin.ext (Nat.add_left_cancel hstage)
  subst s
  cases h
  rfl

/-- The true original signed class is exactly retrieved at its own address. -/
@[simp] theorem actualSignedPacket_apply (j : ℕ) (u : ℝ)
    (r : Fin 2) (a : ZMod (d * d)) :
    actualSignedPacket d j u (classAddress d j r a) =
      (classWave j d r.val a u : ℂ) := by
  classical
  have hs (s : Fin 2) : 2 * j + s.val = 2 * j + r.val ↔ s = r := by
    constructor
    · exact fun h => Fin.ext (Nat.add_left_cancel h)
    · rintro rfl
      rfl
  simp [actualSignedPacket, classAddress, lp.single_apply, hs]

/-- Scalar observable on a specified finite original packet inventory.
This is a finite sum and hence is defined for EVERY vector in the complete
all-scale Hilbert space. It is not a claim of a globally bounded all-stage
summation functional on arbitrary ℓ² vectors. -/
def finiteCoherentReadout (j : ℕ)
    (x : AllScaleHilbert (squareProfile d)) : ℝ :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d),
    (x (classAddress d j r a)).re

/-- Readout is additive, even when its terms lie in different orthogonal
Hilbert subspaces. -/
theorem finiteCoherentReadout_add (j : ℕ)
    (x y : AllScaleHilbert (squareProfile d)) :
    finiteCoherentReadout d j (x + y) =
      finiteCoherentReadout d j x + finiteCoherentReadout d j y := by
  simp [finiteCoherentReadout, Complex.add_re, Finset.sum_add_distrib]

/-- The finite coherent readout is a genuine bounded observation on the
complete Hilbert space, with a conservative explicit finite-cardinality
constant. It is NOT a bounded sum over infinitely many inventory stages. -/
theorem finiteCoherentReadout_abs_le (j : ℕ)
    (x : AllScaleHilbert (squareProfile d)) :
    |finiteCoherentReadout d j x| ≤
      (2 * (d * d) : ℝ) * ‖x‖ := by
  classical
  have hpoint (r : Fin 2) (a : ZMod (d * d)) :
      ‖(x (classAddress d j r a)).re‖ ≤ ‖x‖ :=
    (Complex.abs_re_le_norm _).trans
      (lp.norm_apply_le_norm (by norm_num : (2 : ℝ≥0∞) ≠ 0) x
        (classAddress d j r a))
  calc
    |finiteCoherentReadout d j x| =
        ‖∑ r : Fin 2, ∑ a : ZMod (d * d),
          (x (classAddress d j r a)).re‖ := by
            simp only [finiteCoherentReadout, Real.norm_eq_abs]
    _ ≤ ∑ r : Fin 2,
        ‖∑ a : ZMod (d * d), (x (classAddress d j r a)).re‖ :=
          norm_sum_le _ _
    _ ≤ ∑ r : Fin 2, ∑ a : ZMod (d * d),
        ‖(x (classAddress d j r a)).re‖ := by
          apply Finset.sum_le_sum
          intro r _
          exact norm_sum_le _ _
    _ ≤ ∑ r : Fin 2, ∑ _a : ZMod (d * d), ‖x‖ := by
          apply Finset.sum_le_sum
          intro r _
          apply Finset.sum_le_sum
          intro a _
          exact hpoint r a
    _ = (2 * (d * d) : ℝ) * ‖x‖ := by
          simp [Fintype.card_fin, ZMod.card]
          ring

/-- EXACT source identity: no replacement weights, no complexification of
signed arithmetic coefficients before their original real value is retained. -/
theorem finiteCoherentReadout_actualSignedPacket (j : ℕ) (u : ℝ) :
    finiteCoherentReadout d j (actualSignedPacket d j u) =
      completeWave j d u := by
  classical
  simp only [finiteCoherentReadout, actualSignedPacket_apply,
    Complex.ofReal_re]
  change (∑ r : Fin 2, ∑ a : ZMod (d * d),
    classWave j d r.val a u) = completeWave j d u
  simpa [completeWave, Fin.sum_univ_two, Finset.sum_range_succ]

/-- The source's ACTUAL causal response is the finite packet readout at every
point of the original closed dyadic time window. -/
theorem wholePickup_eq_selectedPacketReadout (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    wholePickup u = finiteCoherentReadout d j (actualSignedPacket d j u) := by
  rw [wholePickup_eq_completeWave j d hu huT,
    finiteCoherentReadout_actualSignedPacket]

/-- EXACT ORIGINAL signed pickup energy, not the positive Hilbert norm of
`actualSignedPacket`; all 00/01/10/11 and nonunit pair terms remain. -/
theorem originalPickupEnergy_eq_selectedPacketIntegral (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        (finiteCoherentReadout d j (actualSignedPacket d j u)) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j d]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro u _
  rw [finiteCoherentReadout_actualSignedPacket]

section CM

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]

/-- NOT a freely selected algebraic label: these are the images of the
actual rational algebraic cycles of the SAME CM geometric source. -/
def selectedCMCycles : Set (AllScaleHilbert (squareProfile d)) :=
  actualSelectedCycleImages X p (squareProfile d)

/-- The fixed-inventory coherent readout of an arbitrary selected Hilbert
vector is reconstructed from the actual CM-cycle span AND its full residual. -/
theorem selectedCM_completeReadout (j : ℕ)
    (x : AllScaleHilbert (squareProfile d)) :
    finiteCoherentReadout d j x =
      finiteCoherentReadout d j
        (algebraicProjection (selectedCMCycles d X p) x) +
      finiteCoherentReadout d j
        (residualProjection (selectedCMCycles d X p) x) := by
  calc
    finiteCoherentReadout d j x = finiteCoherentReadout d j
        (algebraicProjection (selectedCMCycles d X p) x +
          residualProjection (selectedCMCycles d X p) x) :=
      congrArg (finiteCoherentReadout d j)
        (complete_reconstruction (selectedCMCycles d X p) x).symm
    _ = _ := finiteCoherentReadout_add d j _ _

/-- Orthogonality in the Hilbert metric does NOT delete the mixed scalar
readout term. In particular, no independent positivity is asserted for it. -/
theorem selectedCM_signedCrossEnergy (j : ℕ)
    (x : AllScaleHilbert (squareProfile d)) :
    (finiteCoherentReadout d j x) ^ 2 =
      (finiteCoherentReadout d j
        (algebraicProjection (selectedCMCycles d X p) x)) ^ 2 +
      (finiteCoherentReadout d j
        (residualProjection (selectedCMCycles d X p) x)) ^ 2 +
      2 * finiteCoherentReadout d j
        (algebraicProjection (selectedCMCycles d X p) x) *
          finiteCoherentReadout d j
            (residualProjection (selectedCMCycles d X p) x) := by
  rw [selectedCM_completeReadout d X p j x]
  ring

/-- SOURCE-EXACT energy return to the original signed arithmetic integral,
with the algebraic/residual channel and its mixed term explicitly retained. -/
theorem originalPickupEnergy_selectedCM_mixedIntegral (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        ((finiteCoherentReadout d j
            (algebraicProjection (selectedCMCycles d X p)
              (actualSignedPacket d j u))) ^ 2 +
          (finiteCoherentReadout d j
            (residualProjection (selectedCMCycles d X p)
              (actualSignedPacket d j u))) ^ 2 +
          2 * finiteCoherentReadout d j
            (algebraicProjection (selectedCMCycles d X p)
              (actualSignedPacket d j u)) *
              finiteCoherentReadout d j
                (residualProjection (selectedCMCycles d X p)
                  (actualSignedPacket d j u))) := by
  rw [originalPickupEnergy_eq_selectedPacketIntegral d j]
  apply intervalIntegral.integral_congr
  intro u _
  exact selectedCM_signedCrossEnergy d X p j (actualSignedPacket d j u)

/-- The Hilbert metric is positive and Pythagorean, separately from the
complete signed arithmetic energy readout above. -/
theorem selectedCM_packet_positiveEnergy (j : ℕ) (u : ℝ) :
    ‖actualSignedPacket d j u‖ ^ 2 =
      ‖algebraicProjection (selectedCMCycles d X p)
        (actualSignedPacket d j u)‖ ^ 2 +
      ‖residualProjection (selectedCMCycles d X p)
        (actualSignedPacket d j u)‖ ^ 2 :=
  complete_energy_split _ _

end CM
end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
