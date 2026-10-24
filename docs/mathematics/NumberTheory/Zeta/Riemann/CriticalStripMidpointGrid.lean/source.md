# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMidpointGrid

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e000f8294be9dcd93f2219bf9b8b4624294cbb9` · SHA-256 `1924d53f9806c02c2a69ac244bf068ca8a3c306cd8c141ad9eaf0140b3852c6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover
import Mathlib.Algebra.Order.Floor.Ring

set_option autoImplicit false

/-!
# Closed-interval coverage by finitely indexed midpoints

The last endpoint belongs to the last cell. The clamped natural floor is used only
in the all-point proof; the finite rational center family does not depend on an
analytic evaluator, a classical enumeration of zeros, or a compactness choice.
This is pure geometry and supplies no nonvanishing statement by itself.
Source proof scripts only: no Lean elaboration or axiom replay has been run.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover

noncomputable section

/-- Every point of the CLOSED interval is within half a cell width of a midpoint.
The hypotheses exclude zero cell count and nonpositive spacing. -/
theorem exists_near_grid_midpoint {n : ℕ} {lo step x : ℝ}
    (hn : 0 < n) (hstep : 0 < step)
    (hlo : lo ≤ x) (hhi : x ≤ lo + (n : ℝ) * step) :
    ∃ i : Fin n, |x - (lo + ((i.val : ℝ) + 1 / 2) * step)| ≤ step / 2 := by
  let t : ℝ := (x - lo) / step
  have ht0 : 0 ≤ t := div_nonneg (sub_nonneg.mpr hlo) hstep.le
  have htn : t ≤ (n : ℝ) := by
    dsimp only [t]
    apply (div_le_iff₀ hstep).mpr
    linarith
  let k : ℕ := min ⌊t⌋₊ (n - 1)
  have hkBound : k ≤ n - 1 := Nat.min_le_right _ _
  have hklt : k < n := by omega
  have hkFloor : k ≤ ⌊t⌋₊ := Nat.min_le_left _ _
  have hkFloorReal : (k : ℝ) ≤ (⌊t⌋₊ : ℝ) := by exact_mod_cast hkFloor
  have hkt : (k : ℝ) ≤ t := hkFloorReal.trans (Nat.floor_le ht0)
  have htk : t ≤ (k : ℝ) + 1 := by
    by_cases hsmall : ⌊t⌋₊ ≤ n - 1
    · have hk : k = ⌊t⌋₊ := Nat.min_eq_left hsmall
      rw [hk]
      exact (Nat.lt_floor_add_one t).le
    · have hk : k = n - 1 := Nat.min_eq_right (by omega)
      have heqNat : n - 1 + 1 = n := by omega
      have heq : ((n - 1 : ℕ) : ℝ) + 1 = (n : ℝ) := by
        exact_mod_cast heqNat
      rw [hk, heq]
      exact htn
  have hlow : (k : ℝ) * step ≤ x - lo :=
    (le_div_iff₀ hstep).mp hkt
  have hupp : x - lo ≤ ((k : ℝ) + 1) * step :=
    (div_le_iff₀ hstep).mp htk
  refine ⟨⟨k, hklt⟩, ?_⟩
  apply abs_le.mpr
  constructor <;> dsimp only <;> nlinarith

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover
```
