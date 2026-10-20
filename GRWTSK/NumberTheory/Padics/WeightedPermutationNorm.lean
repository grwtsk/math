/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's actual rational p-adic absolute value and finite suprema.
Formalization assistance: OpenAI.

Sharp rational p-adic MAX-norm bounds for the old integer weighted map.
No global Norm instance on Q is changed. The inverse requires every weight
nonzero. This is not a completed Q_p operator, an intrinsic lattice, a
Euclidean energy, a determinant norm, or an adelic height theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.LinearAlgebra.WeightedPermutationIntegral
import Mathlib.NumberTheory.Padics.PadicNorm
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Padics.WeightedPermutationNorm

variable {ι : Type*}

/-- Rational extension of the previous integer weighted permutation. -/
def transport (e : Equiv.Perm ι) (w : ι → ℤ) : (ι → ℚ) →ₗ[ℚ] (ι → ℚ) where
  toFun v j := (w (e.symm j) : ℚ) * v (e.symm j)
  map_add' u v := by funext j; simp <;> ring
  map_smul' c v := by funext j; simp <;> ring

@[simp] theorem transport_at (e : Equiv.Perm ι) (w : ι → ℤ)
    (v : ι → ℚ) (i : ι) : transport e w v (e i) = (w i : ℚ) * v i := by
  simp [transport]

/-- All integer inputs still use exactly the OLD integer map. -/
theorem transport_integer (e : Equiv.Perm ι) (w v : ι → ℤ) :
    transport e w (fun i => (v i : ℚ)) =
      fun i => (GRWTSK.LinearAlgebra.WeightedPermutationIntegral.transport e w v i : ℚ) := by
  funext i
  simp [transport, GRWTSK.LinearAlgebra.WeightedPermutationIntegral.transport]

/-- Source slot i reads target e(i). The nonzero witnesses cannot be omitted. -/
def inverse (e : Equiv.Perm ι) (w : ι → ℤ) (_hw : ∀ i, w i ≠ 0) :
    (ι → ℚ) →ₗ[ℚ] (ι → ℚ) where
  toFun u i := u (e i) / (w i : ℚ)
  map_add' u v := by funext i; simp <;> ring
  map_smul' c v := by funext i; simp <;> ring

@[simp] theorem inverse_transport (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) (v : ι → ℚ) : inverse e w hw (transport e w v) = v := by
  funext i
  change transport e w v (e i) / (w i : ℚ) = v i
  rw [transport_at]
  have hi : (w i : ℚ) ≠ 0 := Int.cast_ne_zero.mpr (hw i)
  field_simp [hi]

@[simp] theorem transport_inverse (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) (u : ι → ℚ) : transport e w (inverse e w hw u) = u := by
  funext j
  have hj : (w (e.symm j) : ℚ) ≠ 0 := Int.cast_ne_zero.mpr (hw (e.symm j))
  change (w (e.symm j) : ℚ) * (u (e (e.symm j)) / (w (e.symm j) : ℚ)) = u j
  rw [Equiv.apply_symm_apply]
  field_simp [hj]

section FiniteNorm
variable [Fintype ι] [Nonempty ι]

/-- Actual finite maximum of Mathlib's rational p-adic norms, not a sum. -/
def supNorm (p : ℕ) (v : ι → ℚ) : ℚ :=
  Finset.univ.sup' Finset.univ_nonempty (fun i => padicNorm p (v i))

theorem supNorm_le_iff (p : ℕ) (v : ι → ℚ) (B : ℚ) :
    supNorm p v ≤ B ↔ ∀ i, padicNorm p (v i) ≤ B := by
  simp only [supNorm, Finset.sup'_le_iff, Finset.mem_univ, forall_const]

theorem entry_le (p : ℕ) (v : ι → ℚ) (i : ι) :
    padicNorm p (v i) ≤ supNorm p v :=
  Finset.le_sup' (fun j => padicNorm p (v j)) (Finset.mem_univ i)

theorem supNorm_nonneg (p : ℕ) (v : ι → ℚ) : 0 ≤ supNorm p v := by
  obtain ⟨i⟩ := ‹Nonempty ι›
  exact (padicNorm.nonneg (v i)).trans (entry_le p v i)

@[simp] theorem supNorm_ones (p : ℕ) : supNorm p (fun _ : ι => (1 : ℚ)) = 1 := by
  simp only [supNorm, padicNorm.one, Finset.sup'_const]

variable (p : ℕ) [Fact p.Prime]

/-- A universal vector estimate, not a sampled singular value. -/
def OperatorBound (F : (ι → ℚ) →ₗ[ℚ] (ι → ℚ)) (B : ℚ) : Prop :=
  ∀ v, supNorm p (F v) ≤ B * supNorm p v

/-- Every source-column norm is necessary; together they suffice for ALL vectors. -/
theorem transport_bound_iff (e : Equiv.Perm ι) (w : ι → ℤ) (B : ℚ) :
    OperatorBound p (transport e w) B ↔ ∀ i, padicNorm p (w i : ℚ) ≤ B := by
  constructor
  · intro h i
    have hb := h (fun _ => (1 : ℚ))
    rw [supNorm_ones, mul_one] at hb
    have hi := (entry_le p (transport e w (fun _ => (1 : ℚ))) (e i)).trans hb
    simpa only [transport_at, mul_one] using hi
  · intro h v
    apply (supNorm_le_iff p _ _).mpr
    intro j
    change padicNorm p ((w (e.symm j) : ℚ) * v (e.symm j)) ≤ _
    rw [padicNorm.mul]
    calc
      _ ≤ padicNorm p (w (e.symm j) : ℚ) * supNorm p v :=
        mul_le_mul_of_nonneg_left (entry_le p v (e.symm j)) (padicNorm.nonneg _)
      _ ≤ B * supNorm p v :=
        mul_le_mul_of_nonneg_right (h (e.symm j)) (supNorm_nonneg p v)

/-- The inverse bound depends on the LARGEST inverse-column norm, not their product. -/
theorem inverse_bound_iff (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) (B : ℚ) :
    OperatorBound p (inverse e w hw) B ↔
      ∀ i, padicNorm p (1 / (w i : ℚ)) ≤ B := by
  constructor
  · intro h i
    have hb := h (fun _ => (1 : ℚ))
    rw [supNorm_ones, mul_one] at hb
    exact (entry_le p (inverse e w hw (fun _ => (1 : ℚ))) i).trans hb
  · intro h v
    apply (supNorm_le_iff p _ _).mpr
    intro i
    change padicNorm p (v (e i) / (w i : ℚ)) ≤ _
    have he : padicNorm p (v (e i) / (w i : ℚ)) =
        padicNorm p (1 / (w i : ℚ)) * padicNorm p (v (e i)) := by
      simp only [padicNorm.div, padicNorm.one]
      ring
    rw [he]
    calc
      _ ≤ padicNorm p (1 / (w i : ℚ)) * supNorm p v :=
        mul_le_mul_of_nonneg_left (entry_le p v (e i)) (padicNorm.nonneg _)
      _ ≤ B * supNorm p v :=
        mul_le_mul_of_nonneg_right (h i) (supNorm_nonneg p v)

/-- Integral forward columns are nonexpanding in this declared rational local norm. -/
theorem transport_nonexpanding (e : Equiv.Perm ι) (w : ι → ℤ) :
    OperatorBound p (transport e w) 1 :=
  (transport_bound_iff p e w 1).mpr (fun i => padicNorm.of_int (w i))

end FiniteNorm

section Arithmetic
variable (p : ℕ) [Fact p.Prime]

/-- Divisibility bounds inverse norms only with the actual integer factors retained. -/
theorem inverse_norm_le_of_dvd (a b : ℤ) (hb : b ≠ 0) (hab : a ∣ b) :
    padicNorm p (1 / (a : ℚ)) ≤ padicNorm p (1 / (b : ℚ)) := by
  obtain ⟨t, rfl⟩ := hab
  have ha : a ≠ 0 := left_ne_zero_of_mul hb
  have ht : t ≠ 0 := right_ne_zero_of_mul hb
  have haq : (a : ℚ) ≠ 0 := Int.cast_ne_zero.mpr ha
  have htq : (t : ℚ) ≠ 0 := Int.cast_ne_zero.mpr ht
  have he : (1 / (a : ℚ)) = (t : ℚ) * (1 / ((a * t : ℤ) : ℚ)) := by
    simp only [Int.cast_mul]
    field_simp [haq, htq]
  rw [he, padicNorm.mul]
  simpa only [one_mul] using
    mul_le_mul_of_nonneg_right (padicNorm.of_int t)
      (padicNorm.nonneg (1 / ((a * t : ℤ) : ℚ)))

/-- Exact link to Mathlib factorization; not a supplied independent cost coordinate. -/
theorem inverse_nat_norm (n : ℕ) (hn : n ≠ 0) :
    padicNorm p (1 / (n : ℚ)) = (p : ℚ) ^ n.factorization p := by
  rw [padicNorm.div, padicNorm.one,
    padicNorm.eq_zpow_of_nonzero (Nat.cast_ne_zero.mpr hn), padicValRat.of_nat]
  simp only [one_div, zpow_neg, inv_inv, zpow_natCast]
  rw [Nat.factorization_def n (Fact.out : Nat.Prime p)]

theorem inverse_int_norm (n : ℤ) (hn : n ≠ 0) :
    padicNorm p (1 / (n : ℚ)) = (p : ℚ) ^ n.natAbs.factorization p := by
  rw [padicNorm.div, padicNorm.one,
    padicNorm.eq_zpow_of_nonzero (Int.cast_ne_zero.mpr hn), padicValRat.of_int]
  simp only [padicValInt, one_div, zpow_neg, inv_inv, zpow_natCast]
  rw [Nat.factorization_def n.natAbs (Fact.out : Nat.Prime p)]

/-- The coprime chart factors are combined through an ACTUAL rational identity. -/
theorem inverse_twelve_le_max (w : ℤ) (hw : w ≠ 0) :
    padicNorm p (1 / ((12 * w : ℤ) : ℚ)) ≤
      max (padicNorm p (1 / ((3 * w : ℤ) : ℚ)))
        (padicNorm p (1 / ((4 * w : ℤ) : ℚ))) := by
  have hwq : (w : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hw
  have he : (1 / ((12 * w : ℤ) : ℚ)) =
      (1 / ((3 * w : ℤ) : ℚ)) - (1 / ((4 * w : ℤ) : ℚ)) := by
    simp only [Int.cast_mul, Int.cast_ofNat]
    field_simp [hwq] <;> ring
  rw [he]
  exact padicNorm.sub

end Arithmetic
end GRWTSK.NumberTheory.Padics.WeightedPermutationNorm
