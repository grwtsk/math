/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239SyndromeFaithfulness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The actual global group and local characters are inputs, not constructed from
the finite bit table. Their point-first source evaluations remain explicit.
No native descent specialization or analytic BSD theorem is supplied. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator

/-- Bind every syndrome coordinate to an actual homomorphism on the full relation. -/
theorem syndrome_eq_character_on_relation
    {G : Type*} [AddCommGroup G] (points : Fin 32 → G)
    (characters : Fin 32 → G →+ ZMod 2)
    (sourceValues : ∀ (j i : Fin 32), characters j (points i) = characterMatrix i j)
    (c : Fin 32 → ℤ) (i : ZMod 32) :
    syndrome (fun j => (c j : ZMod 2)) i =
      characters (siteIndex i) (∑ j, c j • points j) := by
  simp only [syndrome, Matrix.mulVec_apply_eq_sum, Matrix.transpose_apply,
    map_sum, map_zsmul, zsmul_eq_mul, sourceValues]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Zero operator tests coefficient parity, not whether a native relation is zero. -/
theorem operator_eq_zero_iff_even_coefficients
    (level : ℕ) (χ : DirichletCharacter ℂ level) (c : Fin 32 → ℤ) :
    operator level χ (fun j => (c j : ZMod 2)) = 0 ↔ ∀ j, (2 : ℤ) ∣ c j := by
  rw [operator_eq_zero_iff]
  constructor
  · intro h j
    apply (ZMod.intCast_zmod_eq_zero_iff_dvd (c j) 2).mp
    exact congrFun h j
  · intro h
    funext j
    exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c j) 2).mpr (h j)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator
