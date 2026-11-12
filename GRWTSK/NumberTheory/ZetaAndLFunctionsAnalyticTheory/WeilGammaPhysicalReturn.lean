/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaResolventEvaluation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaCompensatedInversion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourceHeightTail

/-!
# Pole-inclusive physical return of the actual Weil line

MSC2020: 11M41, 11M06, 33B15, 42A38. The concurrently supplied compensated
Gamma identity is used, not duplicated. Joint integrability follows from the
literal fourth-order contour weight and the full complex compensated-density
majorant. Fubini returns the gamma pair to the ORIGINAL translation energy.
Positive-real digamma reality is derived from native Euler-Gamma convergence.

The actual line integral is identified with the canonical physical expression,
then with primitiveArithmeticValue at the INVERSE character. The existing
actual-source count supplies the unordered HasSum; it is not a new hypothesis.
Conductor-one zeta retains BOTH signed poles. No all-test sign follows.

SOURCE_PROOF_CANDIDATE. Elaboration, full import build, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
Source attribution: grwtsk contributors. Refs math#1801, scope 6830176457.
-/

set_option autoImplicit false
noncomputable section
open Set Filter MeasureTheory
open scoped Topology BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open OddRootProjection GammaCompensatedInversion
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.SpecialFunctions.CompensatedDigammaIntegral

private theorem physical_correlation_zero (f : ℝ → ℂ) :
    correlation f 0 = (energy f : ℂ) := by
  have hp (t : ℝ) : conj (f t) * f t = ((‖f t‖ ^ 2 : ℝ) : ℂ) := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  unfold correlation energy
  simp_rw [add_zero, hp]
  exact integral_ofReal

private theorem digamma_real_of_positive {x : ℝ} (hx : 0 < x) :
    Complex.digamma (x : ℂ) = ((Complex.digamma (x : ℂ)).re : ℂ) := by
  have hlim := Complex.continuous_im.continuousAt.tendsto.comp
    (GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq_tendsto
      (z := (x : ℂ)) hx)
  have hzero : Tendsto (fun n : ℕ =>
      (logDeriv (fun z => Complex.GammaSeq z n) (x : ℂ)).im) atTop (𝓝 0) := by
    apply tendsto_const_nhds.congr'
    filter_upwards [eventually_ne_atTop 0] with n hn
    rw [GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq hn hx]
    simp [Complex.natCast_log, Complex.inv_im]
  have hi : (Complex.digamma (x : ℂ)).im = 0 :=
    tendsto_nhds_unique hlim hzero
  exact Complex.ext (by simp) (by simpa using hi)

/-- The actual gamma integral equals the physical parity correction. Product
integrability is derived before Fubini; the real correction is integrable and
reality of the baseline is proved, not imposed by projecting the formula. -/
theorem weil_gamma_line_eq_physical
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (a : ℕ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    let G := fun t : ℝ => H t * (-(Real.log Real.pi : ℂ) / 2 +
      Complex.digamma (((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2) / 2)
    Integrable G volume ∧ IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) ∧
      (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, G t) =
        (((-Real.log Real.pi +
          (Complex.digamma ((1 / 4 + (a : ℝ) / 2 : ℝ) : ℂ)).re) * energy f +
          ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r : ℝ) : ℂ) := by
  intro W H G
  let alpha : ℝ := (a : ℝ) + 1 / 2
  let d := fun t : ℝ => (3 / 2 : ℂ) + Complex.I * (t : ℂ)
  let F : ℝ × ℝ → ℂ := fun p => H p.1 * compensatedDensity alpha (d p.1) p.2
  let c : ℂ := 1 / (2 * (Real.pi : ℂ))
  let B : ℝ := derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have ha : 0 < alpha := by dsimp [alpha]; positivity
  have hH : Integrable H volume := by
    have hr := (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1
    have hl := (integrable_correlation_contour_weight_vertical f A hA hf hs (-1)).1.comp_neg
    apply hr.add
    apply hl.congr
    exact Eventually.of_forall fun t => by congr 1; push_cast; ring
  have hm : AEStronglyMeasurable F (volume.prod (volume.restrict (Ioi (0 : ℝ)))) :=
    hH.aestronglyMeasurable.comp_fst.mul
      (show Measurable (fun p : ℝ × ℝ => compensatedDensity alpha (d p.1) p.2) by
        unfold compensatedDensity d
        fun_prop).aestronglyMeasurable
  let M : ℝ := 6 * B * (2 / alpha + 1 / 2)
  have hM : 0 ≤ M := by dsimp [M]; positivity
  have hbound : Integrable (fun p : ℝ × ℝ =>
      (M * (1 + p.1 ^ 2)⁻¹) * Real.exp (-(alpha / 2) * p.2))
      (volume.prod (volume.restrict (Ioi (0 : ℝ)))) :=
    (integrable_inv_one_add_sq.const_mul M).mul_prod
      (integrableOn_exp_mul_Ioi (a := -(alpha / 2)) (by linarith) 0)
  have hF : Integrable F (volume.prod (volume.restrict (Ioi (0 : ℝ)))) := by
    apply hbound.mono' hm
    have hpos : ∀ᵐ p : ℝ × ℝ ∂volume.prod (volume.restrict (Ioi (0 : ℝ))), 0 < p.2 :=
      (ae_prod_iff_ae_ae (measurableSet_lt measurable_const measurable_snd)).2
        (Eventually.of_forall fun _ => ae_restrict_mem measurableSet_Ioi)
    filter_upwards [hpos] with p hp
    let x : ℝ := 1 + |p.1|
    have hx : 0 < x := by dsimp [x]; positivity
    have hW : ‖H p.1‖ ≤ 2 * B / x ^ 4 := weil_gamma_pair_norm_le f A hA hf hs p.1
    have hd : ‖d p.1‖ ≤ (3 / 2 : ℝ) * x := by
      have h := norm_add_le (3 / 2 : ℂ) (Complex.I * (p.1 : ℂ))
      have h1 : ‖d p.1‖ ≤ (3 / 2 : ℝ) + |p.1| := by simpa [d, norm_mul] using h
      dsimp [x]
      linarith [abs_nonneg p.1]
    have hC := norm_compensatedDensity_le ha
      (d := d p.1) (by dsimp [d]; norm_num) hp
    have hden : 1 + p.1 ^ 2 ≤ x ^ 3 := by
      have hsquare : 1 + p.1 ^ 2 ≤ x ^ 2 := by
        dsimp [x]
        nlinarith [sq_abs p.1, abs_nonneg p.1]
      have hcube : x ^ 2 ≤ x ^ 3 := by
        dsimp [x]
        nlinarith [mul_nonneg (sq_nonneg (1 + |p.1|)) (abs_nonneg p.1)]
      exact hsquare.trans hcube
    calc
      ‖F p‖ = ‖H p.1‖ * ‖compensatedDensity alpha (d p.1) p.2‖ := norm_mul _ _
      _ ≤ (2 * B / x ^ 4) *
          ((2 * ‖d p.1‖ * (2 / alpha + 1 / 2)) * Real.exp (-(alpha / 2) * p.2)) :=
        mul_le_mul hW hC (norm_nonneg _) (by positivity)
      _ ≤ (2 * B / x ^ 4) *
          ((2 * ((3 / 2 : ℝ) * x) * (2 / alpha + 1 / 2)) *
            Real.exp (-(alpha / 2) * p.2)) := by gcongr
      _ = (M / x ^ 3) * Real.exp (-(alpha / 2) * p.2) := by
        dsimp [M]
        field_simp [hx.ne']
        <;> ring
      _ ≤ (M / (1 + p.1 ^ 2)) * Real.exp (-(alpha / 2) * p.2) :=
        mul_le_mul_of_nonneg_right
          (div_le_div_of_nonneg_left hM (by positivity) hden) (Real.exp_nonneg _)
      _ = _ := by rw [div_eq_mul_inv]
  have hdensity (t r : ℝ) : compensatedDensity alpha (d t) r =
      (parityKernel a r : ℂ) * (1 - Complex.exp (-d t * (r : ℂ))) := by
    unfold compensatedDensity parityKernel alpha
    push_cast
    ring
  have hright (r : ℝ) : c * (∫ t : ℝ, F (t, r)) =
      (gammaCorrectionDensity a f r : ℂ) := by
    have hInv := compensated_pair_inversion f A hA hf hs r
    have he (t : ℝ) : (-1 : ℂ) + Complex.I * ((-t : ℝ) : ℂ) =
        1 - (2 + Complex.I * (t : ℂ)) := by push_cast; ring
    simp_rw [he] at hInv
    change c * (∫ t : ℝ, H t * (1 - Complex.exp (-d t * (r : ℂ)))) = _ at hInv
    have hfun : (fun t : ℝ => F (t, r)) = fun t : ℝ =>
        (parityKernel a r : ℂ) * (H t * (1 - Complex.exp (-d t * (r : ℂ)))) := by
      funext t
      dsimp only [F]
      rw [hdensity]
      ring
    rw [hfun, integral_const_mul, mul_left_comm c, hInv]
    simp [gammaCorrectionDensity]
  have hcorrC : IntegrableOn (fun r : ℝ => (gammaCorrectionDensity a f r : ℂ)) (Ioi 0) :=
    (hF.integral_prod_right.const_mul c).congr (Eventually.of_forall hright)
  have hcorr : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) := by
    simpa only [Complex.ofReal_re] using hcorrC.re
  let sigma : ℝ := 1 / 4 + (a : ℝ) / 2
  let base : ℂ := -(Real.log Real.pi : ℂ) / 2 + Complex.digamma (sigma : ℂ) / 2
  have hsplit (t : ℝ) : G t = H t * base + ∫ r in Ioi (0 : ℝ), F (t, r) := by
    have hD := (digamma_right_line_compensation a t).2
    have he : (a : ℂ) / 2 + 1 / 4 = (sigma : ℂ) := by dsimp [sigma]; push_cast; ring
    rw [he] at hD
    have hkernel : (fun r : ℝ => (parityKernel a r : ℂ) *
        (1 - Complex.exp (-d t * (r : ℂ)))) = compensatedDensity alpha (d t) :=
      funext fun r => (hdensity t r).symm
    change Complex.digamma (((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2) -
      Complex.digamma (sigma : ℂ) = 2 * ∫ r in Ioi (0 : ℝ),
        (parityKernel a r : ℂ) * (1 - Complex.exp (-d t * (r : ℂ))) at hD
    rw [hkernel] at hD
    dsimp only [G, F, base]
    rw [integral_const_mul]
    linear_combination (H t / 2) * hD
  have hGi : Integrable G volume :=
    ((hH.mul_const base).add hF.integral_prod_left).congr
      (Eventually.of_forall fun t => (hsplit t).symm)
  have hmass : c * (∫ t : ℝ, H t) = 2 * (energy f : ℂ) := by
    have h := weil_gamma_pair_fourier_inversion f A hA hf hs 0
    simpa only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, mul_one, neg_zero,
      Real.exp_zero, Complex.ofReal_one, physical_correlation_zero, ← two_mul] using h
  have hreal := digamma_real_of_positive (x := sigma) (by dsimp [sigma]; positivity)
  refine ⟨hGi, hcorr, ?_⟩
  have hsplitfun : G = fun t => H t * base + ∫ r in Ioi (0 : ℝ), F (t, r) := funext hsplit
  rw [hsplitfun, integral_add (hH.mul_const base) hF.integral_prod_left,
    mul_add, integral_mul_const, ← mul_assoc, hmass,
    integral_integral_swap (f := fun t r => F (t, r)) hF, ← integral_const_mul]
  have he : (∫ r in Ioi (0 : ℝ), c * (∫ t : ℝ, F (t, r))) =
      ∫ r in Ioi (0 : ℝ), (gammaCorrectionDensity a f r : ℂ) :=
    integral_congr_ae (Eventually.of_forall hright)
  rw [he, integral_ofReal]
  dsimp only [base]
  rw [hreal]
  push_cast
  ring

/-- Full complex source equality with the unchanged physical gamma, conductor
and inverse-character prime terms. Integrability of the gamma correction is
supplied; this is not an equality obtained by dropping imaginary parts. -/
theorem weil_full_line_eq_physical_arithmetic
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    IntegrableOn (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0) ∧
    (∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) =
      ((gammaConstant q (gammaParity chi) * energy f +
        (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity chi) f r) -
        CharacterWindow.twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℝ) : ℂ) := by
  intro W
  obtain ⟨_, hcorr, hgamma⟩ := weil_gamma_line_eq_physical f A hA hf hs (gammaParity chi)
  obtain ⟨_, hline⟩ := weil_full_line_eq_gamma_native_prime chi hprim f A hA hf hs
  have hg : (∫ t : ℝ,
      (W (2 + (t : ℂ) * Complex.I) + W (1 - (2 + (t : ℂ) * Complex.I))) *
        (-(Real.log Real.pi : ℂ) / 2 +
          Complex.digamma ((2 + (t : ℂ) * Complex.I + (gammaParity chi : ℂ)) / 2) / 2)) /
        (2 * (Real.pi : ℂ)) =
      (((-Real.log Real.pi +
        (Complex.digamma ((1 / 4 + (gammaParity chi : ℝ) / 2 : ℝ) : ℂ)).re) * energy f +
        ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity chi) f r : ℝ) : ℂ) := by
    simpa only [one_div, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc,
      add_comm, add_left_comm, add_assoc] using hgamma
  rw [hg, physical_correlation_zero] at hline
  have hq : 0 < (q : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne q)
  have hconst : gammaConstant q (gammaParity chi) = Real.log (q : ℝ) - Real.log Real.pi +
      (Complex.digamma ((1 / 4 + (gammaParity chi : ℝ) / 2 : ℝ) : ℂ)).re := by
    unfold gammaConstant
    rw [Real.log_div hq.ne' Real.pi_pos.ne', real_digamma_eq (by positivity)]
  refine ⟨hcorr, ?_⟩
  rw [hline, hconst]
  push_cast
  ring

/-- The actual unordered original-zero sum returns to the full physical form.
The arithmetic count, absolute convergence and exact contour return are supplied
by the maintained source. Both conductor-one pole orientations are retained. -/
theorem primitive_hasSum_physical_arithmetic
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (((gammaConstant q (gammaParity chi) * energy f +
        (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity chi) f r) -
        CharacterWindow.twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℝ) : ℂ) +
        (if q = 1 then W 0 + W 1 else 0)) := by
  intro W
  have h := primitive_hasSum_contour_weight_source_bound chi hprim f A hA hf hs
  rw [(weil_full_line_eq_physical_arithmetic chi hprim f A hA hf hs).2] at h
  exact h

/-- Exact return to the EXISTING primitive nonprincipal arithmetic value at
chi inverse. The original chi-zero divisor is unchanged. No count or sign
premise remains, and no broader-family transfer is inferred. -/
theorem primitive_hasSum_canonical_arithmetic
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (hnon : chi ≠ 1) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (primitiveArithmeticValue chi⁻¹
        (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hprim)
        (by simpa only [ne_eq, inv_eq_one] using hnon) A f : ℂ) := by
  intro W
  have hq : q ≠ 1 := by
    intro he
    subst q
    exact hnon (Subsingleton.elim _ _)
  have h := primitive_hasSum_physical_arithmetic chi hprim f A hA hf hs
  simpa only [hq, if_false, add_zero, primitiveArithmeticValue, gammaParity_inverse] using h

/-- Literal conductor-one zeta explicit formula on every original admissible
complex test, with both signed pole products and every active prime power. -/
theorem zeta_hasSum_physical_arithmetic
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (((gammaConstant 1 0 * energy f +
        (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 0 f r) -
        2 * ∑ n ∈ LowSchur.activePrimePowers A,
          LowSchur.primeWeight n * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ) +
        W 0 + W 1) := by
  intro chi W
  have hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
  have hp : gammaParity chi = 0 := by
    simp [chi, gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  have h := primitive_hasSum_physical_arithmetic chi hprim f A hA hf hs
  simpa [hp, chi, CharacterWindow.twistedPrime, MulChar.one_apply (isUnit_of_subsingleton _),
    add_assoc] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
