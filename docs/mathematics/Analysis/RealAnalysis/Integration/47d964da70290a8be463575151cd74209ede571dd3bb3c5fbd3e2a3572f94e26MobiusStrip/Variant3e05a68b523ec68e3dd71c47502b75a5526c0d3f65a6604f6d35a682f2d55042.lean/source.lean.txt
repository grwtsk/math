-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitDilationEndpointLower.Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitDilationEndpointLower.Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26","mathematical_subject":"Analysis.Integration","original_sha256":"47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/47/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26--MobiusStrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateScaleKernel

namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitDilationEndpointLower.Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26

set_option autoImplicit false
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePairedStrip
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization BridgeNormalization EstimateSourceCorrelationPolynomial
open EstimateScalePrimitive EstimateScaleAverage EstimateSourceMobiusKernel
noncomputable section

private theorem unitDilation_endpoint_lower (A x : ℝ) (hA : 1 ≤ A)
    (hx : 1 - 1/(2*A) ≤ x) (hx1 : x ≤ 1) :
    4/A^2 * (1-x)^2 ≤ unitDilation (1/A^2) x := by
  have hA0 : 0 < A := by linarith
  have hhalf : 1/(2*A) ≤ 1/2 := by rw [div_le_div_iff₀ (by positivity) (by norm_num)]; linarith
  have hx0 : 0 ≤ x := by linarith
  have hxhalf : 1/2 ≤ x := by linarith
  have hx2 : 1/4 ≤ x^2 := by nlinarith
  have hsmall : A*(1-x) ≤ 1/2 := by
    have := (le_div_iff₀ (by positivity : 0 < 2*A)).1 (show 1-x ≤ 1/(2*A) by linarith)
    nlinarith
  have hbase : 0 ≤ 1-x^2 := by nlinarith
  have hfac : A*(1-x^2) ≤ 1 := by
    nlinarith [mul_nonneg (show 0 ≤ A*(1-x) by positivity) (show 0 ≤ 1-x by linarith)]
  have hsq : A^2*(1-x^2)^2 ≤ 1 := by
    nlinarith [sq_nonneg (A*(1-x^2)), mul_nonneg (show 0 ≤ A*(1-x^2) by positivity)
      (show 0 ≤ 1-A*(1-x^2) by linarith)]
  have hbr : 4 ≤ 8*(7*x^2-1)-A^2/4*(1-x^2)^2 := by nlinarith
  have hdist : (1-x)^2 ≤ (1-x^2)^2 := by
    nlinarith [mul_nonneg hx0 (show 0 ≤ 1-x by linarith), mul_nonneg (show 0 ≤ 1-x by linarith) (show 0 ≤ x*(1-x) by positivity)]
  have he : unitDilation (1/A^2) x =
      (1-x^2)^2/A^2 * (8*(7*x^2-1)-A^2/4*(1-x^2)^2) := by
    dsimp [unitDilation, unitSecond, unitBump]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ 4/A^2*(1-x^2)^2 := mul_le_mul_of_nonneg_left hdist (by positivity)
    _ = ((1-x^2)^2/A^2)*4 := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left hbr (by positivity)

private theorem unitDilation_even (r x : ℝ) : unitDilation r (-x) = unitDilation r x := by
  dsimp [unitDilation, unitSecond, unitBump]
  ring

private theorem integral_endpoint_polynomial (w : ℝ) :
    (∫ x in (1-w)..(1:ℝ), (1-x)^2*(x-(1-w))^2) = w^5/30 := by
  have hf : (fun x : ℝ ↦ (1-x)^2*(x-(1-w))^2) =
    fun x ↦ x^4 + (2*w-4)*x^3 + (w^2-6*w+6)*x^2 +
      (-2*w^2+6*w-4)*x + (w^2-2*w+1) := by funext x; ring
  rw [hf]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow,
      intervalIntegral.integral_const]
  rw [intervalIntegral.integral_const_mul, integral_id]
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow, smul_eq_mul]
  ring

/-- Positivity is confined to the actual half-unit endpoint strip. -/
theorem weighted_endpoint_lower (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv1 : v ≤ 1/2) :
    (8/15)*A^8*v^5 ≤ scaleWeight A * sourceCorrelation explicitSecondDerivative A (2*A-v) := by
  have hA0 : 0 < A := by linarith
  have hw0 : 0 ≤ v/A := div_nonneg hv hA0.le
  have hw : v/A ≤ 1/(2*A) := by rw [div_le_iff₀ hA0]; field_simp; linarith
  have hw1 : v/A ≤ 1/2 := by rw [div_le_iff₀ hA0]; linarith
  have hs := sourceCorrelation_eq_unit_integral A (2-v/A) hA (by linarith) (by linarith)
  have he : A*(2-v/A) = 2*A-v := by field_simp
  rw [he] at hs
  have hi (x : ℝ) (hx : x ∈ Icc (1-v/A) 1) :
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2) ≤
        unitDilation (1/A^2) x * unitDilation (1/A^2) (x-(2-v/A)) := by
    have h1 := unitDilation_endpoint_lower A x hA (by linarith [hx.1]) hx.2
    have h2 := unitDilation_endpoint_lower A (2-v/A-x) hA
      (by linarith [hx.2]) (by linarith [hx.1])
    have hneg : x-(2-v/A) = -(2-v/A-x) := by ring
    rw [hneg, unitDilation_even]
    have hm := mul_le_mul h1 h2 (by positivity : 0 ≤ 4/A^2*(1-(2-v/A-x))^2)
      (le_trans (by positivity : 0 ≤ 4/A^2*(1-x)^2) h1)
    calc
      _ = (4/A^2*(1-x)^2)*(4/A^2*(1-(2-v/A-x))^2) := by ring
      _ ≤ _ := hm
  have hmono := intervalIntegral.integral_mono_on (μ := volume)
    (show 1-v/A ≤ 1 by linarith)
    ((by fun_prop : Continuous (fun x : ℝ ↦
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2))).intervalIntegrable _ _)
    ((by unfold unitDilation unitSecond unitBump; fun_prop : Continuous (fun x : ℝ ↦
      unitDilation (1/A^2) x * unitDilation (1/A^2) (x-(2-v/A)))).intervalIntegrable _ _) hi
  have hint : (∫ x in (1-v/A)..(1:ℝ),
      (16/A^4)*((1-x)^2*(x-(1-v/A))^2)) = (8/15)*v^5/A^9 := by
    rw [intervalIntegral.integral_const_mul, integral_endpoint_polynomial]
    field_simp [hA0.ne']
    ring
  rw [hint] at hmono
  rw [hs, scaleWeight]
  have hz := ne_of_gt (source_normalization_pos A hA)
  have hend : 2-v/A-1 = 1-v/A := by ring
  rw [hend]
  have hzclear : A^17*sourceNormalization A *
      ((∫ x in (1-v/A)..(1:ℝ), unitDilation (1/A^2) x *
        unitDilation (1/A^2) (x-(2-v/A))) / sourceNormalization A) =
      A^17*(∫ x in (1-v/A)..(1:ℝ), unitDilation (1/A^2) x *
        unitDilation (1/A^2) (x-(2-v/A))) := by field_simp
  rw [hzclear]
  have hh := mul_le_mul_of_nonneg_left hmono (show 0 ≤ A^17 by positivity)
  calc
    _ = A^17*((8/15)*v^5/A^9) := by field_simp
    _ ≤ _ := hh

/-- The exact endpoint window has a positive scale integral. -/
theorem omegaWeight_strip_lower (T u : ℝ) (m d : ℕ) (hT : 2 ≤ T)
    (hu : 0 < u) (hu1 : u ≤ 1/2) (hm : T^2 ≤ (m:ℝ)) (hd : T^2 ≤ (d:ℝ))
    (hlog : Real.log ((m*d : ℕ) : ℝ) = 2*T-u) :
    T^8*u^6/5760 ≤ omegaWeight T m d 1 := by
  have hT0 : 0 ≤ T := by linarith
  have hl : lowerScale (Real.log ((m*d*1 : ℕ) : ℝ)) = T-u/2 := by
    rw [Nat.mul_one, hlog]
    unfold lowerScale
    rw [max_eq_right (by linarith)]
    ring
  have hup : upperScale T m d = T := by
    unfold upperScale
    exact min_eq_left (le_min ((Real.le_sqrt hT0 (Nat.cast_nonneg m)).2 hm) ((Real.le_sqrt hT0 (Nat.cast_nonneg d)).2 hd))
  have hl1 : 1 ≤ T-u/2 := by linarith
  have hlT : T-u/2 ≤ T := by linarith
  have hsrc := integral_weighted_correlation (2*T-u) (T-u/2) T hl1 hlT
    (by linarith) (by linarith)
  have homega : omegaWeight T m d 1 =
      ∫ A in (T-u/2)..T, scaleWeight A * sourceCorrelation explicitSecondDerivative A (2*T-u) := by
    rw [omegaWeight, hl, hup, if_pos (by linarith), Nat.mul_one, hlog]
    exact hsrc.symm
  rw [homega]
  have hpoly : Continuous (fun A ↦ scalePolynomial A (2*T-u)) := by
    unfold scalePolynomial; fun_prop
  have hsource : IntervalIntegrable (fun A ↦
      scaleWeight A * sourceCorrelation explicitSecondDerivative A (2*T-u)) volume (T-u/2) T := by
    apply (hpoly.intervalIntegrable _ _).congr
    intro A hA
    rw [uIoc_of_le hlT] at hA
    exact scalePolynomial_eq_source A _ (by linarith [hA.1]) (by linarith) (by linarith [hA.1])
  have hi := intervalIntegral.integral_mono_on (μ := volume) hlT
    ((by fun_prop : Continuous (fun A : ℝ ↦
      (8/15)*(T/2)^8*(2*A-(2*T-u))^5)).intervalIntegrable _ _) hsource
    (fun A hA ↦ by
      have hv0 : 0 ≤ 2*A-(2*T-u) := by linarith [hA.1]
      have hv1 : 2*A-(2*T-u) ≤ 1/2 := by linarith [hA.2]
      have hh := weighted_endpoint_lower A (2*A-(2*T-u)) (by linarith [hA.1]) hv0 hv1
      have he : 2*A-(2*A-(2*T-u)) = 2*T-u := by ring
      rw [he] at hh
      have hp : (T/2)^8 ≤ A^8 := pow_le_pow_left₀ (by positivity) (by linarith [hA.1, hA.2]) _
      exact (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp (by norm_num))
        (pow_nonneg hv0 _)).trans hh)
  have hint : (∫ A in (T-u/2)..T, (2*A-(2*T-u))^5) = u^6/12 := by
    have hc : Continuous (fun A : ℝ ↦ (2*A-(2*T-u))^5) := by fun_prop
    have hh := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (a := T-u/2) (b := T) (f := fun A ↦ (2*A-(2*T-u))^6/12)
      (fun A _ ↦ by
        exact (((((hasDerivAt_id A).const_mul 2).sub_const (2*T-u)).pow 6).div_const 12).congr_deriv
          (by dsimp; ring))
      (hc.intervalIntegrable _ _)
    convert hh using 1
    ring
  rw [intervalIntegral.integral_const_mul, hint] at hi
  convert hi using 1
  ring


/-- The complete plain-factor sum, with the unchanged finite scale windows. -/
def integratedKernel (T : ℝ) (m d : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
    omegaWeight T m d k / Real.sqrt ((m*d*k : ℕ) : ℝ)

private theorem cutoff_lt_mul_of_strip (T : ℝ) (m d a : ℕ)
    (hm : 1 ≤ m) (hd : 1 ≤ d) (ha : 2 ≤ a)
    (hlog : 2*T-1/2 ≤ Real.log ((m*d : ℕ) : ℝ)) :
    sourceKernelCutoff T < m*d*a := by
  have hn : 0 < ((m*d : ℕ) : ℝ) := by exact_mod_cast (Nat.mul_pos hm hd)
  have ha0 : 0 < (a:ℝ) := by exact_mod_cast (show 0 < a by omega)
  have hla : 1/2 < Real.log (a:ℝ) := by
    have hh := Real.strictMonoOn_log.monotoneOn (by norm_num : (2:ℝ) ∈ Ioi 0)
      ha0 (by exact_mod_cast ha)
    linarith [Real.log_two_gt_d9]
  change ⌊Real.exp (2*T)⌋₊ < m*d*a
  apply (Nat.floor_lt (Real.exp_pos _).le).2
  apply (Real.lt_log_iff_exp_lt (by positivity)).1
  rw [Nat.cast_mul, Real.log_mul hn.ne' ha0.ne']
  linarith

/-- Near the product seam, completing the plain-factor sum leaves just k=1. -/
theorem integratedKernel_eq_one_of_strip (T : ℝ) (m d : ℕ) (hT : 1 ≤ T)
    (hm : 1 ≤ m) (hd : 1 ≤ d)
    (hlog : 2*T-1/2 ≤ Real.log ((m*d : ℕ) : ℝ)) :
    integratedKernel T m d = omegaWeight T m d 1 / Real.sqrt ((m*d : ℕ) : ℝ) := by
  unfold integratedKernel
  have hN : 1 ≤ sourceKernelCutoff T := by
    change 1 ≤ ⌊Real.exp (2*T)⌋₊
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    simp only [Nat.cast_one]
    exact Real.one_le_exp_iff.mpr (by linarith)
  rw [Finset.sum_eq_single 1]
  · simp only [Nat.mul_one]
  · intro k hk hk1
    rw [omegaWeight_zero_of_cutoff_lt T m d k
      (cutoff_lt_mul_of_strip T m d k hm hd (by have := (Finset.mem_Icc.mp hk).1; omega) hlog),
      zero_div]
  · simp [Finset.mem_Icc, hN]

/-- Every nontrivial integer dilation has an empty product window on this strip. -/
theorem integratedKernel_dilate_zero (T : ℝ) (m d a : ℕ)
    (hm : 1 ≤ m) (hd : 1 ≤ d) (ha : 2 ≤ a)
    (hlog : 2*T-1/2 ≤ Real.log ((m*d : ℕ) : ℝ)) :
    integratedKernel T m (a*d) = 0 := by
  apply Finset.sum_eq_zero
  intro k hk
  have hcut : sourceKernelCutoff T < m*(a*d)*k := by
    have hh := (cutoff_lt_mul_of_strip T m d a hm hd ha hlog).trans_le
      (Nat.le_mul_of_pos_right (m*d*a) (Finset.mem_Icc.mp hk).1)
    simpa only [Nat.mul_assoc, Nat.mul_left_comm, Nat.mul_comm] using hh
  rw [omegaWeight_zero_of_cutoff_lt T m (a*d) k hcut, zero_div]

/-- No cancellation occurs among the divisor dilations here, for any positive P. -/
theorem divisor_dilation_eq_kernel (T : ℝ) (m d P : ℕ) (hP : P ≠ 0)
    (hm : 1 ≤ m) (hd : 1 ≤ d)
    (hlog : 2*T-1/2 ≤ Real.log ((m*d : ℕ) : ℝ)) :
    (∑ a ∈ P.divisors, (ArithmeticFunction.moebius a : ℝ) * integratedKernel T m (a*d)) =
      integratedKernel T m d := by
  rw [Finset.sum_eq_single 1]
  · simp
  · intro a ha ha1
    have ha2 : 2 ≤ a := by have := Nat.pos_of_mem_divisors ha; omega
    rw [integratedKernel_dilate_zero T m d a hm hd ha2 hlog, mul_zero]
  · simp [hP]

/-- The complete k-sum itself is positive and polynomially large per endpoint atom. -/
theorem integratedKernel_strip_lower (T u : ℝ) (m d : ℕ) (hT : 2 ≤ T)
    (hu : 1/4 ≤ u) (hu1 : u ≤ 1/2) (hm : T^2 ≤ (m:ℝ)) (hd : T^2 ≤ (d:ℝ))
    (hlog : Real.log ((m*d : ℕ) : ℝ) = 2*T-u) :
    T^8/(23592960 * Real.sqrt ((m*d : ℕ) : ℝ)) ≤ integratedKernel T m d := by
  have hm1 : 1 ≤ m := by exact_mod_cast (show (1:ℝ) ≤ m by nlinarith)
  have hd1 : 1 ≤ d := by exact_mod_cast (show (1:ℝ) ≤ d by nlinarith)
  rw [integratedKernel_eq_one_of_strip T m d (by linarith) hm1 hd1 (by rw [hlog]; linarith)]
  have hden : 0 < Real.sqrt ((m*d : ℕ) : ℝ) := Real.sqrt_pos.mpr
    (by exact_mod_cast (Nat.mul_pos hm1 hd1))
  have hu6 : (1/4:ℝ)^6 ≤ u^6 := pow_le_pow_left₀ (by norm_num) hu _
  have hl := omegaWeight_strip_lower T u m d hT (by linarith) hu1 hm hd hlog
  have hnum : T^8/23592960 ≤ omegaWeight T m d 1 := by
    have hh := mul_le_mul_of_nonneg_left hu6 (show 0 ≤ T^8 by positivity)
    norm_num at hh
    linarith
  calc
    _ = (T^8/23592960) / Real.sqrt ((m*d : ℕ) : ℝ) := by ring
    _ ≤ _ := div_le_div_of_nonneg_right hnum hden.le

/-- Pairing q with 2q has no effect on this actual positive kernel strip. -/
theorem paired_strip_lower (T u : ℝ) (m d : ℕ) (hT : 2 ≤ T)
    (hu : 1/4 ≤ u) (hu1 : u ≤ 1/2) (hm : T^2 ≤ (m:ℝ)) (hd : T^2 ≤ (d:ℝ))
    (hlog : Real.log ((m*d : ℕ) : ℝ) = 2*T-u) :
    T^8/(23592960 * Real.sqrt ((m*d : ℕ) : ℝ)) ≤
      integratedKernel T m d - integratedKernel T m (2*d) := by
  rw [integratedKernel_dilate_zero T m d 2
    (by exact_mod_cast (show (1:ℝ) ≤ m by nlinarith))
    (by exact_mod_cast (show (1:ℝ) ≤ d by nlinarith)) (by omega) (by rw [hlog]; linarith),
    sub_zero]
  exact integratedKernel_strip_lower T u m d hT hu hu1 hm hd hlog


private theorem sq_le_exp_lower (T : ℝ) (hT : 20 ≤ T) :
    T^2 ≤ Real.exp (T-1/4) := by
  have hT0 : 0 ≤ T := by linarith
  have hp := Real.pow_div_factorial_le_exp (T-1/4) (show 0 ≤ T-1/4 by linarith) 4
  norm_num only [Nat.factorial, Nat.cast_ofNat] at hp
  have hm : (T/2)^4 ≤ (T-1/4)^4 := pow_le_pow_left₀ (by positivity) (by linarith) _
  have hsq : 400 ≤ T^2 := by nlinarith
  have h4 : 384*T^2 ≤ T^4 := by nlinarith [mul_nonneg (sq_nonneg T) (show 0 ≤ T^2-384 by linarith)]
  nlinarith

/-- A fully explicit real-scale endpoint interval, requiring no asymptotic premise. -/
theorem paired_interval_lower (T : ℝ) (m d : ℕ) (hT : 20 ≤ T)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hdlo : Real.exp (T-1/4) ≤ (d:ℝ)) (hdhi : (d:ℝ) ≤ Real.exp (T-1/8)) :
    T^8/(23592960 * Real.sqrt ((m*d : ℕ) : ℝ)) ≤
      integratedKernel T m d - integratedKernel T m (2*d) := by
  have hm0 : 0 < (m:ℝ) := (Real.exp_pos _).trans_le hmlo
  have hd0 : 0 < (d:ℝ) := (Real.exp_pos _).trans_le hdlo
  have hml := (Real.le_log_iff_exp_le hm0).2 hmlo
  have hmh := (Real.log_le_iff_le_exp hm0).2 hmhi
  have hdl := (Real.le_log_iff_exp_le hd0).2 hdlo
  have hdh := (Real.log_le_iff_le_exp hd0).2 hdhi
  have hprod : Real.log ((m*d : ℕ) : ℝ) = Real.log m + Real.log d := by
    rw [Nat.cast_mul, Real.log_mul hm0.ne' hd0.ne']
  apply paired_strip_lower T (2*T-Real.log ((m*d : ℕ) : ℝ)) m d (by linarith)
  · rw [hprod]; linarith
  · rw [hprod]; linarith
  · exact (sq_le_exp_lower T hT).trans hmlo
  · exact (sq_le_exp_lower T hT).trans hdlo
  · ring

/-- The kernel is exactly the remaining outer pairing of the original signed average. -/
theorem integratedTypeTwo_eq_outer (T : ℝ) (hT : 1 ≤ T) :
    integratedTypeTwo T =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
        ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius d : ℝ) *
          integratedKernel T m d := by
  rw [integratedTypeTwo_eq_rectangle T hT]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro d _
  rw [integratedKernel, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring


/-- Prime divisor atoms retain their negative sign after the exact q,2q pairing. -/
theorem paired_prime_atom_upper (T : ℝ) (m q : ℕ) (hT : 20 ≤ T) (hq : q.Prime)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hqlo : Real.exp (T-1/4) ≤ (q:ℝ)) (hqhi : (q:ℝ) ≤ Real.exp (T-1/8)) :
    ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius q : ℝ) *
      (integratedKernel T m q - integratedKernel T m (2*q)) ≤
      -(ArithmeticFunction.vonMangoldt m *
        (T^8/(23592960 * Real.sqrt ((m*q : ℕ) : ℝ)))) := by
  have h := mul_le_mul_of_nonneg_left (paired_interval_lower T m q hT hmlo hmhi hqlo hqhi)
    (ArithmeticFunction.vonMangoldt_nonneg (n := m))
  rw [ArithmeticFunction.moebius_apply_prime hq]
  norm_num only [Int.cast_neg, Int.cast_one]
  nlinarith

/-- Three times an odd prime supplies the opposite source sign in the paired outer sum. -/
theorem paired_three_prime_atom_lower (T : ℝ) (m p : ℕ) (hT : 20 ≤ T)
    (hp : p.Prime) (hp3 : p ≠ 3) (hpodd : Odd p)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hqlo : Real.exp (T-1/4) ≤ ((3*p : ℕ) : ℝ))
    (hqhi : ((3*p : ℕ) : ℝ) ≤ Real.exp (T-1/8)) :
    Odd (3*p) ∧
    ArithmeticFunction.vonMangoldt m *
      (T^8/(23592960 * Real.sqrt ((m*(3*p) : ℕ) : ℝ))) ≤
      ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius (3*p) : ℝ) *
        (integratedKernel T m (3*p) - integratedKernel T m (2*(3*p))) := by
  refine ⟨(by decide : Odd (3:ℕ)).mul hpodd, ?_⟩
  have hmu : ArithmeticFunction.moebius (3*p) = 1 := by
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      ((Nat.coprime_primes Nat.prime_three hp).2 (Ne.symm hp3)),
      ArithmeticFunction.moebius_apply_prime Nat.prime_three,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  rw [hmu, Int.cast_one, mul_one]
  exact mul_le_mul_of_nonneg_left (paired_interval_lower T m (3*p) hT hmlo hmhi hqlo hqhi)
    (ArithmeticFunction.vonMangoldt_nonneg (n := m))

end
end EstimatePairedStrip
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
