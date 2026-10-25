# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EquivOfInjective.Variant8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94696575fb9f8ea8c94dd9c30a863632ef754200` · SHA-256 `8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module -- shake: keep-all

public import Mathlib.Data.Fin.SuccPred
public import Mathlib.Logic.Equiv.Set

deprecated_module (since := "2026-08-26")

public section

namespace Fin

@[deprecated Equiv.apply_ofInjective_symm (since := "2026-08-26")]
theorem coe_of_injective_castLE_symm {n k : ℕ} (h : n ≤ k) (i : Fin k) (hi) :
    ((Equiv.ofInjective _ (castLE_injective h)).symm ⟨i, hi⟩ : ℕ) = i := by
  rw [← val_castLE h, Equiv.apply_ofInjective_symm _ ⟨i, hi⟩]

@[deprecated Equiv.apply_ofInjective_symm (since := "2026-08-26")]
theorem coe_of_injective_castSucc_symm {n : ℕ} (i : Fin n.succ) (hi) :
    ((Equiv.ofInjective castSucc (castSucc_injective _)).symm ⟨i, hi⟩ : ℕ) = i := by
  rw [← val_castSucc, Equiv.apply_ofInjective_symm _ ⟨i, hi⟩]

end Fin
```
