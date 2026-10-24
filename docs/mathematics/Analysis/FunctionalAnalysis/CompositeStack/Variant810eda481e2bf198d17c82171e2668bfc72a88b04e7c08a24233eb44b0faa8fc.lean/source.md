# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CompositeStack.Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8acfffd913e7ec015a988dca1e50d03f65d6a9ec` · SHA-256 `810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.DualPivot
import Folder.Spectral.Tensor
import Folder.Spectral.Residual
import Folder.Cellular.HeatQuantizedTorsion
import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Core.CompositeStack

Radiation role: core-architecture
BinaryMatrix spine: This module packages the typed composite stack whose finite carrier component may be realized by BinaryMatrix data.
Ontology: core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

structure CompositeStack where
  Carrier : Type
  SpectralField : Type
  HeatResidual : Type
  ShellFiber : Type
  PhaseConnection : Type
  TorsionWitness : Type
  ArithmeticLabel : Type
  carrier : Carrier
  spectralField : SpectralField
  heatResidual : HeatResidual
  shellFiber : ShellFiber
  phaseConnection : PhaseConnection
  torsionWitness : TorsionWitness
  arithmeticLabel : ArithmeticLabel
  pivots : DualPivot

def CompositeStack.hasArithmeticPivot
    (S : CompositeStack) : Prop :=
  S.pivots.arithmetic.val = 1

def CompositeStack.hasSpectralPivot
    (S : CompositeStack) : Prop :=
  S.pivots.spectral = (1 / 2 : ℝ)

theorem default_stack_pivots
    (S : CompositeStack)
    (h : S.pivots = defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot := by
  constructor
  · dsimp [CompositeStack.hasArithmeticPivot]
    rw [h]
    rfl
  · dsimp [CompositeStack.hasSpectralPivot]
    rw [h]
    rfl

end Core
end Folder
```
