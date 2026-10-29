/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

An obstruction to a dyadic scale step, obtained from the actual c6 polynomial.
ZMod 8 is a RING, not a residue field. Unit c4 implies 2*c6=6 in this ring.
The residue map of an odd-denominator localization is constructed by its
universal property; no reduction of a nonintegral rational is invented.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange
import Mathlib.RingTheory.Localization.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FieldSimp
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C6ModEight

open WeierstrassCurve

/-- Exact finite ring arithmetic, with an inverse witness rather than a field assumption. -/
theorem unit_sq (x : ZMod 8) (hx : IsUnit x) : x^2=1 := by
  obtain ⟨y,hy⟩ := isUnit_iff_exists_inv.mp hx
  have h : ∀ a b : ZMod 8, a*b=1 → a^2=1 := by decide
  exact h x y hy

theorem unit_sixth (x : ZMod 8) (hx : IsUnit x) : x^6=1 := by
  rw [show (6 : ℕ)=2*3 by decide,pow_mul,unit_sq x hx,one_pow]

/-- The full invariant polynomial reduces to its a1 term modulo eight. -/
theorem c4_mod_eight (W : WeierstrassCurve (ZMod 8)) : W.c₄=W.a₁^4 := by
  simp only [WeierstrassCurve.c₄,WeierstrassCurve.b₂,WeierstrassCurve.b₄]
  ring_nf

/-- Doubling c6 is deliberate: this is the modulo-four c6 constraint in ZMod 8. -/
theorem twice_c6_mod_eight (W : WeierstrassCurve (ZMod 8)) :
    2*W.c₆ = -2*W.a₁^6 := by
  simp only [WeierstrassCurve.c₆,WeierstrassCurve.b₂,
    WeierstrassCurve.b₄,WeierstrassCurve.b₆]
  ring_nf

theorem a1_unit_of_c4_unit (W : WeierstrassCurve (ZMod 8)) (h4 : IsUnit W.c₄) :
    IsUnit W.a₁ := by
  obtain ⟨v,hv⟩ := isUnit_iff_exists_inv.mp h4
  apply isUnit_iff_exists_inv.mpr
  refine ⟨W.a₁^3*v,?_⟩
  rw [c4_mod_eight] at hv
  calc
    W.a₁*(W.a₁^3*v)=W.a₁^4*v := by ring
    _=1 := hv

theorem twice_c6_of_unit_c4 (W : WeierstrassCurve (ZMod 8)) (h4 : IsUnit W.c₄) :
    2*W.c₆=6 := by
  rw [twice_c6_mod_eight,unit_sixth _ (a1_unit_of_c4_unit W h4)]
  norm_num

/-- All odd integers, including negative ones, are units modulo eight. -/
theorem odd_int_unit (z : ℤ) (hz : ¬ (2 : ℤ) ∣ z) : IsUnit (z : ZMod 8) := by
  have hm : z%8=1 ∨ z%8=3 ∨ z%8=5 ∨ z%8=7 := by
    have hh : z%2≠0 := fun h => hz (Int.dvd_of_emod_eq_zero h)
    omega
  have hs : (z : ZMod 8)^2=1 := by
    rw [← ZMod.intCast_mod z 8]
    rcases hm with h|h|h|h <;> rw [h] <;> norm_num
  exact isUnit_iff_exists_inv.mpr ⟨(z : ZMod 8),by simpa only [pow_two] using hs⟩

/-- The actual ring hom from any localization inverting only odd integers. -/
def oddLocalizationMap (M : Submonoid ℤ) (R : Type*) [CommRing R]
    [Algebra ℤ R] [IsLocalization M R]
    (hodd : ∀ y : M, ¬ (2 : ℤ) ∣ (y : ℤ)) : R →+* ZMod 8 :=
  IsLocalization.lift (S := R) (g := Int.castRingHom (ZMod 8))
    (fun y => odd_int_unit y (hodd y))

@[simp] theorem oddLocalizationMap_int (M : Submonoid ℤ) (R : Type*) [CommRing R]
    [Algebra ℤ R] [IsLocalization M R]
    (hodd : ∀ y : M, ¬ (2 : ℤ) ∣ (y : ℤ)) (z : ℤ) :
    oddLocalizationMap M R hodd (algebraMap ℤ R z)=(z : ZMod 8) :=
  IsLocalization.lift_eq _ z

/-- An invariant obstruction, not a search through translation or shear parameters. -/
theorem invariant_obstruction {R : Type*} [CommRing R] (φ : R →+* ZMod 8)
    (W : WeierstrassCurve R) (h4 : IsUnit W.c₄) (ε : Rˣ) (F : R)
    (hF : F = -2*(ε : R)^6*W.c₆) : φ F=2 := by
  have hunit : IsUnit (W.map φ).c₄ := by
    simpa only [WeierstrassCurve.map_c₄] using h4.map φ
  have h6 := twice_c6_of_unit_c4 (W.map φ) hunit
  simp only [WeierstrassCurve.map_c₆] at h6
  have he := unit_sixth (φ (ε : R)) (ε.isUnit.map φ)
  rw [hF,map_mul,map_mul,map_neg,map_ofNat,map_pow,he,mul_one]
  calc
    -(2 : ZMod 8)*φ W.c₆=-(2*φ W.c₆) := by ring
    _= -6 := by rw [h6]
    _=2 := by norm_num

/-- In an injective characteristic-zero realization, the weight-six law can
be cancelled BEFORE reducing modulo eight. Cancelling 32 modulo eight is invalid. -/
theorem half_scale_cancellation {R : Type*} [CommRing R] {K : Type*}
    [Field K] [CharZero K] [Algebra R K]
    (hinj : Function.Injective (algebraMap R K))
    (W : WeierstrassCurve K) (C : VariableChange K) (W' : WeierstrassCurve R)
    (hmodel : W'.baseChange K=C • W) (ε : Rˣ)
    (hu : (C.u : K)=2*algebraMap R K (ε : R)) (F : R)
    (hraw : W.c₆= -32*algebraMap R K F) :
    F = -2*(ε : R)^6*W'.c₆ := by
  have hi : algebraMap R K W'.c₆=(C • W).c₆ := by
    rw [← hmodel,WeierstrassCurve.baseChange,WeierstrassCurve.map_c₆]
  have hs : algebraMap R K W'.c₆*(C.u : K)^6=W.c₆ := by
    rw [hi,variableChange_c₆,Units.val_inv_eq_inv_val]
    field_simp [C.u.ne_zero]
  rw [hu,hraw] at hs
  apply hinj
  simp only [map_mul,map_neg,map_ofNat,map_pow]
  have hh : (32 : K)*(algebraMap R K F)=
      32*(-2*(algebraMap R K (ε : R))^6*algebraMap R K W'.c₆) := by
    linear_combination hs
  exact mul_left_cancel₀ (by norm_num : (32 : K)≠0) hh

end GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.C6ModEight
