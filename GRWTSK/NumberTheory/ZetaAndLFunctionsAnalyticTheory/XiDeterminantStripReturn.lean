/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.RiemannZeroSymmetry
import Mathlib.Analysis.Complex.AbsMax
import Mathlib.Analysis.Analytic.IsolatedZeros
<<<<<<< HEAD
=======
import Mathlib.Topology.Baire.Lemmas
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b

/-!
# Determinant convergence on the critical strip and retained lattice zeros

Connes–Consani–Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
Proposition 5.9, Theorem 5.10 and Lemma 7.3 motivate two separate uses of the
same strip limit. See the sibling provenance record for the exact source map.
-/

set_option autoImplicit false

open Complex Filter Metric Set
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Zeta.XiDeterminantStripReturn

open CompletedQuotientSource

/-- The open strip containing every rotated nontrivial zeta zero. -/
def spectralStrip : Set ℂ := {z | |z.im| < 1 / 2}

private theorem spectralStrip_open : IsOpen spectralStrip :=
  isOpen_lt continuous_im.abs continuous_const

private theorem source_differentiable : Differentiable ℂ spectralSource := by
  unfold spectralSource
  exact differentiable_xi.comp (by fun_prop)

private theorem source_anchor_ne_zero : spectralSource (-I / 2) ≠ 0 := by
  have h : (1 / 2 : ℂ) - I * (-I / 2) = 0 := by
    rw [← mul_div_assoc, mul_neg, I_mul_I]
    ring
  rw [spectralSource, h, xi_zero]
  norm_num

private theorem source_eventually_ne_zero (c : ℂ) :
    ∀ᶠ z in 𝓝[≠] c, spectralSource z ≠ 0 := by
  refine (source_differentiable.analyticAt c).eventually_eq_zero_or_eventually_ne_zero
    |>.resolve_left ?_
  intro hzero
  have hz := AnalyticOnNhd.eqOn_zero_of_preconnected_of_eventuallyEq_zero
    (fun z (_ : z ∈ univ) => source_differentiable.analyticAt z)
    isPreconnected_univ (mem_univ c) hzero (mem_univ (-I / 2))
  exact source_anchor_ne_zero hz

/-- A lower bound for the norm on the boundary of a disk transfers to the
center when the candidate has no zeros on the closed disk. -/
private theorem norm_lower_at_center {g : ℂ → ℂ} {c : ℂ} {r b : ℝ}
    (hr : 0 < r) (hb : 0 < b) (hg : DifferentiableOn ℂ g (closedBall c r))
    (hnz : ∀ z ∈ closedBall c r, g z ≠ 0)
    (hboundary : ∀ z ∈ sphere c r, b ≤ ‖g z‖) :
    b ≤ ‖g c‖ := by
  have hg' : DifferentiableOn ℂ g⁻¹ (closure (ball c r)) := by
    rw [closure_ball c hr.ne']
    exact hg.inv hnz
  have hle := Complex.norm_le_of_forall_mem_frontier_norm_le
    (isBounded_ball (x := c) (r := r)) hg'.diffContOnCl (C := b⁻¹) (by
      intro z hz
      change ‖(g z)⁻¹‖ ≤ b⁻¹
      rw [norm_inv]
      exact inv_anti₀ hb (hboundary z (frontier_ball_subset_sphere hz)))
    (subset_closure (mem_ball_self hr))
  change ‖(g c)⁻¹‖ ≤ b⁻¹ at hle
  rw [norm_inv] at hle
  exact (inv_le_inv₀ (norm_pos_iff.mpr (hnz c (mem_closedBall_self hr.le))) hb).mp hle

<<<<<<< HEAD
=======
/-- A center error and an independent boundary error suffice to force a
candidate zero near a source zero. The source needs no approximation bound
at the interior points between the center and the circle. -/
theorem exists_zero_of_center_boundary_errors {f g : ℂ → ℂ} {c : ℂ}
    {r m ε δ : ℝ} (hr : 0 < r) (hg : DifferentiableOn ℂ g (closedBall c r))
    (sourceZero : f c = 0) (centerError : ‖g c - f c‖ ≤ ε)
    (sourceMargin : ∀ z ∈ sphere c r, m ≤ ‖f z‖)
    (boundaryError : ∀ z ∈ sphere c r, ‖g z - f z‖ ≤ δ)
    (gap : ε + δ < m) : ∃ z ∈ ball c r, g z = 0 := by
  have center : ‖g c‖ ≤ ε := by simpa only [sourceZero, sub_zero] using centerError
  have positive : 0 < m - δ := by linarith [norm_nonneg (g c)]
  have boundary (z : ℂ) (hz : z ∈ sphere c r) : m - δ ≤ ‖g z‖ := by
    have triangle : ‖f z‖ ≤ ‖g z - f z‖ + ‖g z‖ := by
      simpa only [norm_sub_rev (f z) (g z), sub_add_cancel] using
        norm_add_le (f z - g z) (g z)
    linarith [sourceMargin z hz, boundaryError z hz]
  by_contra! noZero
  have closedNonzero (z : ℂ) (hz : z ∈ closedBall c r) : g z ≠ 0 := by
    rcases (mem_closedBall.mp hz).lt_or_eq with h | h
    · exact noZero z (mem_ball.mpr h)
    · exact norm_pos_iff.mp (positive.trans_le (boundary z (mem_sphere.mpr h)))
  have lower := norm_lower_at_center hr positive hg closedNonzero boundary
  linarith

/-- For a real-rooted candidate, an off-axis source zero forces the sum
of the center and boundary error bounds to reach the source margin. -/
theorem source_ne_zero_of_off_axis_center_boundary_errors {D : ℂ → ℂ} {c : ℂ}
    {r m ε δ : ℝ} (hr : 0 < r) (offAxis : r ≤ |c.im|)
    (hD : DifferentiableOn ℂ D (closedBall c r))
    (realZeros : ∀ z ∈ ball c r, D z = 0 → z.im = 0)
    (centerError : ‖D c - spectralSource c‖ ≤ ε)
    (sourceMargin : ∀ z ∈ sphere c r, m ≤ ‖spectralSource z‖)
    (boundaryError : ∀ z ∈ sphere c r, ‖D z - spectralSource z‖ ≤ δ)
    (gap : ε + δ < m) : spectralSource c ≠ 0 := by
  intro sourceZero
  obtain ⟨z, hz, root⟩ := exists_zero_of_center_boundary_errors hr hD sourceZero
    centerError sourceMargin boundaryError gap
  have imaginary := Complex.abs_im_le_norm (z - c)
  rw [Complex.sub_im, realZeros z hz root, zero_sub, abs_neg] at imaginary
  have distance : ‖z - c‖ < r := by simpa only [mem_ball, dist_eq_norm] using hz
  exact (not_lt_of_ge offAxis) (imaginary.trans_lt distance)

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
/-- Compact-uniform convergence on the open spectral strip is sufficient.
Real-rootedness is used through absence of candidate zeros in disks disjoint
from the real line, and the minimum modulus principle uses value errors alone. -/
theorem source_ne_zero_of_strip_limit {D : ℕ → ℂ → ℂ}
    (hD : ∀ n, DifferentiableOn ℂ (D n) spectralStrip)
    (hreal : ∀ n z, z ∈ spectralStrip → D n z = 0 → z.im = 0)
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop spectralStrip)
    {c : ℂ} (hc : c ∈ spectralStrip) (hoff : c.im ≠ 0) :
    spectralSource c ≠ 0 := by
  intro hz
  obtain ⟨s, hs, hsU⟩ := Metric.isOpen_iff.mp spectralStrip_open c hc
  obtain ⟨t, ht, hnear⟩ := Metric.mem_nhdsWithin_iff.mp (source_eventually_ne_zero c)
  let r := min (min s t) |c.im| / 2
  have hpos := lt_min (lt_min hs ht) (abs_pos.mpr hoff)
  have hr : 0 < r := half_pos hpos
  have hhalf := half_lt_self hpos
  have hrs : r < s := hhalf.trans_le ((min_le_left _ _).trans (min_le_left _ _))
  have hrt : r < t := hhalf.trans_le ((min_le_left _ _).trans (min_le_right _ _))
  have hri : r < |c.im| := hhalf.trans_le (min_le_right _ _)
  have hclosed : closedBall c r ⊆ spectralStrip := (closedBall_subset_ball hrs).trans hsU
  have hboundary (z : ℂ) (hz' : z ∈ sphere c r) : spectralSource z ≠ 0 := by
    have hd := mem_sphere.mp hz'
    exact hnear ⟨mem_ball.mpr (hd ▸ hrt), mem_compl_singleton_iff.mpr (by
      intro h
      subst z
      exact hr.ne' (by simpa using hd.symm))⟩
  obtain ⟨a, ha, hmin⟩ := (isCompact_sphere c r).exists_isMinOn
    (NormedSpace.sphere_nonempty.mpr hr.le) source_differentiable.continuous.norm.continuousOn
  let b := ‖spectralSource a‖ / 2
  have hb : 0 < b := half_pos (norm_pos_iff.mpr (hboundary a ha))
  have hu := (tendstoLocallyUniformlyOn_iff_forall_isCompact spectralStrip_open).mp hlim
    (closedBall c r) hclosed (isCompact_closedBall c r)
  rw [Metric.tendstoUniformlyOn_iff] at hu
  obtain ⟨n, hn⟩ := (hu b hb).exists
  have hclose (z : ℂ) (hz' : z ∈ closedBall c r) :
      ‖D n z - spectralSource z‖ < b := by
    simpa only [dist_comm, dist_eq_norm] using hn z hz'
<<<<<<< HEAD
  have hnz (z : ℂ) (hz' : z ∈ closedBall c r) : D n z ≠ 0 := by
    intro hzero
    have hi := hreal n z (hclosed hz') hzero
    have hnorm := Complex.abs_im_le_norm (z - c)
    rw [Complex.sub_im, hi, zero_sub, abs_neg] at hnorm
    rw [mem_closedBall, dist_eq_norm] at hz'
    exact (not_le_of_gt hri) (hnorm.trans hz')
  have hcl := hclose c (mem_closedBall_self hr.le)
  rw [hz, sub_zero] at hcl
  apply (not_le_of_gt hcl)
  apply norm_lower_at_center hr hb ((hD n).mono hclosed) hnz
  intro z hz'
  have hsmall := hclose z (sphere_subset_closedBall hz')
  have htriangle : ‖spectralSource z‖ ≤ ‖D n z - spectralSource z‖ + ‖D n z‖ := by
    simpa only [sub_add_cancel, norm_sub_rev (spectralSource z) (D n z)] using
      norm_add_le (spectralSource z - D n z) (D n z)
  have hlow : ‖spectralSource a‖ ≤ ‖spectralSource z‖ := hmin hz'
  dsimp [b] at *
  linarith
=======
  have center := hclose c (mem_closedBall_self hr.le)
  exact source_ne_zero_of_off_axis_center_boundary_errors hr hri.le
    ((hD n).mono hclosed)
    (fun z hz' => hreal n z (hclosed (ball_subset_closedBall hz')))
    le_rfl (fun _ hz' => hmin hz')
    (fun z hz' => (hclose z (sphere_subset_closedBall hz')).le)
    (by dsimp [b] at center ⊢; linarith) hz
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b

private theorem exists_real_source_ne_zero_above (B : ℝ) :
    ∃ x : ℝ, B < x ∧ spectralSource (x : ℂ) ≠ 0 := by
  obtain ⟨t, ht, hnear⟩ :=
    Metric.mem_nhdsWithin_iff.mp (source_eventually_ne_zero (B : ℂ))
  let x := B + t / 2
  have hx : B < x := by dsimp [x]; linarith
  refine ⟨x, hx, hnear ⟨?_, ?_⟩⟩
  · rw [mem_ball, Complex.isometry_ofReal.dist_eq, Real.dist_eq, abs_of_pos (sub_pos.mpr hx)]
    dsimp [x]
    linarith
  · exact mem_compl_singleton_iff.mpr (fun h => hx.ne' (Complex.ofReal_injective h))

<<<<<<< HEAD
=======
/-- Retained lattice zeros force the cutoff height to escape even under
pointwise convergence on the real axis. Continuity of the candidate
restrictions lets Baire category give a common tail error on a subinterval. -/
theorem cutoff_tendsto_atTop_of_real_pointwise_limit {D : ℕ → ℂ → ℂ} {N : ℕ → ℕ}
    {spacing : ℕ → ℝ} (hpos : ∀ n, 0 < spacing n)
    (hspacing : Tendsto spacing atTop (𝓝 0))
    (htail : ∀ n (k : ℤ), (N n : ℤ) < k →
      D n (((k : ℝ) * spacing n : ℝ) : ℂ) = 0)
    (hcontinuous : ∀ n, Continuous fun x : ℝ => D n x)
    (hlim : ∀ x : ℝ, Tendsto (fun n => D n x) atTop (𝓝 (spectralSource x))) :
    Tendsto (fun n => (N n : ℝ) * spacing n) atTop atTop := by
  refine tendsto_atTop.mpr fun B => ?_
  by_contra hB
  obtain ⟨x, hx, hxF⟩ := exists_real_source_ne_zero_above B
  let b := ‖spectralSource (x : ℂ)‖ / 2
  have hb : 0 < b := half_pos (norm_pos_iff.mpr hxF)
  have hF : Continuous fun x : ℝ => spectralSource x :=
    source_differentiable.continuous.comp Complex.continuous_ofReal
  let E (m : ℕ) : Set ℝ :=
    ⋂ n ∈ Ici m, {y : ℝ | ‖D n y - spectralSource y‖ ≤ b}
  have hclosed (m : ℕ) : IsClosed (E m) :=
    isClosed_iInter fun n => isClosed_iInter fun _ =>
      isClosed_le ((hcontinuous n).sub hF).norm continuous_const
  have hcover : ⋃ m, E m = univ := by
    ext y
    simp only [mem_iUnion, mem_iInter, mem_Ici, mem_ofPred_eq, mem_univ, iff_true, E]
    obtain ⟨m, hm⟩ := eventually_atTop.mp ((Metric.tendsto_nhds.mp (hlim y)) b hb)
    exact ⟨m, fun n hn => by simpa only [dist_eq_norm] using (hm n hn).le⟩
  let U := Ioi B ∩ {y : ℝ | b < ‖spectralSource y‖}
  have hopen : IsOpen U := isOpen_Ioi.inter (isOpen_lt continuous_const hF.norm)
  have hxU : x ∈ U := ⟨hx, half_lt_self (norm_pos_iff.mpr hxF)⟩
  obtain ⟨y, hyU, hy⟩ := Dense.inter_open_nonempty (dense_iUnion_interior_of_closed hclosed hcover)
    U hopen ⟨x, hxU⟩
  obtain ⟨m, hym⟩ := mem_iUnion.mp hy
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp
    (isOpen_interior.inter hopen) y ⟨hym, hyU⟩
  have hsmall : ∀ᶠ n in atTop, spacing n < r :=
    hspacing.eventually (gt_mem_nhds hr)
  have hbad : ∃ᶠ n in atTop, (N n : ℝ) * spacing n < B := by
    simpa only [Filter.Frequently, not_lt] using hB
  obtain ⟨n, ⟨hnm, hnsmall⟩, hncut⟩ :=
    (((eventually_ge_atTop m).and hsmall).and_frequently hbad).exists
  let k : ℤ := ⌈y / spacing n⌉
  have hk₁ : y ≤ (k : ℝ) * spacing n :=
    (div_le_iff₀ (hpos n)).mp (Int.le_ceil _)
  have hk₂ : (k : ℝ) * spacing n < y + spacing n := by
    have h := mul_lt_mul_of_pos_right (Int.ceil_lt_add_one (y / spacing n)) (hpos n)
    rwa [add_mul, div_mul_cancel₀ _ (hpos n).ne', one_mul] at h
  have hindex : (N n : ℤ) < k := by
    have h := lt_of_mul_lt_mul_right (hncut.trans (hyU.1.trans_le hk₁)) (hpos n).le
    exact_mod_cast h
  let z : ℝ := (k : ℝ) * spacing n
  have hz : z ∈ ball y r := by
    rw [mem_ball, Real.dist_eq, abs_of_nonneg (sub_nonneg.mpr hk₁)]
    change z < y + spacing n at hk₂
    linarith
  have hzE : z ∈ E m := interior_subset (hball hz).1
  have hupper : ‖D n z - spectralSource z‖ ≤ b :=
    mem_iInter.mp (mem_iInter.mp hzE n) hnm
  rw [htail n k hindex, zero_sub, norm_neg] at hupper
  exact (not_lt_of_ge hupper) (hball hz).2.2

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
/-- A determinant with unchanged lattice zeros at all positive indices above
its Fourier cutoff must send the cutoff height to infinity to converge to
completed zeta. For CCM, the lattice spacing is `2 * π / (2 * log λ)`. -/
theorem cutoff_tendsto_atTop_of_strip_limit {D : ℕ → ℂ → ℂ} {N : ℕ → ℕ}
    {spacing : ℕ → ℝ} (hpos : ∀ n, 0 < spacing n)
    (hspacing : Tendsto spacing atTop (𝓝 0))
    (htail : ∀ n (k : ℤ), (N n : ℤ) < k →
      D n (((k : ℝ) * spacing n : ℝ) : ℂ) = 0)
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop spectralStrip) :
    Tendsto (fun n => (N n : ℝ) * spacing n) atTop atTop := by
  refine tendsto_atTop.mpr fun B => ?_
  by_contra hB
  obtain ⟨x, hx, hFx⟩ := exists_real_source_ne_zero_above B
  let b := ‖spectralSource (x : ℂ)‖ / 2
  have hb : 0 < b := half_pos (norm_pos_iff.mpr hFx)
  have hbx : b < ‖spectralSource (x : ℂ)‖ := half_lt_self (norm_pos_iff.mpr hFx)
  obtain ⟨s, hs, hsU⟩ := Metric.isOpen_iff.mp spectralStrip_open (x : ℂ)
    (by simp [spectralStrip])
  obtain ⟨t, ht, htF⟩ := Metric.isOpen_iff.mp
    (isOpen_lt continuous_const source_differentiable.continuous.norm) (x : ℂ) hbx
  let r := min s t / 2
  have hpos' := lt_min hs ht
  have hr : 0 < r := half_pos hpos'
  have hrs : r < s := (half_lt_self hpos').trans_le (min_le_left _ _)
  have hrt : r < t := (half_lt_self hpos').trans_le (min_le_right _ _)
  have hclosed : closedBall (x : ℂ) r ⊆ spectralStrip := (closedBall_subset_ball hrs).trans hsU
  have hu := (tendstoLocallyUniformlyOn_iff_forall_isCompact spectralStrip_open).mp hlim
    (closedBall (x : ℂ) r) hclosed (isCompact_closedBall _ _)
  rw [Metric.tendstoUniformlyOn_iff] at hu
  have hsmall : ∀ᶠ n in atTop, spacing n < r :=
    hspacing.eventually (gt_mem_nhds hr)
  have hbad : ∃ᶠ n in atTop, (N n : ℝ) * spacing n < B := by
    simpa only [Filter.Frequently, not_lt] using hB
  obtain ⟨n, ⟨hnclose, hnsmall⟩, hncut⟩ :=
    (((hu b hb).and hsmall).and_frequently hbad).exists
  let k : ℤ := ⌈x / spacing n⌉
  have hk₁ : x ≤ (k : ℝ) * spacing n :=
    (div_le_iff₀ (hpos n)).mp (Int.le_ceil _)
  have hk₂ : (k : ℝ) * spacing n < x + spacing n := by
    have h := mul_lt_mul_of_pos_right (Int.ceil_lt_add_one (x / spacing n)) (hpos n)
    rwa [add_mul, div_mul_cancel₀ _ (hpos n).ne', one_mul] at h
  have hindex : (N n : ℤ) < k := by
    have h := lt_of_mul_lt_mul_right (hncut.trans (hx.trans_le hk₁)) (hpos n).le
    exact_mod_cast h
  let z : ℂ := ((k : ℝ) * spacing n : ℝ)
  have hdist : dist z (x : ℂ) < r := by
    rw [show z = (((k : ℝ) * spacing n : ℝ) : ℂ) by rfl,
      Complex.isometry_ofReal.dist_eq, Real.dist_eq, abs_of_nonneg (sub_nonneg.mpr hk₁)]
    linarith
  have hlower : b < ‖spectralSource z‖ := htF (mem_ball.mpr (hdist.trans hrt))
  have hupper := hnclose z (mem_closedBall.mpr hdist.le)
  rw [htail n k hindex, dist_zero_right] at hupper
  exact hlower.not_gt hupper

/-- Specialize the cutoff condition to the Fourier expression in CCM v1,
Proposition 5.9, equation (5.25). The prefactor can absorb scalar and phase
normalizations. The expression is used only away from all retained nodes. -/
theorem cutoffs_of_ccm_fourier_strip_limit {D : ℕ → ℂ → ℂ} {N : ℕ → ℕ}
    {L : ℕ → ℝ} (hL : ∀ n, 0 < L n) (hLlim : Tendsto L atTop atTop)
    (prefactor : ℕ → ℂ → ℂ) (a : ℕ → ℤ → ℂ)
    (hformula : ∀ n z,
      (∀ j ∈ Finset.Icc (-(N n : ℤ)) (N n : ℤ), z ≠ (j : ℂ) * (2 * Real.pi / L n : ℝ)) →
      D n z = prefactor n z * sin (z * (L n : ℂ) / 2) *
        ∑ j ∈ Finset.Icc (-(N n : ℤ)) (N n : ℤ),
          a n j / (z - (j : ℂ) * (2 * Real.pi / L n : ℝ)))
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop spectralStrip) :
    Tendsto (fun n => (N n : ℝ) * (2 * Real.pi / L n)) atTop atTop := by
  let Δ := fun n => 2 * Real.pi / L n
  have hΔ (n : ℕ) : 0 < Δ n := div_pos (mul_pos (by norm_num) Real.pi_pos) (hL n)
  have hΔlim : Tendsto Δ atTop (𝓝 0) := by
    simpa [Δ, div_eq_mul_inv] using hLlim.inv_tendsto_atTop.const_mul (2 * Real.pi)
  refine cutoff_tendsto_atTop_of_strip_limit hΔ hΔlim (fun n k hk => ?_) hlim
  let z : ℂ := ((k : ℝ) * Δ n : ℝ)
  change D n z = 0
  have hnodes (j : ℤ) (hj : j ∈ Finset.Icc (-(N n : ℤ)) (N n : ℤ)) :
      z ≠ (j : ℂ) * (Δ n : ℂ) := by
    intro heq
    have heq' : (k : ℂ) * (Δ n : ℂ) = (j : ℂ) * (Δ n : ℂ) := by
      simpa [z] using heq
    have hunit : (Δ n : ℂ) ≠ 0 := by exact_mod_cast (hΔ n).ne'
    have hkj : k = j := by exact_mod_cast mul_right_cancel₀ hunit heq'
    exact (not_lt_of_ge (Finset.mem_Icc.mp hj).2) (hkj ▸ hk)
  have hsin : sin (z * (L n : ℂ) / 2) = 0 := by
    have harg : z * (L n : ℂ) / 2 = (k : ℂ) * (Real.pi : ℂ) := by
      have hLn : (L n : ℂ) ≠ 0 := by exact_mod_cast (hL n).ne'
      simp only [z, Δ, ofReal_mul, ofReal_intCast, ofReal_div, ofReal_ofNat]
      field_simp [hLn]
    rw [harg, Complex.sin_int_mul_pi]
  rw [hformula n z hnodes, hsin, mul_zero, zero_mul]

/-- Return to the original `RiemannHypothesis` statement using compact-uniform
convergence only on the domain in CCM v1, Lemma 7.3. The hypothesis concerns
the real-rooted candidate itself. -/
theorem riemannHypothesis_of_strip_limit {D : ℕ → ℂ → ℂ}
    (hD : ∀ n, DifferentiableOn ℂ (D n) spectralStrip)
    (hreal : ∀ n z, z ∈ spectralStrip → D n z = 0 → z.im = 0)
    (hlim : TendstoLocallyUniformlyOn D spectralSource atTop spectralStrip) :
    RiemannHypothesis := by
  intro s hz htriv hs1
  have hs : GRWTSK.RiemannHypothesis.NontrivialZetaZero s := ⟨hz, htriv, hs1⟩
  have hright : s.re < 1 := lt_of_not_ge fun h =>
    riemannZeta_ne_zero_of_one_le_re h hz
  have hleft : 0 < s.re := lt_of_not_ge fun h => by
    have hr : 1 ≤ (1 - s).re := by simp [Complex.sub_re, h]
    exact riemannZeta_ne_zero_of_one_le_re hr hs.reflect.1
  have hcompleted := hz
  rw [riemannZeta_def_of_ne_zero hs.ne_zero] at hcompleted
  have hcompleted' := (div_eq_zero_iff.mp hcompleted).resolve_right hs.gamma_real_ne_zero
  let c := I * (s - 1 / 2)
  have hcoord : (1 / 2 : ℂ) - I * c = s := by
    dsimp [c]
    rw [← mul_assoc, I_mul_I]
    ring
  have him : c.im = s.re - 1 / 2 := by simp [c, Complex.mul_im, Complex.sub_re]
  have hc : c ∈ spectralStrip := by
    change |c.im| < 1 / 2
    rw [him, abs_lt]
    constructor <;> linarith
  have hc0 : spectralSource c = 0 := by
    rw [spectralSource, hcoord, xi_eq_completed s hs.ne_zero hs1, hcompleted', mul_zero]
  have h : c.im = 0 := by
    by_contra hne
    exact source_ne_zero_of_strip_limit hD hreal hlim hc hne hc0
  linarith

end GRWTSK.NumberTheory.Zeta.XiDeterminantStripReturn
