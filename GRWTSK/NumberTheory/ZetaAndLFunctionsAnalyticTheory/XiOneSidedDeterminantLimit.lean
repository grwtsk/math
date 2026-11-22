/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiSpectralIdentification

/-!
# A closed support obstruction to one-sided xi determinant limits

A nowhere-zero entire normalization leaves finite determinant roots unchanged.
A locally uniform limit keeps those roots in the same closed support, whereas
the signed completed-zeta source reflects every root through the origin.
-/

set_option autoImplicit false
noncomputable section

open Complex Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Zeta.Riemann.XiOneSidedDeterminantLimit

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open XiSpectralIdentification

/-- Closed-support form of the reciprocal maximum-modulus argument in
`XiSpectralIdentification.spectralSource_im_eq_zero_of_locally_uniform`. -/
theorem zero_mem_closed_of_locally_uniform {D : ℕ → ℂ → ℂ} {f : ℂ → ℂ}
    {S : Set ℂ} (hS : IsClosed S) (hD : ∀ n, Differentiable ℂ (D n))
    (hf : Differentiable ℂ f) {a : ℂ} (hanchor : f a ≠ 0)
    (hroots : ∀ n w, w ∉ S → D n w ≠ 0)
    (hlim : TendstoLocallyUniformly D f atTop)
    {z : ℂ} (hz : f z = 0) : z ∈ S := by
  by_contra hzim
  have han := hf.analyticAt z
  have hpunct : ∀ᶠ w in 𝓝[≠] z, f w ≠ 0 := by
    rcases han.eventually_eq_zero_or_eventually_ne_zero with hzero | hne
    · have hfull : AnalyticOnNhd ℂ f univ :=
        fun w _ => hf.analyticAt w
      have hwhole := hfull.eqOn_zero_of_preconnected_of_eventuallyEq_zero
        isPreconnected_univ (mem_univ z) hzero
      exact (hanchor (hwhole (mem_univ _))).elim
    · exact hne
  have hcompl : ∀ᶠ w in 𝓝 z, w ∉ S := hS.isOpen_compl.mem_nhds hzim
  have hnear : {w : ℂ | w ∉ S ∧ (w ≠ z → f w ≠ 0)} ∈ 𝓝 z :=
    hcompl.and (by simpa using (eventually_nhdsWithin_iff.mp hpunct))
  obtain ⟨r, hr, hball⟩ := Metric.mem_nhds_iff.mp hnear
  let R := r / 2
  have hR : 0 < R := by dsimp [R]; positivity
  have hclosed {w : ℂ} (hw : w ∈ Metric.closedBall z R) :
      w ∉ S ∧ (w ≠ z → f w ≠ 0) :=
    hball (Metric.mem_ball.mpr ((Metric.mem_closedBall.mp hw).trans_lt (by dsimp [R]; linarith)))
  have hc := isCompact_sphere z R
  obtain ⟨y, hy, hmin⟩ := hc.exists_isMinOn (NormedSpace.sphere_nonempty.mpr hR.le)
    hf.continuous.norm.continuousOn
  let a := ‖f y‖ / 2
  have ha : 0 < a := div_pos (norm_pos_iff.mpr
    ((hclosed (Metric.sphere_subset_closedBall hy)).2
      (Metric.ne_of_mem_sphere hy (ne_of_gt hR)))) two_pos
  have hu := (tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hc).mp
    hlim.tendstoLocallyUniformlyOn
  have hb := Metric.tendstoUniformlyOn_iff.mp hu a ha
  have hcenter : ∀ᶠ n in atTop, a ≤ ‖D n z‖ := by
    filter_upwards [hb] with n hn
    have hd : DifferentiableOn ℂ (fun w => (D n w)⁻¹) (Metric.closedBall z R) :=
      fun w hw => ((hD n w).inv (hroots n w (hclosed hw).1)).differentiableWithinAt
    have hbound : ‖(D n z)⁻¹‖ ≤ a⁻¹ := by
      apply Complex.norm_le_of_forall_mem_frontier_norm_le
        Metric.isBounded_ball (hd.diffContOnCl_ball subset_rfl) _
        (subset_closure (Metric.mem_ball_self hR))
      intro w hw
      have hws := Metric.frontier_ball_subset_sphere hw
      have hwd := hn w hws
      rw [dist_eq_norm] at hwd
      have hwmin : ‖f y‖ ≤ ‖f w‖ := (hmin hws).out
      have habs := abs_norm_sub_norm_le (f w) (D n w)
      have hlower : a ≤ ‖D n w‖ := by
        dsimp [a] at *
        linarith [le_abs_self (‖f w‖ - ‖D n w‖)]
      rw [norm_inv]
      exact inv_anti₀ ha hlower
    rw [norm_inv, inv_le_inv₀ (norm_pos_iff.mpr (hroots n z hzim)) ha] at hbound
    exact hbound
  have hpoint := (hlim.tendstoLocallyUniformlyOn (s := univ)).tendsto_at (mem_univ z)
  have hle := ge_of_tendsto hpoint.norm hcenter
  rw [hz, norm_zero] at hle
  exact (not_le_of_gt ha) hle

/-- A single noncentral xi zero obstructs every locally uniform entire
approximation whose zeros all lie on the nonnegative real axis. -/
theorem no_locally_uniform_nonnegative_roots {D : ℕ → ℂ → ℂ}
    (hD : ∀ n, Differentiable ℂ (D n))
    (hroots : ∀ n w, D n w = 0 → w.im = 0 ∧ 0 ≤ w.re)
    {z : ℂ} (hz : spectralSource z = 0) (hne : z ≠ 0) :
    ¬ TendstoLocallyUniformly D spectralSource atTop := by
  intro hlim
  let S : Set ℂ := {w | w.im = 0 ∧ 0 ≤ w.re}
  have hS : IsClosed S :=
    (isClosed_eq continuous_im continuous_const).inter
      (isClosed_le continuous_const continuous_re)
  have hanchor : spectralSource (-(I / 2)) ≠ 0 := by
    rw [spectralSource_anchor]
    norm_num
  have hsupport {w : ℂ} (hw : spectralSource w = 0) : w ∈ S :=
    zero_mem_closed_of_locally_uniform hS hD differentiable_spectralSource hanchor
      (fun n w hn hzero => hn (hroots n w hzero)) hlim hw
  have hpos : z.im = 0 ∧ 0 ≤ z.re := hsupport hz
  have hneg : (-z).im = 0 ∧ 0 ≤ (-z).re :=
    hsupport ((spectralSource_neg z).trans hz)
  rw [Complex.neg_re, neg_nonneg] at hneg
  exact hne (Complex.ext (le_antisymm hneg.2 hpos.2) hpos.1)

/-- The obstruction applies to every sequence of nonnegative Hermitian
spectra, with arbitrary nowhere-zero entire normalizing factors. -/
theorem no_locally_uniform_nonnegative_hermitian {d : ℕ → ℕ}
    (A : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ) (hA : ∀ n, (A n).IsHermitian)
    (hpos : ∀ n i, 0 ≤ (hA n).eigenvalues i)
    (u : ℕ → ℂ → ℂ) (hu : ∀ n, Differentiable ℂ (u n)) (hunit : ∀ n w, u n w ≠ 0)
    {z : ℂ} (hz : spectralSource z = 0) (hne : z ≠ 0) :
    ¬ TendstoLocallyUniformly (fun n w => u n w * (A n).charpoly.eval w)
      spectralSource atTop := by
  refine no_locally_uniform_nonnegative_roots
    (fun n => (hu n).mul (A n).charpoly.differentiable) ?_ hz hne
  intro n w hw
  have heval := (mul_eq_zero.mp hw).resolve_left (hunit n w)
  have hmem := (Polynomial.mem_roots (Matrix.charpoly_monic (A n)).ne_zero).mpr heval
  rw [(hA n).roots_charpoly_eq_eigenvalues] at hmem
  obtain ⟨i, _, rfl⟩ := Multiset.mem_map.mp hmem
  exact ⟨Complex.ofReal_im _, hpos n i⟩

/-- Transfer a nontrivial arithmetic zero away from the center into the
signed spectral obstruction. The witness can lie on or off the critical line. -/
theorem no_locally_uniform_nonnegative_hermitian_of_zeta_zero {d : ℕ → ℕ}
    (A : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ) (hA : ∀ n, (A n).IsHermitian)
    (hpos : ∀ n i, 0 ≤ (hA n).eigenvalues i)
    (u : ℕ → ℂ → ℂ) (hu : ∀ n, Differentiable ℂ (u n)) (hunit : ∀ n w, u n w ≠ 0)
    {s : ℂ} (hs : riemannZeta s = 0) (ht : ¬ ∃ n : ℕ, s = -2 * (n + 1))
    (hs1 : s ≠ 1) (hcenter : s ≠ 1 / 2) :
    ¬ TendstoLocallyUniformly (fun n w => u n w * (A n).charpoly.eval w)
      spectralSource atTop := by
  have hz : spectralSource (spectralParameter s) = 0 := by
    rw [spectralSource_eq, arithmeticParameter_spectralParameter, xi_zero_iff_nontrivial_zeta]
    exact ⟨hs, ht, hs1⟩
  refine no_locally_uniform_nonnegative_hermitian A hA hpos u hu hunit hz ?_
  intro h
  have heq := arithmeticParameter_spectralParameter s
  rw [h, arithmeticParameter, mul_zero, add_zero] at heq
  exact hcenter heq.symm

end GRWTSK.NumberTheory.Zeta.Riemann.XiOneSidedDeterminantLimit
