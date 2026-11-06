/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CofinalWindowLowerBound
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation

set_option autoImplicit false
noncomputable section

/-!
# A finite conductor frontier for the primitive character arithmetic form

The prime mass uses the original strict support cutoff and every von Mangoldt
weight. On that cutoff, Λ(n) ≤ log(n) < 2T. The sum of inverse square roots is
bounded by telescoping consecutive square roots. At an integer radius, exp(T)
is bounded by 3^T. For the gamma term, digamma duplication at 1/4 and reflection
between 1/4 and 3/4 give the two actual parity constants. These estimates give
the crude frontier in the CR-MATH-001 Euler-heat note.

The return uses the actual primitive conductor and the signed complex
correlations in `twistedPrime`. It consumes the archimedean lower estimate
and the correlation bound for a fixed window. At an inflated modulus the
primitive equality is unavailable. This frontier leaves all smaller primitive
conductors and subsequent window coverage as separate obligations.

Primary reference for the special values is NIST DLMF §5.4(ii). The proof
uses Mathlib's digamma duplication and reflection at
d13f23b723b8a846827a245b89c10fc7d3f11612. Independent analytical review and
novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm

open LowSchur CharacterWindow OddRootProjection SourcePrimeCorrelation MeasureTheory

private theorem inverse_sqrt_le_difference (n : ℕ) (hn : 1 ≤ n) :
    1 / Real.sqrt (n : ℝ) ≤
      2 * (Real.sqrt (n : ℝ) - Real.sqrt ((n - 1 : ℕ) : ℝ)) := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hs := Real.sqrt_pos.2 hnR
  have hm := Real.sqrt_nonneg ((n - 1 : ℕ) : ℝ)
  have hdiff : Real.sqrt ((n - 1 : ℕ) : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.sub_le n 1)
  have hsq : (Real.sqrt (n : ℝ)) ^ 2 - (Real.sqrt ((n - 1 : ℕ) : ℝ)) ^ 2 = 1 := by
    rw [Real.sq_sqrt hnR.le, Real.sq_sqrt (Nat.cast_nonneg _), Nat.cast_sub hn, Nat.cast_one]
    ring
  rw [div_le_iff₀ hs]
  nlinarith [mul_nonneg (sub_nonneg.mpr hdiff) (sub_nonneg.mpr hdiff)]

private theorem sum_sqrt_differences {N : ℕ} (hN : 1 ≤ N) :
    ∑ n ∈ Finset.Ico 2 (N + 1),
      (Real.sqrt (n : ℝ) - Real.sqrt ((n - 1 : ℕ) : ℝ)) = Real.sqrt (N : ℝ) - 1 := by
  rw [Finset.sum_Ico_eq_sum_range]
  simp only [show N + 1 - 2 = N - 1 by omega]
  calc
    _ = ∑ n ∈ Finset.range (N - 1),
        (Real.sqrt (((n + 1) + 1 : ℕ) : ℝ) - Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro n _
      have ha : 2 + n = (n + 1) + 1 := by omega
      rw [ha]
      simp
    _ = Real.sqrt (((N - 1) + 1 : ℕ) : ℝ) - Real.sqrt ((0 + 1 : ℕ) : ℝ) :=
      Finset.sum_range_sub (fun n : ℕ => Real.sqrt ((n + 1 : ℕ) : ℝ)) (N - 1)
    _ = Real.sqrt (N : ℝ) - 1 := by simp [Nat.sub_add_cancel hN]

/-- A bound on the same prime inventory used by the literal character and zeta forms. -/
theorem primeMass_le_exp (T : ℝ) (hT : 0 ≤ T) :
    primeMass T ≤ 8 * T * (Real.exp T - 1) := by
  let N := ⌊Real.exp (2 * T)⌋₊
  have hN : 1 ≤ N :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hsubset : activePrimePowers T ⊆ Finset.Ico 2 (N + 1) := by
    intro n hn
    have h := (Finset.mem_filter.mp hn).2
    exact Finset.mem_Ico.mpr ⟨h.1, Nat.lt_succ_of_le (Nat.le_floor h.2.le)⟩
  have hfloor : Real.sqrt (N : ℝ) ≤ Real.exp T := by
    refine Real.sqrt_le_iff.2 ⟨Real.exp_nonneg T, ?_⟩
    rw [pow_two, ← Real.exp_add, ← two_mul]
    exact Nat.floor_le (Real.exp_nonneg _)
  have hweights : ∑ n ∈ activePrimePowers T, primeWeight n ≤
      ∑ n ∈ activePrimePowers T,
        (4 * T) * (Real.sqrt (n : ℝ) - Real.sqrt ((n - 1 : ℕ) : ℝ)) := by
    apply Finset.sum_le_sum
    intro n hn
    have h := (Finset.mem_filter.mp hn).2
    have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have hlog := (Real.log_lt_iff_lt_exp hnR).2 h.2
    have hΛ := ArithmeticFunction.vonMangoldt_le_log (n := n)
    calc
      primeWeight n ≤ (2 * T) / Real.sqrt (n : ℝ) :=
        div_le_div_of_nonneg_right (hΛ.trans hlog.le) (Real.sqrt_nonneg _)
      _ = (2 * T) * (1 / Real.sqrt (n : ℝ)) := by ring
      _ ≤ (2 * T) * (2 * (Real.sqrt (n : ℝ) - Real.sqrt ((n - 1 : ℕ) : ℝ))) :=
        mul_le_mul_of_nonneg_left (inverse_sqrt_le_difference n (by omega)) (by positivity)
      _ = _ := by ring
  have hpad := Finset.sum_le_sum_of_subset_of_nonneg hsubset
    (f := fun (n : ℕ) => (4 * T) * (Real.sqrt (n : ℝ) - Real.sqrt ((n - 1 : ℕ) : ℝ)))
    (fun n _ _ => mul_nonneg (by positivity) (sub_nonneg.mpr (Real.sqrt_le_sqrt
      (by exact_mod_cast Nat.sub_le n 1))))
  simp only [← Finset.mul_sum, sum_sqrt_differences hN] at hpad hweights
  have hsum := hweights.trans hpad
  have hmul := mul_le_mul_of_nonneg_left (sub_le_sub_right hfloor 1)
    (show 0 ≤ 4 * T by positivity)
  unfold primeMass
  linarith [hsum.trans hmul]

/-- Integer radius version of the prime mass estimate. -/
theorem primeMass_le_three_pow (T : ℕ) :
    primeMass (T : ℝ) ≤ 8 * T * ((3 : ℝ) ^ T - 1) := by
  apply (primeMass_le_exp T (Nat.cast_nonneg _)).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply sub_le_sub_right
  have h : Real.exp (T : ℝ) = Real.exp 1 ^ T := by
    simpa only [mul_one] using Real.exp_nat_mul 1 T
  rw [h]
  gcongr
  exact Real.exp_one_lt_three.le

/-- Explicit cutoff exponent at integer radius `T`. -/
def conductorExponent (T : ℕ) : ℕ := 6 + 8 * T * (3 ^ T - 1)

/-- Primitive conductors at or above this threshold pass the arithmetic comparison. -/
def conductorFrontier (T : ℕ) : ℕ := 3 ^ conductorExponent T

theorem primeMass_le_log_conductor_sub_six (T q : ℕ)
    (hfrontier : conductorFrontier T ≤ q) :
    primeMass (T : ℝ) ≤ Real.log (q : ℝ) - 6 := by
  have hpos : 0 < conductorFrontier T := by unfold conductorFrontier; positivity
  have hlog := Real.log_le_log (show (0 : ℝ) < conductorFrontier T by exact_mod_cast hpos)
    (show (conductorFrontier T : ℝ) ≤ q by exact_mod_cast hfrontier)
  unfold conductorFrontier at hlog
  rw [Nat.cast_pow, Nat.cast_ofNat, Real.log_pow] at hlog
  have hthree : 1 ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
  have hscaled := mul_le_mul_of_nonneg_left hthree (Nat.cast_nonneg (α := ℝ) (conductorExponent T))
  rw [mul_one] at hscaled
  have hD : (conductorExponent T : ℝ) = 6 + 8 * (T : ℝ) * ((3 : ℝ)^T - 1) := by
    have hpow : 1 ≤ (3 : ℕ) ^ T := Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ (by decide))
    simp [conductorExponent, Nat.cast_sub hpow]
  have hmass := primeMass_le_three_pow T
  linarith [hscaled.trans hlog]

/-- Integrand of the archimedean correction in logarithmic coordinates. -/
def gammaCorrectionDensity (a : ℕ) (f : ℝ → ℂ) (r : ℝ) : ℝ :=
  parityKernel a r * energy (fun t => f (t + r) - f t)

/-- At each shift the inner squared norm in the gamma correction is integrable. -/
theorem integrable_shift_energy {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    Integrable (fun t : ℝ => ‖f (t + r) - f t‖ ^ 2) := by
  have hshift := hf.comp_measurePreserving (measurePreserving_add_right volume r)
  exact (hshift.sub hf).integrable_norm_pow (p := 2) (by norm_num)

/-- Arithmetic-side expression for a primitive nonprincipal sector. The domain
of the archimedean integral is a separate premise when making form claims. -/
def primitiveArithmeticValue {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (_primitive : χ.IsPrimitive) (_nonprincipal : χ ≠ 1) (T : ℝ) (f : ℝ → ℂ) : ℝ :=
  gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    twistedPrime T χ (fun n => correlation f (Real.log (n : ℝ)))

theorem primitiveArithmeticValue_eq_of_le {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {f : ℝ → ℂ} {T U : ℝ} (hsupport : ∀ t, t ∉ Set.Icc (-T) T → f t = 0)
    (hTU : T ≤ U) :
    primitiveArithmeticValue χ hprimitive hnonprincipal T f =
      primitiveArithmeticValue χ hprimitive hnonprincipal U f := by
  unfold primitiveArithmeticValue
  rw [twistedPrime_eq_of_le χ hsupport hTU]

private theorem energy_nonneg (f : ℝ → ℂ) : 0 ≤ energy f :=
  integral_nonneg (fun _ => sq_nonneg _)

private theorem gammaCorrectionDensity_nonneg (a : ℕ) (f : ℝ → ℂ) {r : ℝ}
    (hr : 0 < r) : 0 ≤ gammaCorrectionDensity a f r := by
  unfold gammaCorrectionDensity parityKernel
  have h : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact mul_nonneg (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr h.le)) (energy_nonneg _)

/-- The large-conductor branch is nonnegative for the displayed whole-line
arithmetic value. The equality with the completed L-function explicit formula
and its test-class return remain separate. -/
theorem primitiveArithmeticValue_nonneg_of_frontier {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℕ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Set.Ioi 0))
    (hfrontier : conductorFrontier T ≤ χ.conductor) :
    0 ≤ primitiveArithmeticValue χ hprimitive hnonprincipal (T : ℝ) f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hc : χ.conductor = q := hprimitive
  have hγ := gammaConstant_lower q hq _ (gammaParity_le_one χ)
  have hmass := primeMass_le_log_conductor_sub_six T q (hc ▸ hfrontier)
  have harch_nonneg : 0 ≤ ∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r := by
    have hzero : Integrable (fun _ : ℝ => (0 : ℝ)) (volume.restrict (Set.Ioi 0)) :=
      integrable_zero _ _ _
    simpa using integral_mono_ae hzero harch
      ((ae_restrict_mem measurableSet_Ioi).mono
        (fun r hr => gammaCorrectionDensity_nonneg _ _ hr))
  have hprime := (le_abs_self _).trans (abs_twistedPrime_le_energy χ (T : ℝ) hf)
  have hcompare := mul_le_mul_of_nonneg_right (hmass.trans hγ) (energy_nonneg f)
  unfold primitiveArithmeticValue
  linarith

/-- For each covering stage, only the branch below its conductor frontier
needs a lower-bound supplier. The conclusion is about the same arithmetic value. -/
theorem primitiveArithmeticValue_nonneg_of_cofinal_small_conductor_bounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {f : ℝ → ℂ} {T : ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t, t ∉ Set.Icc (-T) T → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Set.Ioi 0))
    (hsmall : ∀ j : ℕ, T ≤ (j : ℝ) + 1 → χ.conductor < conductorFrontier (j + 1) →
      -((1 / 2 : ℝ) ^ j) * energy f ≤
        primitiveArithmeticValue χ hprimitive hnonprincipal ((j : ℝ) + 1) f) :
    0 ≤ primitiveArithmeticValue χ hprimitive hnonprincipal T f := by
  apply Weil.nonnegative_of_cofinal_lower_bounds T _ (energy f)
  intro j hT
  rw [primitiveArithmeticValue_eq_of_le χ hprimitive hnonprincipal hsupport hT]
  by_cases hconductor : χ.conductor < conductorFrontier (j + 1)
  · exact hsmall j hT hconductor
  · have hlarge := primitiveArithmeticValue_nonneg_of_frontier χ hprimitive hnonprincipal
      (j + 1) hf harch (le_of_not_gt hconductor)
    rw [Nat.cast_add, Nat.cast_one] at hlarge
    exact (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) (energy_nonneg f))
      |>.trans hlarge

end GRWTSK.NumberTheory.WeilQuadraticForm
