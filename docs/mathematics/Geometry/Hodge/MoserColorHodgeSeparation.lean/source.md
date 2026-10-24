# Complete source: GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afaa4254aca2b7789dc1f27425a0b478c2a5a5b7` · SHA-256 `5d772ce8ffcc6def780043b7b8c588a8eab32737cd0e990cfde915c02b190007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts
import GRWTSK.Geometry.Hodge.FiniteGraphCellular

namespace GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation

open GRWTSK.Combinatorics.GraphTheory
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
open GRWTSK.Geometry.Hodge.FiniteGraphCellular

/-- Real zero-cochain obtained from the exact four-color witness. -/
def colorCochain (i : Fin 7) : ℝ :=
  (moserFourColor i : ℕ)

/-- The displayed proper four-color witness is not a constant cochain. -/
theorem colorCochain_not_constant :
    ¬ ∃ c : ℝ, colorCochain = fun _ => c := by
  rintro ⟨c, hc⟩
  have h01 : colorCochain 0 = colorCochain 1 := by
    rw [congrFun hc 0, congrFun hc 1]
  norm_num [colorCochain, moserFourColor] at h01

/-- Consequently, the proper coloring witness has strictly positive cellular edge energy. -/
theorem colorCochain_energy_pos :
    0 < FiniteGraphCellular.Moser.energy colorCochain := by
  have hnonneg := FiniteGraphCellular.Moser.energy_nonneg colorCochain
  have hne : FiniteGraphCellular.Moser.energy colorCochain ≠ 0 := by
    intro hzero
    exact colorCochain_not_constant
      ((FiniteGraphCellular.Moser.energy_eq_zero_iff_constant colorCochain).mp hzero)
  exact lt_of_le_of_ne hnonneg hne.symm

/-- A constant four-color assignment fails the exact Moser adjacency constraint. -/
theorem constantColor_not_proper (c : Fin 4) :
    ¬ ProperColoring moserAdj (fun _ : Fin 7 => c) := by
  intro h
  exact h (v₁ := 0) (v₂ := 1) (Or.inl (by decide)) rfl

/-- The harmonic constants and proper colorings are therefore noncoercible interfaces. -/
theorem harmonic_constant_not_coloring (c : Fin 4) :
    (∃ x : Fin 7 → ℝ,
      FiniteGraphCellular.Moser.energy x = 0 ∧ x = fun _ => ((c : ℕ) : ℝ)) ∧
      ¬ ProperColoring moserAdj (fun _ : Fin 7 => c) := by
  constructor
  · refine ⟨fun _ => ((c : ℕ) : ℝ), ?_, rfl⟩
    exact (FiniteGraphCellular.Moser.energy_eq_zero_iff_constant _).2
      ⟨(c : ℕ), rfl⟩
  · exact constantColor_not_proper c

end GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
```
