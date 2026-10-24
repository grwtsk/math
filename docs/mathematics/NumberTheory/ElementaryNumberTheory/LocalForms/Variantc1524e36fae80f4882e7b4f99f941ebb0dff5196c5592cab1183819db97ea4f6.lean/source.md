# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.LocalForms.Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19a3510b8400143f68a4aaf5836da1fefaeffbbb` · SHA-256 `c1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Geometry
import Reduction

/-!
The reduced Cartan form and the reduced mutation action have different unit
criteria. These statements do not recover integer signs from residues or assert
an infinite-word limit. Direction: grwtsk contributors; construction: OpenAI Codex.
-/

namespace FormalResearch.MutationGame.LocalForms
open Matrix FormalResearch.MutationGame.Geometry

/-- The literal integer D4 Cartan form reduced modulo the specified modulus. -/
def d4ReducedCartan (m : ℕ) : Matrix (Fin 4) (Fin 4) (ZMod m) :=
  d4C.map (Int.castRingHom (ZMod m))

/-- The literal integer E8 Cartan form reduced modulo the specified modulus. -/
def e8ReducedCartan (m : ℕ) : Matrix (Fin 8) (Fin 8) (ZMod m) :=
  e8C.map (Int.castRingHom (ZMod m))

theorem d4_reduced_determinant (m : ℕ) : (d4ReducedCartan m).det = 4 := by
  have h := (Int.castRingHom (ZMod m)).map_det d4C
  rw [d4_integer_determinant] at h
  simpa [d4ReducedCartan] using h.symm

theorem e8_reduced_determinant (m : ℕ) : (e8ReducedCartan m).det = 1 := by
  have h := (Int.castRingHom (ZMod m)).map_det e8C
  rw [e8_integer_determinant] at h
  simpa [e8ReducedCartan] using h.symm

theorem d4_reduced_form_unit_iff (m : ℕ) :
    IsUnit (d4ReducedCartan m) ↔ Nat.Coprime 4 m := by
  rw [isUnit_iff_isUnit_det, d4_reduced_determinant]
  exact ZMod.isUnit_iff_coprime 4 m

theorem e8_reduced_form_unit (m : ℕ) : IsUnit (e8ReducedCartan m) := by
  apply (isUnit_iff_isUnit_det _).mpr
  rw [e8_reduced_determinant]
  exact isUnit_one

/-- At two, the D4 form is singular while its individual mutation actions remain
invertible by `reduced_mutation_isUnit`. -/
theorem d4_reduced_form_at_two : ¬ IsUnit (d4ReducedCartan 2) := by
  rw [d4_reduced_form_unit_iff]
  decide +kernel

theorem d4_prime_power_form_unit_iff (p k : ℕ) (hk : 0 < k) :
    IsUnit (d4ReducedCartan (p ^ k)) ↔ Nat.Coprime 4 p := by
  rw [d4_reduced_form_unit_iff, Nat.coprime_pow_right_iff hk]

/-- Every positive power of an odd modulus base preserves a nondegenerate D4
form; powers of two do not. E8 has determinant one for either choice. -/
theorem d4_prime_power_form_unit_iff_odd (p k : ℕ) (hk : 0 < k) :
    IsUnit (d4ReducedCartan (p ^ k)) ↔ Odd p := by
  rw [d4_prime_power_form_unit_iff p k hk]
  change Nat.Coprime (2 ^ 2) p ↔ Odd p
  rw [Nat.coprime_pow_left_iff (by decide : 0 < (2 : ℕ)), Nat.coprime_two_left]

end FormalResearch.MutationGame.LocalForms
```
