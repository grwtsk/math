/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib AdjoinRoot and the existing source-bound quadratic Frey jets.
Formalization assistance: OpenAI.

Order-two chart pullback for the actual translation by T0, from the Tb chart
to the Ta chart. The pullback rescales y by b/a, with inverse a/b. Its X and Y
images are reconciled with the rational translation formula using a genuine
inverse to the source X in Q[T]/T^3. No all-order linear rescaling, line-bundle
trivialization, arithmetic integrality, or metric isometry is claimed.
Unelaborated source proof scripts; acceptance requires a separate Lean replay.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Scalar injection into the EXISTING quadratic jet ring. -/
abbrev freyContactScalar : ℚ →+* FreyQuadraticJetRing := algebraMap ℚ FreyQuadraticJetRing

/-- Substitution T |-> lambda*T on the actual power quotient. -/
def freyContactRescale (l : ℚ) : FreyQuadraticJetRing →+* FreyQuadraticJetRing :=
  AdjoinRoot.lift freyContactScalar (freyContactScalar l * freyJetParameter)
    (by simp [mul_pow, freyJetParameter_cube])

@[simp] theorem freyContactRescale_scalar (l c : ℚ) :
    freyContactRescale l (freyContactScalar c) = freyContactScalar c := by
  simp [freyContactRescale, freyContactScalar]

@[simp] theorem freyContactRescale_parameter (l : ℚ) :
    freyContactRescale l freyJetParameter = freyContactScalar l * freyJetParameter := by
  simp [freyContactRescale, freyJetParameter]

/-- Composition concerns quotient ring maps, not just their values at one sample. -/
theorem freyContactRescale_comp (l m : ℚ) :
    (freyContactRescale l).comp (freyContactRescale m) = freyContactRescale (l * m) := by
  apply AdjoinRoot.ringHom_ext
  · ext c
    change freyContactRescale l (freyContactRescale m (freyContactScalar c)) =
      freyContactRescale (l * m) (freyContactScalar c)
    simp
  · change freyContactRescale l (freyContactRescale m freyJetParameter) =
      freyContactRescale (l * m) freyJetParameter
    simp only [freyContactRescale_parameter, map_mul, freyContactRescale_scalar]
    ring

theorem freyContactRescale_one : freyContactRescale 1 = RingHom.id FreyQuadraticJetRing := by
  apply AdjoinRoot.ringHom_ext
  · ext c
    change freyContactRescale 1 (freyContactScalar c) = freyContactScalar c
    simp
  · change freyContactRescale 1 freyJetParameter = freyJetParameter
    simp

/-- An algebra equivalence only after the TWO scales are proved reciprocal. -/
def freyContactRescaleEquiv (l m : ℚ) (hlm : l * m = 1) :
    FreyQuadraticJetRing ≃ₐ[ℚ] FreyQuadraticJetRing where
  toFun := freyContactRescale l
  invFun := freyContactRescale m
  left_inv u := by
    have h := DFunLike.congr_fun (freyContactRescale_comp m l) u
    simpa only [RingHom.comp_apply, mul_comm m l, hlm, freyContactRescale_one,
      RingHom.id_apply] using h
  right_inv u := by
    have h := DFunLike.congr_fun (freyContactRescale_comp l m) u
    simpa only [RingHom.comp_apply, hlm, freyContactRescale_one, RingHom.id_apply] using h
  map_mul' := (freyContactRescale l).map_mul
  map_add' := (freyContactRescale l).map_add
  commutes' := freyContactRescale_scalar l

/-- At Ta, the target y parameter has first coefficient b/a. -/
def PrimitiveAdditiveTriple.freyT0ContactScale (t : PrimitiveAdditiveTriple) : ℚ :=
  (t.b : ℚ) / (t.a : ℚ)

theorem PrimitiveAdditiveTriple.freyT0ContactScale_inverse (t : PrimitiveAdditiveTriple) :
    t.freyT0ContactScale * ((t.a : ℚ) / (t.b : ℚ)) = 1 := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hb : (t.b : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  unfold PrimitiveAdditiveTriple.freyT0ContactScale
  field_simp [ha, hb]

/-- Functions at Tb pull BACK to functions at Ta; the inverse reverses the charts.
This is not the identity map obtained by silently identifying their y parameters. -/
def PrimitiveAdditiveTriple.freyT0ContactPullback (t : PrimitiveAdditiveTriple) :
    FreyQuadraticJetRing ≃ₐ[ℚ] FreyQuadraticJetRing :=
  freyContactRescaleEquiv t.freyT0ContactScale ((t.a : ℚ) / (t.b : ℚ))
    t.freyT0ContactScale_inverse

/-- Its coefficient law, including the square on the second Hasse coefficient. -/
theorem freyContactRescale_quadratic (l c0 c1 c2 : ℚ) :
    freyContactRescale l
      (freyContactScalar c0 + freyContactScalar c1 * freyJetParameter +
        freyContactScalar c2 * freyJetParameter ^ 2) =
      freyContactScalar c0 + freyContactScalar (c1 * l) * freyJetParameter +
        freyContactScalar (c2 * l ^ 2) * freyJetParameter ^ 2 := by
  simp only [map_add, map_mul, map_pow, freyContactRescale_scalar,
    freyContactRescale_parameter]
  ring

/-- The only rational denominator for the source quadratic X correction is ac. -/
theorem PrimitiveAdditiveTriple.freyQuadraticX_Ta_expansion (t : PrimitiveAdditiveTriple) :
    t.freyQuadraticX 1 = freyContactScalar (t.a : ℚ) +
      freyContactScalar (((t.a : ℚ) * (t.c : ℚ))⁻¹) * freyJetParameter ^ 2 := by
  rw [PrimitiveAdditiveTriple.freyQuadraticX, t.freyPortJacobian_values]
  simp [PrimitiveAdditiveTriple.freyPortRoot, freyContactScalar]

theorem PrimitiveAdditiveTriple.freyQuadraticX_Tb_expansion (t : PrimitiveAdditiveTriple) :
    t.freyQuadraticX 2 = freyContactScalar (-(t.b : ℚ)) +
      freyContactScalar (((t.b : ℚ) * (t.c : ℚ))⁻¹) * freyJetParameter ^ 2 := by
  rw [PrimitiveAdditiveTriple.freyQuadraticX, t.freyPortJacobian_values]
  simp [PrimitiveAdditiveTriple.freyPortRoot, freyContactScalar]

/-- Explicit reciprocal of the source X class; no division in a nilpotent ring. -/
def PrimitiveAdditiveTriple.freyTaContactInverseX (t : PrimitiveAdditiveTriple) :
    FreyQuadraticJetRing :=
  freyContactScalar ((t.a : ℚ)⁻¹) -
    freyContactScalar ((t.a : ℚ)⁻¹ ^ 2 * ((t.a : ℚ) * (t.c : ℚ))⁻¹) *
      freyJetParameter ^ 2

/-- This really is an inverse, not a field inverse improperly used in Q[T]/T^3. -/
theorem PrimitiveAdditiveTriple.freyTaContactInverseX_mul (t : PrimitiveAdditiveTriple) :
    t.freyQuadraticX 1 * t.freyTaContactInverseX = 1 := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have he4 : freyJetParameter ^ 4 = 0 := by
    calc
      _ = freyJetParameter ^ 3 * freyJetParameter := by ring
      _ = 0 := by rw [freyJetParameter_cube, zero_mul]
  have hu : freyContactScalar (t.a : ℚ) * freyContactScalar ((t.a : ℚ)⁻¹) = 1 := by
    rw [← map_mul, mul_inv_cancel₀ ha, map_one]
  rw [t.freyQuadraticX_Ta_expansion]
  unfold PrimitiveAdditiveTriple.freyTaContactInverseX
  simp only [map_mul, map_pow]
  calc
    _ = freyContactScalar (t.a : ℚ) * freyContactScalar ((t.a : ℚ)⁻¹) +
        freyContactScalar ((t.a : ℚ)⁻¹) * freyContactScalar (((t.a : ℚ) * (t.c : ℚ))⁻¹) *
          (1 - freyContactScalar (t.a : ℚ) * freyContactScalar ((t.a : ℚ)⁻¹)) *
          freyJetParameter ^ 2 -
        freyContactScalar ((t.a : ℚ)⁻¹) ^ 2 *
          freyContactScalar (((t.a : ℚ) * (t.c : ℚ))⁻¹) ^ 2 * freyJetParameter ^ 4 := by ring
    _ = 1 := by rw [hu, he4]; ring

/-- The pulled-back target X is exactly -ab divided by source X in the quotient.
This binds the two chart algebras to the actual torsion-translation formula. -/
theorem PrimitiveAdditiveTriple.freyT0ContactPullback_X (t : PrimitiveAdditiveTriple) :
    t.freyT0ContactPullback (t.freyQuadraticX 2) =
      freyContactScalar (-(t.a : ℚ) * (t.b : ℚ)) * t.freyTaContactInverseX := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hb : (t.b : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  have hc : (t.c : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.c_pos
  have h0 : -(t.b : ℚ) = (-(t.a : ℚ) * (t.b : ℚ)) * (t.a : ℚ)⁻¹ := by
    field_simp [ha] <;> ring
  have h2 : ((t.b : ℚ) * (t.c : ℚ))⁻¹ * t.freyT0ContactScale ^ 2 =
      -((-(t.a : ℚ) * (t.b : ℚ)) * (t.a : ℚ)⁻¹ ^ 2 *
        ((t.a : ℚ) * (t.c : ℚ))⁻¹) := by
    unfold PrimitiveAdditiveTriple.freyT0ContactScale
    field_simp [ha, hb, hc] <;> ring
  change freyContactRescale t.freyT0ContactScale (t.freyQuadraticX 2) = _
  rw [t.freyQuadraticX_Tb_expansion]
  simp only [map_add, map_mul, map_pow, freyContactRescale_scalar,
    freyContactRescale_parameter]
  calc
    _ = freyContactScalar (-(t.b : ℚ)) +
        freyContactScalar (((t.b : ℚ) * (t.c : ℚ))⁻¹ * t.freyT0ContactScale ^ 2) *
          freyJetParameter ^ 2 := by simp only [map_mul, map_pow]; ring
    _ = _ := by
      rw [h0, h2]
      unfold PrimitiveAdditiveTriple.freyTaContactInverseX
      simp only [map_mul, map_neg, map_pow]
      ring

/-- The pulled-back target Y matches ab*Y/X^2, not an unrelated chosen scale.
The equality is order TWO; higher odd correction terms are not discarded globally. -/
theorem PrimitiveAdditiveTriple.freyT0ContactPullback_Y (t : PrimitiveAdditiveTriple) :
    t.freyT0ContactPullback freyJetParameter =
      freyContactScalar ((t.a : ℚ) * (t.b : ℚ)) * freyJetParameter *
        t.freyTaContactInverseX ^ 2 := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hs : (t.a : ℚ) * (t.b : ℚ) * (t.a : ℚ)⁻¹ ^ 2 = t.freyT0ContactScale := by
    unfold PrimitiveAdditiveTriple.freyT0ContactScale
    field_simp [ha] <;> ring
  have he5 : freyJetParameter ^ 5 = 0 := by
    calc
      _ = freyJetParameter ^ 3 * freyJetParameter ^ 2 := by ring
      _ = 0 := by rw [freyJetParameter_cube, zero_mul]
  change freyContactRescale t.freyT0ContactScale freyJetParameter = _
  rw [freyContactRescale_parameter]
  unfold PrimitiveAdditiveTriple.freyTaContactInverseX
  symm
  calc
    _ = freyContactScalar ((t.a : ℚ) * (t.b : ℚ)) *
        (freyContactScalar ((t.a : ℚ)⁻¹) ^ 2 * freyJetParameter -
          2 * freyContactScalar ((t.a : ℚ)⁻¹) *
            freyContactScalar ((t.a : ℚ)⁻¹ ^ 2 * ((t.a : ℚ) * (t.c : ℚ))⁻¹) *
            freyJetParameter ^ 3 +
          freyContactScalar ((t.a : ℚ)⁻¹ ^ 2 * ((t.a : ℚ) * (t.c : ℚ))⁻¹) ^ 2 *
            freyJetParameter ^ 5) := by ring
    _ = freyContactScalar ((t.a : ℚ) * (t.b : ℚ) * (t.a : ℚ)⁻¹ ^ 2) *
        freyJetParameter := by
      rw [freyJetParameter_cube, he5]
      simp only [map_mul, map_pow]
      ring
    _ = _ := by rw [hs]

/-- Reciprocal transport is not the assertion that either scale is one. -/
theorem freyT0Contact_nonidentity_scale_fixture :
    (3 / 2 : ℚ) * (2 / 3) = 1 ∧ (3 / 2 : ℚ) ≠ 1 := by norm_num

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
