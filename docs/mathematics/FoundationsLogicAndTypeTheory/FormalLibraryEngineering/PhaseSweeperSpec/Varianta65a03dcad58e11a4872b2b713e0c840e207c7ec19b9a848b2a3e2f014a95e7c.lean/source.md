# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSweeperSpec.Varianta65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4249a3a86014a0230e94aebc4977378726cdacea` · SHA-256 `a65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
