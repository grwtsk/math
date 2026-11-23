/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.PowerSeries.Expand
import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Tactic.Linarith

/-! Weighted logarithm levels, Frobenius propagation in the actual
residual power series, and transport of the residue under an integral
coordinate. The accompanying manuscript identifies the elliptic inputs. -/

namespace GRWTSK.NumberTheory.AlpogeHondaConvergence

/-- Weight of a Honda logarithm monomial at an additive Gauss radius. -/
noncomputable def level (q w : ℝ) (j : ℕ) : ℝ := q^j*w-j

/-- The weight difference crosses zero at most once. -/
theorem level_step (q w : ℝ) (j : ℕ) :
    level q w (j+1) - level q w j = (q-1)*w*q^j-1 := by
  simp [level, pow_succ]
  ring

/-- The crossing of the two consecutive slopes gives a global minimum,
including the case of a tie with the preceding level. -/
theorem minimum_level (q w : ℝ) (s j : ℕ) (hq : 1 ≤ q) (hw : 0 ≤ w)
    (lo : (q-1)*w*q^s ≤ 1) (hi : 1 ≤ (q-1)*w*q^(s+1)) :
    level q w (s+1) ≤ level q w j := by
  have mono : Monotone fun n : ℕ => (q-1)*w*q^n :=
    fun _ _ hab => mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hq hab)
      (mul_nonneg (sub_nonneg.mpr hq) hw)
  rcases le_total j (s+1) with hj | hj
  · refine Nat.decreasingInduction (motive := fun j _ => level q w (s+1) ≤ level q w j)
      (fun n hn ih => ih.trans ?_) le_rfl hj
    have h := (mono (show n ≤ s by omega)).trans lo
    have e := level_step q w n
    change (q-1)*w*q^n ≤ 1 at h
    linarith
  · refine Nat.le_induction (P := fun n _ => level q w (s+1) ≤ level q w n)
      le_rfl (fun n hn ih => ih.trans ?_) j hj
    have h := hi.trans (mono hn)
    have e := level_step q w n
    change 1 ≤ (q-1)*w*q^n at h
    linarith

/-- The supporting line through consecutive integer powers gives the
least degree for a specified sum of Honda levels. -/
theorem integer_power_support (q : ℝ) (hq : 2 ≤ q) (l j : ℕ) :
    q^l * (1+(q-1)*((j : ℝ)-l)) ≤ q^j := by
  by_cases h : l ≤ j
  · obtain ⟨n,rfl⟩ := Nat.exists_eq_add_of_le h
    rw [pow_add, Nat.cast_add]
    have hb := one_add_mul_le_pow (show -2 ≤ q-1 by linarith) n
    have he : 1 + (q-1) = q := by ring
    rw [he] at hb
    apply mul_le_mul_of_nonneg_left _ (pow_nonneg (by linarith) _)
    convert hb using 1 <;> ring
  · have hj : (j : ℝ)+1 ≤ l := by exact_mod_cast (show j+1 ≤ l by omega)
    have hzero : 1+(q-1)*((j : ℝ)-l) ≤ 0 := by
      nlinarith [mul_nonneg (show 0 ≤ q-2 by linarith) (show (0 : ℝ) ≤ l-j by linarith)]
    exact (mul_nonpos_of_nonneg_of_nonpos (pow_nonneg (by linarith) _) hzero).trans
      (pow_nonneg (by linarith) _)

open PowerSeries

/-- The reduced equation Z + Z^q = W gives the coefficient recurrence
on the full power series, not just its additive-polynomial truncation. -/
theorem residue_step {k : Type*} [Field k] (p : ℕ) [hp : Fact p.Prime] [CharP k p]
    (Z W : PowerSeries k) (h : Z + Z^(p^2) = W) (n : ℕ) :
    Z.coeff (p^2*n) = W.coeff (p^2*n) - (Z.coeff n)^(p^2) := by
  have e := congrArg (PowerSeries.coeff (p^2*n)) h
  rw [map_add, ← map_iterateFrobenius_expand p hp.out.ne_zero Z 2,
    coeff_map, coeff_expand_mul, iterateFrobenius_def] at e
  exact eq_sub_of_add_eq e

/-- One nonzero Frobenius coefficient propagates through an arbitrary
empty tail of the forcing series. -/
theorem residue_tail {k : Type*} [Field k] (p : ℕ) [Fact p.Prime] [CharP k p]
    (Z W : PowerSeries k) (h : Z + Z^(p^2) = W) (n : ℕ)
    (seed : Z.coeff n ≠ 0)
    (empty : ∀ j : ℕ, W.coeff ((p^2)^(j+1)*n) = 0) (r : ℕ) :
    Z.coeff ((p^2)^r*n) ≠ 0 := by
  induction r with
  | zero => simpa using seed
  | succ r ih =>
    have e := residue_step p Z W h ((p^2)^r*n)
    have hz := empty r
    rw [pow_succ' (p^2) r, mul_assoc] at hz ⊢
    rw [e, hz, zero_sub, neg_ne_zero]
    exact pow_ne_zero _ ih

/-- If an integral coordinate is linear after reduction then the
leading residue of each substituted coefficient is scaled by the
corresponding power of the tangent. -/
theorem reduced_coordinate_coeff {O k : Type*} [CommRing O] [CommRing k]
    (φ : O →+* k) (F A : PowerSeries O) (ha : HasSubst A) (a : k)
    (linear : A.map φ = a • (X : PowerSeries k)) (n : ℕ) :
    φ (PowerSeries.coeff n (F.subst A)) = a^n * φ (F.coeff n) := by
  have h : PowerSeries.map φ (F.subst A) = (F.map φ).subst (A.map φ) :=
    PowerSeries.map_subst ha F
  rw [← coeff_map, h, linear, ← rescale_eq_subst, coeff_rescale, coeff_map]

end GRWTSK.NumberTheory.AlpogeHondaConvergence
