import Folder.Shader.PhaseSweeperSpec

/-!
# Folder.Theorem.Shader.PhaseSweeperSpec

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes phase-sweeper visible/residual reconstruction for runtime mirrors.
Ontology: proof.shader.phase_sweeper_spec
Pivot role: none
Zero typology: shell
Contract boundary: theorem-wrapper
Composite stack role: phase
-/

namespace Folder
namespace Theorem
namespace Shader

theorem phaseSweep_split_reconstruct
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.phaseSweepReconstruct
        (Folder.Shader.phaseSweepSplit raw step hstep) = raw :=
  Folder.Shader.phaseSweep_split_reconstruct raw step hstep

end Shader
end Theorem
end Folder
