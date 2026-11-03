/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib

/-!
# Finite noise and scattering comparison, with a transported reference law

For arbitrary finite alphabets, a kernel has nonnegative rows of mass one.
The primary argument is finite Fubini and the triangle inequality:
  TV(p K,q K) <= TV(p,q),
  TV(p K,v) <= TV(p,u) + TV(u K,v).
The source and output alphabets and reference laws need not coincide. No
uniform-preservation, independence, strict mixing, or physical interpretation
is inferred merely from the word noise or scattering.

The half-L1 distance is identified with the maximum over ALL events when
the signed discrepancy has total mass zero. This is the exact interoperability
point with the existing empirical Walsh/Bernoulli comparator, not a comparison
of a few selected events or marginal frequencies.

These are classical finite probability facts, not claimed new theorems.
The source proof is written independently by finite algebra. The sign-event
proof of the TV identity also gives an extremal hostile check. Kernel replay
and an independent human review have not been performed. No asymptotic,
quantum trace-norm, optical calibration, or RH conclusion is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering

universe u v w
variable {A : Type u} {B : Type v} {C : Type w}
variable [Fintype A] [Fintype B] [Fintype C]

/-- Probability law, as actual masses rather than a descriptive class label. -/
def IsLaw (p : A → ℝ) : Prop := (∀ a, 0 ≤ p a) ∧ (∑ a, p a) = 1

/-- A finite stochastic kernel; every outgoing channel is accounted for. -/
structure Kernel (A : Type u) (B : Type v) [Fintype B] where
  weight : A → B → ℝ
  nonnegative : ∀ a b, 0 ≤ weight a b
  row_sum : ∀ a, (∑ b, weight a b) = 1

/-- Linear action, also defined on signed masses for comparison proofs. -/
def push (K : Kernel A B) (p : A → ℝ) (b : B) : ℝ :=
  ∑ a, p a * K.weight a b

/-- Half-L1 normalization of finite total variation. -/
def tv (p q : A → ℝ) : ℝ := (∑ a, |p a - q a|) / 2

theorem tv_nonneg (p q : A → ℝ) : 0 ≤ tv p q := by
  unfold tv
  positivity

@[simp] theorem tv_self (p : A → ℝ) : tv p p = 0 := by
  simp [tv]

theorem tv_symm (p q : A → ℝ) : tv p q = tv q p := by
  simp only [tv, abs_sub_comm]

theorem tv_triangle (p q r : A → ℝ) : tv p r ≤ tv p q + tv q r := by
  have h : (∑ a, |p a - r a|) ≤ ∑ a, (|p a - q a| + |q a - r a|) := by
    apply Finset.sum_le_sum
    intro a ha
    calc
      |p a - r a| = |(p a - q a) + (q a - r a)| := by congr 1 <;> ring
      _ ≤ |p a - q a| + |q a - r a| := abs_add_le _ _
  unfold tv
  rw [Finset.sum_add_distrib] at h
  linarith

theorem push_mass (K : Kernel A B) (p : A → ℝ) :
    (∑ b, push K p b) = ∑ a, p a := by
  unfold push
  rw [Finset.sum_comm]
  simp_rw [← Finset.mul_sum, K.row_sum, mul_one]

theorem push_isLaw (K : Kernel A B) {p : A → ℝ} (hp : IsLaw p) :
    IsLaw (push K p) := by
  constructor
  · intro b
    exact Finset.sum_nonneg (fun a _ => mul_nonneg (hp.1 a) (K.nonnegative a b))
  · rw [push_mass, hp.2]

/-- The genuine data-processing inequality, including signed input masses. -/
theorem tv_push_le (K : Kernel A B) (p q : A → ℝ) :
    tv (push K p) (push K q) ≤ tv p q := by
  have hpoint (b : B) : |push K p b - push K q b| ≤
      ∑ a, |p a - q a| * K.weight a b := by
    calc
      |push K p b - push K q b| =
          |∑ a, (p a - q a) * K.weight a b| := by
            simp only [push, sub_mul, Finset.sum_sub_distrib]
      _ ≤ ∑ a, |(p a - q a) * K.weight a b| := Finset.abs_sum_le_sum_abs _ _
      _ = ∑ a, |p a - q a| * K.weight a b := by
        apply Finset.sum_congr rfl
        intro a ha
        rw [abs_mul, abs_of_nonneg (K.nonnegative a b)]
  have hsum : (∑ b, |push K p b - push K q b|) ≤ ∑ a, |p a - q a| := by
    calc
      _ ≤ ∑ b, ∑ a, |p a - q a| * K.weight a b :=
        Finset.sum_le_sum (fun b _ => hpoint b)
      _ = ∑ a, |p a - q a| := by
        rw [Finset.sum_comm]
        simp_rw [← Finset.mul_sum, K.row_sum, mul_one]
  unfold tv
  linarith

/-- Reference displacement is paid, including when output dimension changes. -/
theorem tv_reference_le (K : Kernel A B) (p u : A → ℝ) (v : B → ℝ) :
    tv (push K p) v ≤ tv p u + tv (push K u) v :=
  (tv_triangle (push K p) (push K u) v).trans
    (add_le_add_right (tv_push_le K p u) _)

/-- Preservation is an equation about the specified law, not a class tag. -/
def Preserves (K : Kernel A A) (u : A → ℝ) : Prop := push K u = u

theorem tv_reference_le_of_preserves (K : Kernel A A) (p u : A → ℝ)
    (hu : Preserves K u) : tv (push K p) u ≤ tv p u := by
  change push K u = u at hu
  simpa only [hu] using tv_push_le K p u

/-- Two successive stochastic scattering/noise stages. -/
def compose (K : Kernel A B) (L : Kernel B C) : Kernel A C where
  weight a c := ∑ b, K.weight a b * L.weight b c
  nonnegative a c := Finset.sum_nonneg (fun b _ =>
    mul_nonneg (K.nonnegative a b) (L.nonnegative b c))
  row_sum a := by
    rw [Finset.sum_comm]
    simp_rw [← Finset.mul_sum, L.row_sum, mul_one]
    exact K.row_sum a

theorem push_compose (K : Kernel A B) (L : Kernel B C) (p : A → ℝ) :
    push (compose K L) p = push L (push K p) := by
  funext c
  simp only [push, compose]
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro b hb
  apply Finset.sum_congr rfl
  intro a ha
  ring

/-- Both reference defects survive a two-stage comparison. -/
theorem tv_two_stage_reference (K : Kernel A B) (L : Kernel B C)
    (p u : A → ℝ) (v : B → ℝ) (z : C → ℝ) :
    tv (push (compose K L) p) z ≤
      tv p u + tv (push K u) v + tv (push L v) z := by
  rw [push_compose]
  exact (tv_reference_le L (push K p) v z).trans
    (add_le_add_right (tv_reference_le K p u v) _)

/-- Discrepancy of one complete Boolean event on the output alphabet. -/
def eventDeviation (p q : A → ℝ) (e : A → Bool) : ℝ :=
  ∑ a, if e a then p a - q a else 0

def eventSign (e : A → Bool) (a : A) : ℝ := if e a then 1 else -1

theorem eventSign_pairing (p q : A → ℝ) (e : A → Bool)
    (hzero : (∑ a, (p a - q a)) = 0) :
    (∑ a, eventSign e a * (p a - q a)) = 2 * eventDeviation p q e := by
  have hpoint (a : A) : eventSign e a * (p a - q a) =
      2 * (if e a then p a - q a else 0) - (p a - q a) := by
    cases he : e a <;> simp [eventSign, he] <;> ring
  simp_rw [hpoint]
  change (∑ a, (2 * (if e a then p a - q a else 0) - (p a - q a))) =
    2 * (∑ a, if e a then p a - q a else 0)
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hzero, sub_zero]

theorem abs_eventDeviation_le_tv (p q : A → ℝ) (e : A → Bool)
    (hzero : (∑ a, (p a - q a)) = 0) :
    |eventDeviation p q e| ≤ tv p q := by
  have hs : |∑ a, eventSign e a * (p a - q a)| ≤ ∑ a, |p a - q a| := by
    calc
      _ ≤ ∑ a, |eventSign e a * (p a - q a)| := Finset.abs_sum_le_sum_abs _ _
      _ = ∑ a, |p a - q a| := by
        apply Finset.sum_congr rfl
        intro a ha
        cases he : e a <;> simp [eventSign, he]
  rw [eventSign_pairing p q e hzero] at hs
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)] at hs
  unfold tv
  linarith

def eventSup (p q : A → ℝ) : ℝ := by
  classical
  exact (Finset.univ : Finset (A → Bool)).sup'
    ⟨fun _ => false, Finset.mem_univ _⟩ (fun e => |eventDeviation p q e|)

/-- Exact finite Hahn-Jordan identity; equal total masses are essential. -/
theorem eventSup_eq_tv (p q : A → ℝ)
    (hzero : (∑ a, (p a - q a)) = 0) : eventSup p q = tv p q := by
  classical
  apply le_antisymm
  · unfold eventSup
    apply Finset.sup'_le
    intro e he
    exact abs_eventDeviation_le_tv p q e hzero
  · let e : A → Bool := fun a => decide (0 ≤ p a - q a)
    have hsign : (∑ a, eventSign e a * (p a - q a)) = ∑ a, |p a - q a| := by
      apply Finset.sum_congr rfl
      intro a ha
      by_cases h : 0 ≤ p a - q a
      · simp [eventSign, e, h, abs_of_nonneg h]
      · simp [eventSign, e, h, abs_of_neg (lt_of_not_ge h)]
    have hp : 2 * eventDeviation p q e = ∑ a, |p a - q a| := by
      rw [← eventSign_pairing p q e hzero]
      exact hsign
    have hnonneg : 0 ≤ eventDeviation p q e := by
      have hs : 0 ≤ ∑ a, |p a - q a| := Finset.sum_nonneg (fun _ _ => abs_nonneg _)
      linarith
    have hv : tv p q = |eventDeviation p q e| := by
      rw [abs_of_nonneg hnonneg]
      unfold tv
      linarith
    rw [hv]
    unfold eventSup
    exact Finset.le_sup' (fun e : A → Bool => |eventDeviation p q e|)
      (Finset.mem_univ e)

/-- An event separates every admissible model from the target. The class
is supplied independently; no unrestricted replacement law is invented. -/
theorem no_model_of_event_separation (admissible : Set (Kernel A B))
    (p : A → ℝ) (q : B → ℝ) (e : B → Bool) (epsilon lower : ℝ)
    (hgap : epsilon < lower)
    (hmass : ∀ K ∈ admissible, (∑ b, (push K p b - q b)) = 0)
    (hsep : ∀ K ∈ admissible, lower ≤ |eventDeviation (push K p) q e|) :
    ¬ ∃ K ∈ admissible, tv (push K p) q ≤ epsilon := by
  rintro ⟨K, hK, herr⟩
  have h := (hsep K hK).trans (abs_eventDeviation_le_tv (push K p) q e (hmass K hK))
  linarith

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering
