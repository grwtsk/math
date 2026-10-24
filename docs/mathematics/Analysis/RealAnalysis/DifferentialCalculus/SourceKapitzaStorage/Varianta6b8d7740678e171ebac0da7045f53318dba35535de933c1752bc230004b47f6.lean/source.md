# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Varianta6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e62617613538707a7969b346bf1e7fecaffe00c8` · SHA-256 `a6b8d7740678e171ebac0da7045f53318dba35535de933c1752bc230004b47f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# Kapitza source-storage derivation components

Task RH16-KAPITZA-20261007, cycle K-C1. grwtsk contributors reports the
originating dynamic-stabilization proposal; its original date is unverified.
Codex contributions here are the following algebra and local calculus proofs.

These statements do not assume RH and do not supply the still-open signed
arithmetic budget. Actual source reconstruction, eventwise regularity, the
integrated telescope, and the quantified PNT provider must be joined separately.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaStorage

/-- The exact signed storage; it is not asserted nonnegative. -/
def storage (w z η : ℝ) : ℝ := w * z ^ 2 + η * z

/-- Affine initial-storage polynomial after the actual normalization C(0)=1. -/
def initialStorage (L b : ℝ) : ℝ := 4 + 9 * L + 5 * L ^ 2 - 12 * b * (1 + L)

/-- The local drift identity retains both the square and signed affine terms. -/
theorem drift_identity (w z c k η η' : ℝ) :
    w * k * z + ((w / 2) * z ^ 2 + w * (2 * z * (-z + c)) +
      η' * z + η * (-z + c)) =
    -(3 / 2 : ℝ) * w * z ^ 2 + (w * (k + 2 * c) + η' - η) * z + η * c := by
  ring

/-- Local calculus realization of the seed, with every derivative assumption visible. -/
theorem hasDerivAt_storage {w z η : ℝ → ℝ} {s c η' : ℝ}
    (hw : HasDerivAt w (w s / 2) s)
    (hz : HasDerivAt z (-z s + c) s) (hη : HasDerivAt η η' s) :
    HasDerivAt (fun t ↦ storage (w t) (z t) (η t))
      (w s / 2 * z s ^ 2 + w s * (2 * z s * (-z s + c)) +
        η' * z s + η s * (-z s + c)) s := by
  simp only [storage, pow_two]
  exact ((hw.mul (hz.mul hz)).add (hη.mul hz)).congr_deriv (by dsimp; ring)

theorem hasDerivAt_weight (s : ℝ) :
    HasDerivAt (fun t : ℝ ↦ Real.exp (t / 2)) (Real.exp (s / 2) / 2) s := by
  exact ((Real.hasDerivAt_exp (s / 2)).comp s
    ((hasDerivAt_id s).div_const 2)).congr_deriv
      (g' := Real.exp (s / 2) / 2) (by ring)

/-- Exact first-corrector algebra. -/
theorem corrector_cancellation (w C C' c b : ℝ) :
    w / 2 * (C + 4 * c + 8 * b) + w * (C' + 4 * b) -
      w * (C + 4 * c + 8 * b) = -w * ((C / 2 - C') + 2 * c) := by
  ring

/-- The corrector has precisely the derivative needed for F=0 between events. -/
theorem hasDerivAt_corrector {w C c : ℝ → ℝ} {s C' b : ℝ}
    (hw : HasDerivAt w (w s / 2) s) (hC : HasDerivAt C C' s)
    (hc : HasDerivAt c b s) :
    HasDerivAt (fun t ↦ w t * (C t + 4 * c t + 8 * b))
      (w s / 2 * (C s + 4 * c s + 8 * b) + w s * (C' + 4 * b)) s := by
  have h := hw.mul ((hC.add (hc.const_mul 4)).add_const (8 * b))
  exact h.congr_deriv (g' := w s / 2 * (C s + 4 * c s + 8 * b) + w s * (C' + 4 * b))
    (by rfl)

/-- Continuous-corrector event identity, before substituting j=Λ(n)/n. -/
theorem jump_continuous_corrector (w z η j : ℝ) :
    storage w (z + j) η - storage w z η = 2 * w * z * j + w * j ^ 2 + η * j := by
  simp only [storage]
  ring

/-- A jumping corrector additionally pays both its left-value and cross terms. -/
theorem jump_jumping_corrector (w z η j t : ℝ) :
    storage w (z + j) (η + t) - storage w z η =
      2 * w * z * j + w * j ^ 2 + η * j + t * z + t * j := by
  simp only [storage]
  ring

/-- The post-event endpoint vanishes only when the post-event discrepancy does. -/
theorem storage_endpoint (w η : ℝ) : storage w 0 η = 0 := by simp [storage]

/-- Square completion retains its negative offset. -/
theorem storage_complete_square {w : ℝ} (hw : w ≠ 0) (z η : ℝ) :
    storage w z η = w * (z + η / (2 * w)) ^ 2 - η ^ 2 / (4 * w) := by
  unfold storage
  field_simp [hw]; ring

/-- Initial term from d(0)=-1 and C(0)=1; the affine term has full cost. -/
theorem initialStorage_reconstruction (L b : ℝ) :
    storage 1 (-1 - L) (1 + 4 * (b - 1 - L) + 8 * b) = initialStorage L b := by
  unfold storage initialStorage
  ring

/-- This bound is algebraic and uses no PNT or arithmetic premise implicitly. -/
theorem initialStorage_abs_sub_four {L b h : ℝ} (hh : 0 ≤ h)
    (hL : |L| ≤ 5 * h) (hb : |b| ≤ 2 * h) :
    |initialStorage L b - 4| ≤ 69 * h + 245 * h ^ 2 := by
  have ht : |1 + L| ≤ 1 + |L| := by simpa using abs_add_le (1 : ℝ) L
  have hLs : |L| ^ 2 ≤ (5 * h) ^ 2 := by nlinarith [abs_nonneg L]
  have hp : |b| * |1 + L| ≤ 2 * h * (1 + 5 * h) :=
    mul_le_mul hb (by linarith) (abs_nonneg _) (by positivity)
  calc
    |initialStorage L b - 4| = |9 * L + 5 * L ^ 2 - 12 * b * (1 + L)| := by
      congr 1
      unfold initialStorage
      ring
    _ ≤ |9 * L| + |5 * L ^ 2| + |12 * b * (1 + L)| := by
      have ha := abs_add_le (9 * L) (5 * L ^ 2)
      have hs := abs_sub (9 * L + 5 * L ^ 2) (12 * b * (1 + L))
      linarith
    _ = 9 * |L| + 5 * |L| ^ 2 + 12 * (|b| * |1 + L|) := by
      simp [abs_mul, abs_pow]
      ring
    _ ≤ 69 * h + 245 * h ^ 2 := by nlinarith

theorem initialStorage_abs_sub_four_linear {L b h : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1)
    (hL : |L| ≤ 5 * h) (hb : |b| ≤ 2 * h) :
    |initialStorage L b - 4| ≤ 314 * h := by
  have hbound := initialStorage_abs_sub_four hh hL hb
  have hs : h ^ 2 ≤ h := by nlinarith
  nlinarith

/-- Native finite-radius consequence after independently supplying K/A bounds. -/
theorem initialStorage_epsilon {L b K A ε : ℝ}
    (hK : 0 ≤ K) (hA : 1 ≤ A) (hKA : K ≤ A)
    (hε : 0 < ε) (hR : 314 * K / ε ≤ A)
    (hL : |L| ≤ 5 * (K / A)) (hb : |b| ≤ 2 * (K / A)) :
    |initialStorage L b - 4| ≤ ε := by
  have hA0 : 0 < A := by linarith
  have hh : 0 ≤ K / A := div_nonneg hK hA0.le
  have hh1 : K / A ≤ 1 := (div_le_one hA0).mpr hKA
  have hbudget : 314 * (K / A) ≤ ε := by
    have hr := (div_le_iff₀ hε).mp hR
    rw [← mul_div_assoc]
    apply (div_le_iff₀ hA0).mpr
    nlinarith
  exact (initialStorage_abs_sub_four_linear hh hh1 hL hb).trans hbudget

/-- The separate continuous drift has positive exponential size. -/
theorem obstruction_coefficients {C l b : ℝ}
    (hC : |C| ≤ 1) (hl : |l| ≤ 1 / 8) (hb : |b| ≤ 1 / 64) :
    b - 1 - l ≤ -(55 / 64 : ℝ) ∧
      C + 4 * (b - 1 - l) + 8 * b ≤ -(37 / 16 : ℝ) := by
  rcases abs_le.mp hC with ⟨hC₀, hC₁⟩
  rcases abs_le.mp hl with ⟨hl₀, hl₁⟩
  rcases abs_le.mp hb with ⟨hb₀, hb₁⟩
  constructor <;> linarith

theorem obstruction_product {w c q : ℝ} (hw : 0 ≤ w)
    (hc : c ≤ -(55 / 64 : ℝ)) (hq : q ≤ -(37 / 16 : ℝ)) :
    (2035 / 1024 : ℝ) * w ≤ (w * q) * c := by
  have hp : (2035 / 1024 : ℝ) ≤ q * c := by
    nlinarith [mul_nonneg (show 0 ≤ -c - 55 / 64 by linarith)
      (show 0 ≤ -q - 37 / 16 by linarith)]
  nlinarith [mul_le_mul_of_nonneg_left hp hw]

/-- Actual quadratic atom, with the natural-to-real cast explicit. -/
def quadraticImpulse (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n ^ 2 / (n : ℝ) ^ (3 / 2 : ℝ)

/-- Positive real majorant on the interval [n-1,n]. -/
def quadraticMajorant (x : ℝ) : ℝ :=
  (Real.log 2 + Real.log x) ^ 2 / x ^ (3 / 2 : ℝ)

/-- Primitive used only on positive real arguments. -/
def quadraticPrimitive (x : ℝ) : ℝ :=
  -(2 * (Real.log 2 + Real.log x) ^ 2 + 8 * (Real.log 2 + Real.log x) + 16) *
    x ^ (-(1 / 2 : ℝ))

def quadraticConstant : ℝ := 16 + 8 * Real.log 2 + 2 * (Real.log 2) ^ 2

theorem quadraticImpulse_nonneg (n : ℕ) : 0 ≤ quadraticImpulse n := by
  unfold quadraticImpulse
  exact div_nonneg (sq_nonneg _) (Real.rpow_nonneg (Nat.cast_nonneg _) _)

/-- Every natural, including higher prime powers, uses the native Λ≤log theorem. -/
theorem quadraticImpulse_le_log (n : ℕ) :
    quadraticImpulse n ≤ (Real.log n) ^ 2 / (n : ℝ) ^ (3 / 2 : ℝ) := by
  unfold quadraticImpulse
  apply div_le_div_of_nonneg_right _ (Real.rpow_nonneg (Nat.cast_nonneg _) _)
  nlinarith [ArithmeticFunction.vonMangoldt_le_log (n := n),
    ArithmeticFunction.vonMangoldt_nonneg (n := n), Real.log_natCast_nonneg n]

theorem log_atom_le_quadraticMajorant {n : ℕ} (hn : 2 ≤ n) {x : ℝ}
    (hxlo : (n : ℝ) - 1 ≤ x) (hxhi : x ≤ n) :
    (Real.log n) ^ 2 / (n : ℝ) ^ (3 / 2 : ℝ) ≤ quadraticMajorant x := by
  have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := by linarith
  have hx0 : 0 < x := by linarith
  have hn0 : 0 < (n : ℝ) := by linarith
  have hlog : Real.log n ≤ Real.log 2 + Real.log x := by
    rw [← Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hx0.ne']
    exact Real.log_le_log hn0 (by linarith)
  have hlog0 : 0 ≤ Real.log n := Real.log_natCast_nonneg n
  have hs : (Real.log n) ^ 2 ≤ (Real.log 2 + Real.log x) ^ 2 := by
    nlinarith
  exact div_le_div₀ (sq_nonneg _) hs (Real.rpow_pos_of_pos hx0 _)
    (Real.rpow_le_rpow hx0.le hxhi (by norm_num))

theorem quadraticPrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt quadraticPrimitive (quadraticMajorant x) x := by
  have ht := (Real.hasDerivAt_log hx.ne').const_add (Real.log 2)
  have hp := (((ht.pow 2).const_mul 2).add (ht.const_mul 8)).add_const 16
  have hr := Real.hasDerivAt_rpow_const (x := x) (p := -(1 / 2 : ℝ)) (Or.inl hx.ne')
  have hd := (hp.mul hr).neg
  change HasDerivAt (fun t : ℝ ↦
    -((2 * (Real.log 2 + Real.log t) ^ 2 + 8 * (Real.log 2 + Real.log t) + 16) *
      t ^ (-(1 / 2 : ℝ)))) _ x at hd
  have hfun : (fun t : ℝ ↦
    -((2 * (Real.log 2 + Real.log t) ^ 2 + 8 * (Real.log 2 + Real.log t) + 16) *
      t ^ (-(1 / 2 : ℝ)))) = quadraticPrimitive := by
    funext t
    dsimp [quadraticPrimitive]
    ring
  rw [hfun] at hd
  have hprod : x ^ (-(1 / 2 : ℝ)) * x⁻¹ = x ^ (-(3 / 2 : ℝ)) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  apply hd.congr_deriv
  dsimp [quadraticMajorant]
  rw [show -(1 / 2 : ℝ) - 1 = -(3 / 2 : ℝ) by norm_num]
  simp only [div_eq_mul_inv]
  rw [← Real.rpow_neg hx.le]
  calc
    -( (2 * (2 * (Real.log 2 + Real.log x) ^ (2 - 1) * x⁻¹) + 8 * x⁻¹) *
          x ^ (-(1 / 2 : ℝ)) +
        (2 * (Real.log 2 + Real.log x) ^ 2 + 8 * (Real.log 2 + Real.log x) + 16) *
          (-(1 / 2 : ℝ) * x ^ (-(3 / 2 : ℝ)))) =
      -( (4 * (Real.log 2 + Real.log x) + 8) *
          (x ^ (-(1 / 2 : ℝ)) * x⁻¹) +
        (2 * (Real.log 2 + Real.log x) ^ 2 + 8 * (Real.log 2 + Real.log x) + 16) *
          (-(1 / 2 : ℝ) * x ^ (-(3 / 2 : ℝ)))) := by norm_num; ring
    _ = (Real.log 2 + Real.log x) ^ 2 * x ^ (-(3 / 2 : ℝ)) := by rw [hprod]; ring

theorem quadraticPrimitive_one : quadraticPrimitive 1 = -quadraticConstant := by
  simp only [quadraticPrimitive, quadraticConstant, Real.log_one, add_zero, Real.one_rpow, mul_one]
  ring

theorem quadraticPrimitive_nonpos {x : ℝ} (hx : 1 ≤ x) : quadraticPrimitive x ≤ 0 := by
  unfold quadraticPrimitive
  have ht : 0 ≤ Real.log 2 + Real.log x :=
    add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hx)
  have hp : 0 ≤ 2 * (Real.log 2 + Real.log x) ^ 2 +
      8 * (Real.log 2 + Real.log x) + 16 := by positivity
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hp)
    (Real.rpow_nonneg (by linarith) _)

theorem quadraticMajorant_continuousOn {y : ℝ} (hy : 1 ≤ y) :
    ContinuousOn quadraticMajorant (Set.uIcc 1 y) := by
  rw [Set.uIcc_of_le hy]
  intro x hx
  have hx0 : 0 < x := by linarith [hx.1]
  exact (((continuousAt_const.add (Real.continuousAt_log hx0.ne')).pow 2).div
    (Real.continuousAt_rpow_const x (3 / 2) (Or.inl hx0.ne'))
    (Real.rpow_pos_of_pos hx0 _).ne').continuousWithinAt

/-- Exact finite integral with its nonpositive terminal correction retained. -/
theorem quadraticMajorant_integral {y : ℝ} (hy : 1 ≤ y) :
    (∫ x in (1 : ℝ)..y, quadraticMajorant x) =
      quadraticConstant + quadraticPrimitive y := by
  have hi : IntervalIntegrable quadraticMajorant MeasureTheory.volume 1 y :=
    (quadraticMajorant_continuousOn hy).intervalIntegrable
  have hd : ∀ x ∈ Set.uIcc (1 : ℝ) y,
      HasDerivAt quadraticPrimitive (quadraticMajorant x) x := by
    intro x hx
    rw [Set.uIcc_of_le hy] at hx
    exact quadraticPrimitive_hasDerivAt (by linarith [hx.1])
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi, quadraticPrimitive_one]
  ring

theorem quadraticMajorant_integral_le {y : ℝ} (hy : 1 ≤ y) :
    (∫ x in (1 : ℝ)..y, quadraticMajorant x) ≤ quadraticConstant := by
  rw [quadraticMajorant_integral hy]
  linarith [quadraticPrimitive_nonpos hy]

/-- Uniform bound for every independently selected natural closed cutoff.
No asymptotic summability or floor approximation is needed. -/
theorem quadraticImpulse_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) ≤ quadraticConstant := by
  have hC : 0 ≤ quadraticConstant := by
    unfold quadraticConstant
    have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
    positivity
  by_cases hN : 1 ≤ N
  · have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hshift : (∑ i ∈ Finset.Ico 1 N, quadraticImpulse (i + 1)) =
        ∑ n ∈ Finset.Icc 2 N, quadraticImpulse n := by
      rw [Finset.sum_Ico_add' quadraticImpulse 1 N 1]
      norm_num only [Nat.add_eq, Finset.Ico_add_one_right_eq_Icc]
    have hi : IntervalIntegrable quadraticMajorant MeasureTheory.volume 1 (N : ℝ) :=
      (quadraticMajorant_continuousOn hNreal).intervalIntegrable
    have hg : MeasureTheory.IntegrableOn quadraticMajorant (Set.Ico (1 : ℝ) N) :=
      (intervalIntegrable_iff_integrableOn_Ico_of_le hNreal).mp hi
    have hcompare := sum_Ico_le_integral_of_le
      (f := fun y : ℝ ↦ (Real.log (y + 1)) ^ 2 / (y + 1) ^ (3 / 2 : ℝ))
      (g := quadraticMajorant) hN (fun i hi x hx ↦ ?_)
      (by simpa only [Nat.cast_one] using hg)
    · calc
        (∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) =
            ∑ i ∈ Finset.Ico 1 N, quadraticImpulse (i + 1) := hshift.symm
        _ ≤ ∑ i ∈ Finset.Ico 1 N,
            (Real.log ((i + 1 : ℕ) : ℝ)) ^ 2 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ) :=
          Finset.sum_le_sum (fun i _ ↦ quadraticImpulse_le_log (i + 1))
        _ ≤ (∫ x in (1 : ℝ)..(N : ℝ), quadraticMajorant x) := by
          simpa only [Nat.cast_add, Nat.cast_one] using hcompare
        _ ≤ quadraticConstant := quadraticMajorant_integral_le hNreal
    · rcases hi with ⟨hi₁, hi₂⟩
      have hni : 2 ≤ i + 1 := by omega
      have hl : ((i + 1 : ℕ) : ℝ) - 1 ≤ x := by
        simp only [Nat.cast_add, Nat.cast_one]
        linarith [hx.1]
      have hu : x ≤ ((i + 1 : ℕ) : ℝ) := hx.2.le
      simpa only [Nat.cast_add, Nat.cast_one] using log_atom_le_quadraticMajorant hni hl hu
  · have hN0 : N = 0 := by omega
    simp only [hN0, Finset.Icc_eq_empty_of_lt (by norm_num : (0 : ℕ) < 2),
      Finset.sum_empty]
    exact hC

/-- Literal closed cutoff, including a prime power touching exp(2A). -/
theorem quadraticImpulse_closed_cutoff_le (A : ℝ) :
    (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, quadraticImpulse n) ≤
      16 + 8 * Real.log 2 + 2 * (Real.log 2) ^ 2 :=
  quadraticImpulse_sum_le _

end FormalResearch.RiemannHypothesis.SourceKapitzaStorage
```
