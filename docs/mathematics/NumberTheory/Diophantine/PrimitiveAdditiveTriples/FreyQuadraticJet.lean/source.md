# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98bafa6013820f49daa306e1dda04dd52056bec8` · SHA-256 `f3cd63ddd10ab0cddcbe574bef384456b16c800f1632e3925a13d3bab78fc842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's nilpotent quotient rings and Weierstrass equations (Apache-2.0).
Formalization assistance: OpenAI.

Exact order-two curve jets in Q[T]/(T^3), not polynomial parametrizations of
an entire elliptic curve. No identification with the completed local ring or
with all H0(E,O(mO)), and no conductor or height-upper-bound theorem, is made.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants
import Mathlib.RingTheory.AdjoinRoot

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Polynomial

/-- The exact rational ring of second-order parameter observations. -/
abbrev FreyQuadraticJetRing := AdjoinRoot ((X : ℚ[X]) ^ 3)

/-- The parameter is nilpotent of order three, not a floating sample. -/
noncomputable def freyJetParameter : FreyQuadraticJetRing :=
  AdjoinRoot.root ((X : ℚ[X]) ^ 3)

/-- The quotient relation used by the curve-jet construction. -/
theorem freyJetParameter_cube : freyJetParameter ^ 3 = 0 := by
  simpa [freyJetParameter] using AdjoinRoot.eval₂_root ((X : ℚ[X]) ^ 3)

/-- The first-order parameter has not been collapsed to zero. -/
theorem freyJetParameter_ne_zero : freyJetParameter ≠ 0 := by
  apply AdjoinRoot.mk_ne_zero_of_natDegree_lt (monic_X.pow 3) X_ne_zero
  simp

/-- The second-order parameter also survives the quotient. -/
theorem freyJetParameter_sq_ne_zero : freyJetParameter ^ 2 ≠ 0 := by
  have h := AdjoinRoot.mk_ne_zero_of_natDegree_lt
    (monic_X.pow 3 : Monic ((X : ℚ[X]) ^ 3))
    (pow_ne_zero 2 (X_ne_zero : (X : ℚ[X]) ≠ 0)) (by simp)
  simpa [freyJetParameter, AdjoinRoot.root] using h

/-- The ordered affine x coordinates of the already constructed source ports. -/
def PrimitiveAdditiveTriple.freyPortRoot (t : PrimitiveAdditiveTriple)
    (i : Fin 3) : ℚ := ![0, (t.a : ℚ), -(t.b : ℚ)] i

/-- The new chart retains the existing geometric source identity. -/
theorem PrimitiveAdditiveTriple.freyPortRoot_matches_point
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyTorsionPorts i).xRep 0 = t.freyPortRoot i := by
  rw [t.freyTorsionPorts_xRep i]
  rfl

/-- The three integral cubic derivatives, with the source order retained. -/
def PrimitiveAdditiveTriple.freyPortJacobian (t : PrimitiveAdditiveTriple)
    (i : Fin 3) : ℤ :=
  ![-(t.a : ℤ) * (t.b : ℤ),
    (t.a : ℤ) * ((t.a : ℤ) + (t.b : ℤ)),
    (t.b : ℤ) * ((t.a : ℤ) + (t.b : ℤ))] i

/-- These are -ab, ac and bc; no extra rational positions are introduced. -/
theorem PrimitiveAdditiveTriple.freyPortJacobian_values
    (t : PrimitiveAdditiveTriple) :
    t.freyPortJacobian =
      ![-(t.a : ℤ) * (t.b : ℤ), (t.a : ℤ) * (t.c : ℤ),
        (t.b : ℤ) * (t.c : ℤ)] := by
  have hs : (t.a : ℤ) + (t.b : ℤ) = (t.c : ℤ) := by exact_mod_cast t.sum_eq
  simp only [PrimitiveAdditiveTriple.freyPortJacobian, hs]

/-- Each anchor is a root of the exact factored cubic. -/
theorem PrimitiveAdditiveTriple.freyPortRoot_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyPortRoot i * (t.freyPortRoot i - (t.a : ℚ)) *
      (t.freyPortRoot i + (t.b : ℚ)) = 0 := by
  fin_cases i <;> simp [PrimitiveAdditiveTriple.freyPortRoot]

/-- The displayed integer is the derivative of x(x-a)(x+b) at that port. -/
theorem PrimitiveAdditiveTriple.freyPortJacobian_derivative
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyPortJacobian i : ℚ) =
      3 * t.freyPortRoot i ^ 2 +
        2 * ((t.b : ℚ) - (t.a : ℚ)) * t.freyPortRoot i - (t.a : ℚ) * (t.b : ℚ) := by
  fin_cases i <;>
    simp [PrimitiveAdditiveTriple.freyPortJacobian,
      PrimitiveAdditiveTriple.freyPortRoot] <;> ring

/-- The three inverses used over Q have nonzero denominators. -/
theorem PrimitiveAdditiveTriple.freyPortJacobian_ne_zero
    (t : PrimitiveAdditiveTriple) (i : Fin 3) : (t.freyPortJacobian i : ℚ) ≠ 0 := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hb : (t.b : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  have hc : (t.c : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.c_pos
  rw [t.freyPortJacobian_values]
  fin_cases i <;> simp [ha, hb, hc]

/-- Every displayed jet denominator divides abc. Multiplicity is retained. -/
theorem PrimitiveAdditiveTriple.freyPortJacobian_dvd_product
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyPortJacobian i ∣ (t.a : ℤ) * (t.b : ℤ) * (t.c : ℤ) := by
  rw [t.freyPortJacobian_values]
  fin_cases i
  · refine ⟨-(t.c : ℤ), ?_⟩
    simp <;> ring
  · refine ⟨(t.b : ℤ), ?_⟩
    simp <;> ring
  · refine ⟨(t.a : ℤ), ?_⟩
    simp <;> ring

/-- Exact nilpotent implicit-curve calculation, valid over any commutative
ring with a supplied inverse Jacobian. It does not divide in that ring. -/
theorem frey_nilpotent_quadratic_curve {A : Type*} [CommRing A]
    (a b r j e : A) (hr : r * (r - a) * (r + b) = 0)
    (hj : (3 * r ^ 2 + 2 * (b - a) * r - a * b) * j = 1)
    (he : e ^ 3 = 0) :
    (r + j * e ^ 2) * (r + j * e ^ 2 - a) * (r + j * e ^ 2 + b) = e ^ 2 := by
  have he4 : e ^ 4 = 0 := by
    calc
      e ^ 4 = e ^ 3 * e := by ring
      _ = 0 := by rw [he]; ring
  have he6 : e ^ 6 = 0 := by
    calc
      e ^ 6 = (e ^ 3) ^ 2 := by ring
      _ = 0 := by rw [he]; ring
  calc
    (r + j * e ^ 2) * (r + j * e ^ 2 - a) * (r + j * e ^ 2 + b) =
        r * (r - a) * (r + b) +
        (3 * r ^ 2 + 2 * (b - a) * r - a * b) * j * e ^ 2 +
        (3 * r + b - a) * j ^ 2 * e ^ 4 + j ^ 3 * e ^ 6 := by ring
    _ = e ^ 2 := by rw [hr, hj, he4, he6]; ring

/-- The x coordinate of the exact order-two jet with local parameter y. -/
noncomputable def PrimitiveAdditiveTriple.freyQuadraticX
    (t : PrimitiveAdditiveTriple) (i : Fin 3) : FreyQuadraticJetRing :=
  algebraMap ℚ FreyQuadraticJetRing (t.freyPortRoot i) +
    algebraMap ℚ FreyQuadraticJetRing ((t.freyPortJacobian i : ℚ)⁻¹) * freyJetParameter ^ 2

/-- The nilpotent coordinates satisfy the exact source cubic, not an
approximation derived from sampled or rounded coordinates. -/
theorem PrimitiveAdditiveTriple.freyQuadraticX_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyQuadraticX i *
        (t.freyQuadraticX i - algebraMap ℚ FreyQuadraticJetRing (t.a : ℚ)) *
        (t.freyQuadraticX i + algebraMap ℚ FreyQuadraticJetRing (t.b : ℚ)) =
      freyJetParameter ^ 2 := by
  let f := algebraMap ℚ FreyQuadraticJetRing
  apply frey_nilpotent_quadratic_curve
  · have h := congrArg f (t.freyPortRoot_cubic i)
    simpa only [map_mul, map_sub, map_add, map_zero] using h
  · have h := congrArg f (mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i))
    have hd := congrArg f (t.freyPortJacobian_derivative i)
    simp only [map_add, map_sub, map_mul, map_pow, map_ofNat] at hd
    rw [map_mul, map_one, hd] at h
    exact h
  · exact freyJetParameter_cube

/-- The same coordinates satisfy Mathlib's affine Equation on the base change
of the actual Frey model. No Point-over-nilpotents interpretation is used. -/
theorem PrimitiveAdditiveTriple.freyQuadraticJet_equation
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (t.freyCurve.map (algebraMap ℚ FreyQuadraticJetRing)).toAffine.Equation
      (t.freyQuadraticX i) freyJetParameter := by
  rw [WeierstrassCurve.Affine.equation_iff]
  have h := (t.freyQuadraticX_cubic i).symm
  simp only [PrimitiveAdditiveTriple.freyCurve, freyWeierstrass,
    WeierstrassCurve.map, map_zero, map_sub, map_neg, map_mul,
    zero_mul, add_zero]
  calc
    freyJetParameter ^ 2 = _ := h
    _ = _ := by ring

/-- Coefficients in the basis (1,y,y^2) of a selected affine expression
u+v*x+w*y. The last slot is a Hasse coefficient, not an unscaled second derivative. -/
def PrimitiveAdditiveTriple.freyPlaneJetCoefficients
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (v : Fin 3 → ℚ) : Fin 3 → ℚ :=
  ![v 0 + v 1 * t.freyPortRoot i, v 2,
    v 1 * (t.freyPortJacobian i : ℚ)⁻¹]

/-- The coefficient record is bound to substitution in the actual quotient
ring. No independent waveform coefficient is substituted for the jet. -/
theorem PrimitiveAdditiveTriple.freyPlaneJet_expansion
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (v : Fin 3 → ℚ) :
    algebraMap ℚ FreyQuadraticJetRing (v 0) +
      algebraMap ℚ FreyQuadraticJetRing (v 1) * t.freyQuadraticX i +
      algebraMap ℚ FreyQuadraticJetRing (v 2) * freyJetParameter =
    algebraMap ℚ FreyQuadraticJetRing (t.freyPlaneJetCoefficients i v 0) +
      algebraMap ℚ FreyQuadraticJetRing (t.freyPlaneJetCoefficients i v 1) * freyJetParameter +
      algebraMap ℚ FreyQuadraticJetRing (t.freyPlaneJetCoefficients i v 2) * freyJetParameter ^ 2 := by
  simp [PrimitiveAdditiveTriple.freyPlaneJetCoefficients,
    PrimitiveAdditiveTriple.freyQuadraticX]
  ring

/-- The first y-jet of x vanishes, while its quadratic coefficient is 1/f'(r). -/
theorem PrimitiveAdditiveTriple.frey_x_jet
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyPlaneJetCoefficients i ![0, 1, 0] =
      ![t.freyPortRoot i, 0, (t.freyPortJacobian i : ℚ)⁻¹] := by
  simp [PrimitiveAdditiveTriple.freyPlaneJetCoefficients]

/-- The new y direction is detected by a first jet, though all port values vanish. -/
theorem PrimitiveAdditiveTriple.frey_y_jet
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyPlaneJetCoefficients i ![0, 0, 1] = ![0, 1, 0] := by
  simp [PrimitiveAdditiveTriple.freyPlaneJetCoefficients]

/-- At least one Jacobian is a unit modulo every prime. This is a chart-selection
statement, including at p=2, not good reduction of the whole special fiber. -/
theorem PrimitiveAdditiveTriple.frey_exists_unit_jet_port
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    ∃ i : Fin 3, IsUnit (t.freyPortJacobian i : ZMod p) := by
  have hab := t.freyResidueParameters_nonzero p
  by_cases ha : (t.a : ZMod p) = 0
  · have hb : (t.b : ZMod p) ≠ 0 := hab.resolve_left (not_not.mpr ha)
    refine ⟨2, isUnit_iff_ne_zero.mpr ?_⟩
    simpa [PrimitiveAdditiveTriple.freyPortJacobian, ha] using mul_ne_zero hb hb
  · by_cases hb : (t.b : ZMod p) = 0
    · refine ⟨1, isUnit_iff_ne_zero.mpr ?_⟩
      simpa [PrimitiveAdditiveTriple.freyPortJacobian, hb] using mul_ne_zero ha ha
    · refine ⟨0, isUnit_iff_ne_zero.mpr ?_⟩
      simpa [PrimitiveAdditiveTriple.freyPortJacobian] using
        mul_ne_zero (neg_ne_zero.mpr ha) hb

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
