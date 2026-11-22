/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.FunctionsOfAComplexVariable.CompactZeroInventory
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource

/-!
# A boundary error certificate for completed-zeta determinant zero counts

The determinant and the original completed source must supply their own
holomorphic divisor data. The logarithmic derivative sees analytic order,
so the comparison counts repeated zeros and accepts a holomorphic nonzero
normalizing factor without changing the count. This is the contour step of
an operator-to-determinant return.
-/

set_option autoImplicit false
noncomputable section

open Filter Metric
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Zeta.XiDeterminantCircleCount

open GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle
open GRWTSK.Analysis.ComplexAnalysis.CompactZeroInventory

/-- One unit in the normalized integral is the smallest nonzero gap between
two integral multiplicity counts. -/
theorem count_eq_of_boundary_logDeriv_error {f g : ℂ → ℂ} {c : ℂ} {R E : ℝ}
    (source : AnalyticZeroData f c R) (candidate : AnalyticZeroData g c R)
    (hbound : ∀ z ∈ sphere c R, ‖logDeriv g z - logDeriv f z‖ ≤ E)
    (hgap : R * E < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) =
      ∑ a ∈ source.zeros, source.multiplicity a := by
  let n := ∑ a ∈ candidate.zeros, candidate.multiplicity a
  let m := ∑ a ∈ source.zeros, source.multiplicity a
  have hdataF := source.weighted_circleIntegral (fun _ => 1) (fun _ _ => analyticAt_const)
  have hdataG := candidate.weighted_circleIntegral (fun _ => 1) (fun _ _ => analyticAt_const)
  have hiF : CircleIntegrable (logDeriv f) c R := by simpa using hdataF.1
  have hiG : CircleIntegrable (logDeriv g) c R := by simpa using hdataG.1
  have heF : (∮ z in C(c, R), logDeriv f z) = (m : ℂ) * period := by
    simpa [m, Nat.cast_sum] using hdataF.2
  have heG : (∮ z in C(c, R), logDeriv g z) = (n : ℂ) * period := by
    simpa [n, Nat.cast_sum] using hdataG.2
  have hnorm := circleIntegral.norm_integral_le_of_norm_le_const source.positive_radius.le hbound
  rw [circleIntegral.integral_sub hiG hiF, heG, heF, ← sub_mul, norm_mul] at hnorm
  have hp : ‖period‖ = 2 * Real.pi := by
    simp [period, abs_of_pos Real.pi_pos]
  rw [hp] at hnorm
  have hstrict : ‖(n : ℂ) - (m : ℂ)‖ < 1 := by
    apply lt_of_mul_lt_mul_right (a := 2 * Real.pi) _ (by positivity)
    calc
      ‖(n : ℂ) - (m : ℂ)‖ * (2 * Real.pi) ≤ 2 * Real.pi * R * E := hnorm
      _ = (R * E) * (2 * Real.pi) := by ring
      _ < 1 * (2 * Real.pi) := mul_lt_mul_of_pos_right hgap (by positivity)
  have hreal : |(n : ℝ) - (m : ℝ)| < 1 := by
    calc
      _ ≤ ‖(n : ℂ) - (m : ℂ)‖ := by
        simpa using Complex.abs_re_le_norm ((n : ℂ) - (m : ℂ))
      _ < 1 := hstrict
  rcases abs_lt.mp hreal with ⟨hl, hr⟩
  by_contra hne
  rcases lt_or_gt_of_ne hne with hnm | hmn
  · have hc : (n : ℝ) + 1 ≤ m := by exact_mod_cast Nat.succ_le_of_lt hnm
    linarith
  · have hc : (m : ℝ) + 1 ≤ n := by exact_mod_cast Nat.succ_le_of_lt hmn
    linarith

/-- Quantitative comparison of two logarithmic derivatives. Here `b` is a
positive lower bound for both denominators. -/
theorem logDeriv_error_le {f g : ℂ → ℂ} {z : ℂ} {b M D D' : ℝ} (hb : 0 < b)
    (hf : b ≤ ‖f z‖) (hg : b ≤ ‖g z‖) (hM : ‖deriv f z‖ ≤ M)
    (hD : ‖g z - f z‖ ≤ D) (hD' : ‖deriv g z - deriv f z‖ ≤ D') :
    ‖logDeriv g z - logDeriv f z‖ ≤ D' / b + M * D / b ^ 2 := by
  have hf0 : f z ≠ 0 := norm_pos_iff.mp (hb.trans_le hf)
  have hg0 : g z ≠ 0 := norm_pos_iff.mp (hb.trans_le hg)
  have hd : 0 ≤ D := (norm_nonneg _).trans hD
  have hd' : 0 ≤ D' := (norm_nonneg _).trans hD'
  rw [logDeriv_apply, logDeriv_apply]
  have he : deriv g z / g z - deriv f z / f z =
      (deriv g z - deriv f z) / g z + deriv f z * (f z - g z) / (g z * f z) := by
    field_simp [hf0, hg0]
    ring
  rw [he]
  refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [norm_div]
    exact div_le_div₀ hd' hD' hb hg
  · rw [norm_div, norm_mul, norm_mul, norm_sub_rev (f z) (g z)]
    apply div_le_div₀ (mul_nonneg ((norm_nonneg _).trans hM) hd)
      (mul_le_mul hM hD (norm_nonneg _) ((norm_nonneg _).trans hM)) (sq_pos_of_pos hb)
    rw [pow_two]
    exact mul_le_mul hg hf hb.le (norm_nonneg _)

private theorem lower_norm_of_close {u v : ℂ} {b δ : ℝ}
    (hu : 2 * b ≤ ‖u‖) (hv : ‖v - u‖ ≤ δ) (hδ : δ ≤ b) : b ≤ ‖v‖ := by
  have htriangle : ‖u‖ ≤ ‖v - u‖ + ‖v‖ := by
    calc
      ‖u‖ = ‖(u - v) + v‖ := by rw [sub_add_cancel]
      _ ≤ ‖u - v‖ + ‖v‖ := norm_add_le _ _
      _ = ‖v - u‖ + ‖v‖ := by rw [norm_sub_rev]
  linarith

/-- A zero-free source margin and two uniform error bounds suffice for the
exact count in a disk around any complex spectral parameter. -/
theorem count_eq_of_boundary_errors {f g : ℂ → ℂ} {c : ℂ} {R b M D D' : ℝ}
    (source : AnalyticZeroData f c R) (candidate : AnalyticZeroData g c R)
    (hb : 0 < b) (hsmall : D ≤ b)
    (hsource : ∀ z ∈ sphere c R, 2 * b ≤ ‖f z‖ ∧ ‖deriv f z‖ ≤ M)
    (herror : ∀ z ∈ sphere c R, ‖g z - f z‖ ≤ D ∧ ‖deriv g z - deriv f z‖ ≤ D')
    (hgap : R * (D' / b + M * D / b ^ 2) < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) =
      ∑ a ∈ source.zeros, source.multiplicity a := by
  apply count_eq_of_boundary_logDeriv_error source candidate _ hgap
  intro z hz
  obtain ⟨hval, hderiv⟩ := hsource z hz
  obtain ⟨herr, herr'⟩ := herror z hz
  exact logDeriv_error_le hb (by linarith) (lower_norm_of_close hval herr hsmall) hderiv herr herr'

/-- A nowhere-zero analytic factor on the closed disk preserves the exact
inventory and every local multiplicity of the determinant. -/
def normalizedZeroData {f u : ℂ → ℂ} {c : ℂ} {R : ℝ} (data : AnalyticZeroData f c R)
    (hu : AnalyticOnNhd ℂ u (closedBall c R)) (hunit : ∀ z ∈ closedBall c R, u z ≠ 0) :
    AnalyticZeroData (u * f) c R where
  zeros := data.zeros
  multiplicity := data.multiplicity
  positive_radius := data.positive_radius
  inside := data.inside
  analytic := hu.mul data.analytic
  actual_order := by
    intro a ha
    have hclosed := ball_subset_closedBall (data.inside a ha)
    rw [analyticOrderAt_mul (hu a hclosed) (data.analytic a hclosed),
      (hu a hclosed).analyticOrderAt_eq_zero.mpr (hunit a hclosed), zero_add, data.actual_order a ha]
  nonzero_away := fun z hz hnot => mul_ne_zero (hunit z hz) (data.nonzero_away z hz hnot)

open CompletedQuotientSource in
/-- Apply the count certificate to the canonical entire source
`z ↦ ξ(1/2 - I*z)`. The disk may be centered at an off-real point. -/
theorem count_eq_completed_zeta {D : ℂ → ℂ} {c : ℂ} {R b M δ δ' : ℝ}
    (source : AnalyticZeroData spectralSource c R) (candidate : AnalyticZeroData D c R)
    (hb : 0 < b) (hsmall : δ ≤ b)
    (hsource : ∀ z ∈ sphere c R, 2 * b ≤ ‖spectralSource z‖ ∧ ‖deriv spectralSource z‖ ≤ M)
    (herror : ∀ z ∈ sphere c R,
      ‖D z - spectralSource z‖ ≤ δ ∧ ‖deriv D z - deriv spectralSource z‖ ≤ δ')
    (hgap : R * (δ' / b + M * δ / b ^ 2) < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) =
      ∑ a ∈ source.zeros, source.multiplicity a :=
  count_eq_of_boundary_errors source candidate hb hsmall hsource herror hgap

/-- A disk disjoint from the real line cannot hide a source zero at its
center if its total order matches a real-rooted candidate. -/
theorem center_nonzero_of_real_candidate {f g : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (source : AnalyticZeroData f c R) (candidate : AnalyticZeroData g c R)
    (hoff : R ≤ |c.im|) (hreal : ∀ a ∈ candidate.zeros, a.im = 0)
    (hcount : (∑ a ∈ candidate.zeros, candidate.multiplicity a) =
      ∑ a ∈ source.zeros, source.multiplicity a) : f c ≠ 0 := by
  have hempty : candidate.zeros = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro a ha
    have hdist : ‖a - c‖ < R := by simpa [mem_ball, dist_eq_norm] using candidate.inside a ha
    have him : |(a - c).im| = |c.im| := by rw [Complex.sub_im, hreal a ha, zero_sub, abs_neg]
    exact (not_lt_of_ge (hoff.trans (him ▸ Complex.abs_im_le_norm (a - c)))) hdist
  have htotal : ∑ a ∈ source.zeros, source.multiplicity a = 0 := by
    simpa [hempty] using hcount.symm
  intro hz
  have hc : c ∈ closedBall c R := mem_closedBall_self source.positive_radius.le
  have hmem : c ∈ source.zeros := by
    by_contra hnot
    exact source.nonzero_away c hc hnot hz
  have hle : source.multiplicity c ≤ ∑ a ∈ source.zeros, source.multiplicity a :=
    Finset.single_le_sum (fun a _ => Nat.zero_le (source.multiplicity a)) hmem
  have hzero : source.multiplicity c = 0 := by omega
  have ho := source.actual_order c hmem
  rw [hzero, Nat.cast_zero] at ho
  exact ((source.analytic c hc).analyticOrderAt_ne_zero.mpr hz) ho

open CompletedQuotientSource in
/-- Boundary data for one disk comparing a real-rooted entire determinant
candidate with the actual completed zeta function in spectral coordinates. -/
structure OffAxisDiskCertificate (c : ℂ) where
  D : ℂ → ℂ
  R : ℝ
  b : ℝ
  M : ℝ
  valueError : ℝ
  derivativeError : ℝ
  entire : Differentiable ℂ D
  real_roots : ∀ z, D z = 0 → z.im = 0
  radius_pos : 0 < R
  off_axis : R ≤ |c.im|
  margin_pos : 0 < b
  error_le_margin : valueError ≤ b
  source_bounds : ∀ z ∈ sphere c R, 2 * b ≤ ‖spectralSource z‖ ∧ ‖deriv spectralSource z‖ ≤ M
  errors : ∀ z ∈ sphere c R,
    ‖D z - spectralSource z‖ ≤ valueError ∧ ‖deriv D z - deriv spectralSource z‖ ≤ derivativeError
  gap : R * (derivativeError / b + M * valueError / b ^ 2) < 1

private def entireContext {f : ℂ → ℂ} (hf : Differentiable ℂ f) (a : ℂ) (ha : f a ≠ 0) :
    AnalyticContext f Set.univ where
  analytic := fun z _ => hf.analyticAt z
  connected := isConnected_univ
  anchor := a
  anchor_mem := Set.mem_univ _
  anchor_nonzero := ha

open CompletedQuotientSource in
private theorem spectralSource_differentiable : Differentiable ℂ spectralSource := by
  unfold spectralSource
  exact differentiable_xi.comp (by fun_prop)

open CompletedQuotientSource in
/-- The complete divisor inventories follow from compactness and analyticity.
The certificate needs only the boundary estimates and real rootedness. -/
theorem OffAxisDiskCertificate.source_ne_zero {c : ℂ} (cert : OffAxisDiskCertificate c) :
    spectralSource c ≠ 0 := by
  have hboundF (z : ℂ) (hz : z ∈ sphere c cert.R) : spectralSource z ≠ 0 :=
    norm_pos_iff.mp ((mul_pos (by norm_num : (0 : ℝ) < 2) cert.margin_pos).trans_le
      (cert.source_bounds z hz).1)
  have hboundD (z : ℂ) (hz : z ∈ sphere c cert.R) : cert.D z ≠ 0 :=
    norm_pos_iff.mp (cert.margin_pos.trans_le
      (lower_norm_of_close (cert.source_bounds z hz).1 (cert.errors z hz).1 cert.error_le_margin))
  let a : ℂ := c + (cert.R : ℂ)
  have ha : a ∈ sphere c cert.R := by
    simp [a, abs_of_pos cert.radius_pos]
  let source := entireContext spectralSource_differentiable a (hboundF a ha)
  let candidate := entireContext cert.entire a (hboundD a ha)
  let sourceData := source.toCircle c cert.R cert.radius_pos (Set.subset_univ _) hboundF
  let candidateData := candidate.toCircle c cert.R cert.radius_pos (Set.subset_univ _) hboundD
  have hreal (z : ℂ) (hz : z ∈ candidateData.zeros) : z.im = 0 := by
    exact cert.real_roots z ((candidate.mem_zeros _ (isCompact_closedBall c cert.R)
      (Set.subset_univ _) z).mp hz).2
  exact center_nonzero_of_real_candidate sourceData candidateData cert.off_axis hreal
    (count_eq_completed_zeta sourceData candidateData cert.margin_pos cert.error_le_margin
      cert.source_bounds cert.errors cert.gap)

open CompletedQuotientSource Complex in
/-- A family supplying an exact boundary certificate around every nonreal
spectral coordinate gives the original Mathlib Riemann hypothesis. -/
theorem riemannHypothesis_of_off_axis_certificates
    (hcert : ∀ c : ℂ, c.im ≠ 0 → Nonempty (OffAxisDiskCertificate c)) : RiemannHypothesis := by
  intro s hz htriv hs1
  have hs0 : s ≠ 0 := by
    rintro rfl
    norm_num [riemannZeta_zero] at hz
  have hgamma : Complex.Gammaℝ s ≠ 0 := by
    rw [Ne, Complex.Gammaℝ_eq_zero_iff]
    rintro ⟨n, hn⟩
    cases n with
    | zero => exact hs0 (by simpa using hn)
    | succ n => exact htriv ⟨n, by rw [hn, Nat.cast_succ]; ring⟩
  have hc : completedRiemannZeta s = 0 := by
    rw [riemannZeta_def_of_ne_zero hs0, div_eq_zero_iff] at hz
    exact hz.resolve_right hgamma
  let z := I * (s - 1 / 2)
  have harg : (1 / 2 : ℂ) - I * z = s := by
    dsimp [z]
    rw [← mul_assoc, I_mul_I]
    ring
  have hzero : spectralSource z = 0 := by
    rw [spectralSource, harg, xi_eq_completed s hs0 hs1, hc, mul_zero]
  have him : z.im = 0 := by
    by_contra hne
    obtain ⟨cert⟩ := hcert z hne
    exact cert.source_ne_zero hzero
  simp [z, Complex.mul_im, Complex.sub_re] at him
  linarith

open CompletedQuotientSource in
private theorem exists_off_axis_boundary {c : ℂ} (hc : c.im ≠ 0) :
    ∃ R : ℝ, 0 < R ∧ R ≤ |c.im| ∧ ∀ z ∈ sphere c R, spectralSource z ≠ 0 := by
  have hanchor : spectralSource (-Complex.I / 2) ≠ 0 := by
    have harg : (1 / 2 : ℂ) - Complex.I * (-Complex.I / 2) = 0 := by
      rw [← mul_div_assoc, mul_neg, Complex.I_mul_I]
      ring
    rw [spectralSource, harg, xi_zero]
    norm_num
  let source := entireContext spectralSource_differentiable _ hanchor
  have horder := source.finite_order c (Set.mem_univ _)
  have hnear := (spectralSource_differentiable.analyticAt c).eventually_eq_zero_or_eventually_ne_zero
    |>.resolve_left (fun h => horder (analyticOrderAt_eq_top.mpr h))
  obtain ⟨ε, hε, hsmall⟩ := Metric.mem_nhdsWithin_iff.mp hnear
  let R := min (ε / 2) (|c.im| / 2)
  have him := abs_pos.mpr hc
  have hR : 0 < R := lt_min (by positivity) (by positivity)
  refine ⟨R, hR, (min_le_right _ _).trans (by linarith), fun z hz => hsmall ?_⟩
  have heq := mem_sphere.mp hz
  refine ⟨mem_ball.mpr (heq ▸ (min_le_left _ _).trans_lt (by linarith)), ?_⟩
  exact Set.mem_compl_singleton_iff.mpr (fun h => by
    subst z
    exact hR.ne' (by simpa using heq.symm))

open CompletedQuotientSource in
/-- Locally uniform convergence of entire functions supplies quantitative
counts on every fixed zero-free circle. The derivative approximation follows
from the holomorphic convergence theorem. -/
theorem eventually_off_axis_certificate {D : ℕ → ℂ → ℂ}
    (hentire : ∀ n, Differentiable ℂ (D n))
    (hreal : ∀ n z, D n z = 0 → z.im = 0)
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop Set.univ)
    {c : ℂ} (hc : c.im ≠ 0) :
    ∀ᶠ n in atTop, ∃ cert : OffAxisDiskCertificate c, cert.D = D n := by
  obtain ⟨R, hR, hoff, hboundary⟩ := exists_off_axis_boundary hc
  have hF := spectralSource_differentiable
  have hcompact := isCompact_sphere c R
  obtain ⟨a, ha, hmin⟩ := hcompact.exists_isMinOn
    (NormedSpace.sphere_nonempty.mpr hR.le) hF.continuous.norm.continuousOn
  let b := ‖spectralSource a‖ / 2
  have hb : 0 < b := div_pos (norm_pos_iff.mpr (hboundary a ha)) (by norm_num)
  have hderiv : Continuous (deriv spectralSource) :=
    continuous_iff_continuousAt.mpr fun z => (hF.analyticAt z).deriv.continuousAt
  obtain ⟨a', _, hmax⟩ := hcompact.exists_isMaxOn
    (NormedSpace.sphere_nonempty.mpr hR.le) hderiv.norm.continuousOn
  let M := ‖deriv spectralSource a'‖
  have hsource (z : ℂ) (hz : z ∈ sphere c R) :
      2 * b ≤ ‖spectralSource z‖ ∧ ‖deriv spectralSource z‖ ≤ M := by
    refine ⟨?_, hmax hz⟩
    rw [show 2 * b = ‖spectralSource a‖ by dsimp [b]; ring]
    exact hmin hz
  obtain ⟨ε, hε, hgap⟩ := exists_pos_mul_lt (by norm_num : (0 : ℝ) < 1)
    (R * (1 / b + M / b ^ 2))
  let δ := min ε b
  have hδ : 0 < δ := lt_min hε hb
  have hcoef : 0 ≤ R * (1 / b + M / b ^ 2) := by dsimp [M]; positivity
  have hsize : R * (δ / b + M * δ / b ^ 2) < 1 := by
    calc
      _ = R * (1 / b + M / b ^ 2) * δ := by ring
      _ ≤ R * (1 / b + M / b ^ 2) * ε := mul_le_mul_of_nonneg_left (min_le_left _ _) hcoef
      _ < 1 := hgap
  have hv := (tendstoLocallyUniformlyOn_iff_forall_isCompact isOpen_univ).mp hlim
    (sphere c R) (Set.subset_univ _) hcompact
  have hlim' := hlim.deriv (Eventually.of_forall fun n => (hentire n).differentiableOn) isOpen_univ
  have hd := (tendstoLocallyUniformlyOn_iff_forall_isCompact isOpen_univ).mp hlim'
    (sphere c R) (Set.subset_univ _) hcompact
  rw [Metric.tendstoUniformlyOn_iff] at hv hd
  filter_upwards [hv δ hδ, hd δ hδ] with n hn hn'
  refine ⟨⟨D n, R, b, M, δ, δ, hentire n, hreal n, hR, hoff, hb, min_le_right _ _,
    hsource, ?_, hsize⟩, rfl⟩
  intro z hz
  have hvz := hn z hz
  have hdz := hn' z hz
  rw [dist_comm, dist_eq_norm] at hvz
  rw [dist_comm, dist_eq_norm, Function.comp_apply] at hdz
  exact ⟨hvz.le, hdz.le⟩

open CompletedQuotientSource in
/-- The determinant-convergence route through multiplicities and contour
integrals, on the same entire function as the canonical spectral source. -/
theorem riemannHypothesis_of_locallyUniform_real_rooted {D : ℕ → ℂ → ℂ}
    (hentire : ∀ n, Differentiable ℂ (D n))
    (hreal : ∀ n z, D n z = 0 → z.im = 0)
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop Set.univ) : RiemannHypothesis := by
  apply riemannHypothesis_of_off_axis_certificates
  intro c hc
  obtain ⟨_, cert, _⟩ := (eventually_off_axis_certificate hentire hreal hlim hc).exists
  exact ⟨cert⟩

open CompletedQuotientSource in
/-- A sequence of finite Hermitian matrices supplies real-rooted
determinants. The limit hypothesis concerns their actual normalized
characteristic polynomials and the entire completed zeta source. -/
theorem riemannHypothesis_of_normalized_hermitian_limit {d : ℕ → ℕ}
    (A : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ) (hA : ∀ n, (A n).IsHermitian)
    (u : ℕ → ℂ → ℂ) (hu : ∀ n, Differentiable ℂ (u n)) (hunit : ∀ n z, u n z ≠ 0)
    (hlim : TendstoLocallyUniformlyOn (fun n z => u n z * (A n).charpoly.eval z)
      spectralSource atTop Set.univ) : RiemannHypothesis := by
  refine riemannHypothesis_of_locallyUniform_real_rooted
    (fun n => (hu n).mul (A n).charpoly.differentiable) ?_ hlim
  intro n z hz
  have hz₀ : (A n).charpoly.eval z = 0 := (mul_eq_zero.mp hz).resolve_left (hunit n z)
  have hzmem : z ∈ (A n).charpoly.roots :=
    (Polynomial.mem_roots (Matrix.charpoly_monic (A n)).ne_zero).mpr hz₀
  rw [(hA n).roots_charpoly_eq_eigenvalues] at hzmem
  obtain ⟨i, _, rfl⟩ := Multiset.mem_map.mp hzmem
  change ((hA n).eigenvalues i : ℂ).im = 0
  simp

/-- A simple and a double root at the same point have identical root sets.
On the unit circle their log-derivative error is exactly the counting gap. -/
theorem simple_double_boundary_control {z : ℂ} (hz : z ∈ sphere (0 : ℂ) 1) :
    ‖logDeriv (fun w : ℂ => w ^ 2) z - logDeriv id z‖ = 1 := by
  have hzn : ‖z‖ = 1 := by simpa [mem_sphere_iff_norm] using hz
  have hz0 : z ≠ 0 := norm_pos_iff.mp (by rw [hzn]; norm_num)
  have hfun : deriv (fun w : ℂ => w ^ 2) z = 2 * z := by
    simp
  rw [logDeriv_apply, logDeriv_apply, hfun, deriv_id]
  change ‖(2 : ℂ) * z / z ^ 2 - 1 / z‖ = 1
  have he : (2 : ℂ) * z / z ^ 2 - 1 / z = 1 / z := by field_simp [hz0]; ring
  rw [he, norm_div, hzn, norm_one, div_one]

end GRWTSK.NumberTheory.Zeta.XiDeterminantCircleCount
