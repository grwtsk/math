# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Energy.Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d43461750de9233100fc91b8476ca9651c76908f` · SHA-256 `7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Algebra.BigOperators.Order
import Mathlib.Algebra.Module.Basic
import Mathlib.Combinatorics.SimpleGraph.Density
import Mathlib.Data.Rat.BigOperators

#align_import combinatorics.simple_graph.regularity.energy from "leanprover-community/mathlib"@"bf7ef0e83e5b7e6c1169e97f055e58a2e4e9d52d"

/-!
# Energy of a partition

This file defines the energy of a partition.

The energy is the auxiliary quantity that drives the induction process in the proof of Szemerédi's
Regularity Lemma. As long as we do not have a suitable equipartition, we will find a new one that
has an energy greater than the previous one plus some fixed constant.

## References

[Yaël Dillies, Bhavik Mehta, *Formalising Szemerédi’s Regularity Lemma in Lean*][srl_itp]
-/


open Finset

open BigOperators

variable {α : Type*} [DecidableEq α] {s : Finset α} (P : Finpartition s) (G : SimpleGraph α)
  [DecidableRel G.Adj]

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

namespace Finpartition

/-- The energy of a partition, also known as index. Auxiliary quantity for Szemerédi's regularity
lemma.  -/
def energy : ℚ :=
  ((∑ uv in P.parts.offDiag, G.edgeDensity uv.1 uv.2 ^ 2) : ℚ) / (P.parts.card : ℚ) ^ 2
#align finpartition.energy Finpartition.energy

theorem energy_nonneg : 0 ≤ P.energy G := by
  refine' div_nonneg (Finset.sum_nonneg fun _ _ => sq_nonneg _) <| sq_nonneg _
#align finpartition.energy_nonneg Finpartition.energy_nonneg

theorem energy_le_one : P.energy G ≤ 1 :=
  div_le_of_nonneg_of_le_mul (sq_nonneg _) zero_le_one <|
    calc
      ∑ uv in P.parts.offDiag, G.edgeDensity uv.1 uv.2 ^ 2 ≤ P.parts.offDiag.card • (1 : ℚ) :=
        sum_le_card_nsmul _ _ 1 fun uv _ =>
          (sq_le_one_iff <| G.edgeDensity_nonneg _ _).2 <| G.edgeDensity_le_one _ _
      _ = P.parts.offDiag.card := (Nat.smul_one_eq_coe _)
      _ ≤ _ := by
        rw [offDiag_card, one_mul]
        norm_cast
        rw [sq]
        exact tsub_le_self
#align finpartition.energy_le_one Finpartition.energy_le_one

@[simp, norm_cast]
theorem coe_energy {𝕜 : Type*} [LinearOrderedField 𝕜] : (P.energy G : 𝕜) =
    (∑ uv in P.parts.offDiag, (G.edgeDensity uv.1 uv.2 : 𝕜) ^ 2) / (P.parts.card : 𝕜) ^ 2 := by
  rw [energy]; norm_cast
#align finpartition.coe_energy Finpartition.coe_energy

end Finpartition
```
