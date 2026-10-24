# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RealTailKernel.Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7` · SHA-256 `0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate

/-!
An ignored research packet for issue #317.  This extends the existing genuine
source kernel from cutoff one to an arbitrary real cutoff R >= 1.  It does not
assert a growth witness, an infinite zero-sum exchange, or a Landau conclusion.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Research.RealTailKernel

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Kernel
open FormalResearch.RiemannHypothesis.Laplace.InitialFormula
open FormalResearch.RiemannHypothesis.Laplace.Expansion
open FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open Polynomial

noncomputable section

/-- The continued tail kernel with its literal real cutoff. -/
def tailKernel (k : ℕ) (R : ℝ) (w : ℂ) : ℂ :=
  Complex.exp (-(R : ℂ) * w) * kernelNumerator k ((R : ℂ) * w) /
    w ^ (k + 1)

/-- The exact descending-factorial formula requested in #317. -/
def tailFormula (k : ℕ) (R : ℝ) (w : ℂ) : ℂ :=
  Complex.exp (-(R : ℂ) * w) *
    ∑ j ∈ Finset.range (k + 1),
      (k.factorial : ℂ) * (R : ℂ) ^ (k - j) /
        ((k - j).factorial * w ^ (j + 1))

theorem actual_tail_integrable
    (k : ℕ) (R : ℝ) (hR : 1 ≤ R) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi R) := by
  exact (kernelIntegrand_integrable k w hw).mono_set (Ioi_subset_Ioi hR)

theorem kernelIntegrand_scale (k : ℕ) (R A : ℝ) (w : ℂ) :
    kernelIntegrand k w (R * A) =
      (R : ℂ) ^ k * kernelIntegrand k ((R : ℂ) * w) A := by
  simp only [kernelIntegrand, Complex.ofReal_mul, mul_pow]
  have he : -w * ((R : ℂ) * A) = -((R : ℂ) * w) * A := by ring
  rw [he]
  ring

theorem tailKernel_eq_scaled
    (k : ℕ) (R : ℝ) (hR : 0 < R) (w : ℂ) :
    tailKernel k R w =
      (R : ℂ) ^ (k + 1) * laplaceKernel k ((R : ℂ) * w) := by
  have hRc : (R : ℂ) ≠ 0 := by exact_mod_cast hR.ne'
  simp only [tailKernel, laplaceKernel, mul_pow]
  field_simp

/-- The cutoff change is applied to the actual integral, rather than to a
formally defined residual. -/
theorem actual_tail_integral
    (k : ℕ) (R : ℝ) (hR : 1 ≤ R) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi R, kernelIntegrand k w A) = tailKernel k R w := by
  have hRp : 0 < R := lt_of_lt_of_le zero_lt_one hR
  have hRw : 0 < ((R : ℂ) * w).re := by
    simpa using mul_pos hRp hw
  have hs := integral_comp_mul_left_Ioi' (kernelIntegrand k w) 1 hRp
  simp only [mul_one] at hs
  rw [← hs]
  simp_rw [kernelIntegrand_scale]
  rw [integral_const_mul, integral_eq_laplaceKernel k _ hRw]
  rw [Complex.real_smul, ← mul_assoc, ← pow_succ', tailKernel_eq_scaled k R hRp]

/-- The finite factorial syntax keeps every power of R and every pole order. -/
theorem tailKernel_eq_formula
    (k : ℕ) (R : ℝ) (w : ℂ) (hw : w ≠ 0) :
    tailKernel k R w = tailFormula k R w := by
  rw [tailKernel, kernelNumerator_eq_source_sum, tailFormula,
    mul_div_assoc, Finset.sum_div]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  have hjle : j ≤ k := by
    have hjlt : j < k + 1 := Finset.mem_range.mp hj
    omega
  have hfac : ((Nat.factorial (k - j) : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (k - j)
  rw [mul_pow]
  field_simp [hw, hfac]
  ring_nf
  rw [mul_assoc _ (w ^ (k - j)) (w ^ j), ← pow_add,
    Nat.sub_add_cancel hjle]

/-- Exact real-tail statement, including genuine integrability first. -/
theorem actual_tail_formula
    (k : ℕ) (R : ℝ) (hR : 1 ≤ R) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi R) ∧
      (∫ A in Ioi R, kernelIntegrand k w A) = tailFormula k R w := by
  have hw0 : w ≠ 0 := by intro hz; simp [hz] at hw
  exact ⟨actual_tail_integrable k R hR w hw,
    (actual_tail_integral k R hR w hw).trans (tailKernel_eq_formula k R w hw0)⟩

theorem tailKernel_cleared
    (k : ℕ) (R : ℝ) (w : ℂ) (hw : w ≠ 0) :
    w ^ (k + 1) * tailKernel k R w =
      Complex.exp (-(R : ℂ) * w) * kernelNumerator k ((R : ℂ) * w) := by
  dsimp only [tailKernel]
  field_simp

/-- The principal coefficient is independent of the real cutoff.  The
statement is punctured and therefore does not use totalized division at zero. -/
theorem tailKernel_cleared_tendsto (k : ℕ) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ (k + 1) * tailKernel k R w)
      (𝓝[≠] 0) (𝓝 k.factorial) := by
  have hc : ContinuousAt
      (fun w : ℂ ↦ Complex.exp (-(R : ℂ) * w) *
        kernelNumerator k ((R : ℂ) * w)) 0 := by
    have hkn : ContinuousAt
        (fun w : ℂ ↦ kernelNumerator k ((R : ℂ) * w)) 0 := by
      exact (kernelNumerator_analytic k ((R : ℂ) * 0)).continuousAt.comp
        (continuousAt_const.mul continuousAt_id)
    exact (Complex.continuous_exp.continuousAt.comp
      (continuousAt_const.mul continuousAt_id)).mul
      hkn
  have ht := hc.tendsto.mono_left (nhdsWithin_le_nhds (s := {0}ᶜ))
  simp only [mul_zero, Complex.exp_zero, kernelNumerator_at_zero, one_mul] at ht
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  exact (tailKernel_cleared k R w hw).symm

theorem tailKernel_analytic (k : ℕ) (R : ℝ) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (tailKernel k R) w := by
  exact (((analyticAt_const.mul analyticAt_id).cexp).mul
    ((kernelNumerator_analytic k ((R : ℂ) * w)).comp
      (analyticAt_const.mul analyticAt_id))).div
        (analyticAt_id.pow _) (pow_ne_zero _ hw)

/-- The same degree-eight source polynomials, with only their cutoff changed. -/
def polynomialTailKernel (p : ℂ[X]) (R : ℝ) (w : ℂ) : ℂ :=
  ∑ k ∈ Finset.range 9, p.coeff k * tailKernel k R w

def sourceTailKernel (z : ℂ) (R : ℝ) (s : ℂ) : ℂ :=
  modeCoefficient z *
    (polynomialTailKernel (positivePolynomial z) R (s - 2 * z) +
      polynomialTailKernel (positivePolynomial (-z)) R (s + 2 * z) -
      2 * polynomialTailKernel (mixedPolynomial z) R s)

theorem weightedPolynomial_tail_integrable
    (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (R : ℝ) (hR : 1 ≤ R) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (weightedPolynomial p w) (Ioi R) := by
  exact (weightedPolynomial_integrable p hp w hw).mono_set (Ioi_subset_Ioi hR)

theorem integral_weightedPolynomial_tail
    (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (R : ℝ) (hR : 1 ≤ R) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi R, weightedPolynomial p w A) = polynomialTailKernel p R w := by
  simp_rw [weightedPolynomial_eq_sum p hp]
  rw [integral_finsetSum _ fun k _ ↦
    (actual_tail_integrable k R hR w hw).const_mul (p.coeff k)]
  unfold polynomialTailKernel
  apply Finset.sum_congr rfl
  intro k _
  rw [integral_const_mul, actual_tail_integral k R hR w hw]

/-- Genuine integrability of each actual zero occurrence on every real tail. -/
theorem actual_occurrence_tail_integrable
    (o : ZeroOccurrence) (R : ℝ) (hR : 1 ≤ R) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) *
      expandedSummand A (shiftedValue o)) (Ioi R) := by
  exact (occurrence_integrable o s hs).mono_set (Ioi_subset_Ioi hR)

/-- Literal transport of one complete actual source occurrence: neither
exponential sign nor its mixed compensation term is dropped. -/
theorem actual_occurrence_tail_integral
    (o : ZeroOccurrence) (R : ℝ) (hR : 1 ≤ R) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi R, Complex.exp (-s * A) * expandedSummand A (shiftedValue o)) =
      sourceTailKernel (shiftedValue o) R s := by
  let z := shiftedValue o
  have hz := shiftedValue_strip o
  have hminus : 0 < (s - 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  have hp := weightedPolynomial_tail_integrable _
    (positivePolynomial_natDegree_le z) R hR _ hminus
  have hn := weightedPolynomial_tail_integrable _
    (positivePolynomial_natDegree_le (-z)) R hR _ hplus
  have hm := weightedPolynomial_tail_integrable _
    (mixedPolynomial_natDegree_le z) R hR _ hs0
  change (∫ A in Ioi R, Complex.exp (-s * A) * expandedSummand A z) =
    sourceTailKernel z R s
  simp_rw [weighted_expandedSummand_eq z s]
  have hpn : IntegrableOn (fun A ↦
      weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
      weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A) (Ioi R) := hp.add hn
  rw [integral_const_mul, integral_sub hpn (hm.const_mul 2),
    integral_add hp hn, integral_const_mul]
  rw [integral_weightedPolynomial_tail _ (positivePolynomial_natDegree_le z) R hR _ hminus,
    integral_weightedPolynomial_tail _ (positivePolynomial_natDegree_le (-z)) R hR _ hplus,
    integral_weightedPolynomial_tail _ (mixedPolynomial_natDegree_le z) R hR _ hs0]
  rfl

theorem tailKernel_lower_cleared_tendsto (k n : ℕ) (hkn : k < n) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ (n + 1) * tailKernel k R w)
      (𝓝[≠] 0) (𝓝 0) := by
  have hp : Tendsto (fun w : ℂ ↦ w ^ (n - k)) (𝓝[≠] 0) (𝓝 0) := by
    have hid : Tendsto (fun w : ℂ ↦ w) (𝓝[≠] 0) (𝓝 0) :=
      continuousAt_id.tendsto.mono_left nhdsWithin_le_nhds
    simpa only [zero_pow (Nat.sub_ne_zero_of_lt hkn)] using hid.pow (n - k)
  have ht := hp.mul (tailKernel_cleared_tendsto k R)
  simp only [zero_mul] at ht
  convert ht using 1
  funext w
  rw [← mul_assoc, ← pow_add]
  congr 2
  omega

theorem polynomialTailKernel_cleared_tendsto (p : ℂ[X]) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 * polynomialTailKernel p R w)
      (𝓝[≠] 0) (𝓝 (p.coeff 8 * (Nat.factorial 8 : ℂ))) := by
  have hl : ∀ k ∈ Finset.range 8,
      Tendsto (fun w : ℂ ↦ p.coeff k * (w ^ 9 * tailKernel k R w))
        (𝓝[≠] 0) (𝓝 0) := by
    intro k hk
    simpa only [mul_zero] using
      (tailKernel_lower_cleared_tendsto k 8 (Finset.mem_range.mp hk) R).const_mul (p.coeff k)
  have hsum := tendsto_finsetSum (Finset.range 8) hl
  simp only [Finset.sum_const_zero] at hsum
  have ht := hsum.add ((tailKernel_cleared_tendsto 8 R).const_mul (p.coeff 8))
  simp only [zero_add] at ht
  convert ht using 1
  funext w
  unfold polynomialTailKernel
  rw [Finset.sum_range_succ, mul_add, Finset.mul_sum]
  congr 1
  · apply Finset.sum_congr rfl
    intro k _
    ring
  · ring

theorem polynomialTailKernel_analytic (p : ℂ[X]) (R : ℝ) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (polynomialTailKernel p R) w := by
  exact Finset.analyticAt_fun_sum _ (fun k _ ↦
    analyticAt_const.mul (tailKernel_analytic k R w hw))

theorem sourceTailKernel_neg (z : ℂ) (R : ℝ) (s : ℂ) :
    sourceTailKernel (-z) R s = sourceTailKernel z R s := by
  simp only [sourceTailKernel, modeCoefficient_neg, neg_neg, mixedPolynomial_neg,
    mul_neg, sub_neg_eq_add, ← sub_eq_add_neg]
  ring

theorem sourceTailKernel_local_cleared_tendsto
    (z : ℂ) (hz : z ≠ 0) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 * sourceTailKernel z R (2 * z + w))
      (𝓝[≠] 0) (𝓝 (modeCoefficient z * z ^ 8 * (Nat.factorial 8 : ℂ))) := by
  have hfour : (0 : ℂ) + 4 * z ≠ 0 := by
    simpa using mul_ne_zero (by norm_num : (4 : ℂ) ≠ 0) hz
  have htwo : (0 : ℂ) + 2 * z ≠ 0 := by
    simpa using mul_ne_zero (by norm_num : (2 : ℂ) ≠ 0) hz
  have ha : AnalyticAt ℂ (fun w : ℂ ↦
      polynomialTailKernel (positivePolynomial (-z)) R (w + 4 * z) -
      2 * polynomialTailKernel (mixedPolynomial z) R (w + 2 * z)) 0 :=
    ((polynomialTailKernel_analytic _ R _ hfour).comp
      (f := fun w : ℂ ↦ w + 4 * z) (x := 0) (analyticAt_id.add analyticAt_const)).sub
      (analyticAt_const.mul ((polynomialTailKernel_analytic _ R _ htwo).comp
        (f := fun w : ℂ ↦ w + 2 * z) (x := 0) (analyticAt_id.add analyticAt_const)))
  have ht := ninth_order_limit_add_continuous
    (by simpa only [sub_zero, positivePolynomial_coeff_eight] using
      polynomialTailKernel_cleared_tendsto (positivePolynomial z) R) ha.continuousAt
  have hm := ht.const_mul (modeCoefficient z)
  simp only [← mul_assoc] at hm
  convert hm using 1
  funext w
  unfold sourceTailKernel
  rw [show 2 * z + w - 2 * z = w by ring,
    show 2 * z + w + 2 * z = w + 4 * z by ring,
    show 2 * z + w = w + 2 * z by ring]
  ring

/-- The finite reflected multiplicity contribution has the exact historical
coefficient, for every real cutoff; this is not an infinite-sum pole theorem. -/
theorem reflected_multiplicity_tail_coefficient
    (m : ℕ) (z : ℂ) (hz : z ≠ 0) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 *
      ((m : ℂ) * sourceTailKernel z R (2 * z + w) +
        (m : ℂ) * sourceTailKernel (-z) R (2 * z + w)))
      (𝓝[≠] 0) (𝓝 (principalCoefficient m z)) := by
  have ht := (sourceTailKernel_local_cleared_tendsto z hz R).const_mul (2 * (m : ℂ))
  simp only [← mul_assoc] at ht
  rw [← principalCoefficient_eq m z hz]
  convert ht using 1
  funext w
  rw [sourceTailKernel_neg]
  ring

/-- The actual zero-point multiplicity is used, with its historical nonzero
coefficient theorem. No zero is selected numerically or assumed simple. -/
theorem actual_reflected_point_tail_coefficient (p : ZeroPoint) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 *
      ((multiplicity p : ℂ) * sourceTailKernel (p.val - 1 / 2) R
          (2 * (p.val - 1 / 2) + w) +
        (multiplicity p : ℂ) * sourceTailKernel (-(p.val - 1 / 2)) R
          (2 * (p.val - 1 / 2) + w)))
      (𝓝[≠] 0) (𝓝 (pointPairPrincipalCoefficient p)) ∧
        pointPairPrincipalCoefficient p ≠ 0 := by
  let o : ZeroOccurrence := ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have hz : p.val - 1 / 2 ≠ 0 := by
    simpa only [shiftedValue, o] using shifted_value_ne_zero o
  exact ⟨reflected_multiplicity_tail_coefficient (multiplicity p)
    (p.val - 1 / 2) hz R, point_pair_principal_coefficient_ne_zero p⟩

end
end FormalResearch.RiemannHypothesis.Research.RealTailKernel

#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.kernelIntegrand_scale
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.kernelIntegrand_scale
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_scaled
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_scaled
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integral
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integral
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_formula
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_formula
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_formula
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_formula
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_analytic
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_analytic
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.weightedPolynomial_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.weightedPolynomial_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.integral_weightedPolynomial_tail
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.integral_weightedPolynomial_tail
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integral
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integral
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_lower_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_lower_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_analytic
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_analytic
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_neg
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_neg
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_local_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_local_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.reflected_multiplicity_tail_coefficient
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.reflected_multiplicity_tail_coefficient
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_reflected_point_tail_coefficient
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_reflected_point_tail_coefficient
```
