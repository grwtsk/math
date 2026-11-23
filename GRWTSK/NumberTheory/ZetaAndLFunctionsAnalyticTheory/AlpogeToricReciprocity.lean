import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Equiv
import Mathlib.Tactic.FieldSimp
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.Ring

/-! # Fourier resolvents of Artin-translated CM class coordinates

The adjacent manuscript supplies the arithmetic translation law. Here its finite
resolvent, common normalization, character separation and the exact kernel of
the action are proved over a field.
-/

namespace GRWTSK.AlpogeToricReciprocity

variable {A K : Type*} [CommGroup A] [Fintype A] [Field K]

/-- Fourier convention of the toric class sum. -/
def resolvent (χ : A →* Kˣ) (b : A → K) : K := ∑ x, (χ x : K)⁻¹ * b x

def conjugateChar (g : K ≃+* K) (χ : A →* Kˣ) : A →* Kˣ :=
  (Units.map g.toRingHom.toMonoidHom).comp χ

theorem translate_resolvent (t : A) (χ : A →* Kˣ) (b : A → K) :
    resolvent χ (fun x => b (x * t⁻¹)) = (χ t : K)⁻¹ * resolvent χ b := by
  classical
  unfold resolvent
  rw [Finset.mul_sum]
  refine Fintype.sum_equiv (Equiv.mulRight t⁻¹) _ _ ?_
  intro x
  change _ = (χ t : K)⁻¹ * ((χ (x * t⁻¹) : K)⁻¹ * b (x * t⁻¹))
  simp [mul_left_comm, mul_comm]

theorem conjugate_resolvent (g : K ≃+* K) (t : A) (c : K)
    (χ : A →* Kˣ) (b b' : A → K) (hb : ∀ x, g (b x) = c * b' (x * t⁻¹)) :
    g (resolvent χ b) = c * ((conjugateChar g χ) t : K)⁻¹ *
      resolvent (conjugateChar g χ) b' := by
  rw [mul_assoc, ← translate_resolvent]
  unfold resolvent
  rw [map_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [map_mul, map_inv₀, hb]
  change _ = c * ((g (χ x : K))⁻¹ * _)
  ring

theorem conjugate_ratio (g : K ≃+* K) (t : A) (c z z' : K)
    (hc : c ≠ 0) (hz : g z = c * z') (χ : A →* Kˣ) (b b' : A → K)
    (hb : ∀ x, g (b x) = c * b' (x * t⁻¹)) :
    g (resolvent χ b / z) =
      ((conjugateChar g χ) t : K)⁻¹ * (resolvent (conjugateChar g χ) b' / z') := by
  rw [map_div₀, conjugate_resolvent g t c χ b b' hb, hz]
  by_cases h : z' = 0
  · simp [h]
  · field_simp

/-- A nonzero ratio in the character line detects its precise Artin kernel. -/
theorem fixes_ratio_iff (g : K ≃+* K) (u : Kˣ) (r : K) (hr : r ≠ 0)
    (h : g r = (u : K)⁻¹ * r) : g r = r ↔ u = 1 := by
  rw [h]
  constructor
  · intro he
    apply Units.ext
    have hh : (u : K)⁻¹ = 1 := mul_right_cancel₀ hr (he.trans (one_mul r).symm)
    simpa using hh
  · rintro rfl
    simp

theorem ratio_power_fixed (g : K ≃+* K) (u : Kˣ) (r : K) (n : ℕ)
    (h : g r = (u : K)⁻¹ * r) (hu : u ^ n = 1) : g (r ^ n) = r ^ n := by
  have hv : (u : K) ^ n = 1 := by simpa only [Units.val_pow_eq_pow_val, Units.val_one] using congrArg Units.val hu
  rw [map_pow, h, mul_pow, inv_pow, hv, inv_one, one_mul]

theorem character_sum_zero (χ : A →* Kˣ) (t : A) (ht : χ t ≠ 1) :
    ∑ x : A, (χ x : K) = 0 := by
  classical
  have hsum : (χ t : K) * ∑ x : A, (χ x : K) = ∑ x : A, (χ x : K) := by
    rw [Finset.mul_sum]
    refine Fintype.sum_equiv (Equiv.mulLeft t) _ _ ?_
    intro x
    change _ = (χ (t * x) : K)
    rw [map_mul, Units.val_mul]
  have hn : (χ t : K) ≠ 1 := fun e => ht (Units.ext e)
  exact (mul_eq_zero.mp (show ((χ t : K) - 1) * ∑ x : A, (χ x : K) = 0 by
    rw [sub_mul, one_mul, hsum, sub_self])).resolve_left (sub_ne_zero.mpr hn)

/-- Nontrivial CM endomorphism torsion recovers a weight-two value after scaling. -/
theorem scaled_weight_two (g : K ≃+* K) (u a b : K) (hu : u ≠ 0)
    (hfix : g u = u) (h : g (u * a) = u * b) : g a = b := by
  rw [map_mul, hfix] at h
  exact mul_left_cancel₀ hu h

/-- The matrix acts by convolution with the normalized CM class values. -/
def classMatrix (b : A → K) : Matrix A A K := fun x y => b (x * y⁻¹)

/-- Descent of the squared group determinant does not require the character values
to be in the base field. -/
theorem square_classDet_fixed [DecidableEq A] (g : K ≃+* K) (t : A)
    (b : A → K) (hb : ∀ x, g (b x) = b (x * t⁻¹)) :
    g ((classMatrix b).det ^ 2) = (classMatrix b).det ^ 2 := by
  let e := Equiv.mulRight t⁻¹
  have hperm : g.mapMatrix (classMatrix b) = (classMatrix b).submatrix e id := by
    ext x y
    change g (b (x * y⁻¹)) = b ((x * t⁻¹) * y⁻¹)
    rw [hb]
    ac_rfl
  rw [map_pow, RingEquiv.map_det, hperm, Matrix.det_permute]
  rcases Int.units_eq_one_or (Equiv.Perm.sign e) with h | h <;> simp [h]

end GRWTSK.AlpogeToricReciprocity
