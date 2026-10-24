# Complete source: GRWTSK.Algebra.CommutativeAlgebra.ThetaPolynomialGraphCore.Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · SHA-256 `b927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ThetaMomentDeterminacy
import ThetaMultiplicationAdapter
import FormalResearch.RiemannHypothesis.ThetaMultiplicationResolvent
import Mathlib.MeasureTheory.Function.AEEqOfLIntegral
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule

set_option autoImplicit false

/-!
# Actual theta weighted polynomial density and graph core

Review-only source over the recorded PR151 theta-tail dependencies. Exponential
integrability of the two annihilator density measures is proved internally.
The actual all-degree complex polynomial span is dense in weighted L² and is a
literal graph core. Its restriction closes to the checked maximal self-adjoint
multiplication operator. This does not construct an orthogonal polynomial basis,
a Jacobi coefficient sequence, a unitary Jacobi transport, or an RH estimate.
The earlier mass adapter keeps the original constant vector at norm √m₀ and
restores it exactly from the normalized vector; no measure normalization is made.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPolynomialGraphCore

open MeasureTheory Set Filter Polynomial ProbabilityTheory
open scoped Topology InnerProductSpace
open ThetaMomentMeasure ThetaMomentDeterminacy ThetaMultiplicationDomain ThetaMultiplicationAdapter
open ThetaMultiplicationResolvent

noncomputable section

private theorem posPart_memLp {σ : Measure ℝ} {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 σ) : MemLp (fun x => max (f x) 0) 2 σ := by
  apply hf2.of_le_mul (c := 1) (hf.max measurable_const).aestronglyMeasurable
  filter_upwards [] with x
  rw [one_mul, Real.norm_eq_abs, abs_of_nonneg (le_max_right _ _), Real.norm_eq_abs]
  exact max_le (le_abs_self _) (abs_nonneg _)

/-- An L² real annihilator of all power moments vanishes. The finite positive
and negative density measures acquire their transform domain by Hölder. -/
theorem real_annihilator_eq_zero_ae (σ : Measure ℝ) [IsFiniteMeasure σ]
    (hexp : Integrable (fun x : ℝ => Real.exp |x|) σ)
    (hpow : ∀ n : ℕ, MemLp (fun x : ℝ => x ^ n) 2 σ)
    (f : ℝ → ℝ) (hf : Measurable f) (hf2 : MemLp f 2 σ)
    (hann : ∀ n : ℕ, (∫ x, f x * x ^ n ∂σ) = 0) : f =ᵐ[σ] 0 := by
  let a : ℝ → ℝ := fun x => max (f x) 0
  let b : ℝ → ℝ := fun x => max (-f x) 0
  have ha : Measurable a := hf.max measurable_const
  have hb : Measurable b := hf.neg.max measurable_const
  have ha2 : MemLp a 2 σ := posPart_memLp hf hf2
  have hb2 : MemLp b 2 σ := posPart_memLp hf.neg hf2.neg
  have hanonneg (x : ℝ) : 0 ≤ a x := le_max_right _ _
  have hbnonneg (x : ℝ) : 0 ≤ b x := le_max_right _ _
  let νa := σ.withDensity (fun x => ENNReal.ofReal (a x))
  let νb := σ.withDensity (fun x => ENNReal.ofReal (b x))
  have hνa : IsFiniteMeasure νa := isFiniteMeasure_withDensity
    ((lintegral_ofReal_ne_top_iff_integrable ha.aestronglyMeasurable
      (Eventually.of_forall hanonneg)).mpr (ha2.integrable (by norm_num)))
  have hνb : IsFiniteMeasure νb := isFiniteMeasure_withDensity
    ((lintegral_ofReal_ne_top_iff_integrable hb.aestronglyMeasurable
      (Eventually.of_forall hbnonneg)).mpr (hb2.integrable (by norm_num)))
  have he2 : MemLp (fun x : ℝ => Real.exp (|x| / 2)) 2 σ := by
    apply (memLp_two_iff_integrable_sq (Real.continuous_exp.comp
      (continuous_abs.div_const 2)).aestronglyMeasurable).mpr
    apply hexp.congr
    filter_upwards [] with x
    change Real.exp |x| = Real.exp (|x| / 2) ^ 2
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hea : Integrable (fun x : ℝ => Real.exp (|x| / 2)) νa := by
    rw [integrable_withDensity_iff_integrable_smul' ha.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hanonneg _), smul_eq_mul]
    exact (ha2.integrable_mul he2).congr (Eventually.of_forall fun _ => rfl)
  have heb : Integrable (fun x : ℝ => Real.exp (|x| / 2)) νb := by
    rw [integrable_withDensity_iff_integrable_smul' hb.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hbnonneg _), smul_eq_mul]
    exact (hb2.integrable_mul he2).congr (Eventually.of_forall fun _ => rfl)
  have hmom (n : ℕ) : (∫ x : ℝ, x ^ n ∂νa) = ∫ x : ℝ, x ^ n ∂νb := by
    rw [integral_withDensity_eq_integral_toReal_smul ha.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top)),
      integral_withDensity_eq_integral_toReal_smul hb.ennreal_ofReal
        (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hanonneg _), ENNReal.toReal_ofReal (hbnonneg _), smul_eq_mul]
    apply sub_eq_zero.mp
    have hpa : Integrable (fun x => a x * x ^ n) σ := by
      exact (ha2.integrable_mul (hpow n)).congr (Eventually.of_forall fun _ => rfl)
    have hpb : Integrable (fun x => b x * x ^ n) σ := by
      exact (hb2.integrable_mul (hpow n)).congr (Eventually.of_forall fun _ => rfl)
    rw [← integral_sub hpa hpb]
    calc
      _ = ∫ x, f x * x ^ n ∂σ := by
        apply integral_congr_ae
        filter_upwards [] with x
        rw [← sub_mul]
        congr 1
        exact max_zero_sub_max_neg_zero_eq_self (f x)
      _ = 0 := hann n
  have heq : νa = νb := measure_eq_of_moments_of_exp_abs_half νa νb hea heb hmom
  have hd := (withDensity_eq_iff_of_sigmaFinite ha.ennreal_ofReal.aemeasurable
    hb.ennreal_ofReal.aemeasurable).mp heq
  filter_upwards [hd] with x hx
  have hmax : a x = b x := by
    have h := congrArg ENNReal.toReal hx
    simpa only [ENNReal.toReal_ofReal (hanonneg x), ENNReal.toReal_ofReal (hbnonneg x)] using h
  change f x = 0
  have hab := max_zero_sub_max_neg_zero_eq_self (f x)
  change a x - b x = f x at hab
  rw [hmax, sub_self] at hab
  exact hab.symm

/-- The actual graph-weighted theta measure, without normalizing its mass. -/
abbrev thetaGraphMeasure (t : ℝ) : Measure ℝ := graphMeasure (momentMeasure t)

/-- The elementary weighted exponential majorant, on the actual nonnegative support. -/
theorem weighted_exp_bound {x : ℝ} (hx : 0 ≤ x) :
    (1 + x ^ 2) * Real.exp |x| ≤ 3 * Real.exp (2 * x) := by
  rw [abs_of_nonneg hx]
  have h0 := Real.one_le_exp hx
  have h2 := Real.pow_div_factorial_le_exp x hx 2
  norm_num at h2
  have h := mul_le_mul_of_nonneg_right (show 1 + x ^ 2 ≤ 3 * Real.exp x by linarith)
    (Real.exp_pos x).le
  calc
    _ ≤ (3 * Real.exp x) * Real.exp x := h
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- The weighted measure has the exponential moment needed for both signed
annihilator densities; this is derived from the actual theta decay bound. -/
theorem thetaGraphMeasure_exp_abs_integrable {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x : ℝ => Real.exp |x|) (thetaGraphMeasure t) := by
  rw [thetaGraphMeasure, graphMeasure, integrable_withDensity_iff_integrable_smul'
    (by fun_prop) (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  simp only [smul_eq_mul]
  apply ((exponential_integrable 2 (by norm_num) ht).const_mul 3).mono'
  · fun_prop
  · filter_upwards [momentMeasure_nonnegative_ae t] with x hx
    rw [ENNReal.toReal_ofReal (by positivity : 0 ≤ 1 + x ^ 2)]
    rw [Real.norm_of_nonneg (by positivity : 0 ≤ (1 + x ^ 2) * Real.exp |x|)]
    exact weighted_exp_bound hx

/-- Finite weighted mass is proved before invoking finite-measure uniqueness. -/
theorem thetaGraphMeasure_finite {t : ℝ} (ht : 0 ≤ t) :
    IsFiniteMeasure (thetaGraphMeasure t) := by
  apply (integrable_const_iff_isFiniteMeasure (by norm_num : (1 : ℝ) ≠ 0)).mp
  apply (thetaGraphMeasure_exp_abs_integrable ht).mono' (f := fun _ : ℝ => (1 : ℝ)) aestronglyMeasurable_const
  filter_upwards [] with x
  rw [norm_one]
  exact Real.one_le_exp (abs_nonneg x)

/-- Every actual power belongs to weighted L², reusing checked graph membership. -/
theorem thetaGraphMeasure_power_memLp (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    MemLp (fun x : ℝ => x ^ n) 2 (thetaGraphMeasure t) := by
  apply (polynomialVector_graph_memLp (Polynomial.X ^ n) ht).re.ae_eq
  filter_upwards [(graphMeasure_absolutelyContinuous (momentMeasure t)).ae_eq
    (polynomialVector_ae (Polynomial.X ^ n) ht)] with x hx
  rw [hx]
  simp [-Complex.ofReal_pow]

/-- Complex L² annihilators vanish by applying the checked real uniqueness
argument separately to their real and imaginary parts. -/
theorem complex_annihilator_eq_zero (σ : Measure ℝ) [IsFiniteMeasure σ]
    (hexp : Integrable (fun x : ℝ => Real.exp |x|) σ)
    (hpow : ∀ n : ℕ, MemLp (fun x : ℝ => x ^ n) 2 σ)
    (f : Lp ℂ 2 σ)
    (hann : ∀ n : ℕ, (∫ x, ((x ^ n : ℝ) : ℂ) * f x ∂σ) = 0) : f = 0 := by
  have hint (n : ℕ) : Integrable (fun x => ((x ^ n : ℝ) : ℂ) * f x) σ :=
    ((hpow n).ofReal.integrable_mul (Lp.memLp f)).congr (Eventually.of_forall fun _ => rfl)
  have hr : (fun x => (f x).re) =ᵐ[σ] 0 :=
    real_annihilator_eq_zero_ae σ hexp hpow (fun x => (f x).re)
      (Complex.measurable_re.comp (Lp.stronglyMeasurable f).measurable) (Lp.memLp f).re (by
        intro n
        have h := congrArg (RCLike.re : ℂ → ℝ) (hann n)
        rw [← integral_re (hint n)] at h
        change (∫ x, (((x ^ n : ℝ) : ℂ) * f x).re ∂σ) = 0 at h
        simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
          zero_mul, sub_zero, Complex.zero_re, mul_comm] using h)
  have hi : (fun x => (f x).im) =ᵐ[σ] 0 :=
    real_annihilator_eq_zero_ae σ hexp hpow (fun x => (f x).im)
      (Complex.measurable_im.comp (Lp.stronglyMeasurable f).measurable) (Lp.memLp f).im (by
        intro n
        have h := congrArg (RCLike.im : ℂ → ℝ) (hann n)
        rw [← integral_im (hint n)] at h
        change (∫ x, (((x ^ n : ℝ) : ℂ) * f x).im ∂σ) = 0 at h
        simpa only [Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
          zero_mul, add_zero, Complex.zero_im, mul_comm] using h)
  apply Lp.ext
  filter_upwards [hr, hi, Lp.coeFn_zero ℂ 2 σ] with x hx hy hz
  rw [hz]
  apply Complex.ext
  · simpa only [Pi.zero_apply, Complex.zero_re] using hx
  · simpa only [Pi.zero_apply, Complex.zero_im] using hy

/-- The exact weighted monomial L² vector. -/
def weightedPowerVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : Lp ℂ 2 (thetaGraphMeasure t) :=
  ((thetaGraphMeasure_power_memLp n ht).ofReal :
    MemLp (fun x : ℝ => ((x ^ n : ℝ) : ℂ)) 2 (thetaGraphMeasure t)).toLp _

/-- The vector retains the literal complex monomial representative. -/
theorem weightedPowerVector_ae (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    weightedPowerVector t ht n =ᵐ[thetaGraphMeasure t] fun x : ℝ => ((x ^ n : ℝ) : ℂ) :=
  MemLp.coeFn_toLp (thetaGraphMeasure_power_memLp n ht).ofReal

/-- Complex coefficient combinations of monomials, with all degrees allowed. -/
def weightedPolynomialSpan (t : ℝ) (ht : 0 ≤ t) : Submodule ℂ (Lp ℂ 2 (thetaGraphMeasure t)) :=
  Submodule.span ℂ (Set.range (weightedPowerVector t ht))

/-- Complex polynomial vectors are dense in the actual graph-weighted L²
space. No polynomial-density premise or finite-degree cutoff is assumed. -/
theorem weightedPolynomialSpan_dense {t : ℝ} (ht : 0 ≤ t) :
    Dense (weightedPolynomialSpan t ht : Set (Lp ℂ 2 (thetaGraphMeasure t))) := by
  have : IsFiniteMeasure (thetaGraphMeasure t) := thetaGraphMeasure_finite ht
  rw [Submodule.dense_iff_topologicalClosure_eq_top, Submodule.topologicalClosure_eq_top_iff]
  apply (Submodule.eq_bot_iff _).mpr
  intro f hf
  apply complex_annihilator_eq_zero (thetaGraphMeasure t)
    (thetaGraphMeasure_exp_abs_integrable ht) (fun n => thetaGraphMeasure_power_memLp n ht) f
  intro n
  have hinner : ⟪weightedPowerVector t ht n, f⟫_ℂ = 0 :=
    (Submodule.mem_orthogonal _ _).mp hf _ (Submodule.subset_span ⟨n, rfl⟩)
  rw [L2.inner_def] at hinner
  calc
    _ = ∫ x, ⟪weightedPowerVector t ht n x, f x⟫_ℂ ∂thetaGraphMeasure t := by
      apply integral_congr_ae
      filter_upwards [weightedPowerVector_ae n ht] with x hx
      rw [hx]
      simp [RCLike.inner_apply, mul_comm]
    _ = 0 := hinner


/-- The same maximal-domain vector, viewed in its exact graph-weighted L² space. -/
def graphEmbedding (μ : Measure ℝ) :
    coordinateDomain μ →ₗ[ℂ] Lp ℂ 2 (graphMeasure μ) where
  toFun := fun f => ((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property).toLp f.val
  map_add' := by
    intro f g
    apply Lp.ext
    filter_upwards [MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ (f + g).val).mp
      (f + g).property),
      MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property),
      MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ g.val).mp g.property),
      (graphMeasure_absolutelyContinuous μ).ae_eq (Lp.coeFn_add f.val g.val),
      Lp.coeFn_add
        (((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property).toLp f.val)
        (((mem_coordinateDomain_iff_graph_memLp μ g.val).mp g.property).toLp g.val)] with x hfg hf hg ha hb
    simp only [Submodule.coe_add] at hfg ⊢
    rw [hfg, hb]
    simp only [Pi.add_apply]
    rw [hf, hg]
    exact ha
  map_smul' := by
    intro c f
    apply Lp.ext
    filter_upwards [MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ (c • f).val).mp
      (c • f).property),
      MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property),
      (graphMeasure_absolutelyContinuous μ).ae_eq (Lp.coeFn_smul c f.val),
      Lp.coeFn_smul c
        (((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property).toLp f.val)] with x hcf hf ha hb
    simp only [Submodule.coe_smul, RingHom.id_apply] at hcf ⊢
    rw [hcf, hb]
    simp only [Pi.smul_apply]
    rw [hf]
    exact ha

/-- Graph transport keeps the original representative almost everywhere. -/
theorem graphEmbedding_ae (μ : Measure ℝ) (f : coordinateDomain μ) :
    graphEmbedding μ f =ᵐ[graphMeasure μ] f.val :=
  MemLp.coeFn_toLp ((mem_coordinateDomain_iff_graph_memLp μ f.val).mp f.property)

/-- The exact Hilbert graph norm is the weighted L² norm, including both summands. -/
theorem graphEmbedding_norm_sq (μ : Measure ℝ) (f : coordinateDomain μ) :
    ‖graphEmbedding μ f‖ ^ 2 = ‖f.val‖ ^ 2 + ‖coordinateMultiplication μ f‖ ^ 2 := by
  rw [norm_sq_eq_integral, graph_norm_sq_eq_weighted_integral]
  calc
    _ = ∫ x, ‖f.val x‖ ^ 2 ∂graphMeasure μ := by
      apply integral_congr_ae
      filter_upwards [graphEmbedding_ae μ f] with x hx
      rw [hx]
    _ = _ := by
      rw [graphMeasure, integral_withDensity_eq_integral_toReal_smul (by fun_prop)
        (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
      apply integral_congr_ae
      filter_upwards [] with x
      rw [ENNReal.toReal_ofReal (by positivity : 0 ≤ 1 + x ^ 2), smul_eq_mul]

/-- Actual polynomial-domain vectors with arbitrary complex coefficients. -/
def domainPolynomialSpan (t : ℝ) (ht : 0 ≤ t) :
    Submodule ℂ (coordinateDomain (momentMeasure t)) :=
  Submodule.span ℂ (Set.range (fun n => polynomialDomainVector t ht (Polynomial.X ^ n)))

/-- The actual domain monomial transports to the same weighted monomial. -/
theorem graphEmbedding_power (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    graphEmbedding (momentMeasure t) (polynomialDomainVector t ht (Polynomial.X ^ n)) =
      weightedPowerVector t ht n := by
  apply Lp.ext
  filter_upwards [graphEmbedding_ae (momentMeasure t)
      (polynomialDomainVector t ht (Polynomial.X ^ n)),
    (graphMeasure_absolutelyContinuous (momentMeasure t)).ae_eq
      (polynomialVector_ae (Polynomial.X ^ n) ht), weightedPowerVector_ae n ht] with x he hp hw
  rw [he, hw]
  change polynomialVector t ht (Polynomial.X ^ n) x = _
  rw [hp]
  simp [-Complex.ofReal_pow]

/-- The graph image is exactly the weighted polynomial span. -/
theorem graphEmbedding_polynomialSpan {t : ℝ} (ht : 0 ≤ t) :
    (domainPolynomialSpan t ht).map (graphEmbedding (momentMeasure t)) =
      weightedPolynomialSpan t ht := by
  rw [domainPolynomialSpan, Submodule.map_span, weightedPolynomialSpan]
  congr 1
  ext f
  simp only [Set.mem_image, Set.mem_range]
  constructor
  · rintro ⟨g, ⟨n, rfl⟩, rfl⟩
    exact ⟨n, (graphEmbedding_power n ht).symm⟩
  · rintro ⟨n, rfl⟩
    exact ⟨_, ⟨n, rfl⟩, graphEmbedding_power n ht⟩

/-- Every domain vector is approximated by actual complex polynomial vectors
simultaneously in the vector and multiplication norms. -/
theorem polynomial_graph_approximation {t : ℝ} (ht : 0 ≤ t)
    (f : coordinateDomain (momentMeasure t)) {ε : ℝ} (hε : 0 < ε) :
    ∃ q : coordinateDomain (momentMeasure t), q ∈ domainPolynomialSpan t ht ∧
      ‖f.val - q.val‖ < ε ∧
      ‖coordinateMultiplication (momentMeasure t) f -
        coordinateMultiplication (momentMeasure t) q‖ < ε := by
  obtain ⟨v, hv, hdist⟩ := (weightedPolynomialSpan_dense ht).exists_dist_lt
    (graphEmbedding (momentMeasure t) f) hε
  rw [← graphEmbedding_polynomialSpan ht] at hv
  obtain ⟨q, hq, rfl⟩ := hv
  have hn := graphEmbedding_norm_sq (momentMeasure t) (f - q)
  let M : coordinateDomain (momentMeasure t) →ₗ[ℂ] Lp ℂ 2 (momentMeasure t) :=
    (coordinateMultiplication (momentMeasure t)).toFun
  change ‖graphEmbedding (momentMeasure t) (f - q)‖ ^ 2 =
    ‖(f - q).val‖ ^ 2 + ‖M (f - q)‖ ^ 2 at hn
  rw [M.map_sub] at hn
  simp only [map_sub, Submodule.coe_sub] at hn
  rw [dist_eq_norm] at hdist
  have hnorm : ‖graphEmbedding (momentMeasure t) f - graphEmbedding (momentMeasure t) q‖ < ε :=
    by simpa only [norm_sub_rev] using hdist
  have hs : ‖graphEmbedding (momentMeasure t) f - graphEmbedding (momentMeasure t) q‖ ^ 2 < ε ^ 2 :=
    (sq_lt_sq₀ (norm_nonneg _) hε.le).mpr hnorm
  refine ⟨q, hq, ?_, ?_⟩
  · nlinarith [sq_nonneg ‖M f - M q‖, norm_nonneg (f.val - q.val)]
  · change ‖M f - M q‖ < ε
    nlinarith [sq_nonneg ‖f.val - q.val‖, norm_nonneg (M f - M q)]


/-- The actual all-degree complex polynomial submodule of the original L² space. -/
def polynomialCore (t : ℝ) (ht : 0 ≤ t) : Submodule ℂ (Lp ℂ 2 (momentMeasure t)) :=
  (domainPolynomialSpan t ht).map (coordinateDomain (momentMeasure t)).subtype

/-- Every core vector is in the exact maximal multiplication domain. -/
theorem polynomialCore_le_domain {t : ℝ} (ht : 0 ≤ t) :
    polynomialCore t ht ≤ (coordinateMultiplication (momentMeasure t)).domain := by
  rintro f ⟨q, _, rfl⟩
  exact q.property

/-- Polynomial restriction has exactly the full maximal graph as its graph closure. -/
theorem polynomialCore_graph_closure {t : ℝ} (ht : 0 ≤ t) :
    ((coordinateMultiplication (momentMeasure t)).domRestrict (polynomialCore t ht)).graph.topologicalClosure =
      (coordinateMultiplication (momentMeasure t)).graph := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  have hc := coordinateMultiplication_isClosed (momentMeasure t)
  apply le_antisymm
  · exact Submodule.topologicalClosure_minimal _
      (LinearPMap.le_graph_of_le LinearPMap.domRestrict_le) hc
  · intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change (f.val, coordinateMultiplication (momentMeasure t) f) ∈
      closure (((coordinateMultiplication (momentMeasure t)).domRestrict
        (polynomialCore t ht)).graph : Set _)
    rw [Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨q, hq, hv, hm⟩ := polynomial_graph_approximation ht f hε
    refine ⟨(q.val, coordinateMultiplication (momentMeasure t) q), ?_, ?_⟩
    · apply (LinearPMap.mem_graph_iff' _).mpr
      refine ⟨⟨q.val, ⟨?_, q.property⟩⟩, ?_⟩
      · exact ⟨q, hq, rfl⟩
      · rfl
    · rw [Prod.dist_eq, max_lt_iff]
      exact ⟨by simpa only [dist_eq_norm] using hv,
        by simpa only [dist_eq_norm] using hm⟩

/-- Actual complex polynomials form a core in the literal partially defined
operator API; closing their restriction recovers maximal multiplication. -/
theorem coordinateMultiplication_polynomial_hasCore {t : ℝ} (ht : 0 ≤ t) :
    (coordinateMultiplication (momentMeasure t)).HasCore (polynomialCore t ht) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  refine ⟨polynomialCore_le_domain ht, ?_⟩
  apply LinearPMap.eq_of_eq_graph
  have hle : (coordinateMultiplication (momentMeasure t)).domRestrict (polynomialCore t ht) ≤
      coordinateMultiplication (momentMeasure t) := LinearPMap.domRestrict_le
  have hc := (coordinateMultiplication_isClosed (momentMeasure t)).isClosable.leIsClosable hle
  rw [← hc.graph_closure_eq_closure_graph]
  exact polynomialCore_graph_closure ht


/-- The actual theta measure has the checked maximal self-adjoint coordinate
operator. Original and normalized pointed vectors retain the prior mass adapter. -/
theorem theta_coordinateMultiplication_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint (coordinateMultiplication (momentMeasure t)) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  exact coordinateMultiplication_isSelfAdjoint (momentMeasure t)

/-- The all-degree complex polynomial restriction is essentially self-adjoint:
its actual operator closure is self-adjoint, with no closure premise. -/
theorem theta_polynomialRestriction_closure_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint ((coordinateMultiplication (momentMeasure t)).domRestrict
      (polynomialCore t ht)).closure := by
  rw [(coordinateMultiplication_polynomial_hasCore ht).closure_eq]
  exact theta_coordinateMultiplication_isSelfAdjoint ht


/-- The core is exactly the complex linear span of the actual power vectors. -/
theorem polynomialCore_eq_span_powers {t : ℝ} (ht : 0 ≤ t) :
    polynomialCore t ht = Submodule.span ℂ (Set.range (powerVector t ht)) := by
  rw [polynomialCore, domainPolynomialSpan, Submodule.map_span, ← Set.range_comp]
  rfl

/-- Actual complex polynomials are also dense in the original L² space; graph
approximation and the proved maximal-domain density supply the implication. -/
theorem polynomialCore_dense {t : ℝ} (ht : 0 ≤ t) :
    Dense (polynomialCore t ht : Set (Lp ℂ 2 (momentMeasure t))) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  have hdom : coordinateDomain (momentMeasure t) ≤ (polynomialCore t ht).topologicalClosure := by
    intro f hf
    change f ∈ closure (polynomialCore t ht : Set _)
    rw [Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨q, hq, hv, _⟩ := polynomial_graph_approximation ht ⟨f, hf⟩ hε
    exact ⟨q.val, ⟨q, hq, rfl⟩, by simpa only [dist_eq_norm] using hv⟩
  rw [Submodule.dense_iff_topologicalClosure_eq_top]
  apply le_antisymm le_top
  rw [← (Submodule.dense_iff_topologicalClosure_eq_top).mp
    (coordinateDomain_dense (momentMeasure t))]
  exact Submodule.topologicalClosure_minimal _ hdom
    (polynomialCore t ht).isClosed_topologicalClosure

end
end FormalResearch.RiemannHypothesis.ThetaPolynomialGraphCore
```
