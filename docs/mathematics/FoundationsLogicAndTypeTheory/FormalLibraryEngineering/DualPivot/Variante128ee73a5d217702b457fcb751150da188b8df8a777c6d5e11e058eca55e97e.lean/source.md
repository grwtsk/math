# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DualPivot.Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11af7ede09749151ca69cef361a684d9b27b3ec6` · SHA-256 `e128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.PositiveNat

/-!
# Folder.Core.DualPivot

Radiation role: core-architecture
BinaryMatrix spine: This module organizes the dual arithmetic/spectral pivots before downstream BinaryMatrix carrier interpretations.
Ontology:
- core.dual_pivot
- core.arithmetic_pivot_one
- core.spectral_pivot_half
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

/-- The analytic equilibrium pivot for normalized fields `[0,1]`. -/
noncomputable def spectralPivot : ℝ := (1 / 2 : ℝ)

/-- The arithmetic multiplicative root pivot. -/
def arithmeticPivot : NumberTheory.PositiveNat :=
  NumberTheory.PositiveNat.one

structure DualPivot where
  arithmetic : NumberTheory.PositiveNat
  spectral : ℝ

noncomputable def defaultDualPivot : DualPivot where
  arithmetic := arithmeticPivot
  spectral := spectralPivot

@[simp]
theorem arithmeticPivot_val_eq_one :
    arithmeticPivot.val = 1 := rfl

@[simp]
theorem spectralPivot_eq_half :
    spectralPivot = (1 / 2 : ℝ) := rfl

theorem defaultDualPivot_arithmetic :
    defaultDualPivot.arithmetic.val = 1 := rfl

theorem defaultDualPivot_spectral :
    defaultDualPivot.spectral = (1 / 2 : ℝ) := rfl

end Core
end Folder
```
