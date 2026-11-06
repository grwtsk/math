/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddConcreteResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapEnergy

/-!
# Expansion of the literal shifted odd bordered form

The scalar port stays at its supplied value when the physical component
changes. Its quadratic coefficient is one half. The mass and jump squares
give their actual mixed terms, while changing the order of the two physical
inputs in the prime pairing just exchanges the two translated correlations.
The source pole pairing is linear on supported tests. These comparisons give
the exact finite-sine trial expansion in terms of the existing bordered output.
The mixed jump integrability uses the two complete diagonal gamma energies.
The same argument proves closure of the gamma domain under subtraction of
the finite sine trial. The lower bound and certificate on the high complement
are separate consumers. Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBorderedExpansion

open OddHighComplement OddConcreteResidual OddGammaOutput OddPrimePoleOutput OddRootProjection
open OddSineForm OddWrapEnergy LowSchur

/-- The shifted odd core with the literal scalar pole port and its coupling. -/
def shiftedOddBorderedEnergy (T β : ℝ) (f : ℝ → ℝ) (a : ℝ) : ℝ :=
  shiftedOddCoreEnergy T β f + 2 * a * (∫ t : ℝ, f t * Real.sinh (t / 2)) + a ^ 2 / 2

private def jump (f : ℝ → ℝ) (r t : ℝ) : ℝ := f (t + r) - f t

private def weightedGamma (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  parityKernel 0 r * ∫ t : ℝ, jump f r t ^ 2

private def weightedMixedGamma (f g : ℝ → ℝ) (r : ℝ) : ℝ :=
  parityKernel 0 r * ∫ t : ℝ, jump g r t * jump f r t

private theorem jump_memLp {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    MemLp (jump f r) 2 volume :=
  (hf.comp_measurePreserving (measurePreserving_add_right volume r)).sub hf

private theorem integral_add_twice_add {μ : Measure ℝ} {f b g : ℝ → ℝ}
    (hf : Integrable f μ) (hb : Integrable b μ) (hg : Integrable g μ) :
    (∫ t, f t + 2 * b t + g t ∂μ) =
      (∫ t, f t ∂μ) + 2 * (∫ t, b t ∂μ) + ∫ t, g t ∂μ := by
  have h := integral_add (hf.add (hb.const_mul 2)) hg
  simp only [Pi.add_apply] at h
  rw [h, integral_add hf (hb.const_mul 2), integral_const_mul]

private theorem integral_sq_add {f g : ℝ → ℝ} (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    (∫ t : ℝ, (f t + g t) ^ 2) =
      (∫ t : ℝ, f t ^ 2) + 2 * (∫ t : ℝ, g t * f t) + ∫ t : ℝ, g t ^ 2 := by
  calc
    _ = ∫ t : ℝ, f t ^ 2 + 2 * (g t * f t) + g t ^ 2 := by
      apply integral_congr_ae (Eventually.of_forall (fun t => ?_))
      ring
    _ = _ := integral_add_twice_add hf.integrable_sq (hg.integrable_mul hf) hg.integrable_sq

private theorem measurable_weightedMixedGamma {f g : ℝ → ℝ}
    (hf : Measurable f) (hg : Measurable g) : Measurable (weightedMixedGamma f g) := by
  let G : ℝ × ℝ → ℝ := fun z => jump g z.1 z.2 * jump f z.1 z.2
  have hG : Measurable G := by dsimp [G, jump]; fun_prop
  have hK : Measurable (parityKernel 0) := by unfold parityKernel; fun_prop
  exact hK.mul hG.stronglyMeasurable.integral_prod_right'.measurable

private theorem norm_inner_mixedGamma_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (r : ℝ) :
    ‖∫ t : ℝ, jump g r t * jump f r t‖ ≤
      ((∫ t : ℝ, jump f r t ^ 2) + ∫ t : ℝ, jump g r t ^ 2) / 2 := by
  have hf₂ := (jump_memLp hf r).integrable_sq
  have hg₂ := (jump_memLp hg r).integrable_sq
  have hPoint (t : ℝ) : ‖jump g r t * jump f r t‖ ≤ (jump f r t ^ 2 + jump g r t ^ 2) / 2 := by
    rw [Real.norm_eq_abs, abs_mul]
    have h := sq_nonneg (|jump f r t| - |jump g r t|)
    rw [sub_sq, sq_abs, sq_abs] at h
    nlinarith only [h]
  calc
    _ ≤ ∫ t : ℝ, (jump f r t ^ 2 + jump g r t ^ 2) / 2 := by
      simpa only [Pi.add_apply] using
        norm_integral_le_of_norm_le ((hf₂.add hg₂).div_const 2) (Eventually.of_forall hPoint)
    _ = _ := by rw [integral_div, integral_add hf₂ hg₂]

private theorem integrableOn_weightedMixedGamma {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (hfm : Measurable f) (hgm : Measurable g)
    (hfγ : IntegrableOn (weightedGamma f) (Ioi 0)) (hgγ : IntegrableOn (weightedGamma g) (Ioi 0)) :
    IntegrableOn (weightedMixedGamma f g) (Ioi 0) := by
  refine ((hfγ.add hgγ).div_const 2).mono'
    (measurable_weightedMixedGamma hfm hgm).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have hk := parityKernel_zero_nonneg hr
  change ‖parityKernel 0 r * (∫ t : ℝ, jump g r t * jump f r t)‖ ≤
    (weightedGamma f r + weightedGamma g r) / 2
  rw [norm_mul, Real.norm_of_nonneg hk]
  exact (mul_le_mul_of_nonneg_left (norm_inner_mixedGamma_le hf hg r) hk).trans_eq
    (by unfold weightedGamma; ring)

private theorem weightedGamma_add {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (r : ℝ) :
    weightedGamma (f + g) r =
      weightedGamma f r + 2 * weightedMixedGamma f g r + weightedGamma g r := by
  have hJump (t : ℝ) : jump (f + g) r t = jump f r t + jump g r t := by
    simp only [jump, Pi.add_apply]
    ring
  simp only [weightedGamma, weightedMixedGamma, hJump,
    integral_sq_add (jump_memLp hf r) (jump_memLp hg r)]
  ring

private theorem integrableOn_weightedGamma_add {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (hfm : Measurable f) (hgm : Measurable g)
    (hfγ : IntegrableOn (weightedGamma f) (Ioi 0)) (hgγ : IntegrableOn (weightedGamma g) (Ioi 0)) :
    IntegrableOn (weightedGamma (f + g)) (Ioi 0) := by
  have hMixed := integrableOn_weightedMixedGamma hf hg hfm hgm hfγ hgγ
  exact ((hfγ.add (hMixed.const_mul 2)).add hgγ).congr
    (Eventually.of_forall (fun r => (weightedGamma_add hf hg r).symm))

private theorem weightedGamma_neg (f : ℝ → ℝ) : weightedGamma (-f) = weightedGamma f := by
  funext r
  unfold weightedGamma
  congr 1
  apply integral_congr_ae (Eventually.of_forall (fun t => ?_))
  simp only [jump, Pi.neg_apply]
  ring

/-- The literal gamma-energy domain is closed under adding the finite trial. -/
theorem integrableOn_gammaEnergy_add_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T)
    (x : Fin M → ℝ) {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r (finiteSine T x + g)) (Ioi 0) := by
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  exact integrableOn_weightedGamma_add (finiteSine_memLp T x) hg hK.continuous.measurable hgm
    (integrableOn_gammaEnergy_finiteSine T hT x) hgγ

/-- The literal gamma-energy domain is closed under removing the finite trial. -/
theorem integrableOn_gammaEnergy_sub_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T)
    (x : Fin M → ℝ) {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r (g - finiteSine T x)) (Ioi 0) := by
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hfγ : IntegrableOn (weightedGamma (-finiteSine T x)) (Ioi 0) := by
    rw [weightedGamma_neg]
    exact integrableOn_gammaEnergy_finiteSine T hT x
  have h := integrableOn_weightedGamma_add hg (finiteSine_memLp T x).neg hgm
    hK.continuous.measurable.neg hgγ hfγ
  change IntegrableOn (weightedGamma (g - finiteSine T x)) (Ioi 0)
  simpa only [sub_eq_add_neg] using h

private theorem oddArchimedeanEnergy_add {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (hfm : Measurable f) (hgm : Measurable g)
    (hfγ : IntegrableOn (weightedGamma f) (Ioi 0)) (hgγ : IntegrableOn (weightedGamma g) (Ioi 0)) :
    oddArchimedeanEnergy (f + g) = oddArchimedeanEnergy f +
      2 * (∫ r in Ioi (0 : ℝ), weightedMixedGamma f g r) + oddArchimedeanEnergy g := by
  change (∫ r in Ioi (0 : ℝ), weightedGamma (f + g) r) =
    (∫ r in Ioi (0 : ℝ), weightedGamma f r) +
      2 * (∫ r in Ioi (0 : ℝ), weightedMixedGamma f g r) +
      (∫ r in Ioi (0 : ℝ), weightedGamma g r)
  simp_rw [weightedGamma_add hf hg]
  exact integral_add_twice_add hfγ
    (integrableOn_weightedMixedGamma hf hg hfm hgm hfγ hgγ) hgγ

private theorem primeEnergy_eq_pair (T : ℝ) {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    primeEnergy T f = ∫ t : ℝ, f t * primeOutput T f t := by
  rw [integral_mul_primeOutput T hf hf, primeEnergy, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q _
  ring

private theorem primeOutput_add (T : ℝ) (f g : ℝ → ℝ) (t : ℝ) :
    primeOutput T (f + g) t = primeOutput T f t + primeOutput T g t := by
  simp only [primeOutput, Pi.add_apply, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  ring

private theorem primeEnergy_add (T : ℝ) {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    primeEnergy T (f + g) = primeEnergy T f +
      2 * (∫ t : ℝ, g t * primeOutput T f t) + primeEnergy T g := by
  have hpF := memLp_primeOutput T hf
  have hpG := memLp_primeOutput T hg
  have hFF := hf.integrable_mul hpF
  have hGF := hg.integrable_mul hpF
  have hFG := hf.integrable_mul hpG
  have hGG := hg.integrable_mul hpG
  have hSymm : (∫ t : ℝ, f t * primeOutput T g t) =
      ∫ t : ℝ, g t * primeOutput T f t := by
    rw [integral_mul_primeOutput T hg hf, integral_mul_primeOutput T hf hg]
    apply Finset.sum_congr rfl
    intro q _
    rw [add_comm]
  rw [primeEnergy_eq_pair T (hf.add hg), primeEnergy_eq_pair T hf, primeEnergy_eq_pair T hg]
  calc
    _ = ∫ t : ℝ, (f t * primeOutput T f t + g t * primeOutput T f t) +
          (f t * primeOutput T g t + g t * primeOutput T g t) := by
      apply integral_congr_ae (Eventually.of_forall (fun t => ?_))
      rw [primeOutput_add T f g t, Pi.add_apply]
      ring
    _ = _ := by
      have h := integral_add (hFF.add hGF) (hFG.add hGG)
      have h₁ := integral_add hFF hGF
      have h₂ := integral_add hFG hGG
      simp only [Pi.add_apply, Pi.mul_apply] at h
      simp only [Pi.mul_apply] at h₁ h₂
      rw [h, h₁, h₂, hSymm]
      ring

private theorem integrable_mul_sinh_of_support {T : ℝ} {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    Integrable (fun t : ℝ => g t * Real.sinh (t / 2)) := by
  have hLoc : IntegrableOn g (Icc (-T) T) := (hg.restrict _).integrable (by norm_num)
  have hLocProd : IntegrableOn (fun t : ℝ => g t * Real.sinh (t / 2)) (Icc (-T) T) :=
    hLoc.mul_continuousOn (by fun_prop) isCompact_Icc
  refine ((integrable_indicator_iff measurableSet_Icc).2 hLocProd).congr ?_
  filter_upwards [hgs] with t ht
  by_cases hm : t ∈ Icc (-T) T <;> simp [hm, ht]

/-- Exact mixed expansion on the original shifted bordered form.
The variation is physical only and keeps the trial's scalar port fixed. -/
theorem shiftedOddBorderedEnergy_add_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : Fin M → ℝ) (a : ℝ) {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    shiftedOddBorderedEnergy T β (finiteSine T x + g) a =
      shiftedOddBorderedEnergy T β (finiteSine T x) a +
        2 * (∫ t : ℝ, g t * borderedTrialOutput T β x a t) +
        shiftedOddCoreEnergy T β g := by
  let f := finiteSine T x
  have hf := finiteSine_memLp T x
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hfγ : IntegrableOn (weightedGamma f) (Ioi 0) :=
    integrableOn_gammaEnergy_finiteSine T hT x
  have hGamma := oddArchimedeanEnergy_add hf hg hK.continuous.measurable hgm hfγ hgγ
  have hMass : (∫ t : ℝ, ‖(f + g) t‖ ^ 2) =
      (∫ t : ℝ, ‖f t‖ ^ 2) + 2 * (∫ t : ℝ, g t * f t) + ∫ t : ℝ, ‖g t‖ ^ 2 := by
    simpa only [Pi.add_apply, Real.norm_eq_abs, sq_abs] using integral_sq_add hf hg
  have hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0 :=
    Eventually.of_forall (fun _ ht => finiteSine_eq_zero_off_window T x ht)
  have hPole : (∫ t : ℝ, (f + g) t * Real.sinh (t / 2)) =
      (∫ t : ℝ, f t * Real.sinh (t / 2)) + ∫ t : ℝ, g t * Real.sinh (t / 2) := by
    simp only [Pi.add_apply, add_mul]
    exact integral_add (integrable_mul_sinh_of_support hf hfs)
      (integrable_mul_sinh_of_support hg hgs)
  have hPrime := primeEnergy_add T hf hg
  change shiftedOddBorderedEnergy T β (f + g) a = _
  unfold shiftedOddBorderedEnergy shiftedOddCoreEnergy
  rw [hMass, hGamma, hPrime, hPole, integral_mul_borderedTrialOutput T hT β x a hg hgm hgs]
  simp only [weightedMixedGamma, jump, f]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBorderedExpansion
