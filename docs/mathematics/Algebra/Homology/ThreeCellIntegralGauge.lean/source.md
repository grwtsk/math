# Complete source: GRWTSK.Algebra.Homology.ThreeCellIntegralGauge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb0cf56ed96a0f25e82ef69c48c22b7ce6425229` · SHA-256 `27c6e80d7bd1e2529681b6634c69322819ef8be36956b0de7853fc54672ee9f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Integral source-ordered Cech reduction and full recovery. Use the vertex SUM,
not its average, so all formulas work over additive groups without division.
A quotient forgets two gauge coordinates; the full split retains them.
No metric, geometric cover, or accepted Lean result is asserted.
-/
import GRWTSK.Algebra.Homology.ThreeCellCech
import Mathlib.LinearAlgebra.Isomorphisms

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.Homology.ThreeCellIntegralGauge

open ThreeCellCech
abbrev Cell (V : Type*) := Triple V × Triple V
abbrev Reduced (V : Type*) := V × Triple V
abbrev Packed (V : Type*) := Reduced V × (V × V)

variable {V W : Type*} [AddCommGroup V] [AddCommGroup W]

def total (z : Triple V) : V := z 0 + z 1 + z 2

def reduce (v : Cell V) : Reduced V := (total v.1, mismatch v.1 v.2)

/-- Source labels 1 and 2 are retained as additional recovery coordinates. -/
def pack (v : Cell V) : Packed V := (reduce v, v.1 1, v.1 2)

def unpack (r : Packed V) : Cell V :=
  let z : Triple V := ![r.1.1 - r.2.1 - r.2.2, r.2.1, r.2.2]
  (z, delta0 z - r.1.2)

@[simp] theorem unpack_pack (v : Cell V) : unpack (pack v) = v := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    simp [unpack, pack, reduce, total, mismatch, delta0] <;> abel

@[simp] theorem pack_unpack (r : Packed V) : pack (unpack r) = r := by
  rcases r with ⟨⟨s, e⟩, u, w⟩
  apply Prod.ext
  · apply Prod.ext
    · simp [pack, unpack, reduce, total] <;> abel
    · funext j
      fin_cases j <;> simp [pack, unpack, reduce, mismatch, delta0] <;> abel
  · simp [pack, unpack]

def packHom : Cell V →+ Packed V where
  toFun := pack
  map_zero' := by simp [pack, reduce, total, mismatch, delta0]
  map_add' u v := by
    apply Prod.ext
    · apply Prod.ext
      · simp [pack, reduce, total] <;> abel
      · funext j
        fin_cases j <;> simp [pack, reduce, mismatch, delta0] <;> abel
    · rfl

/-- An actual Z-linear full-state equivalence, not recovery from quotient data alone. -/
def splitEquiv : Cell V ≃ₗ[ℤ] Packed V where
  toFun := pack
  invFun := unpack
  left_inv := unpack_pack
  right_inv := pack_unpack
  map_add' := packHom.map_add
  map_smul' n v := map_zsmul packHom v n

/-- A selected integral section; it is generally NOT the energy minimizer. -/
def anchor (r : Reduced V) : Cell V := unpack (r, 0, 0)

@[simp] theorem reduce_anchor (r : Reduced V) : reduce (anchor r) = r := by
  exact congrArg Prod.fst (pack_unpack (r, 0, 0))

theorem reduce_surjective : Function.Surjective (reduce (V := V)) :=
  fun r => ⟨anchor r, reduce_anchor r⟩

def reduction : Cell V →ₗ[ℤ] Reduced V :=
  (LinearMap.fst ℤ (Reduced V) (V × V)).comp splitEquiv.toLinearMap

abbrev GaugeQuotient (V : Type*) [AddCommGroup V] :=
  Cell V ⧸ LinearMap.ker (reduction (V := V))

def quotientEquiv : GaugeQuotient V ≃ₗ[ℤ] Reduced V :=
  reduction.quotKerEquivOfSurjective reduce_surjective

@[simp] theorem quotientEquiv_mk (v : Cell V) :
    quotientEquiv (Submodule.Quotient.mk v) = reduce v := rfl

def shift (w : Triple V) (v : Cell V) : Cell V := (v.1 + w, v.2 + delta0 w)

/-- Integral gauges have total ZERO, with no averaging hypothesis or inverse of three. -/
theorem reduce_eq_iff_shift (u v : Cell V) :
    reduce u = reduce v ↔ ∃ w : Triple V, total w = 0 ∧ u = shift w v := by
  constructor
  · intro h
    have hs := congrArg Prod.fst h
    have he := congrArg Prod.snd h
    refine ⟨u.1 - v.1, ?_, ?_⟩
    · change total u.1 = total v.1 at hs
      calc
        total (u.1 - v.1) = total u.1 - total v.1 := by dsimp [total]; abel
        _ = 0 := by rw [hs, sub_self]
    · apply Prod.ext
      · change u.1 = v.1 + (u.1 - v.1); abel
      · have hd : delta0 (u.1 - v.1) = delta0 u.1 - delta0 v.1 := by
          funext j
          fin_cases j <;> simp [delta0] <;> abel
        change delta0 u.1 - u.2 = delta0 v.1 - v.2 at he
        change u.2 = v.2 + delta0 (u.1 - v.1)
        rw [hd]
        calc
          u.2 = delta0 u.1 - (delta0 u.1 - u.2) := by abel
          _ = delta0 u.1 - (delta0 v.1 - v.2) := by rw [he]
          _ = v.2 + (delta0 u.1 - delta0 v.1) := by abel
  · rintro ⟨w, hw, rfl⟩
    apply Prod.ext
    · change total (v.1 + w) = total v.1
      calc
        _ = total v.1 + total w := by dsimp [total]; abel
        _ = total v.1 := by rw [hw, add_zero]
    · funext j
      fin_cases j <;> simp [reduce, shift, mismatch, delta0] <;> abel

/-- One additive source map must act on vertices AND edges. -/
def mapFields (F : V →+ W) (v : Cell V) : Cell W :=
  (fun j => F (v.1 j), fun j => F (v.2 j))

theorem reduce_map (F : V →+ W) (v : Cell V) :
    reduce (mapFields F v) = (F (reduce v).1, fun j => F ((reduce v).2 j)) := by
  apply Prod.ext
  · simp [reduce, total, mapFields]
  · funext j
    fin_cases j <;> simp [reduce, mapFields, mismatch, delta0]

theorem anchor_map (F : V →+ W) (r : Reduced V) :
    anchor (F r.1, fun j => F (r.2 j)) = mapFields F (anchor r) := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    simp [anchor, unpack, mapFields, delta0]

end GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
```
