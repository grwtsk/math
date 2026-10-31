/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveMellinIdentity
import GRWTSK.MeasureAndIntegration.IntervalMellinKernel

/-!
# A pole-free finite-prefix expression for the ordinary-prime primitive

The compact atom integral is represented by the existing interval Mellin kernel,
including its removable parameter values. The finite occurrence sum is entire.
Finite support, compact integrability and cutoff restriction identify this sum
with the single integral of the literal floor primitive on (1,R]. All complex
parameters are retained. No eventual prime sign, Landau theorem or RH conclusion
is assumed here.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set
open scoped Interval BigOperators
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel

/-- Translate the existing exponential kernel only at a positive real base. -/
theorem compactDensity_eq_cpow {x : ℝ} (hx : 0 < x) (z : ℂ) :
    density z x = (x : ℂ) ^ (z - 1) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr hx.ne'),
    ← Complex.ofReal_log hx.le]
  simp only [density, mul_comm]

/-- No division by s or s+1/2 occurs in the compact atom expression. -/
noncomputable def compactAtom (a R : ℝ) (s : ℂ) : ℂ :=
  2 * ((a : ℂ) ^ (-(1 / 2 : ℂ)) * kernel a R (-s) -
    kernel a R (-s - 1 / 2))

theorem integral_atomKernel_compact {a R : ℝ} (ha : 1 < a) (haR : a ≤ R) (s : ℂ) :
    (∫ x : ℝ in a..R, atomKernel a s x) = compactAtom a R s := by
  have h1 := density_intervalIntegrable ha haR (-s)
  have h2 := density_intervalIntegrable ha haR (-s - 1 / 2)
  calc
    _ = ∫ x : ℝ in a..R, (2 : ℂ) *
        ((a : ℂ) ^ (-(1 / 2 : ℂ)) * density (-s) x -
          density (-s - 1 / 2) x) := by
      apply intervalIntegral.integral_congr
      intro x hx
      have hx' : x ∈ Icc a R := (uIcc_of_le haR) ▸ hx
      have hx0 : 0 < x := (lt_trans zero_lt_one ha).trans_le hx'.1
      rw [compactDensity_eq_cpow hx0, compactDensity_eq_cpow hx0]
      rw [show -s - 1 / 2 - 1 = -s - 3 / 2 by ring]
      rfl
    _ = _ := by
      rw [intervalIntegral.integral_const_mul,
        intervalIntegral.integral_sub (h1.const_mul _) h2,
        intervalIntegral.integral_const_mul]
      rfl

/-- Compact endpoint integrals are entire, including s=0 and s=-1/2. -/
theorem compactAtom_differentiable {a R : ℝ} (ha : 1 < a) (haR : a ≤ R) :
    Differentiable ℂ (compactAtom a R) := by
  have hk := differentiable_kernel ha haR
  exact differentiable_const.mul
    ((differentiable_const.mul (hk.comp differentiable_id.neg)).sub
      (hk.comp (differentiable_id.neg.sub_const (1 / 2))))

/-- This is a finite occurrence expression, not yet the literal prefix integral. -/
noncomputable def finitePrefixCorrection (R : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.Icc 2 ⌊R⌋₊, centeredPrimeCoefficient n * compactAtom n R s

theorem finitePrefixCorrection_differentiable {R : ℝ} (hR : 1 ≤ R) :
    Differentiable ℂ (finitePrefixCorrection R) := by
  unfold finitePrefixCorrection
  apply Differentiable.fun_sum
  intro n hn
  have hn2 : 2 ≤ n := (Finset.mem_Icc.mp hn).1
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hnR : (n : ℝ) ≤ R :=
    (Nat.le_floor_iff (zero_le_one.trans hR)).mp (Finset.mem_Icc.mp hn).2
  exact differentiable_const.mul (compactAtom_differentiable hn1 hnR)

/-- The finite expression uses the actual signed coefficients and exact atom integrals. -/
theorem finitePrefixCorrection_eq_sum_integrals {R : ℝ} (hR : 1 ≤ R) (s : ℂ) :
    finitePrefixCorrection R s =
      ∑ n ∈ Finset.Icc 2 ⌊R⌋₊, centeredPrimeCoefficient n *
        (∫ x : ℝ in (n : ℝ)..R, atomKernel n s x) := by
  apply Finset.sum_congr rfl
  intro n hn
  have hn1 : (1 : ℝ) < n := by
    exact_mod_cast (show 1 < n by have := (Finset.mem_Icc.mp hn).1; omega)
  rw [integral_atomKernel_compact hn1
    ((Nat.le_floor_iff (zero_le_one.trans hR)).mp (Finset.mem_Icc.mp hn).2)]

/-- Compact integrability uses the interval kernels, not the infinite-tail domain. -/
theorem atomKernel_integrableOn_compact {a R : ℝ} (ha : 1 < a) (haR : a ≤ R)
    (s : ℂ) : IntegrableOn (atomKernel a s) (Ioc a R) := by
  have hi := (((density_intervalIntegrable ha haR (-s)).const_mul
    ((a : ℂ) ^ (-(1 / 2 : ℂ)))).sub
      (density_intervalIntegrable ha haR (-s - 1 / 2))).const_mul (2 : ℂ)
  have hi' : IntegrableOn (fun x : ℝ => (2 : ℂ) *
      ((a : ℂ) ^ (-(1 / 2 : ℂ)) * density (-s) x - density (-s - 1 / 2) x))
      (Ioc a R) := by simpa only [uIoc_of_le haR] using hi.def'
  apply hi'.congr_fun _ measurableSet_Ioc
  intro x hx
  have hx0 : 0 < x := (lt_trans zero_lt_one ha).trans hx.1
  rw [compactDensity_eq_cpow hx0, compactDensity_eq_cpow hx0,
    show -s - 1 / 2 - 1 = -s - 3 / 2 by ring]
  rfl

/-- Intersect the actual strict atom cutoff with the prefix interval. -/
theorem cutoffAtom_prefix_inter (n : ℕ) (hn : 2 ≤ n) (R : ℝ) :
    Ioi (n : ℝ) ∩ Ioc (1 : ℝ) R = Ioc (n : ℝ) R := by
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  ext x
  simp only [mem_inter_iff, mem_Ioi, mem_Ioc]
  constructor
  · rintro ⟨hnx, _, hxR⟩
    exact ⟨hnx, hxR⟩
  · rintro ⟨hnx, hxR⟩
    exact ⟨hnx, hn1.trans hnx, hxR⟩

theorem cutoffAtom_integrableOn_prefix (n : ℕ) (hn : 2 ≤ n) {R : ℝ}
    (hnR : (n : ℝ) ≤ R) (s : ℂ) :
    IntegrableOn (cutoffAtom n s) (Ioc (1 : ℝ) R) := by
  unfold cutoffAtom
  rw [integrableOn_indicator_iff measurableSet_Ioi, cutoffAtom_prefix_inter n hn R]
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  exact (atomKernel_integrableOn_compact hn1 hnR s).const_mul (centeredPrimeCoefficient n)

theorem integral_cutoffAtom_prefix (n : ℕ) (hn : 2 ≤ n) {R : ℝ}
    (hnR : (n : ℝ) ≤ R) (s : ℂ) :
    (∫ x : ℝ in Ioc (1 : ℝ) R, cutoffAtom n s x) =
      centeredPrimeCoefficient n * compactAtom n R s := by
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  rw [cutoffAtom, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi, cutoffAtom_prefix_inter n hn R]
  rw [← intervalIntegral.integral_of_le hnR]
  simp only [weightedAtom, intervalIntegral.integral_const_mul]
  rw [integral_atomKernel_compact hn1 hnR]

/-- One finite inventory suffices for every x in the prefix interval. -/
theorem cutoffAtom_sum_eq_prefix_formula {R x : ℝ} (hR : 1 ≤ R)
    (hx : x ∈ Ioc (1 : ℝ) R) (s : ℂ) :
    (∑ n ∈ Finset.Icc 2 ⌊R⌋₊, cutoffAtom n s x) =
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1) := by
  have hzero : ∀ n : ℕ, n ∉ Finset.Icc 2 ⌊R⌋₊ → cutoffAtom n s x = 0 := by
    intro n hn
    by_cases hn2 : 2 ≤ n
    · have hfloor : ⌊R⌋₊ < n := by
        by_contra h
        exact hn (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      have hRn : R < n := (Nat.floor_lt (zero_le_one.trans hR)).mp hfloor
      exact Set.indicator_of_notMem (not_lt.mpr (hx.2.trans hRn.le)) _
    · exact cutoffAtom_zero_low n (by omega) s x
  have hsub : (∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) =
      ∑' n : ℕ, cutoffAtom n s x := by
    apply tsum_subtype_eq_of_support_subset
    intro n hn
    by_contra h
    exact hn (cutoffAtom_zero_low n (by omega) s x)
  calc
    _ = ∑' n : ℕ, cutoffAtom n s x := (tsum_eq_sum hzero).symm
    _ = ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x := hsub.symm
    _ = _ := by
      simpa only [finitePrimePrimitive_eq_real_formula] using
        cutoffAtom_tsum_eq_floor (zero_lt_one.trans hx.1) s

/-- The literal prefix integral is the entire finite occurrence expression. -/
theorem integral_realPrimePrimitiveFormula_prefix {R : ℝ} (hR : 1 ≤ R) (s : ℂ) :
    (∫ x : ℝ in Ioc (1 : ℝ) R,
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1)) =
      finitePrefixCorrection R s := by
  calc
    _ = ∫ x : ℝ in Ioc (1 : ℝ) R,
        ∑ n ∈ Finset.Icc 2 ⌊R⌋₊, cutoffAtom n s x :=
      setIntegral_congr_fun measurableSet_Ioc
        (fun x hx => (cutoffAtom_sum_eq_prefix_formula hR hx s).symm)
    _ = ∑ n ∈ Finset.Icc 2 ⌊R⌋₊,
        ∫ x : ℝ in Ioc (1 : ℝ) R, cutoffAtom n s x := by
      apply integral_finsetSum
      intro n hn
      exact cutoffAtom_integrableOn_prefix n (Finset.mem_Icc.mp hn).1
        ((Nat.le_floor_iff (zero_le_one.trans hR)).mp (Finset.mem_Icc.mp hn).2) s
    _ = _ := by
      unfold finitePrefixCorrection
      apply Finset.sum_congr rfl
      intro n hn
      exact integral_cutoffAtom_prefix n (Finset.mem_Icc.mp hn).1
        ((Nat.le_floor_iff (zero_le_one.trans hR)).mp (Finset.mem_Icc.mp hn).2) s

/-- Entire dependence belongs to the literal compact integral, after the exact transport. -/
theorem prefixIntegral_differentiable {R : ℝ} (hR : 1 ≤ R) :
    Differentiable ℂ (fun s : ℂ => ∫ x : ℝ in Ioc (1 : ℝ) R,
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1)) := by
  have he : (fun s : ℂ => ∫ x : ℝ in Ioc (1 : ℝ) R,
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1)) =
      finitePrefixCorrection R := funext (integral_realPrimePrimitiveFormula_prefix hR)
  rw [he]
  exact finitePrefixCorrection_differentiable hR

end GRWTSK.NumberTheory.PrimePrimitiveMellin
