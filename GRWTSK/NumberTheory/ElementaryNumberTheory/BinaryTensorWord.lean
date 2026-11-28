import Mathlib.Data.Nat.Digits.Lemmas
import Mathlib.Data.List.OfFn
import Mathlib.Data.List.Indexes
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Algebra.BigOperators.Fin

/-!
# The actual 8 by 16 binary tensor valuation

Attribution: grwtsk contributors.
Formal status is recorded in the accompanying exact-source verification evidence.
Target: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Intended subject path: GRWTSK/NumberTheory/ElementaryNumberTheory/BinaryTensorWord.lean.

The encoding is the actual base-two positional formula, not an arbitrary
bijection inferred from equal cardinalities. Injectivity follows from the
upstream digit decoder; cardinality then establishes surjectivity of this map.
Executable bit-extraction and Rust refinement remain separate obligations.
-/

open scoped BigOperators

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

namespace GRWTSK.NumberTheory.BinaryTensorWord

abbrev Tensor := Fin 8 × Fin 16 → Fin 2

/-- Row-major index with the least significant bit first. -/
def gridIndex : Fin 8 × Fin 16 ≃ Fin 128 where
  toFun p := ⟨16 * p.1.val + p.2.val, by omega⟩
  invFun k := (⟨k.val / 16, by omega⟩, ⟨k.val % 16, by omega⟩)
  left_inv p := by
    apply Prod.ext <;> apply Fin.ext <;> simp only <;> omega
  right_inv k := by
    apply Fin.ext
    simp only
    omega

theorem gridIndex_val (p : Fin 8 × Fin 16) :
    (gridIndex p).val = 16 * p.1.val + p.2.val := rfl

def digits (T : Tensor) : List ℕ :=
  List.ofFn (fun q : Fin 128 => (T (gridIndex.symm q)).val)

theorem digits_bounded (T : Tensor) : ∀ d ∈ digits T, d < 2 := by
  intro d hd
  obtain ⟨q, hq⟩ := List.mem_ofFn.mp hd
  exact hq ▸ (T (gridIndex.symm q)).isLt

def valuation (T : Tensor) : ℕ := Nat.ofDigits 2 (digits T)

theorem valuation_lt (T : Tensor) : valuation T < 2 ^ 128 := by
  have h := Nat.ofDigits_lt_base_pow_length (by decide : 1 < 2) (digits_bounded T)
  simpa only [valuation, digits, List.length_ofFn] using h

/-- Source-preserving correspondence with the requested weighted double sum. -/
theorem valuation_formula (T : Tensor) :
    valuation T = ∑ i : Fin 8, ∑ j : Fin 16,
      (T (i, j)).val * 2 ^ (16 * i.val + j.val) := by
  have hflat : valuation T = ∑ q : Fin 128,
      (T (gridIndex.symm q)).val * 2 ^ q.val := by
    simp only [valuation, digits, Nat.ofDigits_eq_sum_mapIdx,
      List.mapIdx_eq_ofFn, List.get_ofFn, List.length_ofFn, Fin.val_cast,
      List.sum_ofFn, Fin.cast_cast, Fin.cast_refl, id_eq]
  rw [hflat]
  have hsum := Equiv.sum_comp gridIndex
    (fun q : Fin 128 => (T (gridIndex.symm q)).val * 2 ^ q.val)
  calc
    (∑ q : Fin 128, (T (gridIndex.symm q)).val * 2 ^ q.val) =
        ∑ p : Fin 8 × Fin 16, (T p).val * 2 ^ (16 * p.1.val + p.2.val) := by
      simpa only [Equiv.symm_apply_apply, gridIndex_val] using hsum.symm
    _ = _ := Fintype.sum_prod_type _

def encode (T : Tensor) : Fin (2 ^ 128) := ⟨valuation T, valuation_lt T⟩

theorem encode_injective : Function.Injective encode := by
  intro T U h
  have hval := congrArg (fun w : Fin (2 ^ 128) => w.val) h
  change valuation T = valuation U at hval
  have hlist : digits T = digits U :=
    Nat.ofDigits_inj_of_len_eq (by decide : 1 < 2)
      (by simp [digits]) (digits_bounded T) (digits_bounded U) hval
  have hfun := List.ofFn_injective hlist
  funext p
  apply Fin.ext
  have hp := congrFun hfun (gridIndex p)
  simpa only [Equiv.symm_apply_apply] using hp

theorem encode_bijective : Function.Bijective encode := by
  apply (Fintype.bijective_iff_injective_and_card encode).mpr
  refine ⟨encode_injective, ?_⟩
  simp [Tensor]

end GRWTSK.NumberTheory.BinaryTensorWord
