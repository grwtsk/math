# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS09ControlledKernelReconstruction.Variantf176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1fb7350b40ea07033d96846366a53497a118981` · SHA-256 `f176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/-- CS-09 derives image reconstruction, paired injectivity, and diagonal kernel. -/
theorem cs09_controlledKernelReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CS09Claim D := by
  exact {
    imageLeftInverse := imageDecoder_leftInverse D
    pairedInjective := controlledProduct_injective D
    kernelDiagonal := controlledProduct_kernel_diagonal D
  }

end FCRS.ControlledSpherical.Theorems
```
