/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidIdempotents
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidKernel

/-!
# Ambient idempotents and the cycle identity

The two exponent cases give identities in the original monoid. Exponent zero
is the ambient identity. A cycle exponent divisible by the period gives a
kernel element equal to the explicit cycle identity. Its ambient image agrees
with the root precisely when the stem is empty. This distinguishes the root
in `minimumExactRoot_iso_monoidCayleyGraph` from the cycle identity.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley

open SoficCyclicMonoidKernel SoficSingletonPrefixLassoUniqueness

variable {μ p : ℕ} {hp : 0 < p}

theorem CyclicLassoMonoid.mul_self_eq_iff_root_or_kernelOne
    (m : CyclicLassoMonoid μ p hp) :
    m * m = m ↔ m = 1 ∨ m = (kernelOneFormula μ p hp).toMonoid := by
  rw [mul_self_eq_iff_exp]
  constructor
  · rintro (hzero | ⟨hcycle, hdiv⟩)
    · exact Or.inl (CyclicLassoMonoid.ext (Fin.ext hzero))
    · let x : LassoKernel μ p hp := ⟨m, hcycle⟩
      have hx : x = 1 := (kernel_eq_one_iff_dvd μ p hp x).2 hdiv
      exact Or.inr (congrArg LassoKernel.toMonoid (hx.trans (kernelOneFormula_eq_one μ p hp).symm))
  · rintro (rfl | rfl)
    · exact Or.inl rfl
    · refine Or.inr ⟨(kernelOneFormula μ p hp).ge_mu, ?_⟩
      rw [kernelOneFormula_eq_one]
      exact kernel_one_exp_dvd μ p hp

theorem CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff :
    (kernelOneFormula μ p hp).toMonoid = (1 : CyclicLassoMonoid μ p hp) ↔ μ = 0 := by
  constructor
  · intro h
    have hcycle := (kernelOneFormula μ p hp).ge_mu
    rw [h] at hcycle
    change μ ≤ 0 at hcycle
    exact Nat.eq_zero_of_le_zero hcycle
  · intro h
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change μ + (p - μ % p) % p = 0
    simp [h]

/-- Two ambient states have the same cycle projection exactly when their
normal exponents have the same residue modulo the period. -/
theorem CyclicLassoMonoid.kernelOne_mul_eq_iff_exp_modEq
    (m n : CyclicLassoMonoid μ p hp) :
    (kernelOneFormula μ p hp).toMonoid * m = (kernelOneFormula μ p hp).toMonoid * n ↔
      m.exp.val ≡ n.exp.val [MOD p] := by
  let e := kernelOneFormula μ p hp
  have he : (e.toMonoid.exp.val : ZMod p) = 0 := by
    dsimp [e]
    rw [kernelOneFormula_eq_one]
    exact (ZMod.natCast_eq_zero_iff _ _).2 (kernel_one_exp_dvd μ p hp)
  have hres (z : CyclicLassoMonoid μ p hp) :
      kernelResidueEquiv μ p hp (rightAbsorb e z) = (z.exp.val : ZMod p) := by
    change (reduceExp μ p hp (e.toMonoid.exp.val + z.exp.val) : ZMod p) = _
    rw [reduceExp_zmod, Nat.cast_add, he, zero_add]
  have hproject : rightAbsorb e m = rightAbsorb e n ↔ m.exp.val ≡ n.exp.val [MOD p] := by
    rw [← (kernelResidueEquiv μ p hp).injective.eq_iff, hres m, hres n]
    exact ZMod.natCast_eq_natCast_iff _ _ p
  exact ⟨fun h => hproject.mp (LassoKernel.ext h),
    fun h => congrArg LassoKernel.toMonoid (hproject.mpr h)⟩

/-- The quotient of the normal exponent distinguishes all states within a
cycle projection fiber. -/
theorem CyclicLassoMonoid.kernelOne_mul_quotient_injective :
    Function.Injective (fun m : CyclicLassoMonoid μ p hp =>
      ((kernelOneFormula μ p hp).toMonoid * m, m.exp.val / p)) := by
  intro m n h
  have hr := (kernelOne_mul_eq_iff_exp_modEq m n).mp (congrArg Prod.fst h)
  have hq := congrArg Prod.snd h
  apply CyclicLassoMonoid.ext
  apply Fin.ext
  change m.exp.val % p = n.exp.val % p at hr
  change m.exp.val / p = n.exp.val / p at hq
  calc
    m.exp.val = m.exp.val % p + p * (m.exp.val / p) := (Nat.mod_add_div _ _).symm
    _ = n.exp.val % p + p * (n.exp.val / p) := by rw [hr, hq]
    _ = n.exp.val := Nat.mod_add_div _ _

/-- The smallest auxiliary tag alphabet for lossless cycle projection
has one tag for each quotient from zero through the maximum quotient. -/
theorem CyclicLassoMonoid.exists_injective_kernelOne_mul_tag_iff (k : ℕ) :
    (∃ tag : CyclicLassoMonoid μ p hp → Fin k,
      Function.Injective (fun m => ((kernelOneFormula μ p hp).toMonoid * m, tag m))) ↔
      (μ + p - 1) / p < k := by
  let e := (kernelOneFormula μ p hp).toMonoid
  let qmax := (μ + p - 1) / p
  constructor
  · rintro ⟨tag, htag⟩
    let multiple (i : Fin (qmax + 1)) : CyclicLassoMonoid μ p hp :=
      ⟨⟨i.val * p, by
        have hi : i.val ≤ qmax := Nat.le_of_lt_succ i.isLt
        have hbound := (Nat.le_div_iff_mul_le hp).mp hi
        omega⟩⟩
    have hproject (i : Fin (qmax + 1)) : e * multiple i = e * 1 :=
      (kernelOne_mul_eq_iff_exp_modEq (multiple i) 1).2 (by
        change (i.val * p) % p = 0 % p
        simp)
    have hinjective : Function.Injective (fun i => tag (multiple i)) := by
      intro i j hij
      have hm : multiple i = multiple j :=
        htag (Prod.ext ((hproject i).trans (hproject j).symm) hij)
      apply Fin.ext
      exact Nat.mul_right_cancel hp (congrArg (fun m => m.exp.val) hm)
    have hcard : qmax + 1 ≤ k := by
      simpa using Fintype.card_le_of_injective _ hinjective
    exact Nat.lt_of_succ_le hcard
  · intro hk
    let tag (m : CyclicLassoMonoid μ p hp) : Fin k :=
      ⟨m.exp.val / p, lt_of_le_of_lt
        (Nat.div_le_div_right (Nat.le_sub_one_of_lt m.exp.isLt)) hk⟩
    refine ⟨tag, ?_⟩
    intro m n hmn
    apply kernelOne_mul_quotient_injective
    exact congrArg (fun pair : CyclicLassoMonoid μ p hp × Fin k => (pair.1, pair.2.val)) hmn

/-- The cycle projection accompanied by a fixed-width quotient word. -/
def CyclicLassoMonoid.encodeCycleQuotient (b : ℕ) (m : CyclicLassoMonoid μ p hp) :
    CyclicLassoMonoid μ p hp × BitVec b :=
  ((kernelOneFormula μ p hp).toMonoid * m, BitVec.ofNat b (m.exp.val / p))

/-- Reconstruct the exponent from the projected residue and the auxiliary
word. The exponent bound rejects values outside the original monoid. -/
def CyclicLassoMonoid.decodeCycleQuotient {b : ℕ}
    (word : CyclicLassoMonoid μ p hp × BitVec b) : Option (CyclicLassoMonoid μ p hp) :=
  let n := word.1.exp.val % p + p * word.2.toNat
  if hn : n < μ + p then some ⟨⟨n, hn⟩⟩ else none

theorem CyclicLassoMonoid.decodeCycleQuotient_encode (b : ℕ)
    (hwidth : (μ + p - 1) / p < 2 ^ b) (m : CyclicLassoMonoid μ p hp) :
    decodeCycleQuotient (encodeCycleQuotient b m) = some m := by
  let e := (kernelOneFormula μ p hp).toMonoid
  have he : e * e = e := (mul_self_eq_iff_root_or_kernelOne e).2 (Or.inr rfl)
  have hproject : e * (e * m) = e * m := by rw [← mul_assoc, he]
  have hr := (kernelOne_mul_eq_iff_exp_modEq (e * m) m).mp hproject
  change (e * m).exp.val % p = m.exp.val % p at hr
  have hq : m.exp.val / p < 2 ^ b :=
    lt_of_le_of_lt (Nat.div_le_div_right (Nat.le_sub_one_of_lt m.exp.isLt)) hwidth
  unfold decodeCycleQuotient encodeCycleQuotient
  simp only [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hq]
  change (if hn : (e * m).exp.val % p + p * (m.exp.val / p) < μ + p then
    some ⟨⟨_, hn⟩⟩ else none) = some m
  rw [hr, Nat.mod_add_div, dite_eq_left m.exp.isLt]

/-- The quotient word meets the necessary width for arbitrary fixed-width
tags paired with this same projection. -/
theorem CyclicLassoMonoid.exists_injective_kernelOne_mul_bitVec_iff (b : ℕ) :
    (∃ tag : CyclicLassoMonoid μ p hp → BitVec b,
      Function.Injective (fun m => ((kernelOneFormula μ p hp).toMonoid * m, tag m))) ↔
      (μ + p - 1) / p < 2 ^ b := by
  constructor
  · rintro ⟨tag, hinj⟩
    apply (exists_injective_kernelOne_mul_tag_iff (hp := hp) (2 ^ b)).1
    refine ⟨fun m => (tag m).toFin, ?_⟩
    intro m n h
    apply hinj
    apply Prod.ext
    · exact congrArg (fun pair : CyclicLassoMonoid μ p hp × Fin (2 ^ b) => pair.1) h
    · exact BitVec.eq_of_toFin_eq (congrArg Prod.snd h)
  · intro hwidth
    refine ⟨fun m => BitVec.ofNat b (m.exp.val / p), ?_⟩
    intro m n h
    change encodeCycleQuotient b m = encodeCycleQuotient b n at h
    have hdecoded := congrArg decodeCycleQuotient h
    rw [decodeCycleQuotient_encode b hwidth m, decodeCycleQuotient_encode b hwidth n] at hdecoded
    exact Option.some.inj hdecoded

/-- The receiving decoder also rejects projected states from the stem. -/
def CyclicLassoMonoid.decodeCanonicalCycleQuotient {b : ℕ}
    (word : CyclicLassoMonoid μ p hp × BitVec b) : Option (CyclicLassoMonoid μ p hp) :=
  if μ ≤ word.1.exp.val then decodeCycleQuotient word else none

/-- With the sharp width bound, the receiving decoder accepts exactly an
encoder output for the state it returns. -/
theorem CyclicLassoMonoid.decodeCanonicalCycleQuotient_eq_some_iff {b : ℕ}
    (hwidth : (μ + p - 1) / p < 2 ^ b)
    (word : CyclicLassoMonoid μ p hp × BitVec b) (m : CyclicLassoMonoid μ p hp) :
    decodeCanonicalCycleQuotient word = some m ↔ encodeCycleQuotient b m = word := by
  constructor
  · intro h
    unfold decodeCanonicalCycleQuotient at h
    split at h
    · rename_i hcycle
      have hexp : m.exp.val = word.1.exp.val % p + p * word.2.toNat := by
        unfold decodeCycleQuotient at h
        dsimp only at h
        split at h
        · exact (congrArg (fun z : CyclicLassoMonoid μ p hp => z.exp.val)
            (Option.some.inj h)).symm
        · contradiction
      apply Prod.ext
      · let x : LassoKernel μ p hp := ⟨word.1, hcycle⟩
        let e := (kernelOneFormula μ p hp).toMonoid
        have hfixed : e * word.1 = word.1 := by
          change (kernelOneFormula μ p hp).toMonoid * x.toMonoid = x.toMonoid
          rw [← kernel_mul_toMonoid, kernelOneFormula_eq_one, one_mul]
        have hproj : e * m = e * word.1 :=
          (kernelOne_mul_eq_iff_exp_modEq m word.1).2 (by
            change m.exp.val % p = word.1.exp.val % p
            rw [hexp, Nat.add_mul_mod_self_left, Nat.mod_mod])
        exact hproj.trans hfixed
      · apply BitVec.eq_of_toNat_eq
        change (BitVec.ofNat b (m.exp.val / p)).toNat = word.2.toNat
        rw [BitVec.toNat_ofNat, hexp, Nat.add_mul_div_left _ _ hp,
          Nat.div_eq_of_lt (Nat.mod_lt _ hp), Nat.zero_add, Nat.mod_eq_of_lt word.2.isLt]
    · contradiction
  · intro h
    rw [← h]
    have hcycle : μ ≤ (encodeCycleQuotient b m).1.exp.val :=
      (rightAbsorb (kernelOneFormula μ p hp) m).ge_mu
    rw [decodeCanonicalCycleQuotient, ite_eq_left hcycle]
    exact decodeCycleQuotient_encode b hwidth m

/-- Multiplication by the cycle identity preserves enough information to
recover every complete label tail exactly when the lasso has no stem. -/
theorem exists_decode_labelTails_of_kernelOne_mul_iff {A : Type*} {x : ℕ → A}
    (h : LeastLassoParams x μ p) :
    (∃ decode : CyclicLassoMonoid μ p h.pos_p → ℕ → A,
      ∀ m k, decode ((kernelOneFormula μ p h.pos_p).toMonoid * m) k =
        x (m.exp.val + k)) ↔ μ = 0 := by
  let e := (kernelOneFormula μ p h.pos_p).toMonoid
  constructor
  · rintro ⟨decode, hdecode⟩
    by_contra hμ
    have he : e * e = e :=
      (CyclicLassoMonoid.mul_self_eq_iff_root_or_kernelOne e).2 (Or.inr rfl)
    have hepos : 0 < e.exp.val :=
      lt_of_lt_of_le (Nat.pos_of_ne_zero hμ) (kernelOneFormula μ p h.pos_p).ge_mu
    apply h.distinct_cuts 0 e.exp.val hepos e.exp.isLt
    intro k
    have hroot := hdecode 1 k
    have hcycle := hdecode e k
    change decode (e * 1) k = x (0 + k) at hroot
    change decode (e * e) k = x (e.exp.val + k) at hcycle
    rw [mul_one] at hroot
    rw [he] at hcycle
    exact hroot.symm.trans hcycle
  · intro hμ
    have he : e = 1 := CyclicLassoMonoid.kernelOneFormula_toMonoid_eq_one_iff.mpr hμ
    refine ⟨fun m k => x (m.exp.val + k), ?_⟩
    intro m k
    change x ((e * m).exp.val + k) = x (m.exp.val + k)
    rw [he, one_mul]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley
