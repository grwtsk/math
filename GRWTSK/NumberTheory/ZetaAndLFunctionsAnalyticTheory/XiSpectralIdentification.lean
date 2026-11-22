/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource
import GRWTSK.OperatorTheory.PrimeKnotAlexanderResolventControl

/-!
# Exact spectral identification for Riemann's ξ

The functional equation identifies the existing entire `spectralSource`
with `ξ(1/2 + I*z)`. This fixes the dispatch coordinate to `(ρ - 1/2)/I`,
whose real part is the ordinate. The functional equation pairs `z` and
`-z` without requiring RH or simplicity. In particular, any proposed signed
spectrum confined to a positive half-line and containing a point fails
the exact two-way correspondence.

The determinant interface specifies a fixed value at the image of `s = 1`,
an analytic unit, and multiplicities at all complex parameters. An operator
construction must supply its own spectrum and multiplicities and prove the
identity of functions; choosing eigenvalues from the zeros does not supply
that arithmetic proof. The canonical radius-normalized Gram comparisons
supply neither this identity nor a spectral exhaustion.
-/

set_option autoImplicit false

noncomputable section
open Complex Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Zeta.Riemann.XiSpectralIdentification

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource

/-- The signed HS-95 coordinate `(s - 1/2)/I`. -/
def spectralParameter (s : ℂ) : ℂ := -I * (s - 1 / 2)

/-- The inverse affine coordinate. -/
def arithmeticParameter (z : ℂ) : ℂ := 1 / 2 + I * z

@[simp] theorem arithmeticParameter_spectralParameter (s : ℂ) :
    arithmeticParameter (spectralParameter s) = s := by
  simp [arithmeticParameter, spectralParameter, mul_neg, ← mul_assoc, I_mul_I]

@[simp] theorem spectralParameter_re (s : ℂ) : (spectralParameter s).re = s.im := by
  simp [spectralParameter, Complex.mul_re]

@[simp] theorem spectralParameter_im (s : ℂ) :
    (spectralParameter s).im = 1 / 2 - s.re := by
  simp [spectralParameter, Complex.mul_im]

theorem spectralSource_eq (z : ℂ) : spectralSource z = xi (arithmeticParameter z) := by
  have heq : (1 / 2 : ℂ) - I * z = 1 - arithmeticParameter z := by
    unfold arithmeticParameter
    ring
  change xi (1 / 2 - I * z) = _
  rw [heq, xi_one_sub]

theorem differentiable_spectralSource : Differentiable ℂ spectralSource := by
  rw [show spectralSource = xi ∘ arithmeticParameter by exact funext spectralSource_eq]
  exact differentiable_xi.comp (by unfold arithmeticParameter; fun_prop)

theorem spectralSource_neg (z : ℂ) : spectralSource (-z) = spectralSource z := by
  have heq : (1 / 2 : ℂ) - I * (-z) = 1 - (1 / 2 - I * z) := by ring
  change xi (1 / 2 - I * (-z)) = xi _
  rw [heq, xi_one_sub]

@[simp] theorem spectralSource_anchor : spectralSource (-(I / 2)) = 1 / 2 := by
  have heq : arithmeticParameter (-(I / 2)) = 1 := by
    unfold arithmeticParameter
    rw [mul_neg, ← mul_div_assoc, I_mul_I]
    norm_num
  rw [spectralSource_eq, heq, xi_one]

private theorem completed_factor {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hΓ : Gammaℝ s ≠ 0) :
    xi s = ((1 / 2 : ℂ) * s * (s - 1) * Gammaℝ s) * riemannZeta s := by
  rw [xi_eq_completed s hs0 hs1, riemannZeta_def_of_ne_zero hs0]
  field_simp

private theorem gamma_ne_zero_of_nontrivial {s : ℂ} (hs0 : s ≠ 0)
    (ht : ¬ ∃ n : ℕ, s = -2 * (n + 1)) : Gammaℝ s ≠ 0 := by
  rw [Ne, Gammaℝ_eq_zero_iff]
  rintro ⟨n, hn⟩
  cases n with
  | zero => exact hs0 (by simpa using hn)
  | succ n => exact ht ⟨n, by rw [hn, Nat.cast_succ]; ring⟩

private theorem xi_ne_zero_of_one_le_re {s : ℂ} (hs : 1 ≤ s.re) : xi s ≠ 0 := by
  by_cases hs1 : s = 1
  · subst s
    simp
  have hre : 0 < s.re := zero_lt_one.trans_le hs
  have hs0 : s ≠ 0 := by
    intro h
    simp [h] at hre
  have hΓ := Gammaℝ_ne_zero_of_re_pos hre
  rw [completed_factor hs0 hs1 hΓ]
  exact mul_ne_zero (by simp [hs0, sub_ne_zero.mpr hs1, hΓ])
    (riemannZeta_ne_zero_of_one_le_re hs)

/-- The entire completion uses exactly the zero predicate in Mathlib's RH. -/
theorem xi_zero_iff_nontrivial_zeta (s : ℂ) :
    xi s = 0 ↔ riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1 := by
  have h0 : xi s = 0 → s ≠ 0 := by
    rintro hz rfl
    norm_num at hz
  have h1 : xi s = 0 → s ≠ 1 := by
    rintro hz rfl
    norm_num at hz
  constructor
  · intro hz
    have ht : ¬ ∃ n : ℕ, s = -2 * (n + 1) := by
      rintro ⟨n, rfl⟩
      have hre : 1 ≤ (1 - (-2 * ((n : ℂ) + 1))).re := by
        simp [Complex.mul_re]
        positivity
      exact xi_ne_zero_of_one_le_re hre ((xi_one_sub _).trans hz)
    have hΓ := gamma_ne_zero_of_nontrivial (h0 hz) ht
    have hfac : (1 / 2 : ℂ) * s * (s - 1) * Gammaℝ s ≠ 0 := by
      simp [h0 hz, sub_ne_zero.mpr (h1 hz), hΓ]
    refine ⟨?_, ht, h1 hz⟩
    rwa [completed_factor (h0 hz) (h1 hz) hΓ, mul_eq_zero, or_iff_right hfac] at hz
  · rintro ⟨hz, ht, hs1⟩
    have hs0 : s ≠ 0 := by
      intro h
      subst s
      norm_num [riemannZeta_zero] at hz
    rw [completed_factor hs0 hs1 (gamma_ne_zero_of_nontrivial hs0 ht), hz, mul_zero]

/-- Change of variable preserves the full analytic order at each coordinate. -/
theorem spectralSource_order (z : ℂ) :
    analyticOrderAt spectralSource z = analyticOrderAt xi (arithmeticParameter z) := by
  have hd : HasDerivAt arithmeticParameter I z :=
    (hasDerivAt_const_mul (x := z) I).const_add (1 / 2 : ℂ)
  rw [show spectralSource = xi ∘ arithmeticParameter by exact funext spectralSource_eq]
  exact analyticOrderAt_comp_of_deriv_ne_zero (by unfold arithmeticParameter; fun_prop)
    (by rw [hd.deriv]; simp)

/-- At a nontrivial zeta zero, the completion and the coordinate change
preserve order. Use reciprocal Gamma so both multiplier germs are analytic;
each has order zero at the point. -/
theorem spectralSource_order_at_nontrivial_zeta_zero {s : ℂ}
    (hz : riemannZeta s = 0) (ht : ¬ ∃ n : ℕ, s = -2 * (n + 1)) (h1 : s ≠ 1) :
    analyticOrderAt spectralSource (spectralParameter s) = analyticOrderAt riemannZeta s := by
  have h0 : s ≠ 0 := by
    rintro rfl
    norm_num [riemannZeta_zero] at hz
  let p : ℂ → ℂ := fun w => (1 / 2 : ℂ) * w * (w - 1)
  let g : ℂ → ℂ := fun w => (Gammaℝ w)⁻¹
  have hp : AnalyticAt ℂ p s := by unfold p; fun_prop
  have hg : AnalyticAt ℂ g s := differentiable_Gammaℝ_inv.analyticAt s
  have hp0 : p s ≠ 0 :=
    mul_ne_zero (mul_ne_zero (by norm_num) h0) (sub_ne_zero.mpr h1)
  have hg0 : g s ≠ 0 := inv_ne_zero (gamma_ne_zero_of_nontrivial h0 ht)
  have hprod : xi * g =ᶠ[𝓝 s] riemannZeta * p := by
    filter_upwards [eventually_ne_nhds h0, eventually_ne_nhds h1] with w hw0 hw1
    change xi w * (Gammaℝ w)⁻¹ = riemannZeta w * ((1 / 2 : ℂ) * w * (w - 1))
    rw [xi_eq_completed w hw0 hw1, riemannZeta_def_of_ne_zero hw0, div_eq_mul_inv]
    ring
  have hord := analyticOrderAt_congr hprod
  rw [analyticOrderAt_mul (differentiable_xi.analyticAt s) hg,
    analyticOrderAt_mul (analyticOn_riemannZeta s h1) hp,
    hg.analyticOrderAt_eq_zero.mpr hg0, hp.analyticOrderAt_eq_zero.mpr hp0,
    add_zero, add_zero] at hord
  rwa [spectralSource_order, arithmeticParameter_spectralParameter]

/-- Spectrum membership and finite eigenspace multiplicity at every point. -/
structure ExactIdentification (S : Set ℂ) (m : ℂ → ℕ) : Prop where
  mem_iff : ∀ z, z ∈ S ↔ 0 < m z
  order_eq : ∀ z, (m z : ℕ∞) = analyticOrderAt spectralSource z

theorem ExactIdentification.mem_iff_zero {S : Set ℂ} {m : ℂ → ℕ}
    (h : ExactIdentification S m) (z : ℂ) :
    z ∈ S ↔ spectralSource z = 0 := by
  rw [h.mem_iff, ← (differentiable_spectralSource.analyticAt z).analyticOrderAt_ne_zero,
    ← h.order_eq]
  simp [Nat.pos_iff_ne_zero]

/-- The original zeta zero order is the required eigenspace multiplicity. -/
theorem ExactIdentification.order_at_nontrivial_zeta_zero {S : Set ℂ} {m : ℂ → ℕ}
    (h : ExactIdentification S m) {s : ℂ}
    (hz : riemannZeta s = 0) (ht : ¬ ∃ n : ℕ, s = -2 * (n + 1)) (h1 : s ≠ 1) :
    (m (spectralParameter s) : ℕ∞) = analyticOrderAt riemannZeta s :=
  (h.order_eq _).trans (spectralSource_order_at_nontrivial_zeta_zero hz ht h1)

/-- Matching a repeated zero's location with a single occurrence fails. -/
theorem no_exact_identification_of_omitted_occurrence {S : Set ℂ} {m : ℂ → ℕ}
    {z : ℂ} (hm : m z = 1) (hz : 2 ≤ analyticOrderAt spectralSource z) :
    ¬ ExactIdentification S m := by
  intro h
  rw [← h.order_eq, hm] at hz
  norm_num at hz

/-- Both spectrum inclusion directions are necessary for this obstruction. -/
theorem no_exact_identification_of_nonnegative_real_parts {S : Set ℂ} {m : ℂ → ℕ}
    (hS : ∀ z ∈ S, 0 ≤ z.re) {w : ℂ} (hw : w ∈ S) (hpos : 0 < w.re) :
    ¬ ExactIdentification S m := by
  intro h
  have hneg := (h.mem_iff_zero (-w)).2 ((spectralSource_neg w).trans ((h.mem_iff_zero w).1 hw))
  have hle := hS _ hneg
  rw [Complex.neg_re, neg_nonneg] at hle
  exact (not_le_of_gt hpos) hle

open GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander in
/-- Every nonempty weighted Alexander snapshot with injective labels fails
exact signed identification, independently of the choice of multiplicities. -/
theorem no_exact_identification_weighted_alexander {Prime Knot : Type*}
    (s : Source Prime Knot) (code : Vertex Prime Knot → ℕ) (hcode : Function.Injective code)
    (F : Finset (Vertex Prime Knot)) (hF : F.Nonempty) (m : ℂ → ℕ) :
    ¬ ExactIdentification (spectrum ℂ (weightedFiniteDiracCLM s code F)) m := by
  classical
  obtain ⟨i, hi⟩ := hF
  let _ : Nonempty (SnapshotVertex F) := ⟨⟨i, hi⟩⟩
  have hspec : (spectrum ℂ (weightedFiniteDiracCLM s code F)).Nonempty := by
    rw [ContinuousLinearMap.spectrum_eq]
    obtain ⟨w, hw⟩ := Module.End.exists_eigenvalue
      (weightedFiniteDiracCLM s code F).toLinearMap
    exact ⟨w, Module.End.hasEigenvalue_iff_mem_spectrum.mp hw⟩
  obtain ⟨w, hw⟩ := hspec
  have hlo {z : ℂ} (hz : z ∈ spectrum ℂ (weightedFiniteDiracCLM s code F)) :
      (1 / 2 : ℝ) ≤ z.re :=
    weightedFiniteDiracCLM_spectrum_re_ge_half s code hcode F hz
  exact no_exact_identification_of_nonnegative_real_parts
    (fun _ hz => (by norm_num : (0 : ℝ) ≤ 1 / 2).trans (hlo hz)) hw
    ((by norm_num : (0 : ℝ) < 1 / 2).trans_le (hlo hw))

/-- Every zero of the completed source, at every height, enters the return. -/
theorem riemannHypothesis_of_real_source_zeros
    (hreal : ∀ z, spectralSource z = 0 → z.im = 0) : RiemannHypothesis := by
  intro s hz ht hs1
  have hs : spectralSource (spectralParameter s) = 0 := by
    rw [spectralSource_eq, arithmeticParameter_spectralParameter, xi_zero_iff_nontrivial_zeta]
    exact ⟨hz, ht, hs1⟩
  exact (sub_eq_zero.mp (by simpa only [spectralParameter_im] using hreal _ hs)).symm

/-- A real spectrum with complete coverage would imply RH. -/
theorem riemannHypothesis_of_exact_identification {S : Set ℂ} {m : ℂ → ℕ}
    (hreal : ∀ z ∈ S, z.im = 0) (h : ExactIdentification S m) : RiemannHypothesis :=
  riemannHypothesis_of_real_source_zeros fun z hz => hreal z ((h.mem_iff_zero z).2 hz)

/-- A nonnegative squared spectrum is a separate possible return. The
square identifies opposite signs, so coverage does not track multiplicity. -/
theorem riemannHypothesis_of_nonnegative_squared_coverage {S : Set ℂ}
    (hS : ∀ z ∈ S, z.im = 0 ∧ 0 ≤ z.re)
    (hcover : ∀ z, spectralSource z = 0 → z ^ 2 ∈ S) : RiemannHypothesis := by
  apply riemannHypothesis_of_real_source_zeros
  intro z hz
  have h := hS _ (hcover z hz)
  rw [pow_two, Complex.mul_im, Complex.mul_re] at h
  by_contra him
  have hre : z.re = 0 := by
    apply (mul_eq_zero.mp (show z.re * z.im = 0 by linarith [h.1])).resolve_right him
  have hsq := h.2
  rw [hre, zero_mul, zero_sub] at hsq
  nlinarith [sq_pos_of_ne_zero him]

/-- Hurwitz's exclusion argument for the actual completed source. An off-axis
zero would have an isolating disk where the reciprocals of the approximants
are analytic. Their uniform boundary bound propagates to the center. -/
theorem spectralSource_im_eq_zero_of_locally_uniform
    (D : ℕ → ℂ → ℂ) (hD : ∀ n, Differentiable ℂ (D n))
    (hreal : ∀ n z, z.im ≠ 0 → D n z ≠ 0)
    (hlim : TendstoLocallyUniformly D spectralSource atTop)
    {z : ℂ} (hz : spectralSource z = 0) : z.im = 0 := by
  by_contra hzim
  have han := differentiable_spectralSource.analyticAt z
  have hpunct : ∀ᶠ w in 𝓝[≠] z, spectralSource w ≠ 0 := by
    rcases han.eventually_eq_zero_or_eventually_ne_zero with hzero | hne
    · have hfull : AnalyticOnNhd ℂ spectralSource univ :=
        fun w _ => differentiable_spectralSource.analyticAt w
      have hwhole := hfull.eqOn_zero_of_preconnected_of_eventuallyEq_zero
        isPreconnected_univ (mem_univ z) hzero
      have ha : spectralSource (-(I / 2)) = 0 := hwhole (mem_univ _)
      rw [spectralSource_anchor] at ha
      norm_num at ha
    · exact hne
  have hhalf : ∀ᶠ w : ℂ in 𝓝 z, w.im ≠ 0 :=
    continuous_im.continuousAt.tendsto.eventually (eventually_ne_nhds hzim)
  have hnear : {w : ℂ | w.im ≠ 0 ∧ (w ≠ z → spectralSource w ≠ 0)} ∈ 𝓝 z :=
    hhalf.and (by simpa using (eventually_nhdsWithin_iff.mp hpunct))
  obtain ⟨r, hr, hball⟩ := Metric.mem_nhds_iff.mp hnear
  let R := r / 2
  have hR : 0 < R := by dsimp [R]; positivity
  have hclosed {w : ℂ} (hw : w ∈ Metric.closedBall z R) :
      w.im ≠ 0 ∧ (w ≠ z → spectralSource w ≠ 0) :=
    hball (Metric.mem_ball.mpr ((Metric.mem_closedBall.mp hw).trans_lt (by dsimp [R]; linarith)))
  have hc := isCompact_sphere z R
  obtain ⟨y, hy, hmin⟩ := hc.exists_isMinOn (NormedSpace.sphere_nonempty.mpr hR.le)
    differentiable_spectralSource.continuous.norm.continuousOn
  let a := ‖spectralSource y‖ / 2
  have ha : 0 < a := div_pos (norm_pos_iff.mpr
    ((hclosed (Metric.sphere_subset_closedBall hy)).2
      (Metric.ne_of_mem_sphere hy (ne_of_gt hR)))) two_pos
  have hu := (tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hc).mp
    hlim.tendstoLocallyUniformlyOn
  have hb := Metric.tendstoUniformlyOn_iff.mp hu a ha
  have hcenter : ∀ᶠ n in atTop, a ≤ ‖D n z‖ := by
    filter_upwards [hb] with n hn
    have hd : DifferentiableOn ℂ (fun w => (D n w)⁻¹) (Metric.closedBall z R) :=
      fun w hw => ((hD n w).inv (hreal n w (hclosed hw).1)).differentiableWithinAt
    have hbound : ‖(D n z)⁻¹‖ ≤ a⁻¹ := by
      apply Complex.norm_le_of_forall_mem_frontier_norm_le
        Metric.isBounded_ball (hd.diffContOnCl_ball subset_rfl) _
        (subset_closure (Metric.mem_ball_self hR))
      intro w hw
      have hws := Metric.frontier_ball_subset_sphere hw
      have hwd := hn w hws
      rw [dist_eq_norm] at hwd
      have hwmin : ‖spectralSource y‖ ≤ ‖spectralSource w‖ := (hmin hws).out
      have habs := abs_norm_sub_norm_le (spectralSource w) (D n w)
      have hlower : a ≤ ‖D n w‖ := by
        dsimp [a] at *
        linarith [le_abs_self (‖spectralSource w‖ - ‖D n w‖)]
      rw [norm_inv]
      exact inv_anti₀ ha hlower
    rw [norm_inv, inv_le_inv₀ (norm_pos_iff.mpr (hreal n z hzim)) ha] at hbound
    exact hbound
  have hpoint := (hlim.tendstoLocallyUniformlyOn (s := univ)).tendsto_at (mem_univ z)
  have hle := ge_of_tendsto hpoint.norm hcenter
  rw [hz, norm_zero] at hle
  exact (not_le_of_gt ha) hle

/-- The remaining premise is convergence to the original completed function
of a family built with real zeros independently of the zeta zero set. -/
theorem riemannHypothesis_of_locally_uniform_real_rooted
    (D : ℕ → ℂ → ℂ) (hD : ∀ n, Differentiable ℂ (D n))
    (hreal : ∀ n z, z.im ≠ 0 → D n z ≠ 0)
    (hlim : TendstoLocallyUniformly D spectralSource atTop) : RiemannHypothesis :=
  riemannHypothesis_of_real_source_zeros
    fun _ hz => spectralSource_im_eq_zero_of_locally_uniform D hD hreal hlim hz

/-- The determinant and its correction have a prescribed common anchor.
The exact identity has the normalization factor 2 because ξ(1) = 1/2. -/
structure NormalizedDeterminantReturn (D u : ℂ → ℂ) : Prop where
  analytic_det : Differentiable ℂ D
  analytic_unit : Differentiable ℂ u
  unit_ne_zero : ∀ z, u z ≠ 0
  det_anchor : D (-(I / 2)) = 1
  unit_anchor : u (-(I / 2)) = 1
  identity : ∀ z, u z * D z = 2 * spectralSource z

theorem NormalizedDeterminantReturn.order_eq {D u : ℂ → ℂ}
    (h : NormalizedDeterminantReturn D u) (z : ℂ) :
    analyticOrderAt D z = analyticOrderAt spectralSource z := by
  have hu := h.analytic_unit.analyticAt z
  have hD := h.analytic_det.analyticAt z
  have hξ := differentiable_spectralSource.analyticAt z
  have htwo : AnalyticAt ℂ (fun _ : ℂ => (2 : ℂ)) z := analyticAt_const
  have heq : u * D = (fun _ : ℂ => (2 : ℂ)) * spectralSource := funext h.identity
  have hord := congrArg (fun f : ℂ → ℂ => analyticOrderAt f z) heq
  rw [analyticOrderAt_mul hu hD, analyticOrderAt_mul htwo hξ,
    hu.analyticOrderAt_eq_zero.mpr (h.unit_ne_zero z),
    htwo.analyticOrderAt_eq_zero.mpr (by norm_num), zero_add, zero_add] at hord
  exact hord

theorem exact_identification_of_normalized_determinant {S : Set ℂ}
    {m : ℂ → ℕ} {D u : ℂ → ℂ}
    (hmem : ∀ z, z ∈ S ↔ 0 < m z)
    (hord : ∀ z, (m z : ℕ∞) = analyticOrderAt D z)
    (h : NormalizedDeterminantReturn D u) : ExactIdentification S m :=
  ⟨hmem, fun z => (hord z).trans (h.order_eq z)⟩

end GRWTSK.NumberTheory.Zeta.Riemann.XiSpectralIdentification
