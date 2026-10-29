import Folder.Shader.PhaseSweeperSpec
import Folder.Arithmetic.HeisenbergExtension

/-!
# Folder.Shader.HeisenbergKernelSpec

Radiation role: shader-spec
BinaryMatrix spine: This module records a shader-side Heisenberg phase witness without proving Weil pairing or arithmetic geometry.
Ontology: shader.heisenberg_kernel_spec
Pivot role: none
Zero typology: shell
Contract boundary: witness
Composite stack role: torsion
-/

namespace Folder
namespace Shader

structure HeisenbergKernelWitness (m : Nat) where
  P : Vec2Mod m
  Q : Vec2Mod m
  phase : ZMod m
  phase_eq : phase = symplecticPhase P Q

theorem heisenberg_kernel_phase_correct
    (W : HeisenbergKernelWitness m) :
    W.phase = symplecticPhase W.P W.Q :=
  W.phase_eq

end Shader
end Folder
