# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BijectiveSplit.Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3a468a01ff51da0e4c8363aa5008cc0de1ded7d` · SHA-256 `a61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Shader.BijectiveSplit

Radiation role: shader-spec
BinaryMatrix spine: This module proves the arithmetic visible/residual split mirrored by runtime shader code downstream of BinaryMatrix-radiated phase data.
Ontology: shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: residual
-/

namespace Folder
namespace Shader

structure QuantizedSplit where
  raw : Nat
  step : Nat
  step_pos : 0 < step
  visible : Nat
  residual : Nat
  visible_eq : visible = raw / step
  residual_eq : residual = raw % step

def split
    (raw step : Nat)
    (hstep : 0 < step) :
    QuantizedSplit where
  raw := raw
  step := step
  step_pos := hstep
  visible := raw / step
  residual := raw % step
  visible_eq := rfl
  residual_eq := rfl

def reconstruct (S : QuantizedSplit) : Nat :=
  S.visible * S.step + S.residual

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    reconstruct (split raw step hstep) = raw := by
  simpa [reconstruct, split, Nat.mul_comm] using Nat.div_add_mod raw step

theorem residual_lt_step
    (S : QuantizedSplit) :
    S.residual < S.step := by
  rw [S.residual_eq]
  exact Nat.mod_lt S.raw S.step_pos

end Shader
end Folder
```
