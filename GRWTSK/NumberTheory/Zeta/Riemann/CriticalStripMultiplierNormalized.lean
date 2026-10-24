/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.SymmetricPairUnitTransport
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation
import Mathlib.Analysis.Calculus.Deriv.Inv

set_option autoImplicit false

/-!
# Unit-normalized arithmetic source with height-independent C1 tail errors

The NEW source is explicitly H/A7, not H with smaller error labels. Both H and
finiteModel are divided by the SAME proved unit on the open critical strip.
The actual residual is -J_N and its derivative is +logTail_N. No A7' contribution
is dropped: it cancels in the quotient residual before estimating. Uniform
absolute errors do not give uniform positivity, completeness, or an RH proof.
At a zero of A7 Lean's totalized quotient can vanish spuriously; those points
are excluded by the declared domain. The old entire source H is unchanged.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.UnitNormalization
open Complex Set Filter MellinPrimitiveStep DerivativeSixteen C1Approximation
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open scoped Topology
noncomputable section

def strip : Set ℂ := {s | 0 < s.re ∧ s.re < 1}
def source (s : ℂ) : ℂ := poleNormalizedZeta s/multiplier s
def model (N : ℕ) (s : ℂ) : ℂ := finiteModel N s/multiplier s

lemma strip_open : IsOpen strip :=
  (isOpen_lt continuous_const Complex.continuous_re).inter
    (isOpen_lt Complex.continuous_re continuous_const)
lemma strip_convex : Convex ℝ strip :=
  (convex_halfSpace_re_gt 0).inter (convex_halfSpace_re_lt 1)

lemma factor_ne_zero {s : ℂ} (hs : s ∈ strip) (j : ℕ) : factor j s ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [factor,Complex.sub_re,Complex.add_re,Complex.natCast_re,
    Complex.one_re,Complex.zero_re] at hr
  rcases Nat.eq_zero_or_pos j with rfl | hj
  · norm_num at hr
    linarith [hs.2]
  · have hjR : (1 : ℝ) ≤ (j : ℝ) := by exact_mod_cast (show 1 ≤ j by omega)
    linarith [hs.1]

lemma product_ne_zero {s : ℂ} (hs : s ∈ strip) (n : ℕ) : product n s ≠ 0 := by
  induction n with
  | zero => simp [product]
  | succ n ih => exact mul_ne_zero ih (factor_ne_zero hs n)

lemma multiplier_ne_zero {s : ℂ} (hs : s ∈ strip) : multiplier s ≠ 0 := by
  rw [← product_seven]
  exact product_ne_zero hs 7

lemma source_zero_iff {s : ℂ} (hs : s ∈ strip) :
    source s=0 ↔ poleNormalizedZeta s=0 := by
  simp [source,div_eq_zero_iff,multiplier_ne_zero hs]

lemma source_zero_of_target {s : ℂ} (hs : NontrivialZetaZero s) : source s=0 :=
  (source_zero_iff hs.mem_critical_strip).mpr (poleNormalizedZeta_zero_of_target hs)

lemma source_differentiable {s : ℂ} (hs : s ∈ strip) : DifferentiableAt ℂ source s :=
  (differentiable_poleNormalizedZeta s).div (multiplier_hasDerivAt s).differentiableAt
    (multiplier_ne_zero hs)

lemma model_differentiable {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : s ∈ strip) :
    DifferentiableAt ℂ (model N) s :=
  (finiteModel_hasDerivAt hN hs.1).differentiableAt.div
    (multiplier_hasDerivAt s).differentiableAt (multiplier_ne_zero hs)

/-- This exact channel map is the actual normalization adapter; it mixes the
channels and retains the nonzero determinant at BOTH endpoints. -/
lemma source_channels {c d : ℂ} (hd : d ≠ 0)
    (hp : c+d ∈ strip) (hm : c-d ∈ strip) :
    even source c d =
      (even multiplier c d*even poleNormalizedZeta c d-
        d^2*odd multiplier c d*odd poleNormalizedZeta c d)/unitDeterminant multiplier c d ∧
    odd source c d =
      (even multiplier c d*odd poleNormalizedZeta c d-
        odd multiplier c d*even poleNormalizedZeta c d)/unitDeterminant multiplier c d :=
  quotient_channels poleNormalizedZeta multiplier c hd
    (multiplier_ne_zero hp) (multiplier_ne_zero hm)

/-- The actual signed source height and mirror endpoints have not changed. -/
lemma source_energy_comparison {c d : ℂ} {m M : ℝ}
    (hp : c+d ∈ strip) (hm : c-d ∈ strip) (hm0 : 0 ≤ m)
    (hlp : m ≤ ‖multiplier (c+d)‖) (hlm : m ≤ ‖multiplier (c-d)‖)
    (hup : ‖multiplier (c+d)‖ ≤ M) (hum : ‖multiplier (c-d)‖ ≤ M) :
    m^2*energy source c d ≤ energy poleNormalizedZeta c d ∧
      energy poleNormalizedZeta c d ≤ M^2*energy source c d :=
  energy_unit_comparison poleNormalizedZeta multiplier c d hm0
    (multiplier_ne_zero hp) (multiplier_ne_zero hm) hlp hlm hup hum

/-- The original source is recovered with its pointwise multiplier, not isometrically. -/
lemma recover_source {s : ℂ} (hs : s ∈ strip) : multiplier s*source s=poleNormalizedZeta s := by
  unfold source
  field_simp [multiplier_ne_zero hs]

lemma residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : s ∈ strip) :
    source s-model N s= -tail (N : ℝ) s := by
  unfold source model
  rw [← sub_div,finiteModel_residual hN hs.1]
  field_simp [multiplier_ne_zero hs]

/-- The equality is used on an OPEN neighborhood before differentiating. -/
lemma derivative_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : s ∈ strip) :
    deriv source s-deriv (model N) s=sixthKernel.logTail (s+6) (N : ℝ) := by
  have ht0 := sixthKernel.tail_hasDerivAt (T := (N : ℝ)) (z := s+6)
    (by exact_mod_cast hN) (by simp only [Complex.add_re,Complex.ofNat_re]; linarith [hs.1])
  have ht : HasDerivAt (tail (N : ℝ)) (-sixthKernel.logTail (s+6) (N : ℝ)) s := by
    simpa only [tail,mul_one] using ht0.comp s ((hasDerivAt_id s).add_const 6)
  have he : (fun z => source z-model N z) =ᶠ[𝓝 s] (fun z => -tail (N : ℝ) z) := by
    filter_upwards [strip_open.mem_nhds hs] with z hz
    exact residual hN hz
  have h := ((ht.neg).congr_of_eventuallyEq he).deriv
  rw [((source_differentiable hs).hasDerivAt.sub (model_differentiable hN hs).hasDerivAt).deriv] at h
  simpa only [neg_neg] using h

/-- Exact refinement telescope for the same normalized arithmetic source. -/
lemma cutoff_telescope {M N : ℕ} {s : ℂ}
    (hM : 1 ≤ M) (hN : 1 ≤ N) (hs : s ∈ strip) :
    model M s-model N s=tail (M : ℝ) s-tail (N : ℝ) s := by
  linear_combination (residual hN hs)-(residual hM hs)

lemma derivative_cutoff_telescope {M N : ℕ} {s : ℂ}
    (hM : 1 ≤ M) (hN : 1 ≤ N) (hs : s ∈ strip) :
    deriv (model M) s-deriv (model N) s=
      sixthKernel.logTail (s+6) (N : ℝ)-sixthKernel.logTail (s+6) (M : ℝ) := by
  linear_combination (derivative_residual hN hs)-(derivative_residual hM hs)

/-- Global-in-height absolute bounds apply to the NORMALIZED source only. -/
theorem errors {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : s ∈ strip) :
    ‖source s-model N s‖ ≤ tailRadius N ∧
      ‖deriv source s-deriv (model N) s‖ ≤ logRadius N := by
  constructor
  · rw [residual hN hs,norm_neg]
    exact tail_bound hN hs.1
  · rw [derivative_residual hN hs]
    exact logTail_bound hN hs.1

/-- The height quantifier really is inside the common eventual bound. This is
uniform convergence of residuals, not a positive lower bound on either source. -/
theorem uniform_C1 {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ n : ℕ in atTop, ∀ s ∈ strip,
      ‖source s-model (n+1) s‖ < ε ∧
        ‖deriv source s-deriv (model (n+1)) s‖ < ε := by
  have hv := tailRadius_tendsto_zero.eventually (gt_mem_nhds hε)
  have hd := logRadius_tendsto_zero.eventually (gt_mem_nhds hε)
  filter_upwards [hv,hd] with n hn0 hn1
  intro s hs
  have h := errors (by omega : 1 ≤ n+1) hs
  exact ⟨h.1.trans_lt hn0,h.2.trans_lt hn1⟩

/-- Constructed C1 channel errors on the unbounded convex open strip. -/
def enclosure {N : ℕ} {c d : ℂ} (hN : 1 ≤ N) (hd : d ≠ 0)
    (hp : c+d ∈ strip) (hm : c-d ∈ strip) : Enclosure source (model N) c d :=
  Enclosure.ofRegion (tailRadius N) (logRadius N)
    (tailRadius_nonneg N) (logRadius_nonneg N) hd strip_convex
    (fun z hz => source_differentiable hz)
    (fun z hz => model_differentiable hN hz)
    (fun z hz => (errors hN hz).1) (fun z hz => (errors hN hz).2) hp hm

/-- Channel-selective acceptance retains the arithmetic model and actual source. -/
theorem excludes_pair {N : ℕ} {c d : ℂ} (hN : 1 ≤ N) (hd : d ≠ 0)
    (hp : c+d ∈ strip) (hm : c-d ∈ strip)
    (hgap : tailRadius N < ‖even (model N) c d‖ ∨ logRadius N < ‖odd (model N) c d‖) :
    ¬ (poleNormalizedZeta (c+d)=0 ∧ poleNormalizedZeta (c-d)=0) := by
  intro hz
  exact (enclosure hN hd hp hm).excludes_pair_of_channel hgap
    ⟨(source_zero_iff hp).mpr hz.1,(source_zero_iff hm).mpr hz.2⟩

/-- Values of the normalized source are not identified with their reflected values. -/
theorem rhOn_of_model_channels {U : Set ℂ}
    (hcover : ∀ z ∈ U, ZeroIsolation.MirrorApproximation.Eligible z →
      ∃ N : ℕ, 1 ≤ N ∧
        (tailRadius N < ‖even (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖ ∨
         logRadius N < ‖odd (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖)) : RHOn U := by
  intro z hz hz0
  by_contra hoff
  have he : ZeroIsolation.MirrorApproximation.Eligible z :=
    ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  obtain ⟨N,hN,hgap⟩ := hcover z hz he
  have hb := ZeroIsolation.MirrorApproximation.mirror_endpoints_in_band he
  have hp : ZeroIsolation.MirrorChannels.center z+ZeroIsolation.MirrorChannels.offset z ∈ strip :=
    ⟨hb.1.1,hb.1.2.1⟩
  have hm : ZeroIsolation.MirrorChannels.center z-ZeroIsolation.MirrorChannels.offset z ∈ strip :=
    ⟨hb.2.1,hb.2.2.1⟩
  apply excludes_pair hN (ZeroIsolation.MirrorChannels.offset_ne_zero hoff) hp hm hgap
  rw [ZeroIsolation.MirrorChannels.center_plus_offset,ZeroIsolation.MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

/-- A strong all-height approximation statement has NOT supplied this cover. -/
theorem window_successor_of_model_channels {K : ℕ} (hbase : WindowRH K)
    (hcover : ∀ z ∈ ZeroIsolation.HeightFiber.successorBox K,
      ZeroIsolation.MirrorApproximation.Eligible z → ∃ N : ℕ, 1 ≤ N ∧
        (tailRadius N < ‖even (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖ ∨
         logRadius N < ‖odd (model N) (ZeroIsolation.MirrorChannels.center z)
          (ZeroIsolation.MirrorChannels.offset z)‖)) : WindowRH (K+1) :=
  ZeroIsolation.HeightFiber.window_successor_of_fibers hbase
    (ZeroIsolation.HeightFiber.targetCapacity_of_rhOn (rhOn_of_model_channels hcover))

/-- The totalized quotient is unusable at a divisor zero. This point is NOT in strip. -/
lemma excluded_pole_control : source 1=0 ∧ poleNormalizedZeta 1=1 ∧ (1 : ℂ) ∉ strip := by
  norm_num [source,multiplier,QuarticPrimitive.multiplier,CubicPrimitive.multiplier,strip]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.UnitNormalization
