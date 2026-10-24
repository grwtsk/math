# Complete source: GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19e703009cbd6ce4e9005b05b735e9b806d9c3c8` · SHA-256 `dd8f7f59201e7e173ec9dee089876c5686fb50a1666066aff8718658c278e2a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
import Mathlib.LinearAlgebra.Matrix.Integer

/-!
# Integral lattice scaling for the CM trace polarization

For a finite Galois CM number field, choose the canonical finite rational basis
of E.  Its integer span is a full Z-lattice in the underlying rational vector
space.  The rational trace-pairing matrix has finitely many rational entries,
so Mathlib's rational-matrix denominator clears every entry simultaneously.

This file constructs the resulting integer matrix and proves that the scaled
trace pairing on integer-coordinate lattice vectors is exactly its integer
bilinear form.

No Riemann bilinear criterion or abelian-variety realization occurs here.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization

open CMNumberFieldIndex
open CMTracePolarization
open CMArchimedeanPositivity

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

local notation "n" => Module.finrank ℚ E

/-- Fixed rational basis used to present the full integer-coordinate lattice. -/
noncomputable def rationalBasis : Module.Basis (Fin n) ℚ E :=
  Module.finBasis ℚ E

/-- A lattice vector is a rational vector whose coordinates in the selected
basis are integers. -/
def latticeVector (a : Fin n → ℤ) : E :=
  (rationalBasis E).equivFun.symm (fun i => (a i : ℚ))

theorem latticeVector_eq_sum (a : Fin n → ℤ) :
    latticeVector E a =
      ∑ i, (a i : ℚ) • rationalBasis E i := by
  exact (Basis.equivFun_symm_apply (rationalBasis E) (fun i => (a i : ℚ)))

/-- Integer coordinates embed injectively into the rational vector space. -/
theorem latticeVector_injective :
    Function.Injective (latticeVector E) := by
  intro a b hab
  apply funext
  intro i
  exact_mod_cast DFunLike.congr_fun
    ((rationalBasis E).equivFun.injective hab) i

/-- Matrix of the rational trace pairing in the selected rational basis. -/
def pairingMatrix
    {v : OddSignRow E}
    (X : SignControlledXi E v) :
    Matrix (Fin n) (Fin n) ℚ :=
  fun i j =>
    tracePairing E X.xi (rationalBasis E i) (rationalBasis E j)

/-- Positive denominator clearing every entry of the rational pairing matrix. -/
def latticeScale
    {v : OddSignRow E}
    (X : SignControlledXi E v) : ℕ :=
  (pairingMatrix E X).den

/-- Integer matrix obtained after simultaneously clearing all denominators. -/
def integralPairingMatrix
    {v : OddSignRow E}
    (X : SignControlledXi E v) :
    Matrix (Fin n) (Fin n) ℤ :=
  (pairingMatrix E X).num

theorem latticeScale_ne_zero
    {v : OddSignRow E}
    (X : SignControlledXi E v) :
    latticeScale E X ≠ 0 :=
  Matrix.den_ne_zero (pairingMatrix E X)

/-- Every scaled basis entry is the corresponding integer numerator entry. -/
theorem scaled_pairingMatrix_entry
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (i j : Fin n) :
    (latticeScale E X : ℚ) * pairingMatrix E X i j =
      (integralPairingMatrix E X i j : ℚ) := by
  have h := Matrix.num_div_den (pairingMatrix E X) i j
  change
    ((pairingMatrix E X).den : ℚ) * pairingMatrix E X i j =
      ((pairingMatrix E X).num i j : ℚ)
  rw [← h]
  field_simp [Matrix.den_ne_zero (pairingMatrix E X)]

/-- Integer bilinear form on integer coordinate vectors. -/
def integralPairing
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) : ℤ :=
  ∑ i, ∑ j,
    a i * integralPairingMatrix E X i j * b j

/-- Rational coordinate form before denominator clearing. -/
def rationalCoordinatePairing
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) : ℚ :=
  ∑ i, ∑ j,
    (a i : ℚ) * pairingMatrix E X i j * (b j : ℚ)

/-- The scaled rational coordinate form is literally the cast of the integer
bilinear form. -/
theorem scaled_rationalCoordinatePairing_eq_intCast
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    (latticeScale E X : ℚ) * rationalCoordinatePairing E X a b =
      (integralPairing E X a b : ℚ) := by
  unfold rationalCoordinatePairing integralPairing
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  rw [show
      (latticeScale E X : ℚ) *
          ((a i : ℚ) * pairingMatrix E X i j * (b j : ℚ)) =
        (a i : ℚ) *
          ((latticeScale E X : ℚ) * pairingMatrix E X i j) *
          (b j : ℚ) by ring]
  rw [scaled_pairingMatrix_entry E X i j]
  norm_cast

/-- Expanding both lattice vectors in the chosen basis identifies the rational
trace pairing with the rational coordinate matrix form. -/
theorem tracePairing_latticeVector_eq_coordinate
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    tracePairing E X.xi (latticeVector E a) (latticeVector E b) =
      rationalCoordinatePairing E X a b := by
  rw [latticeVector_eq_sum E a, latticeVector_eq_sum E b]
  simp [rationalCoordinatePairing, pairingMatrix,
    tracePairing, Finset.mul_sum, Finset.sum_mul, map_sum, map_smul,
    Algebra.smul_def, mul_assoc, mul_left_comm, mul_comm]

/-- The selected integer-coordinate lattice makes a single positive integer
multiple of the alternating rational trace pairing integral on every pair of
lattice vectors. -/
theorem scaled_tracePairing_lattice_integral
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    (latticeScale E X : ℚ) *
        tracePairing E X.xi (latticeVector E a) (latticeVector E b) =
      (integralPairing E X a b : ℚ) := by
  rw [tracePairing_latticeVector_eq_coordinate E X]
  exact scaled_rationalCoordinatePairing_eq_intCast E X a b

/-- Alternation survives the integral scaling. -/
theorem integralPairing_self
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a : Fin n → ℤ) :
    integralPairing E X a a = 0 := by
  apply Int.cast_injective (α := ℚ)
  rw [← scaled_tracePairing_lattice_integral E X]
  rw [tracePairing_self E X.toTracePolarizationData]
  simp

/-- Compact source-level certificate for the lattice/scaling stage consumed by
a later Riemann criterion theorem. -/
structure IntegralLatticePolarization
    (v : OddSignRow E)
    (X : SignControlledXi E v) where
  scale : ℕ
  scale_ne_zero : scale ≠ 0
  vector : (Fin n → ℤ) → E
  vector_injective : Function.Injective vector
  pairing : (Fin n → ℤ) → (Fin n → ℤ) → ℤ
  scaled_pairing :
    ∀ a b,
      (scale : ℚ) * tracePairing E X.xi (vector a) (vector b) =
        (pairing a b : ℚ)
  alternating : ∀ a, pairing a a = 0

/-- Canonical finite-basis integer lattice and denominator-cleared pairing. -/
noncomputable def canonicalIntegralLatticePolarization
    {v : OddSignRow E}
    (X : SignControlledXi E v) :
    IntegralLatticePolarization E v X where
  scale := latticeScale E X
  scale_ne_zero := latticeScale_ne_zero E X
  vector := latticeVector E
  vector_injective := latticeVector_injective E
  pairing := integralPairing E X
  scaled_pairing := scaled_tracePairing_lattice_integral E X
  alternating := integralPairing_self E X

end

end GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization
```
