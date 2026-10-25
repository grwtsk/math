# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1.ZeroAddFunctionData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fce04821eee7d998e1d0164ef5a8418f94f44417` · SHA-256 `eb752c34148392cf0a7ad43fdecc1a6a39aeb1a03d696c37a4cae5e6336820b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ZeroAddFunctionData — individually reviewed exact source
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

/- Complete real-valued functions on the original expanded-grid shell subtype and Fin k, with exact extensionality, zero/add operations, two instances and value laws. Source s and k are unchanged, including degenerate sizes. The word fiber asserts no geometric/vector-bundle or spectral construction. -/

import Folder.Expansion.Shell
import Folder.Spectral.Tensor

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

structure SpectralShellFiber (s : GridShape) (k : Nat) where
  value :
    {c : Cell (Expansion.expandedShape s) //
      Expansion.IsShellCell c} →
    Fin k →
    ℝ


namespace SpectralShellFiber

@[ext]
theorem ext {s : GridShape} {k : Nat}
    {F G : SpectralShellFiber s k}
    (h : ∀ c q, F.value c q = G.value c q) :
    F = G := by
  cases F
  cases G
  congr
  funext c q
  exact h c q


def zero (s : GridShape) (k : Nat) : SpectralShellFiber s k where
  value := fun _ _ => 0


def add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => F.value c q + G.value c q


instance {s : GridShape} {k : Nat} : Zero (SpectralShellFiber s k) :=
  ⟨zero s k⟩


instance {s : GridShape} {k : Nat} : Add (SpectralShellFiber s k) :=
  ⟨add⟩


@[simp]
theorem value_zero {s : GridShape} {k : Nat}
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (0 : SpectralShellFiber s k).value c q = 0 :=
  rfl


@[simp]
theorem value_add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (F + G).value c q = F.value c q + G.value c q :=
  rfl


end SpectralShellFiber

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ShellIndexedRealFunctions.Variant09f76096752841b1
```
