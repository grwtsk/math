# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1.ScalarPostcomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5acb793fcde41c32db8fa42e83566049f841fa74` · SHA-256 `e86c62939cef1d467a49a9b96db6252f9f6feb96984dee4516f7926ee3d828ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ScalarPostcomposition — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440
Organized SHA-256: 0c6e0fa29242bc5db84059fce8e1c6fd293d62d9e904a800ba33e27a82328fc8
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Arbitrary f:Real->Real is applied pointwise to the exact same-version shell-function record; its defining value equation is copied unchanged. No linearity, monotonicity, continuity or boundedness premise or conclusion is added. -/

import Folder.Expansion.Shell
import Folder.Spectral.Tensor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1.ZeroAddFunctionData

/-!
# Folder.Spectral.Fiber

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.fiber
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1

open Folder

open Carrier

namespace SpectralShellFiber

def map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => f (F.value c q)


@[simp]
theorem value_map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (map f F).value c q = f (F.value c q) :=
  rfl


end SpectralShellFiber

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1
```
