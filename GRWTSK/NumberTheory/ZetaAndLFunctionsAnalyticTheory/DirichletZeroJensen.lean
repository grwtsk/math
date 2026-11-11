/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveZeroMoment
import Mathlib.Analysis.Complex.JensenFormula
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Topology.Piecewise

/-!
# Jensen upper counting for the actual Dirichlet zero divisor

MSC2020: 11M26, 11M41, 30C15.

The pole-cleared function below is the removable extension of `(s-1)*L(chi,s)`.
Its value at 1 is the actual principal residue, or zero for a nonprincipal
character. In particular the conductor-one zeta value is 1, NOT the zero
obtained by multiplying totalized values at the pole. Entire analyticity is
proved from continuation and the residue limit; it is not an input field.

Every original strip zero has its original analytic multiplicity in this
function. The finite height window injects into the disk centred at 2 with
radius H+2. Its multiplicity mass is bounded by the full nonnegative analytic
divisor in that disk, whose support is proved finite. Jensen on the disk of
twice the radius then bounds the EXISTING heightCount by the logarithm of an
actual circle bound, with denominator log 2 and centre value L(chi,2).

The final consumer removes the zero-count hypothesis in favour of an explicit
all-height growth hypothesis for this actual entire source. It does NOT prove
that growth hypothesis, the full arithmetic explicit formula, or positivity.
The extra zero at 1 for nonprincipal characters is harmless for an upper count;
no global equality of divisors is asserted. No RH/GRH hypothesis is used.

Primary adaptation: Stefan Kebekus, Mathlib JensenFormula and Divisor;
Yury Kudryashov, removable singularities; David Loeffler and Michael Stoll,
Dirichlet continuation/residues. Exact pinned locators and per-declaration
records: `DirichletZeroJensen.provenance/`. Coordination: grwtsk/math#1801.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit
and independent review NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section

open Set Filter Metric MeromorphicOn MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Removable pole clearing of the continued source, with its actual residue. -/
def poleClearedLFunction (chi : DirichletCharacter ℂ N) : ℂ → ℂ := by
  classical
  exact Function.update (fun s : ℂ => (s - 1) * DirichletCharacter.LFunction chi s) 1
    (if chi = 1 then ∏ p ∈ N.primeFactors, (1 - (p : ℂ)⁻¹) else 0)

/-- Away from the only possible pole the original arithmetic source is unchanged. -/
theorem poleClearedLFunction_of_ne (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : s ≠ 1) :
    poleClearedLFunction chi s = (s - 1) * DirichletCharacter.LFunction chi s := by
  classical
  simp only [poleClearedLFunction, Function.update_of_ne hs]

/-- The literal conductor-one specialization, including its repaired pole value. -/
theorem poleClearedLFunction_modOne :
    poleClearedLFunction (1 : DirichletCharacter ℂ 1) =
      Function.update (fun s : ℂ => (s - 1) * riemannZeta s) 1 1 := by
  classical
  simp [poleClearedLFunction, DirichletCharacter.LFunction_modOne_eq]

/-- A boundary negative control: the raw totalized product has the wrong zeta value. -/
theorem zeta_pole_clearing_requires_repair :
    ((1 : ℂ) - 1) * riemannZeta 1 = 0 ∧
      poleClearedLFunction (1 : DirichletCharacter ℂ 1) 1 = 1 := by
  rw [poleClearedLFunction_modOne]
  simp

/-- Pole clearing creates a zero at 1 for a nonprincipal character whose original
L-function is nonzero there. Hence only the stated off-1 source return is valid. -/
theorem poleClearedLFunction_adds_nonprincipal_zero (chi : DirichletCharacter ℂ N)
    (hchi : chi ≠ 1) :
    poleClearedLFunction chi 1 = 0 ∧ DirichletCharacter.LFunction chi 1 ≠ 0 := by
  classical
  exact ⟨by simp [poleClearedLFunction, hchi],
    DirichletCharacter.LFunction_apply_one_ne_zero hchi⟩

/-- Continuity at the repaired point comes from the residue limit, not cancellation
of totalized function values. This works for every positive level. -/
theorem continuousAt_poleClearedLFunction_one (chi : DirichletCharacter ℂ N) :
    ContinuousAt (poleClearedLFunction chi) 1 := by
  classical
  unfold poleClearedLFunction
  rw [continuousAt_update_same]
  by_cases hchi : chi = 1
  · subst chi
    simpa [DirichletCharacter.LFunctionTrivChar] using
      (DirichletCharacter.LFunctionTrivChar_residue_one (N := N))
  · have hc : ContinuousAt
        (fun s : ℂ => (s - 1) * DirichletCharacter.LFunction chi s) 1 :=
      (continuousAt_id.sub continuousAt_const).mul
        (DirichletCharacter.differentiable_LFunction hchi).continuous.continuousAt
    simpa [hchi] using hc.tendsto.mono_left nhdsWithin_le_nhds

/-- Entire analyticity is derived for the actual pole-cleared source. -/
theorem differentiable_poleClearedLFunction (chi : DirichletCharacter ℂ N) :
    Differentiable ℂ (poleClearedLFunction chi) := by
  classical
  have hoff : ∀ s : ℂ, s ≠ 1 → DifferentiableAt ℂ (poleClearedLFunction chi) s := by
    intro s hs
    apply DifferentiableAt.congr_of_eventuallyEq
    · exact (differentiableAt_id.sub_const 1).mul
        (chi.differentiableAt_LFunction s (.inl hs))
    · filter_upwards [eventually_ne_nhds hs] with z hz
      exact poleClearedLFunction_of_ne chi hz
  intro s
  by_cases hs : s = 1
  · subst s
    apply (Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
      ?_ (continuousAt_poleClearedLFunction_one chi)).differentiableAt
    filter_upwards [self_mem_nhdsWithin] with z hz
    exact hoff z hz
  · exact hoff s hs

/-- At the fixed Jensen centre there is no normalizing factor. -/
theorem poleClearedLFunction_two (chi : DirichletCharacter ℂ N) :
    poleClearedLFunction chi (2 : ℂ) = DirichletCharacter.LFunction chi 2 := by
  rw [poleClearedLFunction_of_ne chi (by norm_num : (2 : ℂ) ≠ 1)]
  norm_num

/-- The centre is nonzero by the unconditional right-half-plane theorem. -/
theorem poleClearedLFunction_two_ne_zero (chi : DirichletCharacter ℂ N) :
    poleClearedLFunction chi (2 : ℂ) ≠ 0 := by
  rw [poleClearedLFunction_two]
  exact chi.LFunction_ne_zero_of_one_le_re (.inr (by norm_num)) (by norm_num)

/-- No source zeros are created or removed away from 1. This does not assert
critical-line localization, nor equality of the global divisors at 1. -/
theorem poleClearedLFunction_zero_iff (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : s ≠ 1) :
    poleClearedLFunction chi s = 0 ↔ DirichletCharacter.LFunction chi s = 0 := by
  rw [poleClearedLFunction_of_ne chi hs, mul_eq_zero]
  simp only [sub_eq_zero, hs, false_or]

/-- The factor s-1 is a local analytic unit at every indexed strip zero. -/
theorem analyticOrderAt_poleClearedLFunction (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) :
    analyticOrderAt (poleClearedLFunction chi) rho.1 = (zeroMultiplicity chi rho : ℕ∞) := by
  classical
  have ha : AnalyticAt ℂ (poleClearedLFunction chi) rho.1 :=
    ((differentiable_poleClearedLFunction chi).differentiableOn.analyticOnNhd
      isOpen_univ) rho.1 (mem_univ _)
  obtain ⟨g, hg, hg0, hfactor⟩ := zeroMultiplicity_factorization chi rho
  apply ha.analyticOrderAt_eq_natCast.mpr
  refine ⟨fun s : ℂ => (s - 1) * g s,
    (analyticAt_id.sub analyticAt_const).mul hg,
    mul_ne_zero (sub_ne_zero.mpr (CriticalStripZero.ne_one rho)) hg0, ?_⟩
  filter_upwards [hfactor, eventually_ne_nhds (CriticalStripZero.ne_one rho)] with s hs hs1
  rw [poleClearedLFunction_of_ne chi hs1, hs, smul_eq_mul]
  ring

/-- The original source weight is the disk divisor weight; no arbitrary weights
or silent infinite-order-to-zero conversion appear here. -/
theorem divisor_poleClearedLFunction_at_zero (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) {U : Set ℂ} (hrho : rho.1 ∈ U) :
    MeromorphicOn.divisor (poleClearedLFunction chi) U rho.1 =
      (zeroMultiplicity chi rho : ℤ) := by
  have ha : AnalyticOnNhd ℂ (poleClearedLFunction chi) U :=
    ((differentiable_poleClearedLFunction chi).differentiableOn.analyticOnNhd
      isOpen_univ).mono (subset_univ U)
  rw [ha.divisor_apply hrho, analyticOrderAt_poleClearedLFunction]
  simp

/-- All complex locations in the strict height window lie in this fixed-centre
closed disk. Both height signs and central zeros are retained. -/
theorem heightWindow_mem_closedBall_two (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (rho : CriticalStripZero chi)
    (hrho : rho ∈ heightWindow chi hprim H) :
    rho.1 ∈ closedBall (2 : ℂ) (H + 2) := by
  have hh := (mem_heightWindow chi hprim H rho).mp hrho
  rw [mem_closedBall, dist_eq_norm]
  calc
    ‖rho.1 - 2‖ ≤ |(rho.1 - 2).re| + |(rho.1 - 2).im| :=
      Complex.norm_le_abs_re_add_abs_im _
    _ ≤ H + 2 := by
      change |rho.1.re - 2| + |rho.1.im| ≤ H + 2
      rw [abs_of_neg (by linarith [rho.2.2.2] : rho.1.re - 2 < 0)]
      linarith [rho.2.2.1]

/-- Genuine source multiplicity mass is at most the analytic disk divisor mass.
The finite support proof is explicit; `finsum` is not used on an infinite support. -/
theorem heightCount_le_poleCleared_divisor (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) :
    (heightCount chi hprim H : ℤ) ≤
      ∑ᶠ z, MeromorphicOn.divisor (poleClearedLFunction chi) (closedBall 2 (H + 2)) z := by
  classical
  let d := MeromorphicOn.divisor (poleClearedLFunction chi) (closedBall 2 (H + 2))
  have hd : (Function.support d).Finite := d.finiteSupport (isCompact_closedBall ..)
  let s := (heightWindow chi hprim H).image (fun rho : CriticalStripZero chi => rho.1)
  let t := s ∪ hd.toFinset
  have hsupp : Function.support d ⊆ (t : Set ℂ) := by
    intro z hz
    exact Finset.mem_union.mpr (Or.inr (hd.mem_toFinset.mpr hz))
  have ha : AnalyticOnNhd ℂ (poleClearedLFunction chi) (closedBall 2 (H + 2)) :=
    ((differentiable_poleClearedLFunction chi).differentiableOn.analyticOnNhd
      isOpen_univ).mono (subset_univ _)
  have hsum : (heightCount chi hprim H : ℤ) = ∑ z ∈ s, d z := by
    rw [show s = (heightWindow chi hprim H).image
      (fun rho : CriticalStripZero chi => rho.1) from rfl,
      Finset.sum_image (fun _ _ _ _ h => Subtype.val_injective h)]
    simp only [heightCount, Nat.cast_sum]
    apply Finset.sum_congr rfl
    intro rho hrho
    exact (divisor_poleClearedLFunction_at_zero chi rho
      (heightWindow_mem_closedBall_two chi hprim H rho hrho)).symm
  change (heightCount chi hprim H : ℤ) ≤ ∑ᶠ z, d z
  rw [hsum, finsum_eq_sum_of_support_subset d hsupp]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact Finset.subset_union_left
  · intro z _ _
    exact ha.divisor_nonneg z

/-- Jensen's explicit upper bound for the EXISTING source count. M>=1 is retained
from the pinned Mathlib theorem. No circle bound is manufactured by this statement. -/
theorem heightCount_le_jensen (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H M : ℝ) (hH : 2 ≤ H) (hM : 1 ≤ M)
    (hbound : ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), ‖poleClearedLFunction chi s‖ ≤ M) :
    (heightCount chi hprim H : ℝ) ≤
      Real.log (M / ‖DirichletCharacter.LFunction chi 2‖) / Real.log 2 := by
  have hr : 0 < H + 2 := by linarith
  have hR : 0 < 2 * (H + 2) := by positivity
  have ha : AnalyticOnNhd ℂ (poleClearedLFunction chi)
      (closedBall (2 : ℂ) |2 * (H + 2)|) :=
    ((differentiable_poleClearedLFunction chi).differentiableOn.analyticOnNhd
      isOpen_univ).mono (subset_univ _)
  have hj := AnalyticOnNhd.sum_divisor_le
    (c := (2 : ℂ)) (r := H + 2) (R := 2 * (H + 2)) (M := M)
    (by simpa [abs_of_pos hr] using hr)
    (by rw [abs_of_pos hr, abs_of_pos hR]; linarith)
    hM ha (poleClearedLFunction_two_ne_zero chi)
    (by simpa only [abs_of_pos hR] using hbound)
  have hratio : 2 * (H + 2) / (H + 2) = 2 := by
    field_simp [ne_of_gt hr]
  have hc : (heightCount chi hprim H : ℝ) ≤
      ((∑ᶠ z, MeromorphicOn.divisor (poleClearedLFunction chi)
        (closedBall 2 (H + 2)) z : ℤ) : ℝ) := by
    exact_mod_cast heightCount_le_poleCleared_divisor chi hprim H
  apply hc.trans
  simpa only [abs_of_pos hr, hratio, poleClearedLFunction_two] using hj

/-- An actual all-height circle-growth supplier gives an explicit H log H count.
The centre term is absorbed with a displayed constant, not a hidden uniformity claim. -/
theorem heightCount_le_of_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hgrowth : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + |Real.log ‖DirichletCharacter.LFunction chi 2‖|) / Real.log 2) *
        H * (Real.log H + (L + 1)) := by
  have hH0 : 0 ≤ H := by linarith
  have hlog : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hv : ‖DirichletCharacter.LFunction chi 2‖ ≠ 0 := by
    apply norm_ne_zero_iff.mpr
    simpa only [poleClearedLFunction_two] using poleClearedLFunction_two_ne_zero chi
  have he : 1 ≤ Real.exp (C * H * (Real.log H + L)) :=
    Real.one_le_exp_iff.mpr (mul_nonneg (mul_nonneg hC hH0) (add_nonneg hlog hL))
  have hj := heightCount_le_jensen chi hprim H _ hH he (hgrowth H hH)
  rw [Real.log_div (Real.exp_ne_zero _) hv, Real.log_exp] at hj
  have hb : 1 ≤ H * (Real.log H + (L + 1)) := by
    have hbr : 1 ≤ Real.log H + (L + 1) := by linarith
    exact (show 1 ≤ H by linarith).trans (le_mul_of_one_le_right hH0 hbr)
  have hcost : C * H * (Real.log H + L) ≤ C * (H * (Real.log H + (L + 1))) := by
    nlinarith [mul_nonneg hC hH0]
  have hcentre : -Real.log ‖DirichletCharacter.LFunction chi 2‖ ≤
      |Real.log ‖DirichletCharacter.LFunction chi 2‖| *
        (H * (Real.log H + (L + 1))) :=
    (show -Real.log ‖DirichletCharacter.LFunction chi 2‖ ≤
        |Real.log ‖DirichletCharacter.LFunction chi 2‖| from by
      simpa only [abs_neg] using
        le_abs_self (-Real.log ‖DirichletCharacter.LFunction chi 2‖)).trans
      (le_mul_of_one_le_right (abs_nonneg _) hb)
  calc
    _ ≤ (C * H * (Real.log H + L) - Real.log ‖DirichletCharacter.LFunction chi 2‖) /
        Real.log 2 := hj
    _ ≤ ((C + |Real.log ‖DirichletCharacter.LFunction chi 2‖|) *
        (H * (Real.log H + (L + 1)))) / Real.log 2 := by
      apply div_le_div_of_nonneg_right _ hl2.le
      nlinarith
    _ = _ := by ring

/-- Source return to the unchanged complex-correlation consumer. The only new
quantitative assumption is the explicit growth of the actual pole-cleared source. -/
theorem summable_primitive_correlation_of_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hgrowth : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  exact summable_primitive_correlation_of_heightCount chi hprim
    ((C + |Real.log ‖DirichletCharacter.LFunction chi 2‖|) / Real.log 2) (L + 1)
    (div_nonneg (add_nonneg hC (abs_nonneg _)) hl2.le) (by linarith)
    (heightCount_le_of_circle_growth chi hprim C L hC hL hgrowth)
    f A hA hf hs k hk

end GRWTSK.NumberTheory.WeilNegativeWitness
