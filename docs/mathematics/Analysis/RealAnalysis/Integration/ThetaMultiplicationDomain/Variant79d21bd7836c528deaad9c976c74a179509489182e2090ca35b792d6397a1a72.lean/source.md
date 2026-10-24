# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMultiplicationDomain.Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44cb1c2fa5bd7223764a01a0c7eb5206a27d5850` · SHA-256 `79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.ContinuousMapDense

/-!
The maximal coordinate multiplication operator on complex L² of a real measure.
The domain is actual L² membership of x f(x), with no bounded-support assumption.
This file does not assert self-adjointness or polynomial-core density.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain

open MeasureTheory
open scoped ENNReal

noncomputable section

variable (μ : Measure ℝ)

/-- The exact maximal domain {f ∈ L²(μ) | x f(x) ∈ L²(μ)}. -/
def coordinateDomain : Submodule ℂ (Lp ℂ 2 μ) where
  carrier := {f : Lp ℂ 2 μ | MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ}
  zero_mem' := by
    change MemLp (fun x : ℝ => (x : ℂ) * (0 : Lp ℂ 2 μ) x) 2 μ
    apply (MemLp.zero : MemLp (0 : ℝ → ℂ) 2 μ).ae_eq
    filter_upwards [Lp.coeFn_zero ℂ 2 μ] with x hx
    change (0 : ℂ) = (x : ℂ) * (0 : Lp ℂ 2 μ) x
    rw [hx]
    simp
  add_mem' := by
    intro f g hf hg
    change MemLp (fun x : ℝ => (x : ℂ) * (f + g) x) 2 μ
    change MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ at hf
    change MemLp (fun x : ℝ => (x : ℂ) * g x) 2 μ at hg
    apply (hf.add hg).ae_eq
    filter_upwards [Lp.coeFn_add f g] with x hx
    change (x : ℂ) * f x + (x : ℂ) * g x = (x : ℂ) * (f + g) x
    rw [hx]
    exact (mul_add _ _ _).symm
  smul_mem' := by
    intro c f hf
    apply (hf.const_smul c).ae_eq
    filter_upwards [Lp.coeFn_smul c f] with x hx
    simp [hx, smul_eq_mul, mul_left_comm]

@[simp]
theorem mem_coordinateDomain (f : Lp ℂ 2 μ) :
    f ∈ coordinateDomain μ ↔ MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ := Iff.rfl

/-- Maximal multiplication, as a genuinely partially defined linear map. -/
def coordinateMultiplication : Lp ℂ 2 μ →ₗ.[ℂ] Lp ℂ 2 μ where
  domain := coordinateDomain μ
  toFun :=
    { toFun := fun f => f.property.toLp (fun x : ℝ => (x : ℂ) * (f : Lp ℂ 2 μ) x)
      map_add' := by
        intro f g
        apply Lp.ext
        filter_upwards [MemLp.coeFn_toLp (f + g).property,
          MemLp.coeFn_toLp f.property, MemLp.coeFn_toLp g.property,
          Lp.coeFn_add (f : Lp ℂ 2 μ) (g : Lp ℂ 2 μ),
          Lp.coeFn_add (f.property.toLp _) (g.property.toLp _)] with x hfg hf hg ha hb
        simp only [Submodule.coe_add] at hfg ⊢
        simp only [Pi.add_apply] at ha hb
        simp only [hfg, hb, hf, hg, ha]

        exact mul_add _ _ _
      map_smul' := by
        intro c f
        apply Lp.ext
        filter_upwards [MemLp.coeFn_toLp (c • f).property,
          MemLp.coeFn_toLp f.property,
          Lp.coeFn_smul c (f : Lp ℂ 2 μ),
          Lp.coeFn_smul c (f.property.toLp _)] with x hcf hf ha hb
        simp only [Submodule.coe_smul, RingHom.id_apply] at hcf ⊢
        simp only [Pi.smul_apply] at ha hb
        simp only [hcf, hb, hf, ha]
        simp [smul_eq_mul, mul_left_comm] }

@[simp]
theorem coordinateMultiplication_domain :
    (coordinateMultiplication μ).domain = coordinateDomain μ := rfl

/-- The operator acts by the real coordinate on almost-everywhere representatives. -/
theorem coordinateMultiplication_apply_ae (f : (coordinateDomain μ)) :
    coordinateMultiplication μ f =ᵐ[μ]
      fun x : ℝ => (x : ℂ) * (f : Lp ℂ 2 μ) x :=
  MemLp.coeFn_toLp f.property

/-- Coordinate multiplication is symmetric on its actual maximal domain. -/
theorem coordinateMultiplication_formalAdjoint :
    (coordinateMultiplication μ).IsFormalAdjoint (coordinateMultiplication μ) := by
  intro f g
  rw [L2.inner_def, L2.inner_def]
  apply integral_congr_ae
  filter_upwards [coordinateMultiplication_apply_ae μ f,
    coordinateMultiplication_apply_ae μ g] with x hf hg
  rw [hf, hg]
  simp [RCLike.inner_apply, map_mul, mul_left_comm, mul_assoc]

/-- Maximal means every L² vector whose coordinate product is L² is admitted. -/
theorem coordinateMultiplication_maximal_domain (f : Lp ℂ 2 μ)
    (hf : MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ) :
    ∃ g : (coordinateMultiplication μ).domain, (g : Lp ℂ 2 μ) = f :=
  ⟨⟨f, hf⟩, rfl⟩

/-- L² norm as a real square integral, including the required integrability. -/
theorem norm_sq_eq_integral (f : Lp ℂ 2 μ) :
    ‖f‖ ^ 2 = ∫ x, ‖f x‖ ^ 2 ∂μ := by
  rw [@norm_sq_eq_re_inner ℂ, L2.inner_def,
    ← integral_re (L2.integrable_inner f f)]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    simp [inner_self_eq_norm_sq_to_K, ← Complex.ofReal_pow]

/-- The actual graph norm is precisely the (1+x²)-weighted square norm. -/
theorem graph_norm_sq_eq_weighted_integral (f : coordinateDomain μ) :
    ‖(f : Lp ℂ 2 μ)‖ ^ 2 + ‖coordinateMultiplication μ f‖ ^ 2 =
      ∫ x, (1 + x ^ 2) * ‖(f : Lp ℂ 2 μ) x‖ ^ 2 ∂μ := by
  have hi := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable
    (f : Lp ℂ 2 μ))).mp (Lp.memLp (f : Lp ℂ 2 μ))
  have hm := (memLp_two_iff_integrable_sq_norm f.property.1).mp f.property
  rw [norm_sq_eq_integral, norm_sq_eq_integral]
  have he : (∫ x, ‖(coordinateMultiplication μ f) x‖ ^ 2 ∂μ) =
      ∫ x, ‖(x : ℂ) * (f : Lp ℂ 2 μ) x‖ ^ 2 ∂μ := by
    apply integral_congr_ae
    filter_upwards [coordinateMultiplication_apply_ae μ f] with x hx
    rw [hx]
  rw [he, ← integral_add hi hm]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs]
    ring

/-- The graph domain is exactly finite (1+x²)-weighted square integral. -/
theorem mem_coordinateDomain_iff_weighted_integrable (f : Lp ℂ 2 μ) :
    f ∈ coordinateDomain μ ↔
      Integrable (fun x => (1 + x ^ 2) * ‖f x‖ ^ 2) μ := by
  have ha : AEStronglyMeasurable (fun x : ℝ => (x : ℂ) * f x) μ :=
    Complex.continuous_ofReal.aestronglyMeasurable.mul (Lp.aestronglyMeasurable f)
  have hi := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable f)).mp (Lp.memLp f)
  have he (x : ℝ) : ‖(x : ℂ) * f x‖ ^ 2 = x ^ 2 * ‖f x‖ ^ 2 := by
    simp [mul_pow]
  constructor
  · intro hf
    have hm := (memLp_two_iff_integrable_sq_norm ha).mp hf
    apply (hi.add hm).congr
    exact Filter.Eventually.of_forall fun x => by simp only [Pi.add_apply, he]; ring
  · intro hf
    apply (memLp_two_iff_integrable_sq_norm ha).mpr
    apply hf.mono' (ha.norm.pow 2)
    exact Filter.Eventually.of_forall fun x => by
      change ‖‖(x : ℂ) * f x‖ ^ 2‖ ≤ (1 + x ^ 2) * ‖f x‖ ^ 2
      rw [he]
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (sq_nonneg x) (sq_nonneg ‖f x‖))]
      nlinarith [sq_nonneg ‖f x‖]

/-- The measure whose L² norm is the multiplication graph norm. -/
def graphMeasure : Measure ℝ :=
  μ.withDensity (fun x : ℝ => ENNReal.ofReal (1 + x ^ 2))

theorem graphMeasure_absolutelyContinuous : graphMeasure μ ≪ μ :=
  withDensity_absolutelyContinuous μ _

/-- Literal weighted L² membership of the same almost-everywhere representative. -/
theorem mem_coordinateDomain_iff_graph_memLp (f : Lp ℂ 2 μ) :
    f ∈ coordinateDomain μ ↔ MemLp f 2 (graphMeasure μ) := by
  have ha := AEStronglyMeasurable.mono_ac (graphMeasure_absolutelyContinuous μ)
    (Lp.aestronglyMeasurable f)
  rw [mem_coordinateDomain_iff_weighted_integrable,
    memLp_two_iff_integrable_sq_norm ha, graphMeasure,
    integrable_withDensity_iff_integrable_smul' (by fun_prop)
      (Filter.Eventually.of_forall fun _ => ENNReal.ofReal_lt_top)]
  simp only [ENNReal.toReal_ofReal (by positivity : 0 ≤ 1 + (_ : ℝ) ^ 2), smul_eq_mul]

/-- Continuous compactly supported observables lie in the maximal domain. -/
theorem compactContinuous_mem_coordinateDomain [IsFiniteMeasureOnCompacts μ]
    (g : ℝ → ℂ) (hc : Continuous g) (hs : HasCompactSupport g) :
    (hc.memLp_of_hasCompactSupport hs : MemLp g 2 μ).toLp g ∈ coordinateDomain μ := by
  have hprod : MemLp (fun x : ℝ => (x : ℂ) * g x) 2 μ :=
    (Complex.continuous_ofReal.mul hc).memLp_of_hasCompactSupport hs.mul_left
  apply hprod.ae_eq
  filter_upwards [MemLp.coeFn_toLp (hc.memLp_of_hasCompactSupport hs : MemLp g 2 μ)]
    with x hx
  rw [hx]

/-- The actual maximal domain is dense; this uses compact continuous functions,
not a polynomial-density assertion. -/
theorem coordinateDomain_dense [μ.Regular] :
    Dense (coordinateDomain μ : Set (Lp ℂ 2 μ)) := by
  intro f
  rw [Metric.mem_closure_iff]
  intro ε hε
  obtain ⟨g, hs, he, hc, hg⟩ := (Lp.memLp f).exists_hasCompactSupport_eLpNorm_sub_le
    (by norm_num : (2 : ℝ≥0∞) ≠ ∞)
    (show ENNReal.ofReal (ε / 2) ≠ 0 by positivity)
  refine ⟨hg.toLp g, ?_, ?_⟩
  · simpa using compactContinuous_mem_coordinateDomain μ g hc hs
  · apply edist_lt_ofReal.mp
    have hd : edist f (hg.toLp g) = eLpNorm ((f : ℝ → ℂ) - g) 2 μ := by
      conv_lhs => rw [← Lp.toLp_coeFn f (Lp.memLp f)]
      exact Lp.edist_toLp_toLp f g (Lp.memLp f) hg
    rw [hd]
    apply he.trans_lt
    exact (ENNReal.ofReal_lt_ofReal_iff hε).mpr (by linarith)

end
end FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain
```
