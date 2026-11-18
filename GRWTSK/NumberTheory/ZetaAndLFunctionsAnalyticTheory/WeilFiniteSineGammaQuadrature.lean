/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaBochnerRow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineOperator

/-!
# A finite-translation approximation of the canonical finite-sine source output

A supported global Lipschitz representative has an explicit WHOLE-LINE
translation slope. Applying this to the existing zero-extended finite sine
eliminates the abstract slope premise in the arithmetic consumer below.

The Bochner gamma row is identified with the original pointwise gamma
output by equality against every supported L2 test. Adding the unchanged
prime/pole part gives the existing `PhysicalSourceOperator.sourceOperator`
output, with exactly its minimizing pole port. Thus the quadrature error
bounds the canonical operator, not a surrogate positive model.

The finite matrices, outward scalar enclosures, genuine high-floor estimate,
successful Schur sign and cofinal certificate supply remain separate.
SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineGammaQuadrature

open OddRootProjection OddSineForm OddGammaOutput OddPrimePoleOutput OddConcreteResidual
open TranslationCutoffs TranslationEnergyDomain GammaCutoffResidual GammaGeometricQuadrature
open GammaBochnerRow FiniteSineOperator MirroredHermitian ClosedSourceBilinear
open PhysicalSourceOperator
open GRWTSK.FunctionalAnalysis

/-- A finite support bound handles translated boundary strips without
assuming the zero extension is H2 or differentiating an indicator. -/
theorem translationSlope_of_lipschitz_support {T : ℝ} (hT : 0 < T)
    {F : ℝ → ℝ} {f : Physical} {K : ℝ≥0}
    (hK : LipschitzWith K F)
    (hs : ∀ t, t ∉ Icc (-T) T → F t = 0)
    (hf : f =ᵐ[volume] F) :
    TranslationSlope f (2 * Real.sqrt T * (K : ℝ)) := by
  intro r
  let chi : ℝ → ℝ := (Icc (-T) T).indicator (fun _ => 1)
  have hi : Integrable chi := by
    apply (integrable_indicator_iff measurableSet_Icc).2
    exact continuous_const.integrableOn_Icc
  have his : Integrable (fun t : ℝ => chi (t + r)) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hi
  have hI : (∫ t : ℝ, chi t) = 2 * T := by
    rw [show chi = (Icc (-T) T).indicator (fun _ => (1 : ℝ)) from rfl,
      integral_indicator measurableSet_Icc]
    simp [measureReal_def, Real.volume_Icc,
      ENNReal.toReal_ofReal (by linarith : 0 ≤ T - -T)]
    <;> ring
  have hscalar : MemLp F 2 volume := (Lp.memLp f).congr hf
  have hdiff := ((hscalar.comp_measurePreserving
    (measurePreserving_add_right volume r)).sub hscalar).integrable_sq
  have hpoint (t : ℝ) : (F (t + r) - F t) ^ 2 ≤
      ((K : ℝ) * |r|) ^ 2 * (chi t + chi (t + r)) := by
    have hl : |F (t + r) - F t| ≤ (K : ℝ) * |r| := by
      simpa only [Real.norm_eq_abs, show t + r - t = r by ring] using
        hK.norm_sub_le (t + r) t
    have hsquare : (F (t + r) - F t) ^ 2 ≤ ((K : ℝ) * |r|) ^ 2 := by
      nlinarith [sq_abs (F (t + r) - F t), abs_nonneg (F (t + r) - F t)]
    by_cases ht : t ∈ Icc (-T) T <;>
      by_cases htr : t + r ∈ Icc (-T) T
    · simp only [chi, indicator_of_mem ht, indicator_of_mem htr]
      nlinarith [sq_nonneg ((K : ℝ) * |r|)]
    · simpa only [chi, indicator_of_mem ht, indicator_of_notMem htr, add_zero, mul_one]
        using hsquare
    · simpa only [chi, indicator_of_notMem ht, indicator_of_mem htr, zero_add, mul_one]
        using hsquare
    · simp [chi, ht, htr, hs t ht, hs (t + r) htr]
  have hbound := integral_mono_ae hdiff ((hi.add his).const_mul (((K : ℝ) * |r|) ^ 2))
    (Eventually.of_forall hpoint)
  rw [integral_const_mul, integral_add hi his,
    integral_add_right_eq_self chi r, hI] at hbound
  have hid : ‖jump f r‖ ^ 2 = ∫ t : ℝ, (F (t + r) - F t) ^ 2 := by
    rw [jump_norm_sq]
    apply integral_congr_ae
    filter_upwards [hf, (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hf]
      with t ht hr
    rw [ht, hr]
  have hsq : (|r| * (2 * Real.sqrt T * (K : ℝ))) ^ 2 =
      ((K : ℝ) * |r|) ^ 2 * (2 * T + 2 * T) := by
    calc
      _ = 4 * (Real.sqrt T) ^ 2 * ((K : ℝ) * |r|) ^ 2 := by ring
      _ = _ := by rw [Real.sq_sqrt hT.le]; ring
  have hnonneg : 0 ≤ |r| * (2 * Real.sqrt T * (K : ℝ)) := by positivity
  rw [← hid] at hbound
  nlinarith [norm_nonneg (jump f r)]

/-- Explicit finite Lipschitz constant for the existing source synthesis. -/
def sineLipschitz {M : ℕ} (T : ℝ) (c : Fin M → ℝ) : ℝ≥0 :=
  ∑ i, ‖c i‖₊ * (|Real.pi * ((i.val + 1 : ℕ) : ℝ) / T| / Real.sqrt T).toNNReal

theorem finiteSine_lipschitz {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    LipschitzWith (sineLipschitz T c) (finiteSine T c) := by
  apply LipschitzWith.of_dist_le_mul
  intro t s
  rw [dist_eq_norm]
  simp only [sineLipschitz, NNReal.coe_sum, Finset.sum_mul, finiteSine,
    ← Finset.sum_sub_distrib, ← mul_sub]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [norm_mul, NNReal.coe_mul, coe_nnnorm, mul_assoc]
  exact mul_le_mul_of_nonneg_left
    (by simpa only [dist_eq_norm] using
      (lipschitzWith_zeroExtendedSine T hT (i.val + 1)).dist_le_mul t s) (norm_nonneg _)

def slopeBound {M : ℕ} (T : ℝ) (c : Fin M → ℝ) : ℝ :=
  2 * Real.sqrt T * (sineLipschitz T c : ℝ)

theorem slopeBound_nonneg {M : ℕ} (T : ℝ) (c : Fin M → ℝ) : 0 ≤ slopeBound T c := by
  unfold slopeBound
  positivity

/-- The constant is an explicit weighted coefficient norm, not a hidden
regularity oracle. It is conservative compared with the derivative L2 norm. -/
theorem slopeBound_eq {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    slopeBound T c =
      2 * ∑ i, ‖c i‖ * |Real.pi * ((i.val + 1 : ℕ) : ℝ) / T| := by
  simp only [slopeBound, sineLipschitz, NNReal.coe_sum, NNReal.coe_mul, coe_nnnorm,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Real.coe_toNNReal _ (by positivity)]
  field_simp [(Real.sqrt_pos.mpr hT).ne']
  <;> ring

theorem finiteInput_translationSlope {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    TranslationSlope (finiteInput T c : Physical) (slopeBound T c) :=
  translationSlope_of_lipschitz_support hT (finiteSine_lipschitz T hT c)
    (fun _ ht => finiteSine_eq_zero_off_window T c ht) (finiteInput_ae T c)

private theorem gammaPart_memLp {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    MemLp ((Icc (-T) T).indicator (gammaOutput (finiteSine T c))) 2 volume :=
  memLp_window_gammaOutput T (finiteSine_lipschitz T hT c) (norm_finiteSine_le T hT c)

def gammaPart {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) : Physical :=
  (gammaPart_memLp T hT c).toLp ((Icc (-T) T).indicator (gammaOutput (finiteSine T c)))

theorem gammaPart_ae {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    gammaPart T hT c =ᵐ[volume] (Icc (-T) T).indicator (gammaOutput (finiteSine T c)) :=
  (gammaPart_memLp T hT c).coeFn_toLp

theorem gammaPart_supported {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    ∀ᵐ t : ℝ, t ∉ Icc (-T) T → gammaPart T hT c t = 0 := by
  filter_upwards [gammaPart_ae T hT c] with t ht hn
  simp [ht, hn]

/-- Exact gamma pairing against every supported physical L2 vector. -/
theorem gammaPart_pair {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ)
    (g : Physical) (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    inner ℝ g (gammaPart T hT c) = gammaPairing g (finiteSine T c) := by
  have hgr : IntegrableOn (fun t => g t) (Icc (-T) T) :=
    ((Lp.memLp g).restrict _).integrable (by norm_num)
  have hgi : Integrable (fun t => g t) := by
    apply ((integrable_indicator_iff measurableSet_Icc).mpr hgr).congr
    filter_upwards [hs] with t ht
    by_cases hm : t ∈ Icc (-T) T <;> simp [hm, ht]
  rw [L2.inner_def]
  calc
    _ = ∫ t : ℝ, g t * ((Icc (-T) T).indicator (gammaOutput (finiteSine T c))) t := by
      apply integral_congr_ae
      filter_upwards [gammaPart_ae T hT c] with t ht
      simp [ht, RCLike.inner_apply, mul_comm]
    _ = _ := window_gammaOutput_finiteSine_pair T hT c hgi
      (Lp.stronglyMeasurable g).measurable hs

/-- The new Bochner row equals the PRE-EXISTING pointwise gamma output.
No equality is assumed only on a finite set of modes. -/
theorem gammaPart_eq_fullRow {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    gammaPart T hT c = physicalWindow T (fullRow (finiteInput T c : Physical)) := by
  apply ext_inner_left ℝ
  intro g
  have hself : physicalWindow T (gammaPart T hT c) = gammaPart T hT c :=
    (L2WindowRestriction.restrict_eq_self_iff volume (Icc (-T) T) measurableSet_Icc _).2
      (gammaPart_supported T hT c)
  calc
    inner ℝ g (gammaPart T hT c) = inner ℝ (physicalWindow T g) (gammaPart T hT c) := by
      rw [physicalWindow_pair, hself]
    _ = gammaPairing (physicalWindow T g) (finiteSine T c) :=
      gammaPart_pair T hT c _ (physicalWindow_support T g)
    _ = gammaPairing (physicalWindow T g) (finiteInput T c : Physical) :=
      (gammaPairing_congr_ae EventuallyEq.rfl (finiteInput_ae T c)).symm
    _ = inner ℝ (physicalWindow T g) (fullRow (finiteInput T c : Physical)) :=
      (fullRow_pair (slopeBound_nonneg T c) (finiteInput_translationSlope T hT c) _).symm
    _ = _ := physicalWindow_pair T g _

/-- The bounded source remainder is kept EXACT, including all prime powers
and the original minimizing negative-pole port. -/
def primePolePart {M : ℕ} (T β : ℝ) (c : Fin M → ℝ) : Physical :=
  (memLp_primePoleOutput T β (finiteSine_memLp T c) (polePort T c)).toLp
    (primePoleOutput T β (finiteSine T c) (polePort T c))

theorem primePolePart_ae {M : ℕ} (T β : ℝ) (c : Fin M → ℝ) :
    primePolePart T β c =ᵐ[volume] primePoleOutput T β (finiteSine T c) (polePort T c) :=
  (memLp_primePoleOutput T β (finiteSine_memLp T c) (polePort T c)).coeFn_toLp

theorem finiteOutput_decomposition {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (c : Fin M → ℝ) :
    (finiteOutput T hT β c : Physical) = gammaPart T hT c + primePolePart T β c := by
  apply Lp.ext
  filter_upwards [finiteOutput_ae T hT β c, gammaPart_ae T hT c,
    primePolePart_ae T β c, Lp.coeFn_add (gammaPart T hT c) (primePolePart T β c)]
    with t ho hg hp ha
  simp only [ho, ha, hg, hp, literalOutput, borderedTrialOutput, Pi.add_apply]

/-- A finite-translation row of the same signed arithmetic source. -/
def approximateOutput {M : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) : Physical :=
  quadratureRow T x N (finiteInput T c : Physical) + primePolePart T β c

/-- Quantitative approximation of the actual canonical output, with no
external regularity or source-identity hypothesis left for finite sines. -/
theorem finiteOutput_error_le {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) {eta : ℝ}
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N) (heta : 0 ≤ eta)
    (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i) :
    ‖(finiteOutput T hT β c : Physical) - approximateOutput T β x N c‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T c := by
  have hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → (finiteInput T c : Physical) t = 0 :=
    ((mem_supportedOdd_iff T _).1 (finiteInput T c).property).1
  rw [finiteOutput_decomposition, gammaPart_eq_fullRow, approximateOutput,
    add_sub_add_right_eq_sub]
  exact quadrature_error_le T x N hx hx0 hfar heta hwidth hs
    (slopeBound_nonneg T c) (finiteInput_translationSlope T hT c)

/-- The consumer is the EXISTING associated physical operator. -/
theorem sourceOperator_error_le {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) {eta : ℝ}
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N) (heta : 0 ≤ eta)
    (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i) :
    ‖(sourceOperator T β hT (finiteDomain T hT β c) : Physical) -
      approximateOutput T β x N c‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T c := by
  rw [sourceOperator_finiteDomain]
  exact finiteOutput_error_le T hT β x N c hx hx0 hfar heta hwidth

/-- The same error controls every original form-domain test, not a finite
set of observations. This does NOT assert positivity of that source. -/
theorem sourceForm_pairing_error_le {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) {eta : ℝ}
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N) (heta : 0 ≤ eta)
    (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i) (w : FormDomain T) :
    |sourceForm T β (finiteLift T hT c) w -
      inner ℝ (approximateOutput T β x N c) (input T w)| ≤
      ((x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T c) * ‖input T w‖ := by
  rw [finiteLift_sourceForm]
  change |inner ℝ (finiteOutput T hT β c : Physical) (input T w) -
    inner ℝ (approximateOutput T β x N c) (input T w)| ≤ _
  rw [← inner_sub_left]
  have hcs : |inner ℝ
      ((finiteOutput T hT β c : Physical) - approximateOutput T β x N c) (input T w)| ≤
      ‖(finiteOutput T hT β c : Physical) - approximateOutput T β x N c‖ * ‖input T w‖ := by
    simpa only [Real.norm_eq_abs] using
      norm_inner_le_norm ((finiteOutput T hT β c : Physical) - approximateOutput T β x N c)
        (input T w)
  exact hcs.trans
    (mul_le_mul_of_nonneg_right (finiteOutput_error_le T hT β x N c hx hx0 hfar heta hwidth)
      (norm_nonneg _))

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineGammaQuadrature
