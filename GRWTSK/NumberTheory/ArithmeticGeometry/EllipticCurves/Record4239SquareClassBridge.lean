/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Record curve and rational points: N. Elkies, Z. Klagsbrun, S. Li (ICARM #4239).
External explicit 2-descent architecture: Michael Stoll's EllipticCurves project,
building on Cremona-Brumer descent; no upstream Lean source is copied here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No theorem here constructs the 2-descent map for the record curve or
proves that the selected finite residue characters are homomorphisms.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239RankCriterion
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Dimension.Finite

/-!
# ICARM #4239: source-oriented, Stoll-shaped character factorization

The existing finite source table uses ROWS = 32 actual rational points and
COLUMNS = 32 local (good prime, simple root) quadratic-character labels:
  characterMatrix pointIndex characterIndex.

A genuine group homomorphism extracted from Stoll's x-T descent has shape
  mu : Multiplicative G →* C
where C is an algebraically specified square-class group.
A local square-class character has shape
  epsilon : C →* Multiplicative (ZMod 2).
The composition gives a genuine additive character G →+ ZMod 2.

THIS IS A CONDITIONAL INTERFACE:
  * No global Weierstrass group G, square-class group C, mu, or epsilon is
    manufactured from arbitrary bit data.
  * The required source identity is epsilon_j (mu (ofAdd P_i)) =
    ofAdd (characterMatrix i j), with point index FIRST.
  * The old Record4239RankCriterion accepted a transposed-looking
    characterValues parameter; this module introduces the correct source
    orientation and proves injectivity of the TRANSPOSED evaluation matrix.

The only finite arithmetic imported is the explicit inverse in
Record4239FiniteCharacterMatrix. That file remains source-only until replayed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

open GRWTSK.Algebra.LinearAlgebra.ModTwoIndependenceDescent

/-- In a finite square matrix over a field, a left inverse is also a right
inverse. This uses Mathlib's Dedekind-finite matrix theorem, not a numerical
rank estimate. -/
theorem characterMatrix_mul_dual :
    characterMatrix * dualMatrix = 1 := by
  exact (Matrix.mul_eq_one_comm_of_equiv
    (A := dualMatrix) (B := characterMatrix) (Equiv.refl (Fin 32))).mp
    dual_mul_character

/-- The source-oriented character evaluation matrix is the transpose of
the stored point-by-character table. The transpose has a left inverse. -/
theorem dualTranspose_mul_characterTranspose :
    dualMatrix.transpose * characterMatrix.transpose = 1 := by
  calc
    dualMatrix.transpose * characterMatrix.transpose =
        (characterMatrix * dualMatrix).transpose := by
          rw [Matrix.transpose_mul]
    _ = 1 := by rw [characterMatrix_mul_dual, Matrix.transpose_one]

/-- The matrix needed for evaluating all characters on an integer relation
has trivial kernel. It is NOT the untransposed source matrix. -/
theorem characterTranspose_mulVec_injective :
    Function.Injective (Matrix.mulVec characterMatrix.transpose) := by
  intro x y hxy
  have h := congrArg (Matrix.mulVec dualMatrix.transpose) hxy
  simpa only [Matrix.mulVec_mulVec, dualTranspose_mul_characterTranspose,
    Matrix.one_mulVec] using h

/-- The source-point / character-column oriented version of the existing
mod-2 descent criterion. Unlike a renamed table, the indices now match
the actual stored 1024 residues. No group is constructed by this theorem. -/
theorem linearIndependent_of_sourceColumnCharacters
    {G : Type*} [AddCommGroup G]
    (points : Fin 32 → G)
    (characters : Fin 32 → G →+ ZMod 2)
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (sourceValues : ∀ (j i : Fin 32),
      characters j (points i) = characterMatrix i j) :
    LinearIndependent ℤ points := by
  classical
  apply linearIndependent_of_even_relations points noTwoTorsion
  intro c hc i
  let coeff : Fin 32 → ZMod 2 := fun j => (c j : ZMod 2)
  have hzero : characterMatrix.transpose.mulVec coeff = 0 := by
    funext j
    have hchar : characters j (∑ k, c k • points k) = 0 := by
      rw [hc]
      exact map_zero _
    simp only [map_sum, map_zsmul, zsmul_eq_mul, sourceValues] at hchar
    simpa only [Matrix.mulVec_apply_eq_sum, Matrix.transpose_apply,
      coeff, mul_comm, Pi.zero_apply] using hchar
  have hcoeff : coeff = 0 := by
    apply characterTranspose_mulVec_injective
    simpa using hzero
  have hi := congrArg (fun f : Fin 32 → ZMod 2 => f i) hcoeff
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c i) 2).mp (by
    simpa [coeff] using hi)

/-- A bona fide additive character obtained by composing a multiplicative
descent homomorphism with a multiplicative square-class character.
In Stoll's source, the former has shape
  WeierstrassCurve.Affine.μ : Multiplicative W.Point →* W.M.
Constructing the second map at each prime is STILL AN OPEN SUPPLIER. -/
def composedDescentCharacter
    {G C : Type*} [AddCommGroup G] [Monoid C]
    (mu : Multiplicative G →* C)
    (epsilon : C →* Multiplicative (ZMod 2)) : G →+ ZMod 2 where
  toFun x := (epsilon (mu (Multiplicative.ofAdd x))).toAdd
  map_zero' := by simp
  map_add' x y := by simp

@[simp]
theorem composedDescentCharacter_apply
    {G C : Type*} [AddCommGroup G] [Monoid C]
    (mu : Multiplicative G →* C)
    (epsilon : C →* Multiplicative (ZMod 2)) (x : G) :
    composedDescentCharacter mu epsilon x =
      (epsilon (mu (Multiplicative.ofAdd x))).toAdd := rfl

/-- Exact factorization consumer. The local character maps and their
source-bound values are inputs, NOT silently constructed from the matrix. -/
theorem linearIndependent_of_descentFactorization
    {G C : Type*} [AddCommGroup G] [Monoid C]
    (points : Fin 32 → G)
    (mu : Multiplicative G →* C)
    (epsilon : Fin 32 → C →* Multiplicative (ZMod 2))
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (sourceValues : ∀ (j i : Fin 32),
      (epsilon j (mu (Multiplicative.ofAdd (points i)))).toAdd =
        characterMatrix i j) :
    LinearIndependent ℤ points := by
  apply linearIndependent_of_sourceColumnCharacters points
    (fun j => composedDescentCharacter mu (epsilon j)) noTwoTorsion
  intro j i
  exact sourceValues j i

/-- Conditional rank conclusion with an explicit finite-generation hypothesis.
This is an abstract module theorem, NOT the assertion that the actual ICARM
elliptic-curve point group has been constructed or verified. -/
theorem finrank_ge_32_of_descentFactorization
    {G C : Type*} [AddCommGroup G] [Module.Finite ℤ G] [Monoid C]
    (points : Fin 32 → G)
    (mu : Multiplicative G →* C)
    (epsilon : Fin 32 → C →* Multiplicative (ZMod 2))
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (sourceValues : ∀ (j i : Fin 32),
      (epsilon j (mu (Multiplicative.ofAdd (points i)))).toAdd =
        characterMatrix i j) :
    32 ≤ Module.finrank ℤ G := by
  have h := linearIndependent_of_descentFactorization
    points mu epsilon noTwoTorsion sourceValues
  simpa using h.fintype_card_le_finrank

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
