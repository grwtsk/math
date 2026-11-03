/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib additive-homomorphism facts retain upstream authorship and licenses. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Obstruction to a direct integer Wronskian transplant

An additive map on the integers obeying the ordinary Leibniz rule is
identically zero. Thus a polynomial differentiation argument cannot be
copied into integer ABC by assuming a nonzero derivation with those laws.
This does not rule out other arithmetic substitutes or integer ABC.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.IntegerDerivationObstruction

theorem leibniz_additive_one_zero (d : ℤ →+ ℤ)
    (hLeibniz : ∀ a b : ℤ, d (a * b) = a * d b + b * d a) : d 1 = 0 := by
  have h := hLeibniz 1 1
  simp only [one_mul] at h
  omega

theorem leibniz_additive_map_zero (d : ℤ →+ ℤ)
    (hLeibniz : ∀ a b : ℤ, d (a * b) = a * d b + b * d a) :
    ∀ n : ℤ, d n = 0 := by
  have h1 := leibniz_additive_one_zero d hLeibniz
  intro n
  have h := d.map_zsmul (1 : ℤ) n
  simpa [h1] using h

end GRWTSK.NumberTheory.ABC.IntegerDerivationObstruction
