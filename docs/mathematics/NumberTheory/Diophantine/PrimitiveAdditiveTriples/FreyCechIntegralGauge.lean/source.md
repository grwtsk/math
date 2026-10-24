# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `155bc57df48d9c6c7ff4ca47fed3ce6556858bcd` · SHA-256 `dea7eb170fd46d8c15e73f594cc2de9a34076517fe611ddf5de68dd7a708ba12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Integral recovery and minimum-representative obstructions in the SAME Frey
coefficient lattice. All six fields use the OLD realEmbedding and basis.
The integral quotient is split; orthogonal normalization has separate
mod-3 and mod-4 costs. No intrinsic H0, model lattice or height conclusion.
Source proof scripts only; no elaboration or kernel acceptance is asserted.
-/
import GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechGaugeMetric

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge

open FreyWeightedSections FreyWeightedBasis FreyWeightedEnergy
open FreyArchimedeanRealization FreyCechHodgeComparison
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
open GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev IntegerCell (k : ℕ) := Cell (Index k → ℤ)
abbrev RealCell (a b : ℤ) (k : ℕ) :=
  FreyCechHeat.Data ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k

/-- The previously constructed integer-to-real function embedding on every field. -/
def realize (a b : ℤ) (k : ℕ) (v : IntegerCell k) : RealCell a b k :=
  mapFields (realEmbedding a b k).toAddMonoidHom v

def scalarCell (k : ℕ) (v : IntegerCell k) (i : Index k) : Cell ℤ :=
  (fun j => v.1 j i, fun j => v.2 j i)

theorem coefficient_realize (a b : ℤ) (k : ℕ) (v : IntegerCell k) (i : Index k) :
    coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k (realize a b k v) i =
      castCell (scalarCell k v i) := by
  apply Prod.ext <;> funext j <;>
    simp [coefficientCell, GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge.mapCell,
      coordinateMap, realize, mapFields, realEmbedding, realSynthesize,
      coordinates_synthesize, scalarCell, castCell]

/-- The complete old field-basis observations separate ALL six section functions. -/
private theorem fields_ext (a b : ℤ) (k : ℕ) (u v : RealCell a b k)
    (h : ∀ i : Index k,
      coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k u i =
      coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k v i) : u = v := by
  apply Prod.ext
  · funext j
    apply (basis ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k).repr.injective
    ext i
    exact congrFun (congrArg Prod.fst (h i)) j
  · funext j
    apply (basis ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k).repr.injective
    ext i
    exact congrFun (congrArg Prod.snd (h i)) j

/-- Pointwise integrality is tied to the actual previous integer-span realization. -/
theorem in_realized_lattice_iff (a b : ℤ) (k : ℕ) (v : RealCell a b k) :
    (∃ u : IntegerCell k, realize a b k u = v) ↔
      ∀ i : Index k, ∃ c : Cell ℤ, castCell c =
        coefficientCell ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k v i := by
  constructor
  · rintro ⟨u, rfl⟩ i
    exact ⟨scalarCell k u i, (coefficient_realize a b k u i).symm⟩
  · intro h
    let c : Index k → Cell ℤ := fun i => Classical.choose (h i)
    let u : IntegerCell k := (fun j i => (c i).1 j, fun j i => (c i).2 j)
    refine ⟨u, fields_ext a b k _ _ ?_⟩
    intro i
    rw [coefficient_realize]
    change castCell (c i) = _
    exact Classical.choose_spec (h i)

/-- Sharp residue conditions on EVERY old basis coefficient of the same normal form. -/
theorem normalForm_integral_iff (a b : ℤ) (k : ℕ) (v : IntegerCell k) :
    (∃ u : IntegerCell k, realize a b k u =
      FreyCechGaugeMetric.normalForm ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k (realize a b k v)) ↔
    ∀ i : Index k,
      (3 : ℤ) ∣ (reduce (scalarCell k v i)).1 ∧
      (4 : ℤ) ∣ (reduce (scalarCell k v i)).2 1 - (reduce (scalarCell k v i)).2 0 ∧
      (4 : ℤ) ∣ (reduce (scalarCell k v i)).2 2 - (reduce (scalarCell k v i)).2 0 := by
  rw [in_realized_lattice_iff]
  simp_rw [FreyCechGaugeMetric.coefficient_normalForm, coefficient_realize, normalForm_cast]
  change (∀ i, IntegralMinimum (reduce (scalarCell k v i)).1
    (reduce (scalarCell k v i)).2) ↔ _
  simp_rw [minimum_integral_iff]

/-- Integral full-state recovery retains the two discarded gauge fields at every grade. -/
theorem realized_full_recovery (a b : ℤ) (k : ℕ) (v : IntegerCell k) :
    realize a b k (unpack (pack v)) = realize a b k v := by rw [unpack_pack]

/-- Choosing the anchored integral representative commutes with the OLD realization. -/
theorem realize_anchor (a b : ℤ) (k : ℕ) (r : Reduced (Index k → ℤ)) :
    realize a b k (anchor r) = anchor
      (realEmbedding a b k r.1, fun j => realEmbedding a b k (r.2 j)) :=
  (anchor_map (realEmbedding a b k).toAddMonoidHom r).symm

/-- This is still the OLD integer weighted map, not a new unimodular transport. -/
def integerPort (a b : ℤ) (k : ℕ) (v : IntegerCell k) : IntegerCell k :=
  mapFields (FreyWeightedLattice.integerMap a b k).toAddMonoidHom v

theorem integerPort_reduction (a b : ℤ) (k : ℕ) (v : IntegerCell k) :
    reduce (integerPort a b k v) =
      (FreyWeightedLattice.integerMap a b k (reduce v).1,
        fun j => FreyWeightedLattice.integerMap a b k ((reduce v).2 j)) :=
  reduce_map (FreyWeightedLattice.integerMap a b k).toAddMonoidHom v

/-- Same function map after realization, with its rational inverse-ab witness retained. -/
theorem realize_integerPort (a b : ℤ) (k : ℕ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (v : IntegerCell k) :
    realize a b k (integerPort a b k v) =
      (fun j => realLift (a : ℚ) (b : ℚ) l hl k ((realize a b k v).1 j),
       fun j => realLift (a : ℚ) (b : ℚ) l hl k ((realize a b k v).2 j)) := by
  apply Prod.ext <;> funext j
  · exact (realLift_integer_synthesize a b l hl k (v.1 j)).symm
  · exact (realLift_integer_synthesize a b l hl k (v.2 j)).symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge
```
