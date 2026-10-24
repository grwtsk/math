# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FullLinePlancherel.Varianta70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52f1c3dd72eb7a155f31a572700ad6701a0729fd` · SHA-256 `a70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension

/-! Genuine full-line angular Plancherel with explicit integrability and normalization. -/
set_option autoImplicit false
namespace FullLinePlancherelScratch
open MeasureTheory FourierTransform
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceComparison
open FourierL1L2Forward HalfLineExtension
noncomputable section

/-- A genuine L2 function has the ordinary square integral as its quotient norm squared. -/
theorem norm_sq_toLp (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    ‖hf.toLp f‖ ^ 2 = ∫ t : ℝ, ‖f t‖ ^ 2 := by
  rw [@norm_sq_eq_re_inner ℂ, L2.inner_def]
  rw [← integral_re]
  · apply integral_congr_ae
    filter_upwards [hf.coeFn_toLp] with t ht
    rw [ht, inner_self_eq_norm_sq_to_K]
    rw [← RCLike.ofReal_pow, RCLike.ofReal_re]
  · exact L2.integrable_inner _ _

/-- The actual forward transform of an admitted L1 vector has its full L2 norm squared. -/
theorem fourier_integral_norm_sq (f : FullH) (hf : Integrable (f : ℝ → ℂ)) :
    Integrable (fun ξ : ℝ => ‖𝓕 (f : ℝ → ℂ) ξ‖ ^ 2) ∧
      (∫ ξ : ℝ, ‖𝓕 (f : ℝ → ℂ) ξ‖ ^ 2) = ‖f‖ ^ 2 := by
  have hm := fourier_memLp (f : ℝ → ℂ) hf (Lp.memLp f)
  refine ⟨(memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm, ?_⟩
  rw [← norm_sq_toLp _ hm, norm_fourier_toLp _ hf (Lp.memLp f), Lp.toLp_coeFn]

/-- A proved angular boundary formula has a genuine square integral and the exact Jacobian. -/
theorem angular_plancherel (f : FullH) (hf : Integrable (f : ℝ → ℂ))
    (G : ℝ → ℂ) (hG : ∀ ξ : ℝ, 𝓕 (f : ℝ → ℂ) ξ = G (2 * Real.pi * ξ)) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 := by
  have hπ : 0 < 2 * Real.pi := by positivity
  obtain ⟨hi, hn⟩ := fourier_integral_norm_sq f hf
  have he (t : ℝ) : G t = 𝓕 (f : ℝ → ℂ) ((2 * Real.pi)⁻¹ * t) := by
    rw [hG]
    congr 1
    field_simp
  have hGi : Integrable (fun t : ℝ => ‖G t‖ ^ 2) := by
    simpa only [he] using hi.comp_mul_left' (inv_ne_zero hπ.ne')
  refine ⟨hGi, ?_⟩
  rw [← hn]
  simp_rw [hG]
  simpa only [smul_eq_mul, one_div, abs_of_pos (inv_pos.mpr hπ)] using
    Measure.integral_comp_mul_left (fun t : ℝ => ‖G t‖ ^ 2) (2 * Real.pi)

end
end FullLinePlancherelScratch
```
