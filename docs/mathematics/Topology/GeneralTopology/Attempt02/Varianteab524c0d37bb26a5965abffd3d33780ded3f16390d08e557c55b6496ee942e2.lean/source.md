# Complete source: GRWTSK.Topology.GeneralTopology.Attempt02.Varianteab524c0d37bb26a5965abffd3d33780ded3f16390d08e557c55b6496ee942e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abed7f227e7e726bd980d099b939219456fca17e` · SHA-256 `eab524c0d37bb26a5965abffd3d33780ded3f16390d08e557c55b6496ee942e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ComplexBoundaryRate

/-! Actual two-endpoint source bounds and admissible variable complex paths.
grwtsk contributors's originating direction; OpenAI Codex scratch construction.
No zero-set occurrence or signed arithmetic budget is inferred. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryPaths
open Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ContinuousResearch.ComplexBoundaryAsymptotic
open ContinuousResearch.ComplexBoundaryRate

/-- Inverse endpoint powers before any A^-n to A^-1 simplification. -/
theorem inverse_power_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ 1/(A*delta)^n := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  gcongr

theorem positiveEndpoint_error_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖positiveEndpoint A z-1‖ ≤ errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
  simp only [pow_one] at h1
  have he : positiveEndpoint A z-1 =
      -10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)-
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold positiveEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖-10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht2 := norm_sub_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht3 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)-105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
    _ = 10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem reflectedEndpoint_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖reflectedEndpoint A z‖ ≤ 1+errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
  simp only [pow_one] at h1
  have he : reflectedEndpoint A z =
      1+10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)+
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold reflectedEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖(1 : ℂ)‖+‖10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (1 : ℂ) (10*((1 : ℂ)/((A : ℂ)*z)))
      have ht2 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht3 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht4 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)+105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
    _ = 1+10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 1+10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem negative_endpoint_envelope {A delta : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ Real.exp (-2*A*delta) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  apply Real.exp_le_exp.mpr
  nlinarith

theorem actual_normalization_deficit_544 {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤ 544/A^2 := by
  convert normalizationRatio_deficit hA using 1
  ring

/-- The actual unreduced error bound; delta may vary with A in later consumers. -/
def sharpError (A delta : ℝ) : ℝ :=
  errorPolynomial (A*delta)+Real.exp (-2*A*delta)*(1+errorPolynomial (A*delta))+544/A^2

theorem actual_source_ratio_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
  unfold sharpError
  calc
    _ ≤ ‖(normalizationRatio A : ℂ)‖*
        ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        ‖(normalizationRatio A : ℂ)-1‖ := by
      simpa only [norm_mul] using norm_add_le
        ((normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
          Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z))
        ((normalizationRatio A : ℂ)-1)
    _ ≤ ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      rw [normalizationRatio_norm_deficit hA]
      nlinarith [norm_nonneg ((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)]
    _ ≤ ‖positiveEndpoint A z-1‖+
        ‖Complex.exp (-2*(A : ℂ)*z)‖*‖reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      have ht := norm_sub_le (positiveEndpoint A z-1)
        (Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)
      rw [norm_mul] at ht
      linarith
    _ ≤ _ := by
      gcongr
      · exact positiveEndpoint_error_sharp hA hdelta hz
      · exact negative_endpoint_envelope hA hz
      · exact reflectedEndpoint_bound_sharp hA hdelta hz
      · exact actual_normalization_deficit_544 hA

theorem sharpError_nonneg {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta) :
    0 ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hE := errorPolynomial_nonneg (mul_pos hp hdelta)
  unfold sharpError
  positivity

/-- Polynomial endpoint errors vanish whenever the product A*delta(A) grows. -/
theorem errorPolynomial_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => errorPolynomial (A*delta A)) atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ => (A*delta A)⁻¹) atTop (𝓝 0) :=
    tendsto_inv_atTop_zero.comp hprod
  have ht := (((hi.const_mul 10).add ((hi.pow 2).const_mul 45)).add
    ((hi.pow 3).const_mul 105)).add ((hi.pow 4).const_mul 105)
  simpa [errorPolynomial,div_eq_mul_inv,inv_pow] using ht

theorem negative_endpoint_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*delta A)) atTop (𝓝 0) := by
  have h2 : Tendsto (fun A : ℝ => 2*(A*delta A)) atTop atTop :=
    Tendsto.const_mul_atTop (by norm_num : (0 : ℝ)<2) hprod
  convert Real.tendsto_exp_neg_atTop_nhds_zero.comp h2 using 1
  ext A
  congr 1
  ring

/-- Genuine all-real path bound; no continuity or monotonicity of delta is assumed. -/
theorem sharpError_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => sharpError A (delta A)) atTop (𝓝 0) := by
  have hE := errorPolynomial_path_tendsto delta hprod
  have hx := negative_endpoint_path_tendsto delta hprod
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hN : Tendsto (fun A : ℝ => 544/A^2) atTop (𝓝 0) := by
    simpa [div_eq_mul_inv,inv_pow] using (hi.pow 2).const_mul 544
  have ht := (hE.add (hx.mul (tendsto_const_nhds.add hE))).add hN
  simpa [sharpError] using ht

/-- Actual source ratio along admissible real A paths, with the pole filter retained. -/
theorem actual_source_ratio_path_tendsto (delta : ℝ → ℝ) (z : ℝ → ℂ)
    (hdelta : ∀ᶠ A : ℝ in atTop, 0 < delta A)
    (hz : ∀ᶠ A : ℝ in atTop, delta A ≤ (z A).re)
    (hf : ∀ᶠ A : ℝ in atTop, (z A)^2-1/4 ≠ 0)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => scaledAmplitude A (z A)/leadingCoefficient (z A))
      atTop (𝓝 1) := by
  have hb : ∀ᶠ A : ℝ in atTop,
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖ ≤ sharpError A (delta A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ),hdelta,hz,hf] with A hA hd hz hf
    exact actual_source_ratio_sharp hA hd hz hf
  have ht : Tendsto (fun A : ℝ =>
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖) atTop (𝓝 0) :=
    squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _)) hb
      (sharpError_path_tendsto delta hprod)
  have hc : Tendsto (fun A : ℝ =>
      scaledAmplitude A (z A)/leadingCoefficient (z A)-1) atTop (𝓝 0) :=
    tendsto_zero_iff_norm_tendsto_zero.mpr ht
  simpa only [zero_add,sub_add_cancel] using hc.add_const 1

end ContinuousResearch.ComplexBoundaryPaths
```
