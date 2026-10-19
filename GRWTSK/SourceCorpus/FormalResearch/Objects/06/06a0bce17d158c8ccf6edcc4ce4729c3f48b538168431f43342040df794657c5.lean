import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Mathlib.Analysis.Meromorphic.Divisor

/-! Source-specific normalization/divisor transport for issue #258.
Exact actual xi source is PR151 XiToeplitz; no operator/determinant is constructed.
Human programme direction: grwtsk contributors. OpenAI Codex proof construction. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.XiNormalization
open Complex Filter Set MeromorphicOn
open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped Topology

/-- Endpoints and all totalized Gamma exceptional values remain excluded. -/
def comparisonDomain : Set ℂ := {s | s ≠ 0 ∧ s ≠ 1 ∧ Gammaℝ s ≠ 0}

/-- The actual completion factor, with the repository's factor 1/2 retained. -/
def prefactor (s : ℂ) : ℂ := s * (s - 1) * Gammaℝ s / 2

theorem gamma_analytic {s : ℂ} (hs : Gammaℝ s ≠ 0) : AnalyticAt ℂ Gammaℝ s := by
  have h := (differentiable_Gammaℝ_inv.analyticAt s).inv (inv_ne_zero hs)
  simpa only [Pi.inv_def, inv_inv] using h

theorem prefactor_analytic {s : ℂ} (hs : s ∈ comparisonDomain) : AnalyticAt ℂ prefactor s := by
  unfold prefactor
  have hg := gamma_analytic hs.2.2
  fun_prop

theorem prefactor_ne_zero {s : ℂ} (hs : s ∈ comparisonDomain) : prefactor s ≠ 0 :=
  div_ne_zero (mul_ne_zero (mul_ne_zero hs.1 (sub_ne_zero.mpr hs.2.1)) hs.2.2) two_ne_zero

theorem comparisonDomain_exceptional_guard {s : ℂ} :
    s ∈ comparisonDomain ↔ s ≠ 1 ∧ ∀ n : ℕ, s ≠ -(2 * (n : ℂ)) := by
  constructor
  · intro hs
    refine ⟨hs.2.1, ?_⟩
    intro n hn
    exact hs.2.2 (Gammaℝ_eq_zero_iff.mpr ⟨n, hn⟩)
  · rintro ⟨h1, hg⟩
    refine ⟨?_, h1, ?_⟩
    · simpa using hg 0
    · rw [Ne, Gammaℝ_eq_zero_iff]
      rintro ⟨n, hn⟩
      exact hg n hn

theorem strip_mem_domain {s : ℂ} (h0 : 0 < s.re) (h1 : s.re < 1) : s ∈ comparisonDomain := by
  refine ⟨?_, ?_, Gammaℝ_ne_zero_of_re_pos h0⟩
  · intro hs
    subst s
    norm_num at h0
  · intro hs
    subst s
    norm_num at h1

theorem xi_eq_prefactor_zeta {s : ℂ} (hs : s ∈ comparisonDomain) :
    XiToeplitz.xi s = prefactor s * riemannZeta s := by
  rw [XiToeplitz.xi_eq_completed hs.1 hs.2.1, riemannZeta_def_of_ne_zero hs.1]
  unfold prefactor
  field_simp [hs.2.2]

theorem comparisonDomain_open : IsOpen comparisonDomain := by
  rw [isOpen_iff_mem_nhds]
  intro s hs
  have ht := (gamma_analytic hs.2.2).continuousAt.tendsto
  filter_upwards [eventually_ne_nhds hs.1, eventually_ne_nhds hs.2.1,
    ht.eventually (eventually_ne_nhds hs.2.2)] with w h0 h1 hg
  exact ⟨h0, h1, hg⟩

/-- All normalization hypotheses are supplied by the actual source factor. -/
theorem actual_normalization :
    AnalyticOnNhd ℂ prefactor comparisonDomain ∧
      (∀ s ∈ comparisonDomain, prefactor s ≠ 0) ∧
      EqOn XiToeplitz.xi (fun s => prefactor s * riemannZeta s) comparisonDomain :=
  ⟨fun _ hs => prefactor_analytic hs,
    fun _ hs => prefactor_ne_zero hs, fun _ hs => xi_eq_prefactor_zeta hs⟩

theorem xi_eventuallyEq_normalization {s : ℂ} (hs : s ∈ comparisonDomain) :
    XiToeplitz.xi =ᶠ[𝓝 s] fun w => prefactor w * riemannZeta w := by
  have ht := (gamma_analytic hs.2.2).continuousAt.tendsto
  filter_upwards [eventually_ne_nhds hs.1, eventually_ne_nhds hs.2.1,
    ht.eventually (eventually_ne_nhds hs.2.2)] with w h0 h1 hg
  exact xi_eq_prefactor_zeta ⟨h0, h1, hg⟩

theorem xi_order_eq_zeta {s : ℂ} (hs : s ∈ comparisonDomain) :
    analyticOrderAt XiToeplitz.xi s = analyticOrderAt riemannZeta s := by
  rw [analyticOrderAt_congr (xi_eventuallyEq_normalization hs)]
  change analyticOrderAt (prefactor * riemannZeta) s = _
  rw [analyticOrderAt_mul (prefactor_analytic hs) (analyticOn_riemannZeta s hs.2.1),
    (prefactor_analytic hs).analyticOrderAt_eq_zero.mpr (prefactor_ne_zero hs), zero_add]

theorem xi_order_finite {s : ℂ} (hs : s ∈ comparisonDomain) :
    analyticOrderAt XiToeplitz.xi s ≠ ⊤ := by
  rw [xi_order_eq_zeta hs]
  exact ZeroObject.zeta_order_finite hs.2.1

theorem xi_orderNat_eq_zeta {s : ℂ} (hs : s ∈ comparisonDomain) :
    analyticOrderNatAt XiToeplitz.xi s = analyticOrderNatAt riemannZeta s :=
  congrArg ENat.toNat (xi_order_eq_zeta hs)

theorem xi_divisor_eq_zeta : divisor XiToeplitz.xi comparisonDomain =
    divisor riemannZeta comparisonDomain := by
  have hxi : AnalyticOnNhd ℂ XiToeplitz.xi comparisonDomain := fun s _ =>
    XiToeplitz.differentiable_xi.analyticAt s
  have hzeta : AnalyticOnNhd ℂ riemannZeta comparisonDomain := fun s hs =>
    analyticOn_riemannZeta s hs.2.1
  ext s
  by_cases hs : s ∈ comparisonDomain
  · rw [hxi.divisor_apply hs, hzeta.divisor_apply hs, xi_order_eq_zeta hs]
  · simp [hs]

/-- The exact unramified vertical spectral coordinate; this defines no operator. -/
def verticalParameter (z : ℂ) : ℂ := 1 / 2 + Complex.I * z

def verticalXi (z : ℂ) : ℂ := XiToeplitz.xi (verticalParameter z)

/-- The open horizontal strip mapped to the open zeta critical strip. -/
def verticalDomain : Set ℂ := {z | |z.im| < 1 / 2}

theorem verticalParameter_deriv (z : ℂ) : deriv verticalParameter z = Complex.I := by
  unfold verticalParameter
  simpa only [id_eq, mul_one] using
    (((hasDerivAt_id z).const_mul Complex.I).const_add ((1 : ℂ) / 2)).deriv

theorem verticalParameter_strip {z : ℂ} (hz : |z.im| < 1 / 2) :
    0 < (verticalParameter z).re ∧ (verticalParameter z).re < 1 := by
  rcases abs_lt.mp hz with ⟨hlo, hhi⟩
  simp only [verticalParameter, Complex.add_re, Complex.div_ofNat_re, Complex.one_re,
    Complex.mul_re, Complex.I_re, Complex.I_im, zero_mul, one_mul]
  constructor <;> linarith

theorem verticalXi_order {z : ℂ} (hz : |z.im| < 1 / 2) :
    analyticOrderAt verticalXi z = analyticOrderAt riemannZeta (verticalParameter z) := by
  have hparam : AnalyticAt ℂ verticalParameter z := by unfold verticalParameter; fun_prop
  have hderiv : deriv verticalParameter z ≠ 0 := by rw [verticalParameter_deriv]; exact Complex.I_ne_zero
  have he := analyticOrderAt_comp_of_deriv_ne_zero (f := XiToeplitz.xi) hparam hderiv
  change analyticOrderAt (XiToeplitz.xi ∘ verticalParameter) z = _
  rw [he]
  exact xi_order_eq_zeta (strip_mem_domain (verticalParameter_strip hz).1 (verticalParameter_strip hz).2)

theorem verticalXi_order_finite {z : ℂ} (hz : |z.im| < 1 / 2) :
    analyticOrderAt verticalXi z ≠ ⊤ := by
  rw [verticalXi_order hz]
  exact ZeroObject.zeta_order_finite
    (strip_mem_domain (verticalParameter_strip hz).1 (verticalParameter_strip hz).2).2.1

theorem verticalXi_divisor_eq_zeta : divisor verticalXi verticalDomain =
    divisor (riemannZeta ∘ verticalParameter) verticalDomain := by
  have hparam (z : ℂ) : AnalyticAt ℂ verticalParameter z := by
    unfold verticalParameter
    fun_prop
  have hxi : AnalyticOnNhd ℂ verticalXi verticalDomain := fun z _ =>
    (XiToeplitz.differentiable_xi.analyticAt (verticalParameter z)).comp (hparam z)
  have hzeta : AnalyticOnNhd ℂ (riemannZeta ∘ verticalParameter) verticalDomain := by
    intro z hz
    exact (analyticOn_riemannZeta (verticalParameter z)
      (strip_mem_domain (verticalParameter_strip hz).1 (verticalParameter_strip hz).2).2.1).comp
        (hparam z)
  ext z
  by_cases hz : z ∈ verticalDomain
  · rw [hxi.divisor_apply hz, hzeta.divisor_apply hz, verticalXi_order hz,
      analyticOrderAt_comp_of_deriv_ne_zero (hparam z)
        (by rw [verticalParameter_deriv]; exact Complex.I_ne_zero)]
  · simp [hz]

/-- The restored endpoint shows why an unguarded product identity is false. -/
theorem naive_endpoint_product_fails :
    XiToeplitz.xi 0 ≠ prefactor 0 * riemannZeta 0 := by
  simp [XiToeplitz.xi_zero, prefactor]

#print axioms comparisonDomain
#print axioms prefactor
#print axioms verticalParameter
#print axioms verticalXi
#print axioms verticalDomain
#print axioms gamma_analytic
#print axioms prefactor_analytic
#print axioms prefactor_ne_zero
#print axioms comparisonDomain_exceptional_guard
#print axioms strip_mem_domain
#print axioms xi_eq_prefactor_zeta
#print axioms comparisonDomain_open
#print axioms actual_normalization
#print axioms xi_eventuallyEq_normalization
#print axioms xi_order_eq_zeta
#print axioms xi_order_finite
#print axioms xi_orderNat_eq_zeta
#print axioms xi_divisor_eq_zeta
#print axioms verticalParameter_deriv
#print axioms verticalParameter_strip
#print axioms verticalXi_order
#print axioms verticalXi_order_finite
#print axioms verticalXi_divisor_eq_zeta
#print axioms naive_endpoint_product_fails
end ContinuousResearch.XiNormalization
