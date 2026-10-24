# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e62ba9766505dca08ca77670f77fa7637cf45e2` · SHA-256 `04a7c033688fa7b9176892db926067caeae7092d16924731c64724e9530ee796`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's Weierstrass invariants and finite residue fields (Apache-2.0).
Formalization assistance: OpenAI.

Raw-model residue calculations only. An elliptic special fiber below refers to
this displayed model. No DVR minimality, conductor exponent, or ABC inequality
is inferred from these calculations. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel
import Mathlib.Data.ZMod.Basic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The c4 invariant of the displayed integral model. -/
theorem freyWeierstrassInt_c4 (a b : ℤ) :
    (freyWeierstrassInt a b).c₄ = 16 * (a ^ 2 + a * b + b ^ 2) := by
  simp only [freyWeierstrassInt, WeierstrassCurve.c₄,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄]
  ring

/-- Source-bound c4 formula; this is not a conductor formula. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_c4
    (t : PrimitiveAdditiveTriple) :
    t.freyIntegralModel.c₄ =
      16 * ((t.a : ℤ) ^ 2 + (t.a : ℤ) * (t.b : ℤ) + (t.b : ℤ) ^ 2) :=
  freyWeierstrassInt_c4 _ _

/-- The raw discriminant is sixteen times a square, with multiplicities retained. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_delta_as_square
    (t : PrimitiveAdditiveTriple) :
    t.freyIntegralModel.Δ = 16 * ((t.a * t.b * t.c : ℕ) : ℤ) ^ 2 := by
  rw [t.freyIntegralModel_Δ]
  push_cast <;> ring

/-- Every divisor of abc contributes at least its square to the raw discriminant.
This guards against replacing discriminant multiplicities by prime support. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_square_dvd_delta
    (t : PrimitiveAdditiveTriple) (m : ℕ) (hd : m ∣ t.a * t.b * t.c) :
    (m : ℤ) ^ 2 ∣ t.freyIntegralModel.Δ := by
  obtain ⟨k, hk⟩ := hd
  refine ⟨16 * (k : ℤ) ^ 2, ?_⟩
  rw [t.freyIntegralModel_delta_as_square, hk]
  push_cast <;> ring

/-- Sixteen is nonzero in a field of characteristic different from two. -/
lemma frey_sixteen_ne_zero {K : Type*} [Field K] (h2 : (2 : K) ≠ 0) :
    (16 : K) ≠ 0 := by
  have h16 : (16 : K) = (2 : K) ^ 4 := by ring
  rw [h16]
  exact pow_ne_zero _ h2

/-- At a singular fiber of the factored cubic, the quadratic c4 factor is
nonzero unless both a and b vanish. No valuation or minimality is assumed. -/
theorem frey_c4_ne_zero_of_product_zero {K : Type*} [Field K]
    {a b : K} (h2 : (2 : K) ≠ 0) (hab : a ≠ 0 ∨ b ≠ 0)
    (hz : a * b * (a + b) = 0) :
    16 * (a ^ 2 + a * b + b ^ 2) ≠ 0 := by
  apply mul_ne_zero (frey_sixteen_ne_zero h2)
  rcases mul_eq_zero.mp hz with hab0 | hsum
  · rcases mul_eq_zero.mp hab0 with ha | hb
    · have hb0 : b ≠ 0 := by simpa [ha] using hab
      simpa [ha] using pow_ne_zero 2 hb0
    · have ha0 : a ≠ 0 := by simpa [hb] using hab
      simpa [hb] using pow_ne_zero 2 ha0
  · have hb : b = -a := by linear_combination hsum
    have ha0 : a ≠ 0 := by simpa [hb] using hab
    have heq : a ^ 2 + a * b + b ^ 2 = a ^ 2 := by rw [hb]; ring
    rw [heq]
    exact pow_ne_zero 2 ha0

/-- Reduction of the exact displayed integral coefficient tuple modulo p.
This does not choose a minimal model. -/
def PrimitiveAdditiveTriple.freyResidueModel
    (t : PrimitiveAdditiveTriple) (p : ℕ) : WeierstrassCurve (ZMod p) :=
  t.freyIntegralModel.map (Int.castRingHom (ZMod p))

/-- Reduction commutes with the discriminant of the displayed model. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_delta_cast
    (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (t.freyResidueModel p).Δ = (t.freyIntegralModel.Δ : ZMod p) := by
  simp [PrimitiveAdditiveTriple.freyResidueModel]

/-- Reduction commutes with c4 for the same displayed model. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_c4_cast
    (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (t.freyResidueModel p).c₄ = (t.freyIntegralModel.c₄ : ZMod p) := by
  simp [PrimitiveAdditiveTriple.freyResidueModel]

/-- The factored raw discriminant in the residue ring. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_delta
    (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (t.freyResidueModel p).Δ =
      16 * ((t.a * t.b * t.c : ℕ) : ZMod p) ^ 2 := by
  rw [t.freyResidueModel_delta_cast, t.freyIntegralModel_Δ]
  push_cast <;> ring

/-- The exact c4 expression in the residue ring. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_c4
    (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (t.freyResidueModel p).c₄ =
      16 * ((t.a : ZMod p) ^ 2 + (t.a : ZMod p) *
        (t.b : ZMod p) + (t.b : ZMod p) ^ 2) := by
  rw [t.freyResidueModel_c4_cast, t.freyIntegralModel_c4]
  push_cast <;> rfl

/-- The integral Bezout identity survives reduction, so the two parameters
cannot both vanish in a prime residue field. -/
theorem PrimitiveAdditiveTriple.freyResidueParameters_nonzero
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (t.a : ZMod p) ≠ 0 ∨ (t.b : ZMod p) ≠ 0 := by
  by_cases ha : (t.a : ZMod p) = 0
  · right
    intro hb
    have h := congrArg (fun z : ℤ => (z : ZMod p)) t.bezout_identity
    simp [ha, hb] at h
  · exact Or.inl ha

/-- An odd prime residue field has nonzero two. -/
lemma frey_two_ne_zero_mod (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    (2 : ZMod p) ≠ 0 := by
  intro h
  have hd : p ∣ 2 := (ZMod.natCast_eq_zero_iff 2 p).mp h
  have hp : p.Prime := Fact.out
  exact hp2 (Nat.le_antisymm (Nat.le_of_dvd (by decide) hd) hp.two_le)

/-- Complete raw discriminant support, including the exceptional prime two. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_delta_zero_iff
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (t.freyResidueModel p).Δ = 0 ↔ p = 2 ∨ p ∣ t.a * t.b * t.c := by
  by_cases hp2 : p = 2
  · subst p
    rw [t.freyResidueModel_delta]
    norm_num
  · have h16 : (16 : ZMod p) ≠ 0 :=
      frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
    rw [t.freyResidueModel_delta]
    simp [mul_eq_zero, h16, hp2, ZMod.natCast_eq_zero_iff]

/-- The same prime-support identity directly for the integral discriminant. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_prime_dvd_delta_iff
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (p : ℤ) ∣ t.freyIntegralModel.Δ ↔ p = 2 ∨ p ∣ t.a * t.b * t.c := by
  rw [← ZMod.intCast_zmod_eq_zero_iff_dvd,
    ← t.freyResidueModel_delta_cast]
  exact t.freyResidueModel_delta_zero_iff p

/-- The displayed special fiber is elliptic exactly away from its raw
bad-prime support. This statement does not invoke the DVR reduction API. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_isElliptic_iff
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (t.freyResidueModel p).IsElliptic ↔
      p ≠ 2 ∧ ¬ p ∣ t.a * t.b * t.c := by
  rw [WeierstrassCurve.isElliptic_iff, isUnit_iff_ne_zero,
    ne_eq, t.freyResidueModel_delta_zero_iff]
  exact not_or

/-- At an odd prime dividing abc, c4 is nonzero in the residue field.
This supplies the invariant input to, not a replacement for, minimality and
multiplicative-reduction theorems. -/
theorem PrimitiveAdditiveTriple.freyResidueModel_c4_ne_zero
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hd : p ∣ t.a * t.b * t.c) :
    (t.freyResidueModel p).c₄ ≠ 0 := by
  rw [t.freyResidueModel_c4]
  have hsum : (t.a : ZMod p) + (t.b : ZMod p) = (t.c : ZMod p) := by
    exact_mod_cast t.sum_eq
  have hz : (t.a : ZMod p) * (t.b : ZMod p) *
      ((t.a : ZMod p) + (t.b : ZMod p)) = 0 := by
    rw [hsum]
    have h := (ZMod.natCast_eq_zero_iff (t.a * t.b * t.c) p).mpr hd
    simpa only [Nat.cast_mul] using h
  exact frey_c4_ne_zero_of_product_zero (frey_two_ne_zero_mod p hp2)
    (t.freyResidueParameters_nonzero p) hz

/-- Integral nondivisibility formulation of the same c4 residue calculation. -/
theorem PrimitiveAdditiveTriple.freyIntegralModel_prime_not_dvd_c4
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hd : p ∣ t.a * t.b * t.c) :
    ¬ (p : ℤ) ∣ t.freyIntegralModel.c₄ := by
  rw [← ZMod.intCast_zmod_eq_zero_iff_dvd,
    ← t.freyResidueModel_c4_cast]
  exact t.freyResidueModel_c4_ne_zero p hp2 hd

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
