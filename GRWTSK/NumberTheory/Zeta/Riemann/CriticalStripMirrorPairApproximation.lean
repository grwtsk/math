/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticC1Approximation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairChannels

set_option autoImplicit false

/-!
# Actual arithmetic pair enclosures and pointwise completeness

Every positive integer cutoff has a constructed enclosure of the SAME source by
the SAME sextic finiteModel. Its error tends to zero on each FIXED bounded strip,
including arbitrarily small nonzero mirror separation. Eventual acceptance of
one pair is equivalent to nonvanishing of that pair, NOT a consequence of error
decay alone. The all-point coverage proposition is exactly equivalent to RH and
remains unproved. These finite-model comparisons contain exact complex powers;
they are not an implemented rational evaluator or an executable Boolean checker.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.MirrorApproximation
open Complex Set Filter
open CenteredMellin.SexticPrimitive CenteredMellin.SexticPrimitive.C1Approximation
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open scoped Topology
noncomputable section

/-- Complete value/derivative budget; the signed displacement is not rounded away. -/
def errorBudget (T : ℝ) (N : ℕ) (d : ℂ) : ℝ :=
  (valueRadius (T+6) N)^2+‖d‖^2*(derivativeRadius (T+6) N)^2

def Accepted (T : ℝ) (N : ℕ) (c d : ℂ) : Prop :=
  errorBudget T N d < energy (finiteModel N) c d

/-- Constructed analytic fields for every cutoff, not assumed value/derivative arrays. -/
def enclosure {T : ℝ} {N : ℕ} {c d : ℂ}
    (hT : 0 ≤ T) (hN : 1 ≤ N) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    Enclosure poleNormalizedZeta (finiteModel N) c d :=
  Enclosure.ofRegion (valueRadius (T+6) N) (derivativeRadius (T+6) N)
    (valueRadius_nonneg (by linarith) N) (derivativeRadius_nonneg (by linarith) N)
    hd (band_convex T) (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => (finiteModel_hasDerivAt hN hz.1).differentiableAt)
    (fun z hz => value_error hN (by linarith) hz.1 (band_factors hz))
    (fun z hz => derivative_error hN (by linarith) hz.1 (band_factors hz)) hp hm

lemma enclosure_budget {T : ℝ} {N : ℕ} {c d : ℂ}
    (hT : 0 ≤ T) (hN : 1 ≤ N) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    (enclosure hT hN hd hp hm).budget = errorBudget T N d := rfl

/-- Exact arithmetic enclosures remain valid as the mirror separation tends to zero;
there is no 1/|d| term in either channel radius. The zero displacement is excluded. -/
theorem channel_errors {T : ℝ} {N : ℕ} {c d : ℂ}
    (hT : 0 ≤ T) (hN : 1 ≤ N) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    ‖even poleNormalizedZeta c d-even (finiteModel N) c d‖ ≤ valueRadius (T+6) N ∧
      ‖odd poleNormalizedZeta c d-odd (finiteModel N) c d‖ ≤ derivativeRadius (T+6) N :=
  ⟨(enclosure hT hN hd hp hm).even_error,(enclosure hT hN hd hp hm).odd_error⟩

/-- A concrete all-point enclosure on |Im|<=20. No strict model energy margin
is asserted, and the critical-line displacement zero is still excluded. -/
theorem cutoff64_channel_bounds {c d : ℂ} (hd : d ≠ 0)
    (hp : c+d ∈ band 20) (hm : c-d ∈ band 20) :
    ‖even poleNormalizedZeta c d-even (finiteModel 64) c d‖ ≤ (1/20000 : ℝ) ∧
      ‖odd poleNormalizedZeta c d-odd (finiteModel 64) c d‖ ≤ (1/250 : ℝ) := by
  have h := channel_errors (N := 64) (by norm_num : (0 : ℝ) ≤ 20) (by decide) hd hp hm
  norm_num only [show (20 : ℝ)+6=26 by norm_num] at h
  exact ⟨h.1.trans cutoff64_radii.1,h.2.trans cutoff64_radii.2⟩

lemma errorBudget_tendsto_zero (T : ℝ) (d : ℂ) :
    Tendsto (fun n : ℕ => errorBudget T (n+1) d) atTop (𝓝 0) := by
  simpa [errorBudget] using ((valueRadius_tendsto_zero (T+6)).pow 2).add
    (((derivativeRadius_tendsto_zero (T+6)).pow 2).const_mul (‖d‖^2))

/-- This limit fixes the height bound AND the pair. It does not give a common
acceptance cutoff for every height or every nonzero separation. -/
theorem eventually_accepted_iff {T : ℝ} {c d : ℂ}
    (hT : 0 ≤ T) (hd : d ≠ 0) (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    (∀ᶠ n : ℕ in atTop, Accepted T (n+1) c d) ↔
      ¬ (poleNormalizedZeta (c+d)=0 ∧ poleNormalizedZeta (c-d)=0) := by
  let C (n : ℕ) := enclosure (N := n+1) hT (by omega) hd hp hm
  have hb : Tendsto (fun n => (C n).budget) atTop (𝓝 0) :=
    errorBudget_tendsto_zero T d
  exact GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.eventually_accepts_iff C hb

theorem exists_accepted_iff {T : ℝ} {c d : ℂ}
    (hT : 0 ≤ T) (hd : d ≠ 0) (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    (∃ n : ℕ, Accepted T (n+1) c d) ↔
      ¬ (poleNormalizedZeta (c+d)=0 ∧ poleNormalizedZeta (c-d)=0) := by
  let C (n : ℕ) := enclosure (N := n+1) hT (by omega) hd hp hm
  have hb : Tendsto (fun n => (C n).budget) atTop (𝓝 0) :=
    errorBudget_tendsto_zero T d
  exact GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.exists_accepts_iff C hb

/-- Exact hypothetical pair coordinates; the model still evaluates complex powers. -/
def Eligible (z : ℂ) : Prop := 0 < z.re ∧ z.re < 1 ∧ z.re ≠ 1/2

def Trial (n : ℕ) (z : ℂ) : Prop :=
  Accepted |z.im| (n+1) (MirrorChannels.center z) (MirrorChannels.offset z)

lemma mirror_endpoints_in_band {z : ℂ} (hz : Eligible z) :
    MirrorChannels.center z+MirrorChannels.offset z ∈ band |z.im| ∧
      MirrorChannels.center z-MirrorChannels.offset z ∈ band |z.im| := by
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  constructor
  · exact ⟨hz.1,hz.2.1,neg_abs_le z.im,le_abs_self z.im⟩
  · change 0 < (criticalReflection z).re ∧ (criticalReflection z).re < 1 ∧
      -|z.im| ≤ (criticalReflection z).im ∧ (criticalReflection z).im ≤ |z.im|
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re,
      Complex.sub_im,Complex.one_im,Complex.conj_im,zero_sub,neg_neg]
    exact ⟨by linarith [hz.2.1],by linarith [hz.1],neg_abs_le z.im,le_abs_self z.im⟩

/-- On the open strip, the normalized zero is precisely a canonical target zero.
The trivial-zero and pole exclusions are proved, not omitted. -/
lemma target_of_source_zero {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (hz : poleNormalizedZeta z=0) : NontrivialZetaZero z := by
  have hne : z ≠ 1 := by
    intro he
    have hr := congrArg Complex.re he
    norm_num at hr
    linarith
  refine ⟨(poleNormalizedZeta_eq_zero_iff hne).mp hz,?_,hne⟩
  rintro ⟨n,hn⟩
  have hr : z.re = -2*((n : ℝ)+1) := by rw [hn]; simp
  have hnonneg := Nat.cast_nonneg (α := ℝ) n
  nlinarith

lemma source_pair_zero_iff_target {z : ℂ} (hz : Eligible z) :
    (poleNormalizedZeta z=0 ∧ poleNormalizedZeta (criticalReflection z)=0) ↔
      NontrivialZetaZero z := by
  constructor
  · intro h
    exact target_of_source_zero hz.1 hz.2.1 h.1
  · intro h
    exact ⟨poleNormalizedZeta_zero_of_target h,poleNormalizedZeta_zero_of_target h.critical_reflection⟩

/-- The source's functional mirror upgrades fixed-pair completeness to the
canonical zero predicate. This does NOT assert that every eligible point passes. -/
theorem eventually_trial_iff_not_target {z : ℂ} (hz : Eligible z) :
    (∀ᶠ n : ℕ in atTop, Trial n z) ↔ ¬ NontrivialZetaZero z := by
  have hm := mirror_endpoints_in_band hz
  have h := eventually_accepted_iff (abs_nonneg z.im)
    (MirrorChannels.offset_ne_zero hz.2.2) hm.1 hm.2
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset,
    source_pair_zero_iff_target hz] at h
  exact h

theorem exists_trial_iff_not_target {z : ℂ} (hz : Eligible z) :
    (∃ n : ℕ, Trial n z) ↔ ¬ NontrivialZetaZero z := by
  have hm := mirror_endpoints_in_band hz
  have h := exists_accepted_iff (abs_nonneg z.im)
    (MirrorChannels.offset_ne_zero hz.2.2) hm.1 hm.2
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset,
    source_pair_zero_iff_target hz] at h
  exact h

/-- Every point retains its OWN cutoff; neither quantifier is removed. -/
def Coverage : Prop := ∀ z : ℂ, Eligible z → ∃ n : ℕ, Trial n z

/-- An exact criterion for the actual finite arithmetic comparisons, not a proof
of their universal strict margin and not a rational-checker implementation. -/
theorem coverage_iff_rh : Coverage ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    apply HeightFiber.rhOn_univ_iff_rh.mp
    intro z _ hz0
    by_contra hoff
    have hz : Eligible z := ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
    exact ((exists_trial_iff_not_target hz).mp (h z hz)) hz0
  · intro h z hz
    apply (exists_trial_iff_not_target hz).mpr
    intro hz0
    exact hz.2.2 (HeightFiber.rhOn_univ_iff_rh.mpr h z (Set.mem_univ z) hz0)

def coverageProfile : LocalRHProfile Coverage := LocalRHProfile.ofEquivalence coverage_iff_rh
@[simp] theorem coverageProfile_status : coverageProfile.status = .equivalent := rfl

/-- Port to the PREVIOUS closed successor box. Eligibility comes from actual
zero membership, not from removing real boundaries or the lower height seam. -/
theorem window_successor_of_trials {N : ℕ} (hbase : WindowRH N)
    (hcover : ∀ z ∈ HeightFiber.successorBox N, Eligible z → ∃ n, Trial n z) :
    WindowRH (N+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  have he : Eligible z := ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact ((exists_trial_iff_not_target he).mp (hcover z hz he)) hz0

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.MirrorApproximation
