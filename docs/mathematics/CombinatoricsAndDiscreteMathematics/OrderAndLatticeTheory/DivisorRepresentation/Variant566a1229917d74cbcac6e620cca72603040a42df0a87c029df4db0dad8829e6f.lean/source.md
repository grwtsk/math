# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DivisorRepresentation.Variant566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33ae7543dab892ba8e45b42fb4f1e85f7513c454` · SHA-256 `566a1229917d74cbcac6e620cca72603040a42df0a87c029df4db0dad8829e6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Positive divisor lattices and cyclic principal colors

For a nonzero modulus the order is divisibility, rather than the usual order on
natural numbers. The valuation representation retains the exact prime-power map.
The cyclic representation uses the additive group signature of `ZMod M`.

Originating direction and theorem selection: grwtsk contributors.
Construction and Lean proof development: Codex, October 2026.
-/

namespace FormalResearch.FiniteLatticeArithmetic

/-- Positive divisors of the declared, nonzero modulus. -/
def Divisor (M : ℕ) := {d : ℕ // d ∣ M}

namespace Divisor

variable {M : ℕ} [NeZero M]

instance : Coe (Divisor M) ℕ := ⟨Subtype.val⟩

@[ext] theorem ext {d e : Divisor M} (h : (d : ℕ) = e) : d = e := Subtype.ext h

theorem ne_zero (d : Divisor M) : (d : ℕ) ≠ 0 := Nat.ne_zero_of_dvd_ne_zero (NeZero.ne M) d.property

theorem pos (d : Divisor M) : 0 < (d : ℕ) := Nat.pos_of_ne_zero d.ne_zero

instance : PartialOrder (Divisor M) where
  le d e := (d : ℕ) ∣ (e : ℕ)
  le_refl _ := dvd_refl _
  le_trans _ _ _ := dvd_trans
  le_antisymm _ _ hde hed := Subtype.ext (Nat.dvd_antisymm hde hed)

@[simp] theorem le_iff (d e : Divisor M) : d ≤ e ↔ (d : ℕ) ∣ (e : ℕ) := Iff.rfl

instance : Lattice (Divisor M) where
  sup d e := ⟨Nat.lcm d e, Nat.lcm_dvd d.property e.property⟩
  le_sup_left _ _ := Nat.dvd_lcm_left _ _
  le_sup_right _ _ := Nat.dvd_lcm_right _ _
  sup_le _ _ _ hde hef := Nat.lcm_dvd hde hef
  inf d e := ⟨Nat.gcd d e, (Nat.gcd_dvd_left _ _).trans d.property⟩
  inf_le_left _ _ := Nat.gcd_dvd_left _ _
  inf_le_right _ _ := Nat.gcd_dvd_right _ _
  le_inf _ _ _ hde hef := Nat.dvd_gcd hde hef

instance : BoundedOrder (Divisor M) where
  bot := ⟨1, one_dvd _⟩
  bot_le _ := one_dvd _
  top := ⟨M, dvd_refl _⟩
  le_top d := d.property

@[simp] theorem coe_bot : ((⊥ : Divisor M) : ℕ) = 1 := rfl
@[simp] theorem coe_top : ((⊤ : Divisor M) : ℕ) = M := rfl
@[simp] theorem coe_inf (d e : Divisor M) : ((d ⊓ e : Divisor M) : ℕ) = Nat.gcd d e := rfl
@[simp] theorem coe_sup (d e : Divisor M) : ((d ⊔ e : Divisor M) : ℕ) = Nat.lcm d e := rfl

noncomputable instance : Fintype (Divisor M) :=
  Fintype.ofEquiv {d // d ∈ M.divisors}
    { toFun := fun d => ⟨d, Nat.dvd_of_mem_divisors d.property⟩
      invFun := fun d => ⟨d, Nat.mem_divisors.mpr ⟨d.property, NeZero.ne M⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }

/-- Exact prime valuations, bounded by the modulus valuation, as an order isomorphism. -/
noncomputable def valuationOrderIso : Divisor M ≃o Set.Iic M.factorization where
  toFun d := ⟨(d : ℕ).factorization,
    (Nat.factorization_le_iff_dvd d.ne_zero (NeZero.ne M)).mpr d.property⟩
  invFun f := ⟨f.val.prod (· ^ ·), Nat.prod_pow_dvd_of_le_factorization f.property⟩
  left_inv d := Subtype.ext (Nat.prod_factorization_pow_eq_self d.ne_zero)
  right_inv f := Subtype.ext (Nat.factorization_prod_pow_eq_self_of_le_factorization f.property)
  map_rel_iff' := fun {d e} => Nat.factorization_le_iff_dvd d.ne_zero e.ne_zero

@[simp] theorem valuationOrderIso_apply (d : Divisor M) :
    (valuationOrderIso d).val = (d : ℕ).factorization := rfl

/-- Reconstruction is exact; a divisor coordinate is not a lossy probe pattern. -/
theorem valuation_reconstruct (d : Divisor M) :
    (valuationOrderIso d).val.prod (· ^ ·) = (d : ℕ) :=
  Nat.prod_factorization_pow_eq_self d.ne_zero

/-- The number of divisor coordinates is the product of the finite chain lengths. -/
theorem card_eq_product :
    Fintype.card (Divisor M) = ∏ p ∈ M.factorization.support, (M.factorization p + 1) := by
  rw [Fintype.card_congr valuationOrderIso.toEquiv]
  classical
  have h := Finsupp.card_Iic M.factorization
  simpa using h

end Divisor

end FormalResearch.FiniteLatticeArithmetic
```
