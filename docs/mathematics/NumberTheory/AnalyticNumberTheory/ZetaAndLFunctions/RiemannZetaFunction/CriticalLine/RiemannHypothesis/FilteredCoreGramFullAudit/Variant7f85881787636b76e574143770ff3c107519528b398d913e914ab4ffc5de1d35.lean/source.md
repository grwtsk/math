# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FilteredCoreGramFullAudit.Variant7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08c5d97f883999b1c21357cf1e4ef2b63c900c14` · SHA-256 `7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit

/-! Exact finite Gram expansion of the original signed fractional-part core. -/
set_option autoImplicit false
namespace FilteredCoreGramScratch
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension LogarithmicResidual
open LogarithmicResidualTail MobiusFractionalResidual MobiusEndpointBudget
noncomputable section

/-- The zero index is the original constant source; positive indices are the exact fractional parts.
The original closed logarithmic cutoff is applied before filtering. -/
def coreBasisFunction (Y : ℝ) (d : ℕ) : ℝ → ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator fun u => (Real.exp (-u / 2) : ℂ) *
    if d = 0 then (if 1 ≤ Real.exp u then 1 else 0)
    else ((Int.fract (Real.exp u / (d : ℝ)) : ℝ) : ℂ)

/-- Every individual original core basis function is admitted in full-line L2. -/
theorem coreBasisFunction_memLp (Y : ℝ) (d : ℕ) : MemLp (coreBasisFunction Y d) 2 := by
  have hm : Measurable (coreBasisFunction Y d) := by
    unfold coreBasisFunction
    apply Measurable.indicator _ measurableSet_Icc
    apply Measurable.mul (by fun_prop)
    by_cases hd : d = 0
    · simp only [hd, if_true]
      exact measurable_const.ite (measurableSet_le measurable_const Real.measurable_exp)
        measurable_const
    · simp only [hd, if_false]
      exact (measurable_fract.comp (Real.measurable_exp.div_const (d : ℝ))).complex_ofReal
  have hc : MemLp ((Icc (0 : ℝ) (Real.log Y)).indicator (fun _ : ℝ => (1 : ℝ))) 2 :=
    memLp_indicator_const 2 measurableSet_Icc 1 (Or.inr (by simp))
  apply hc.of_le hm.aestronglyMeasurable
  filter_upwards [] with u
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [coreBasisFunction, indicator_of_mem hu, norm_one]
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    have he : Real.exp (-u / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith [hu.1])
    apply mul_le_one₀ he (norm_nonneg _)
    by_cases hd : d = 0
    · simp only [hd, if_true]
      split_ifs <;> norm_num
    · simp only [hd, if_false, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Int.fract_nonneg (Real.exp u / (d : ℝ)))]
      exact (Int.fract_lt_one (Real.exp u / (d : ℝ))).le
  · simp only [coreBasisFunction, indicator_of_notMem hu, norm_zero, le_refl]

/-- The actual constant and fractional-part basis vectors in full-line L2. -/
def coreBasisVector (Y : ℝ) (d : ℕ) : FullH :=
  (coreBasisFunction_memLp Y d).toLp (coreBasisFunction Y d)

/-- Each basis vector has exactly its admitted source representative almost everywhere. -/
theorem coreBasisVector_ae (Y : ℝ) (d : ℕ) :
    coreBasisVector Y d =ᵐ[volume] coreBasisFunction Y d :=
  (coreBasisFunction_memLp Y d).coeFn_toLp

private theorem sum_coe_ae (s : Finset ℕ) (f : ℕ → FullH) :
    (∑ d ∈ s, f d : FullH) =ᵐ[volume] fun u => ∑ d ∈ s, f d u := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    filter_upwards [Lp.coeFn_zero (E := ℂ) (p := 2) (μ := volume)] with u hu
    simpa only [Finset.sum_empty, Pi.zero_apply] using hu
  | @insert a s ha ih =>
    simp only [Finset.sum_insert ha]
    filter_upwards [Lp.coeFn_add (f a) (∑ d ∈ s, f d), ih] with u h hu
    simpa only [Pi.add_apply, hu] using h

/-- The admitted core is the exact finite original source expansion, including its constant term. -/
theorem coreResidualVector_eq_basis_sum (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    coreResidualVector X ε hX Y =
      ∑ d ∈ insert 0 (Finset.Icc 1 X),
        (if d = 0 then (1 : ℂ) else (dampedCoefficient X ε d : ℂ)) • coreBasisVector Y d := by
  classical
  let c : ℕ → ℂ := fun d => if d = 0 then 1 else (dampedCoefficient X ε d : ℂ)
  have hae (d : ℕ) : (c d • coreBasisVector Y d : FullH) =ᵐ[volume]
      fun u => c d * coreBasisFunction Y d u := by
    filter_upwards [Lp.coeFn_smul (c d) (coreBasisVector Y d), coreBasisVector_ae Y d]
      with u hs hb
    simpa only [Pi.smul_apply, RingHom.id_apply, smul_eq_mul, hb] using hs
  have hall : ∀ᵐ u ∂volume, ∀ d : ℕ,
      (c d • coreBasisVector Y d : FullH) u = c d * coreBasisFunction Y d u :=
    ae_all_iff.mpr hae
  apply Lp.ext
  filter_upwards [coreResidualVector_ae X ε hX Y,
    sum_coe_ae (insert 0 (Finset.Icc 1 X)) (fun d => c d • coreBasisVector Y d), hall]
    with u hc hs hall
  rw [hc, hs]
  simp_rw [hall]
  rw [Finset.sum_insert (by simp : 0 ∉ Finset.Icc 1 X)]
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [coreBasisFunction, indicator_of_mem hu, c, if_true, one_mul,
      logResidual, arithmeticResidual, mul_add, Finset.mul_sum]
    congr 1
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : d ≠ 0 := Nat.ne_of_gt (Finset.mem_Icc.mp hd).1
    simp only [hd0, if_false]
    ring
  · simp only [coreBasisFunction, indicator_of_notMem hu, mul_zero, Finset.sum_const_zero,
      add_zero]

/-- The filtered source core has its complete complex Gram quadratic: constant, linear,
diagonal, and off-diagonal terms are all retained with the original coefficients. -/
theorem filtered_core_norm_sq_gram (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ ^ 2 =
      (∑ i ∈ insert 0 (Finset.Icc 1 X), ∑ j ∈ insert 0 (Finset.Icc 1 X),
        star (if i = 0 then (1 : ℂ) else (dampedCoefficient X ε i : ℂ)) *
          (if j = 0 then (1 : ℂ) else (dampedCoefficient X ε j : ℂ)) *
          inner ℂ (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y i))
            (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y j))).re := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), coreResidualVector_eq_basis_sum X ε hX Y]
  change (inner ℂ _ _).re = _
  simp only [map_sum, map_smul, sum_inner, inner_sum, inner_smul_left, inner_smul_right,
    Finset.mul_sum, mul_assoc]
  rw [Finset.sum_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  simp only [starRingEnd_apply]
  ring

end
end FilteredCoreGramScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FilteredCoreGramScratch.coreBasisFunction
#print FilteredCoreGramScratch.coreBasisFunction
#print axioms FilteredCoreGramScratch.coreBasisFunction
#check @FilteredCoreGramScratch.coreBasisFunction_memLp
#print FilteredCoreGramScratch.coreBasisFunction_memLp
#print axioms FilteredCoreGramScratch.coreBasisFunction_memLp
#check @FilteredCoreGramScratch.coreBasisVector
#print FilteredCoreGramScratch.coreBasisVector
#print axioms FilteredCoreGramScratch.coreBasisVector
#check @FilteredCoreGramScratch.coreBasisVector_ae
#print FilteredCoreGramScratch.coreBasisVector_ae
#print axioms FilteredCoreGramScratch.coreBasisVector_ae
#check @FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#print FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#print axioms FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#check @FilteredCoreGramScratch.filtered_core_norm_sq_gram
#print FilteredCoreGramScratch.filtered_core_norm_sq_gram
#print axioms FilteredCoreGramScratch.filtered_core_norm_sq_gram
```
