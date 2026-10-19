/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib polynomial quotients and Weierstrass equations (Apache-2.0).
Formalization assistance: OpenAI.

A compatible finite jet at every parameter order on the SAME marked Frey
curve. These source proof scripts do not identify the complete local ring,
construct all global sections, or prove an arithmetic height upper bound.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Polynomial

/-- Order-N parameter ring, including order zero. -/
abbrev FreyJetRing (N : ℕ) := AdjoinRoot ((X : ℚ[X]) ^ (N + 1))

/-- The source-identified nilpotent parameter at order N. -/
noncomputable def freyHigherParameter (N : ℕ) : FreyJetRing N :=
  AdjoinRoot.root ((X : ℚ[X]) ^ (N + 1))

/-- Exact quotient relation at every finite order. -/
theorem freyHigherParameter_pow (N : ℕ) : freyHigherParameter N ^ (N + 1) = 0 := by
  simpa [freyHigherParameter] using AdjoinRoot.eval₂_root ((X : ℚ[X]) ^ (N + 1))

/-- Actual truncation of parameter rings; this is not a map of sampled pixels. -/
noncomputable def freyJetTruncate (M N : ℕ) (hMN : M ≤ N) :
    FreyJetRing N →+* FreyJetRing M :=
  AdjoinRoot.map (RingHom.id ℚ) ((X : ℚ[X]) ^ (N + 1))
    ((X : ℚ[X]) ^ (M + 1)) (by
      simp only [Polynomial.map_id]
      refine ⟨(X : ℚ[X]) ^ (N - M), ?_⟩
      rw [← pow_add]
      congr 1
      omega)

@[simp] theorem freyJetTruncate_parameter (M N : ℕ) (hMN : M ≤ N) :
    freyJetTruncate M N hMN (freyHigherParameter N) = freyHigherParameter M := by
  simp [freyJetTruncate, freyHigherParameter]

@[simp] theorem freyJetTruncate_scalar (M N : ℕ) (hMN : M ≤ N) (q : ℚ) :
    freyJetTruncate M N hMN (algebraMap ℚ (FreyJetRing N) q) =
      algebraMap ℚ (FreyJetRing M) q := by
  simp [freyJetTruncate, AdjoinRoot.algebraMap_eq]

/-- Truncation to the same order is the identity on the whole quotient ring. -/
theorem freyJetTruncate_id (N : ℕ) :
    freyJetTruncate N N (le_refl N) = RingHom.id (FreyJetRing N) := by
  apply AdjoinRoot.ringHom_ext
  · ext q
    change freyJetTruncate N N (le_refl N)
      (algebraMap ℚ (FreyJetRing N) q) = algebraMap ℚ (FreyJetRing N) q
    exact freyJetTruncate_scalar N N (le_refl N) q
  · change freyJetTruncate N N (le_refl N) (freyHigherParameter N) = freyHigherParameter N
    exact freyJetTruncate_parameter N N (le_refl N)

/-- Actual truncation maps compose, with source and target orders explicit. -/
theorem freyJetTruncate_comp (L M N : ℕ) (hLM : L ≤ M) (hMN : M ≤ N) :
    (freyJetTruncate L M hLM).comp (freyJetTruncate M N hMN) =
      freyJetTruncate L N (hLM.trans hMN) := by
  apply AdjoinRoot.ringHom_ext
  · ext q
    change freyJetTruncate L M hLM
      (freyJetTruncate M N hMN (algebraMap ℚ (FreyJetRing N) q)) =
        freyJetTruncate L N (hLM.trans hMN) (algebraMap ℚ (FreyJetRing N) q)
    simp only [freyJetTruncate_scalar]
  · change freyJetTruncate L M hLM
      (freyJetTruncate M N hMN (freyHigherParameter N)) =
        freyJetTruncate L N (hLM.trans hMN) (freyHigherParameter N)
    simp only [freyJetTruncate_parameter]

/-- The second shifted cubic coefficient, not a metric curvature claim. -/
def PrimitiveAdditiveTriple.freyPortQuadraticCoefficient
    (t : PrimitiveAdditiveTriple) (i : Fin 3) : ℚ :=
  3 * t.freyPortRoot i + (t.b : ℚ) - (t.a : ℚ)

/-- The exact order-N x coordinate. N iterations are sufficient, though not
always minimal, because the residual has order at least 2N+2. -/
noncomputable def PrimitiveAdditiveTriple.freyHigherX
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) : FreyJetRing N :=
  algebraMap ℚ (FreyJetRing N) (t.freyPortRoot i) +
    FreyJetRecursion.iterate
      (algebraMap ℚ (FreyJetRing N) ((t.freyPortJacobian i : ℚ)⁻¹))
      (algebraMap ℚ (FreyJetRing N) (t.freyPortQuadraticCoefficient i))
      (freyHigherParameter N) N

/-- The supplied inverse Jacobian remains an inverse in every quotient ring. -/
theorem PrimitiveAdditiveTriple.freyHigherJacobian_inverse
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    algebraMap ℚ (FreyJetRing N) (t.freyPortJacobian i : ℚ) *
      algebraMap ℚ (FreyJetRing N) ((t.freyPortJacobian i : ℚ)⁻¹) = 1 := by
  rw [← map_mul, mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i), map_one]

/-- Exact shifted equation at every finite order. -/
theorem PrimitiveAdditiveTriple.freyHigherX_shifted
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    let z := t.freyHigherX i N - algebraMap ℚ (FreyJetRing N) (t.freyPortRoot i)
    algebraMap ℚ (FreyJetRing N) (t.freyPortJacobian i : ℚ) * z +
      algebraMap ℚ (FreyJetRing N) (t.freyPortQuadraticCoefficient i) * z ^ 2 + z ^ 3 =
        freyHigherParameter N ^ 2 := by
  dsimp only [PrimitiveAdditiveTriple.freyHigherX]
  simp only [add_sub_cancel_left]
  apply FreyJetRecursion.iterate_solves _ _ _ _ (t.freyHigherJacobian_inverse i N)
  exact FreyJetRecursion.power_zero_of_le _ (freyHigherParameter_pow N) (by omega)

/-- The full factored Frey equation, exactly in Q[T]/(T^(N+1)). -/
theorem PrimitiveAdditiveTriple.freyHigherX_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    t.freyHigherX i N *
      (t.freyHigherX i N - algebraMap ℚ (FreyJetRing N) (t.a : ℚ)) *
      (t.freyHigherX i N + algebraMap ℚ (FreyJetRing N) (t.b : ℚ)) =
        freyHigherParameter N ^ 2 := by
  let f := algebraMap ℚ (FreyJetRing N)
  let r := f (t.freyPortRoot i)
  let z := t.freyHigherX i N - r
  have hr : r * (r - f (t.a : ℚ)) * (r + f (t.b : ℚ)) = 0 := by
    simpa only [r, map_mul, map_sub, map_add, map_zero] using
      congrArg f (t.freyPortRoot_cubic i)
  have hd : f (t.freyPortJacobian i : ℚ) =
      3 * r ^ 2 + 2 * (f (t.b : ℚ) - f (t.a : ℚ)) * r -
        f (t.a : ℚ) * f (t.b : ℚ) := by
    simpa only [r, map_mul, map_sub, map_add, map_pow, map_ofNat] using
      congrArg f (t.freyPortJacobian_derivative i)
  have hh : f (t.freyPortQuadraticCoefficient i) =
      3 * r + f (t.b : ℚ) - f (t.a : ℚ) := by
    simp only [PrimitiveAdditiveTriple.freyPortQuadraticCoefficient,
      map_sub, map_add, map_mul, map_ofNat, r]
  have hx : t.freyHigherX i N = r + z := by dsimp [z]; ring
  calc
    t.freyHigherX i N * (t.freyHigherX i N - f (t.a : ℚ)) *
        (t.freyHigherX i N + f (t.b : ℚ)) =
      r * (r - f (t.a : ℚ)) * (r + f (t.b : ℚ)) +
        f (t.freyPortJacobian i : ℚ) * z +
        f (t.freyPortQuadraticCoefficient i) * z ^ 2 + z ^ 3 := by
          rw [hx, hd, hh]
          ring
    _ = freyHigherParameter N ^ 2 := by
      rw [hr, zero_add]
      exact t.freyHigherX_shifted i N

/-- Bind the all-order construction to Mathlib's actual affine Equation. -/
theorem PrimitiveAdditiveTriple.freyHigherJet_equation
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    (t.freyCurve.map (algebraMap ℚ (FreyJetRing N))).toAffine.Equation
      (t.freyHigherX i N) (freyHigherParameter N) := by
  rw [WeierstrassCurve.Affine.equation_iff]
  have h := (t.freyHigherX_cubic i N).symm
  simp only [PrimitiveAdditiveTriple.freyCurve, freyWeierstrass,
    WeierstrassCurve.map, map_zero, map_sub, map_neg, map_mul, zero_mul, add_zero]
  calc
    freyHigherParameter N ^ 2 = _ := h
    _ = _ := by ring

/-- The finite levels agree under actual truncation. This is coefficient-level
coherence of one source, not merely agreement in degree or sampled values. -/
theorem PrimitiveAdditiveTriple.freyHigherX_truncate
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (M N : ℕ) (hMN : M ≤ N) :
    freyJetTruncate M N hMN (t.freyHigherX i N) = t.freyHigherX i M := by
  unfold PrimitiveAdditiveTriple.freyHigherX
  rw [map_add, FreyJetRecursion.map_iterate]
  simp only [freyJetTruncate_scalar, freyJetTruncate_parameter]
  congr 1
  exact FreyJetRecursion.iterate_stable _ _ _ _
    (t.freyHigherJacobian_inverse i M) (M + 1) N M
    (freyHigherParameter_pow M) (by omega) (by omega)

/-- Order two recovers the preceding v0.9 quadratic construction exactly. -/
theorem PrimitiveAdditiveTriple.freyHigherX_order_two
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyHigherX i 2 = t.freyQuadraticX i := by
  unfold PrimitiveAdditiveTriple.freyHigherX PrimitiveAdditiveTriple.freyQuadraticX
  change algebraMap ℚ FreyQuadraticJetRing (t.freyPortRoot i) +
      FreyJetRecursion.iterate _ _ freyJetParameter 2 =
    algebraMap ℚ FreyQuadraticJetRing (t.freyPortRoot i) +
      algebraMap ℚ FreyQuadraticJetRing ((t.freyPortJacobian i : ℚ)⁻¹) * freyJetParameter ^ 2
  congr 1
  calc
    FreyJetRecursion.iterate _ _ freyJetParameter 2 =
        FreyJetRecursion.iterate _ _ freyJetParameter 1 :=
      FreyJetRecursion.iterate_stable _ _ _ _
        (t.freyHigherJacobian_inverse i 2) 3 2 1 freyJetParameter_cube
        (by decide) (by decide)
    _ = _ := FreyJetRecursion.iterate_one _ _ _

/-- Integral shifted coefficient h=3r+b-a in the retained source order. -/
def PrimitiveAdditiveTriple.freyPortQuadraticCoefficientInt
    (t : PrimitiveAdditiveTriple) (i : Fin 3) : ℤ :=
  ![(t.b : ℤ) - (t.a : ℤ), 2 * (t.a : ℤ) + (t.b : ℤ),
    -(t.a : ℤ) - 2 * (t.b : ℤ)] i

/-- Exact integer/rational identity for h, with no chart change. -/
theorem PrimitiveAdditiveTriple.freyPortQuadraticCoefficient_cast
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyPortQuadraticCoefficientInt i : ℚ) = t.freyPortQuadraticCoefficient i := by
  fin_cases i <;>
    simp [PrimitiveAdditiveTriple.freyPortQuadraticCoefficientInt,
      PrimitiveAdditiveTriple.freyPortQuadraticCoefficient,
      PrimitiveAdditiveTriple.freyPortRoot] <;> ring

/-- The unreduced rational polynomial approximant. It is NOT itself an exact
curve parametrization; exactness occurs after quotienting at the selected order. -/
def PrimitiveAdditiveTriple.freyJetApproximantPolynomial
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) : ℚ[X] :=
  FreyJetRecursion.iterate (C ((t.freyPortJacobian i : ℚ)⁻¹))
    (C (t.freyPortQuadraticCoefficient i)) X n

/-- An explicit integral numerator polynomial, retaining the growing depth. -/
def PrimitiveAdditiveTriple.freyJetNumeratorPolynomial
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) : ℤ[X] :=
  FreyJetRecursion.numerator (C (t.freyPortJacobian i))
    (C (t.freyPortQuadraticCoefficientInt i)) X n

/-- A single controlled power of the original Jacobian clears every
coefficient of the finite polynomial approximant. The exponent is conservative. -/
theorem PrimitiveAdditiveTriple.freyJetPolynomial_denominator_clears
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) :
    C ((t.freyPortJacobian i : ℚ) ^ FreyJetRecursion.denominatorExponent n) *
        t.freyJetApproximantPolynomial i n =
      (t.freyJetNumeratorPolynomial i n).map (Int.castRingHom ℚ) := by
  have hdj : C (t.freyPortJacobian i : ℚ) * C ((t.freyPortJacobian i : ℚ)⁻¹) =
      (1 : ℚ[X]) := by
    rw [← C_mul, mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i), C_1]
  have hc := FreyJetRecursion.denominator_clears
    (C (t.freyPortJacobian i : ℚ)) (C ((t.freyPortJacobian i : ℚ)⁻¹))
    (C (t.freyPortQuadraticCoefficient i)) (X : ℚ[X]) hdj n
  have hm := FreyJetRecursion.map_numerator (Polynomial.mapRingHom (Int.castRingHom ℚ))
    (C (t.freyPortJacobian i)) (C (t.freyPortQuadraticCoefficientInt i)) (X : ℤ[X]) n
  simp only [Polynomial.coe_mapRingHom, Polynomial.map_C, Polynomial.map_X] at hm
  rw [show (Int.castRingHom ℚ) (t.freyPortQuadraticCoefficientInt i) =
      t.freyPortQuadraticCoefficient i from t.freyPortQuadraticCoefficient_cast i] at hm
  simpa only [PrimitiveAdditiveTriple.freyJetApproximantPolynomial,
    PrimitiveAdditiveTriple.freyJetNumeratorPolynomial, map_pow] using hc.trans hm.symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
