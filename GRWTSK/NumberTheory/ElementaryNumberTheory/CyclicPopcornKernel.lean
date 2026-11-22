/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.ModEq
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# The finite cyclic popcorn kernel

The entry at `(i,j)` is `gcd(i+p-j,p)/p`. The nonnegative difference
`i+p-j` is used only to represent the difference modulo the positive
period; no order on the cyclic group is introduced. An explicit weighted
sum of residue-incidence Gram matrices supplies positivity. The term for
the divisor `p` is exactly `(totient p / p) I` and supplies coercivity.

This is a counting-measure finite kernel, not multiplication by Thomae's
function in Lebesgue L2. Its consumers are the lasso-kernel pullback and
the source-preserving pole completion in `WeilPopcornReference`.

Source-proof candidate: exact-pin elaboration, expected-type checking,
fresh kernel replay, transitive axiom audit and independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.CyclicPopcorn

/-- Each column records the residue of one cyclic coordinate modulo `d`.
Unused rows are zero, so a common `Fin p` row type works for every divisor. -/
def residueIncidence (p d : ℕ) : Matrix (Fin p) (Fin p) ℝ :=
  fun r j => if j.val % d = r.val then 1 else 0

def residueGram (p d : ℕ) : Matrix (Fin p) (Fin p) ℝ :=
  (residueIncidence p d).transpose * residueIncidence p d

/-- The construction itself is a finite sum of genuine Gram matrices. -/
def kernel (p : ℕ) : Matrix (Fin p) (Fin p) ℝ :=
  ∑ d ∈ p.divisors, ((Nat.totient d : ℝ) / (p : ℝ)) • residueGram p d

/-- A residue Gram entry tests equality of residues, including `d = 0`.
Only positive divisors occur in the kernel when `p > 0`. -/
theorem residueGram_apply (p d : ℕ) (i j : Fin p) :
    residueGram p d i j = if i.val % d = j.val % d then 1 else 0 := by
  classical
  let r : Fin p := ⟨i.val % d, (Nat.mod_le _ _).trans_lt i.isLt⟩
  unfold residueGram
  rw [Matrix.mul_apply, Finset.sum_eq_single r]
  · simp [residueIncidence, r, eq_comm]
  · intro k _ hkr
    have hk : i.val % d ≠ k.val := by
      intro h
      apply hkr
      exact Fin.ext h.symm
    simp [residueIncidence, hk]
  · simp

theorem residueGram_posSemidef (p d : ℕ) : (residueGram p d).PosSemidef := by
  have h : (residueIncidence p d).conjTranspose =
      (residueIncidence p d).transpose := by
    ext i j
    simp
  rw [residueGram, ← h]
  exact Matrix.posSemidef_conjTranspose_mul_self _

/-- The residue contribution is literally a sum of squares of class sums.
The common `Fin p` row set includes unused zero rows. -/
theorem residueGram_quadratic (p d : ℕ) (x : Fin p → ℝ) :
    x ⬝ᵥ (residueGram p d).mulVec x =
      ∑ r : Fin p, (∑ j : Fin p, if j.val % d = r.val then x j else 0) ^ 2 := by
  rw [residueGram, ← Matrix.mulVec_mulVec, Matrix.dotProduct_transpose_mulVec]
  simp [dotProduct, Matrix.mulVec, residueIncidence, pow_two, ite_mul]

/-- Explicit Gram identity for every real coefficient vector. -/
theorem kernel_quadratic_sum_squares (p : ℕ) (x : Fin p → ℝ) :
    x ⬝ᵥ (kernel p).mulVec x =
      ∑ d ∈ p.divisors, ((Nat.totient d : ℝ) / (p : ℝ)) *
        (∑ r : Fin p, (∑ j : Fin p, if j.val % d = r.val then x j else 0) ^ 2) := by
  classical
  have h (s : Finset ℕ) :
      x ⬝ᵥ (∑ d ∈ s, ((Nat.totient d : ℝ) / (p : ℝ)) • residueGram p d).mulVec x =
        ∑ d ∈ s, ((Nat.totient d : ℝ) / (p : ℝ)) *
          (∑ r : Fin p, (∑ j : Fin p, if j.val % d = r.val then x j else 0) ^ 2) := by
    induction s using Finset.induction_on with
    | empty => simp
    | @insert d s hd ih =>
      simp only [Finset.sum_insert hd, Matrix.add_mulVec, Matrix.smul_mulVec,
        dotProduct_add, dotProduct_smul, smul_eq_mul, residueGram_quadratic, ih]
  exact h p.divisors

theorem kernel_posSemidef (p : ℕ) : (kernel p).PosSemidef := by
  apply Matrix.posSemidef_sum
  intro d _
  exact (residueGram_posSemidef p d).smul
    (div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))

theorem kernel_isHermitian (p : ℕ) : (kernel p).IsHermitian :=
  (kernel_posSemidef p).isHermitian

theorem residueIncidence_self (p : ℕ) : residueIncidence p p = 1 := by
  ext i j
  simp [residueIncidence, Nat.mod_eq_of_lt j.isLt, Matrix.one_apply,
    Fin.ext_iff, eq_comm]

theorem residueGram_self (p : ℕ) : residueGram p p = 1 := by
  simp [residueGram, residueIncidence_self]

/-- The complete kernel minus its explicit diagonal floor is still a
sum of positive semidefinite matrices. -/
theorem kernel_sub_floor_posSemidef {p : ℕ} (hp : 0 < p) :
    (kernel p - ((Nat.totient p : ℝ) / (p : ℝ)) • 1).PosSemidef := by
  classical
  have hmem : p ∈ p.divisors := Nat.mem_divisors.mpr ⟨dvd_rfl, hp.ne'⟩
  have heq : kernel p - ((Nat.totient p : ℝ) / (p : ℝ)) • 1 =
      ∑ d ∈ p.divisors.erase p,
        ((Nat.totient d : ℝ) / (p : ℝ)) • residueGram p d := by
    have hsum := Finset.sum_erase_add p.divisors
      (fun d => ((Nat.totient d : ℝ) / (p : ℝ)) • residueGram p d) hmem
    rw [residueGram_self] at hsum
    unfold kernel
    exact sub_eq_iff_eq_add.mpr hsum.symm
  rw [heq]
  apply Matrix.posSemidef_sum
  intro d _
  exact (residueGram_posSemidef p d).smul
    (div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))

/-- A full-coordinate lower bound, not merely a bound on diagonal entries. -/
theorem kernel_coercive {p : ℕ} (hp : 0 < p) (x : Fin p → ℝ) :
    ((Nat.totient p : ℝ) / (p : ℝ)) * (∑ i, x i ^ 2) ≤
      x ⬝ᵥ (kernel p).mulVec x := by
  have h := (kernel_sub_floor_posSemidef hp).dotProduct_mulVec_nonneg x
  have hmass : x ⬝ᵥ x = ∑ i, x i ^ 2 := by simp [dotProduct, pow_two]
  simp only [star_trivial, Matrix.sub_mulVec, Matrix.smul_mulVec,
    Matrix.one_mulVec, dotProduct_sub, dotProduct_smul, smul_eq_mul, hmass] at h
  linarith

theorem kernel_posDef {p : ℕ} (hp : 0 < p) : (kernel p).PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos (kernel_isHermitian p)
  intro x hx
  have hcoord : ∃ i, x i ≠ 0 := by
    by_contra h
    push_neg at h
    apply hx
    funext i
    exact h i
  obtain ⟨i, hi⟩ := hcoord
  have hmass : 0 < ∑ j, x j ^ 2 :=
    Finset.sum_pos' (fun _ _ => sq_nonneg _) ⟨i, Finset.mem_univ i, sq_pos_of_ne_zero hi⟩
  have hweight : 0 < (Nat.totient p : ℝ) / (p : ℝ) :=
    div_pos (by exact_mod_cast Nat.totient_pos.mpr hp) (by exact_mod_cast hp)
  simpa only [star_trivial] using (mul_pos hweight hmass).trans_le (kernel_coercive hp x)

private theorem residue_eq_iff_dvd_shifted_difference {p d : ℕ}
    (hd : d ∣ p) (i j : Fin p) :
    i.val % d = j.val % d ↔ d ∣ i.val + p - j.val := by
  have hle : j.val ≤ i.val + p := by omega
  have hshift : i.val + p ≡ i.val [MOD d] := by
    change (i.val + p) % d = i.val % d
    simp [Nat.add_mod, Nat.mod_eq_zero_of_dvd hd]
  constructor
  · intro h
    exact (Nat.modEq_iff_dvd' hle).mp
      ((show j.val ≡ i.val [MOD d] from h.symm).trans hshift.symm)
  · intro h
    exact (((Nat.modEq_iff_dvd' hle).mpr h).trans hshift).symm

/-- Arithmetic identification with the literal reciprocal-denominator
popcorn value. The gcd uses a nonnegative representative of `i-j mod p`. -/
theorem kernel_eq_gcd {p : ℕ} (hp : 0 < p) (i j : Fin p) :
    kernel p i j = (Nat.gcd (i.val + p - j.val) p : ℝ) / (p : ℝ) := by
  classical
  let g := Nat.gcd (i.val + p - j.val) p
  have hg : g ≠ 0 := by
    intro h
    have hz := Nat.gcd_dvd_right (i.val + p - j.val) p
    change g ∣ p at hz
    rw [h] at hz
    have : p = 0 := by simpa using hz
    omega
  have hset : p.divisors.filter (fun d => i.val % d = j.val % d) = g.divisors := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd, _⟩, hres⟩
      exact ⟨Nat.dvd_gcd ((residue_eq_iff_dvd_shifted_difference hd i j).mp hres) hd, hg⟩
    · rintro ⟨hd, _⟩
      have hdp : d ∣ p := hd.trans (Nat.gcd_dvd_right _ _)
      exact ⟨⟨hdp, hp.ne'⟩,
        (residue_eq_iff_dvd_shifted_difference hdp i j).mpr
          (hd.trans (Nat.gcd_dvd_left _ _))⟩
  calc
    kernel p i j =
        (∑ d ∈ p.divisors.filter (fun d => i.val % d = j.val % d),
          (Nat.totient d : ℝ)) / (p : ℝ) := by
      simp only [kernel, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul,
        residueGram_apply, Finset.sum_filter, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro d _
      split_ifs <;> simp
    _ = (∑ d ∈ g.divisors, (Nat.totient d : ℝ)) / (p : ℝ) := by rw [hset]
    _ = (g : ℝ) / (p : ℝ) := by
      congr 1
      exact_mod_cast Nat.sum_totient g

@[simp] theorem kernel_diag {p : ℕ} (hp : 0 < p) (i : Fin p) : kernel p i i = 1 := by
  rw [kernel_eq_gcd hp]
  have heq : i.val + p - i.val = p := by omega
  rw [heq, Nat.gcd_self]
  exact div_self (by exact_mod_cast hp.ne')

theorem kernel_symmetric (p : ℕ) (i j : Fin p) : kernel p i j = kernel p j i := by
  have h := congrArg (fun A : Matrix (Fin p) (Fin p) ℝ => A j i)
    (kernel_isHermitian p)
  simpa using h

/-- A complex Hermitian version with exactly the same real arithmetic entries. -/
def complexKernel (p : ℕ) : Matrix (Fin p) (Fin p) ℂ :=
  fun i j => (kernel p i j : ℂ)

theorem complexKernel_isHermitian (p : ℕ) : (complexKernel p).IsHermitian := by
  ext i j
  simp [complexKernel, kernel_symmetric p j i]

/-- Complex quadratic values have the real-part energy of both real components. -/
theorem complex_quadratic_re (p : ℕ) (z : Fin p → ℂ) :
    (star z ⬝ᵥ (complexKernel p).mulVec z).re =
      (fun i => (z i).re) ⬝ᵥ (kernel p).mulVec (fun i => (z i).re) +
      (fun i => (z i).im) ⬝ᵥ (kernel p).mulVec (fun i => (z i).im) := by
  have term (a b : ℂ) (r : ℝ) :
      (star a * ((r : ℂ) * b)).re = a.re * (r * b.re) + a.im * (r * b.im) := by
    simp [Complex.mul_re, Complex.mul_im]
  change (∑ i, star (z i) * (∑ j, (kernel p i j : ℂ) * z j)).re = _
  simp only [Finset.mul_sum, Complex.sum_re, term, Finset.sum_add_distrib,
    dotProduct, Matrix.mulVec]
  simp only [Finset.mul_sum]

theorem complex_quadratic_coercive {p : ℕ} (hp : 0 < p) (z : Fin p → ℂ) :
    ((Nat.totient p : ℝ) / (p : ℝ)) *
        ((∑ i, (z i).re ^ 2) + (∑ i, (z i).im ^ 2)) ≤
      (star z ⬝ᵥ (complexKernel p).mulVec z).re := by
  rw [complex_quadratic_re, mul_add]
  exact add_le_add (kernel_coercive hp _) (kernel_coercive hp _)

/-- The radius-two head has an exact half-identity popcorn floor. -/
theorem kernel64_coercive (x : Fin 64 → ℝ) :
    (1 / 2 : ℝ) * (∑ i, x i ^ 2) ≤ x ⬝ᵥ (kernel 64).mulVec x := by
  have hphi : Nat.totient 64 = 32 := by decide
  have h := kernel_coercive (p := 64) (by decide) x
  norm_num [hphi] at h ⊢
  exact h

end GRWTSK.NumberTheory.CyclicPopcorn
