import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite gcd/parallelogram identities for the pickup dispersion off-diagonal.
No analytic cancellation theorem is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupDispersionParallelogram

/-- Four corners of the additive parallelogram based at m with shifts r,k. -/
def corners (m r k : ℕ) : ℕ × ℕ × ℕ × ℕ :=
  (m, m + r, m + k, m + k + r)

/-- gcd-normalized shifts. -/
def scale (r k : ℕ) : ℕ := Nat.gcd r k
def primitiveR (r k : ℕ) : ℕ := r / scale r k
def primitiveK (r k : ℕ) : ℕ := k / scale r k

theorem scale_mul_primitiveR (r k : ℕ) :
    scale r k * primitiveR r k = r := by
  unfold scale primitiveR
  exact Nat.mul_div_cancel' (Nat.gcd_dvd_left r k)

theorem scale_mul_primitiveK (r k : ℕ) :
    scale r k * primitiveK r k = k := by
  unfold scale primitiveK
  exact Nat.mul_div_cancel' (Nat.gcd_dvd_right r k)

/-- After gcd normalization, the two primitive edge directions are coprime. -/
theorem primitive_coprime {r k : ℕ} (hr : 0 < r) (hk : 0 < k) :
    Nat.Coprime (primitiveR r k) (primitiveK r k) := by
  unfold primitiveR primitiveK scale
  exact Nat.coprime_div_gcd_div_gcd hr hk

/-- A prime dividing the common scale divides all pairwise corner differences. -/
theorem prime_scale_divides_corner_differences
    {p m r k : ℕ} (hp : p ∣ scale r k) :
    p ∣ (m + r) - m ∧
    p ∣ (m + k) - m ∧
    p ∣ (m + k + r) - m := by
  have hpr : p ∣ r := dvd_trans hp (Nat.gcd_dvd_left r k)
  have hpk : p ∣ k := dvd_trans hp (Nat.gcd_dvd_right r k)
  constructor
  · simpa using hpr
  constructor
  · simpa using hpk
  · have : p ∣ k + r := Nat.dvd_add hpk hpr
    simpa [Nat.add_assoc, Nat.add_sub_cancel_left] using this

/-- Arithmetic cancellation still required after the exact gcd grouping. -/
structure PrimitiveParallelogramBridge where
  exactSourceWindow : Prop
  selectedDivisorQuartetPreserved : Prop
  primitiveRectangleCancellation : Prop
  scaleSummationControlled : Prop
  roughMasksPreserved : Prop
  sharedPrimeCollisionsPaid : Prop
  clippedEndpointsPaid : Prop
  completeComplementPreserved : Prop
  quantitativeSavingSurvives : Prop

end GRWTSK.NumberTheory.Moebius.PickupDispersionParallelogram
