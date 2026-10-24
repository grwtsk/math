import Folder.Shader.BijectiveSplit
import Folder.Cellular.Phase

/-!
# Folder.Shader.PhaseSweeperSpec

Radiation role: shader-spec
BinaryMatrix spine: This module specifies the runtime phase sweeper as arithmetic over visible and residual data, not as a BinaryMatrix proof engine.
Ontology:
- shader.phase_sweeper
- shader.bijective_split
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/

namespace Folder
namespace Shader

structure Vec2Mod (m : Nat) where
  x : ZMod m
  y : ZMod m

def symplecticPhase
    {m : Nat}
    (P Q : Vec2Mod m) : ZMod m :=
  P.x * Q.y - P.y * Q.x

structure PhaseSweepInput (m : Nat) where
  P : Vec2Mod m
  Q : Vec2Mod m
  rawAsNat : Nat

structure PhaseSweepOutput where
  visible_phase : Nat
  residual_fiber : Nat
  quant_step : Nat

def phaseSweepSplit
    (raw step : Nat)
    (hstep : 0 < step) :
    PhaseSweepOutput :=
  let S := split raw step hstep
  {
    visible_phase := S.visible
    residual_fiber := S.residual
    quant_step := step
  }

def phaseSweepReconstruct
    (O : PhaseSweepOutput) : Nat :=
  O.visible_phase * O.quant_step + O.residual_fiber

theorem phaseSweep_split_reconstruct
    (raw step : Nat)
    (hstep : 0 < step) :
    phaseSweepReconstruct (phaseSweepSplit raw step hstep) = raw := by
  simpa [phaseSweepReconstruct, phaseSweepSplit, reconstruct, split]
    using reconstruct_split raw step hstep

end Shader
end Folder
