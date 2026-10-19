import FormalResearch.MathematicalTooling.Laplace.Positivity
import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Analysis.Convex.Topology

/-!
# Positive Laplace integrals and meromorphic continuation

A positive measure supported on nonnegative values has genuine Laplace
integrability throughout the positive half-plane if its initially convergent
transform has a meromorphic continuation there, analytic at every positive
real point. The finite abscissa is constructed from genuine integrability;
Landau's theorem rules it out. The identity principle then rules out poles
throughout that half-plane. No rightmost pole is selected.
-/

namespace FormalResearch.MathematicalTooling.Laplace.Continuation

open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology
noncomputable section

variable {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} {X : Ω → ℝ}

/-- The complex Laplace transform, expressed in Mathlib's MGF convention. -/
def transform (X : Ω → ℝ) (μ : Measure Ω) (s : ℂ) : ℂ := complexMGF X μ (-s)

/-- For nonnegative observations, increasing the Laplace parameter preserves integrability. -/
theorem integrable_of_le (hXm : AEMeasurable X μ) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    {a b : ℝ} (hab : a ≤ b) (ha : Integrable (fun ω ↦ Real.exp (-a * X ω)) μ) :
    Integrable (fun ω ↦ Real.exp (-b * X ω)) μ := by
  apply ha.mono' (by fun_prop)
  filter_upwards [hX] with ω hω
  rw [Real.norm_of_nonneg (Real.exp_pos _).le]
  exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right (neg_le_neg hab) hω)

/-- Genuine integrability on a real open ray supplies complex analyticity. -/
theorem transform_analytic (a : ℝ)
    (hconv : ∀ t : ℝ, a < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (s : ℂ) (hs : a < s.re) : AnalyticAt ℂ (transform X μ) s := by
  have hsub : Iio (-a) ⊆ integrableExpSet X μ := by
    intro t ht
    change t < -a at ht
    change Integrable (fun ω ↦ Real.exp (t * X ω)) μ
    simpa using hconv (-t) (by linarith [ht])
  have hz : (-s).re ∈ interior (integrableExpSet X μ) := by
    apply interior_mono hsub
    simpa using (show -s.re < -a by linarith)
  exact (analyticAt_complexMGF hz).comp (f := fun z : ℂ ↦ -z) (by fun_prop)

/-- The meromorphic identity principle stated as equality of punctured germs. -/
theorem meromorphic_germ_eq {F G : ℂ → ℂ} {U : Set ℂ}
    (hF : MeromorphicOn F U) (hG : MeromorphicOn G U) (hU : IsPreconnected U)
    {b s : ℂ} (hb : b ∈ U) (hs : s ∈ U) (heq : F =ᶠ[𝓝[≠] b] G) :
    F =ᶠ[𝓝[≠] s] G := by
  have hd : MeromorphicOn (fun z ↦ F z - G z) U := hF.sub hG
  have hbzero : meromorphicOrderAt (fun z ↦ F z - G z) b = ⊤ :=
    meromorphicOrderAt_eq_top_iff.mpr (heq.mono (fun z hz ↦ sub_eq_zero.mpr hz))
  have hszero : meromorphicOrderAt (fun z ↦ F z - G z) s = ⊤ := by
    by_contra hne
    exact (hd.meromorphicOrderAt_ne_top_of_isPreconnected hU hs hb hne) hbzero
  exact (meromorphicOrderAt_eq_top_iff.mp hszero).mono (fun z hz ↦ sub_eq_zero.mp hz)

/-- The initial identity propagates as a germ wherever the Laplace integral is analytic. -/
theorem transform_germ_eq (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (a : ℝ) (ha : 0 ≤ a)
    (hconv : ∀ t : ℝ, a < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (s : ℂ) (hs : a < s.re) : F =ᶠ[𝓝[≠] s] transform X μ := by
  let b : ℂ := (max 1 a + 1 : ℝ)
  have hb1 : 1 < b.re := by dsimp [b]; linarith [le_max_left (1 : ℝ) a]
  have hba : a < b.re := by dsimp [b]; linarith [le_max_right (1 : ℝ) a]
  have heq : F =ᶠ[𝓝[≠] b] transform X μ := by
    have hn : ∀ᶠ z : ℂ in 𝓝 b, 1 < z.re :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hb1
    exact (hn.filter_mono nhdsWithin_le_nhds).mono (fun z hz ↦ hinit z hz)
  have hU : IsPreconnected {z : ℂ | a < z.re} :=
    ((convex_Ioi a).linear_preimage Complex.reLm).isPreconnected
  exact meromorphic_germ_eq (fun z hz ↦ hF z (lt_of_le_of_lt ha hz))
    (fun z hz ↦ (transform_analytic a hconv z hz).meromorphicAt) hU hba hs heq

/-- A meromorphic continuation analytic on the positive real axis forces all positive
Laplace parameters to be genuinely integrable. -/
theorem integrable_positive_of_continuation (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ) (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (t : ℝ) (ht : 0 < t) : Integrable (fun ω ↦ Real.exp (-t * X ω)) μ := by
  by_contra hbad
  let S : Set ℝ := {u | Integrable (fun ω ↦ Real.exp (-u * X ω)) μ}
  have hSne : S.Nonempty := ⟨2, hconv 2 (by norm_num)⟩
  have hSlower : ∀ u ∈ S, t ≤ u := by
    intro u hu
    by_contra htu
    exact hbad (integrable_of_le hXm hX (le_of_not_ge htu) hu)
  have hSbdd : BddBelow S := ⟨t, hSlower⟩
  let a : ℝ := sInf S
  have hta : t ≤ a := le_csInf hSne hSlower
  have ha : 0 < a := lt_of_lt_of_le ht hta
  have hright (u : ℝ) (hu : a < u) :
      Integrable (fun ω ↦ Real.exp (-u * X ω)) μ := by
    obtain ⟨v, hv, hvu⟩ := exists_lt_of_csInf_lt hSne hu
    exact integrable_of_le hXm hX hvu.le hv
  have hleft (u : ℝ) (hu : u < a) :
      ¬ Integrable (fun ω ↦ Real.exp (-u * X ω)) μ := by
    intro hi
    exact (not_le_of_gt hu) (csInf_le hSbdd hi)
  have heq : F =ᶠ[𝓝[{z : ℂ | a < z.re}] (a : ℂ)] transform X μ := by
    have han := hreal a ha
    have hnear := han.eventually_analyticAt
    filter_upwards [hnear.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with z hz hzr
    have hg := transform_germ_eq F hF hinit a ha.le hright z hzr
    have hc := (transform_analytic a hright z hzr).continuousAt
    exact ((hz.continuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE hc).mp hg).eq_of_nhds
  exact Positivity.not_analyticAt_laplace_of_finite_abscissa a hX hright hleft F heq
    (hreal a ha)

/-- Positivity and positive-axis analyticity exclude every pole in the positive half-plane. -/
theorem order_nonneg_of_continuation (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ) (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (s : ℂ) (hs : 0 < s.re) : 0 ≤ meromorphicOrderAt F s := by
  have hpos := integrable_positive_of_continuation hXm hX hconv F hF hreal hinit
  rw [meromorphicOrderAt_congr (transform_germ_eq F hF hinit 0 le_rfl hpos s hs)]
  exact (transform_analytic 0 hpos s hs).meromorphicOrderAt_nonneg

end
end FormalResearch.MathematicalTooling.Laplace.Continuation
