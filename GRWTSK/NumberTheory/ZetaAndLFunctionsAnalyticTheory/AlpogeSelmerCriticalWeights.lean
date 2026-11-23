import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeSelmerResidual
import Mathlib.Algebra.Group.Subgroup.Basic
import Mathlib.Tactic.NormNum

/-! # Transporting strict torsion across congruent weights

The accompanying manuscript constructs the finite-level map by class field
theory and bounds its target at a critical positive Tate twist. This module
proves the torsion transport and its explicit conductor-107 certificates.
-/

namespace GRWTSK.AlpogeSelmerCriticalWeights

/-- The additive group killed by a coefficient power. -/
def layer (M : Type*) [AddCommGroup M] (p a : ℕ) : AddSubgroup M where
  carrier := {x | p^a • x = 0}
  zero_mem' := nsmul_zero _
  add_mem' := fun {x y} hx hy => by change p^a • (x+y) = 0; rw [nsmul_add, hx,hy,add_zero]
  neg_mem' := fun {x} hx => by change p^a • x = 0 at hx; change p^a • (-x) = 0; rw [smul_neg, hx, neg_zero]

/-- A map out of the next layer detects the full exponent if its target
is killed by one lower power and all source elements are torsion. -/
theorem full_exponent_from_critical_layer {M B : Type*} [AddCommGroup M] [AddCommGroup B]
    (p a : ℕ) (u : layer M p (a+1) →+ B) (hu : Function.Injective u)
    (hB : ∀ z, p^a • z = (0 : B)) (hM : ∀ x : M, ∃ n : ℕ, p^n • x = 0) :
    ∀ x : M, p^a • x = 0 := by
  have step (x : M) (hx : p^(a+1) • x = 0) : p^a • x = 0 := by
    let z : layer M p (a+1) := ⟨x,hx⟩
    have hz : p^a • z = 0 := hu (by rw [map_nsmul, hB, map_zero])
    exact congrArg Subtype.val hz
  let f : M → M := fun x => p • x
  have itr (n : ℕ) (x : M) : f^[n] x = p^n • x := by
    induction n generalizing x with
    | zero => simp
    | succ n ih => rw [Function.iterate_succ_apply, ih, pow_succ, mul_smul]
  intro x
  rw [← itr]
  apply AlpogeSelmerResidual.full_torsion_at_stable_layer f (by simp [f]) a
  · simpa only [itr] using step
  · simpa only [itr] using hM

/-- The negative and positive Tate powers coincide at this finite level. -/
theorem inverse_power_at_critical_weight {G : Type*} [Group G] (z : G)
    (m e j : ℕ) (hm : z^m = 1) (he : m ∣ e+j) : (z^e)⁻¹ = z^j := by
  have h : z^e * z^j = 1 := by
    obtain ⟨t,ht⟩ := he
    rw [← pow_add, ht, pow_mul, hm, one_pow]
  calc (z^e)⁻¹ = (z^e)⁻¹ * (z^e * z^j) := by rw [h,mul_one]
       _ = z^j := by rw [← mul_assoc, inv_mul_cancel, one_mul]

/-- The quadratic character of conductor 107 by Euler's criterion. -/
def quadratic107 (a : ℕ) : ℤ :=
  if a % 107 = 0 then 0 else if (a^53)%107 = 1 then 1 else -1

/-- Integral moments used in the primitive generalized Bernoulli formula. -/
def moment107 (k : ℕ) : ℤ :=
  (List.range 107).foldl (fun s a => s + quadratic107 a * (a : ℤ)^k) 0

set_option maxRecDepth 4096 in
theorem moments107 :
    [moment107 1, moment107 2, moment107 3, moment107 4, moment107 5] =
    [-321,-34347,-3114663,-273299079,-24148197951] := by decide

set_option maxRecDepth 4096 in
theorem special_values107 :
    -moment107 1 = 107*3 ∧
    -(2*moment107 3-3*107*moment107 2+107^2*moment107 1) = 6*107*(-1746) ∧
    -(6*moment107 5-15*107*moment107 4+10*107^2*moment107 3-107^4*moment107 1)
      = 30*107*6468966 := by decide

/-- At twists 3 and 5 both global critical orders have valuation two. -/
theorem critical_valuations107 :
    9 ∣ 1746 ∧ ¬ 27 ∣ 1746 ∧ 9 ∣ 6468966 ∧ ¬ 27 ∣ 6468966 := by decide

/-- The three anchor weight classes cover every positive odd twist. -/
theorem three_critical_weights_cover (e : ℕ) (ho : Odd e) :
    6 ∣ e+1 ∨ 6 ∣ e+3 ∨ 6 ∣ e+5 := by obtain ⟨k,hk⟩ := ho; omega

end GRWTSK.AlpogeSelmerCriticalWeights
