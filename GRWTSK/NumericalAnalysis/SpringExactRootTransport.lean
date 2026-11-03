/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
import GRWTSK.NumericalAnalysis.RootedSpringEnergyBridge

/-!
# Actual spring twist as one exact rooted physical family

Local attribution: grwtsk contributors.
The root is the ZERO of the source twist, not zero global rotor motion.
The joint crank/rotor phase translation shifts crankAngle by
inverseGear*delta and rotorAngle by delta; it leaves twist and BOTH
speeds exactly unchanged, hence mechanical and potential energy.
This is an exact symmetry of the original spring state and source,
not a surrogate physics assumption or a numerical integrator theorem.

Source proof candidate: build, kernel and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumericalAnalysis.SpringExactRootTransport

open GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
open GRWTSK.NumericalAnalysis.RootedSpringEnergyBridge
open GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract

/-- A genuine, source-specific physical family, with a proven twist root. -/
def springRootFamily (p : Parameters) (hk : 0 < p.stiffness) :
    RootFamily Unit where
  Carrier := fun _ => State
  Root := fun _ st => twist p st = 0
  energy := fun _ st => potential p st
  energy_nonneg := by
    intro _ st
    unfold potential
    exact div_nonneg
      (mul_nonneg hk.le (sq_nonneg (twist p st))) (by norm_num)
  energy_eq_zero_iff_root := by
    intro _ st
    exact potential_eq_zero_iff_twist_zero p st hk

/-- A simultaneous gear-compatible phase shift, not a crank impulse. -/
def alignedShift (p : Parameters) (delta : ℝ) (st : State) : State :=
  { crankAngle := st.crankAngle + p.inverseGear * delta
    rotorAngle := st.rotorAngle + delta
    crankSpeed := st.crankSpeed
    rotorSpeed := st.rotorSpeed }

/-- This is an actual invariance of the ORIGINAL twist equation. -/
theorem alignedShift_twist (p : Parameters) (delta : ℝ) (st : State) :
    twist p (alignedShift p delta st) = twist p st := by
  unfold twist alignedShift
  ring

theorem alignedShift_potential (p : Parameters) (delta : ℝ) (st : State) :
    potential p (alignedShift p delta st) = potential p st := by
  unfold potential
  rw [alignedShift_twist]

/-- This shift changes neither kinetic motion nor the stored twist energy. -/
theorem alignedShift_mechanicalEnergy
    (p : Parameters) (delta : ℝ) (st : State) :
    mechanicalEnergy p (alignedShift p delta st) =
      mechanicalEnergy p st := by
  unfold mechanicalEnergy kinetic
  rw [alignedShift_potential]
  rfl

/-- The complete signed-zero energy transport law is instantiated, not assumed. -/
def alignedTransport (p : Parameters) (hk : 0 < p.stiffness)
    (delta : ℝ) :
    (springRootFamily p hk).ExactTransport () () :=
  RootFamily.ExactTransport.of_energy_preserving
    (springRootFamily p hk) (alignedShift p delta) (by
      intro st
      exact alignedShift_potential p delta st)

theorem alignedTransport_root
    (p : Parameters) (hk : 0 < p.stiffness)
    (delta : ℝ) (st : State) :
    (springRootFamily p hk).Root ()
      ((alignedTransport p hk delta).toFun st) ↔
      (springRootFamily p hk).Root () st := by
  change twist p (alignedShift p delta st) = 0 ↔ twist p st = 0
  rw [alignedShift_twist]

end GRWTSK.NumericalAnalysis.SpringExactRootTransport
end
