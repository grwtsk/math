# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MirrorPairApproximation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `851f7c40c7ba423aaccdb06df9208336a6367944` · SHA-256 `ebd82f98514f554c4649d9c5d6777e7ef8fb243f6219614e752c3751ce86fbe2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation

set_option autoImplicit false

/-!
# Arithmetic pair approximation, composition, and quantifier controls

The repeated-root and constant examples are synthetic, not arithmetic zero data.
In particular, pointwise completeness cannot be turned into a uniform cutoff on
all nonzero separations. These fixtures have NOT been executed by Lean.
-/
namespace GRWTSK.RiemannHypothesis.Checks.MirrorPairApproximation
open Complex Set Filter
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
open CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.C1Approximation
open CriticalStripHeightDescent.ZeroIsolation.MirrorApproximation
open GRWTSK.Analysis.Complex.SymmetricPair
open scoped Topology
noncomputable section

example {N : ℕ} {z : ℂ} (hN : 1 ≤ N) (hz : 0 < z.re) :
    deriv poleNormalizedZeta z-deriv (finiteModel N) z =
      -DerivativeSixteen.productSlope 7 z*tail (N : ℝ) z+
        multiplier z*sixthKernel.logTail (z+6) (N : ℝ) := derivative_residual hN hz

example (B : ℝ) : Tendsto (fun n => valueRadius B (n+1)) atTop (𝓝 0) :=
  valueRadius_tendsto_zero B
example (B : ℝ) : Tendsto (fun n => derivativeRadius B (n+1)) atTop (𝓝 0) :=
  derivativeRadius_tendsto_zero B
example (T : ℝ) (d : ℂ) : Tendsto (fun n => errorBudget T (n+1) d) atTop (𝓝 0) :=
  errorBudget_tendsto_zero T d

example : valueRadius 26 64 ≤ (1/20000 : ℝ) ∧
    derivativeRadius 26 64 ≤ (1/250 : ℝ) := cutoff64_radii
example {c d : ℂ} (hd : d ≠ 0) (hp : c+d ∈ band 20) (hm : c-d ∈ band 20) :
    ‖even poleNormalizedZeta c d-even (finiteModel 64) c d‖ ≤ (1/20000 : ℝ) ∧
      ‖odd poleNormalizedZeta c d-odd (finiteModel 64) c d‖ ≤ (1/250 : ℝ) :=
  cutoff64_channel_bounds hd hp hm

example {z : ℂ} (hz : Eligible z) :
    (∃ n, Trial n z) ↔ ¬ NontrivialZetaZero z := exists_trial_iff_not_target hz
example {z : ℂ} (hz : Eligible z) :
    (∀ᶠ n in atTop, Trial n z) ↔ ¬ NontrivialZetaZero z := eventually_trial_iff_not_target hz
example : Coverage ↔ _root_.RiemannHypothesis := coverage_iff_rh
example : coverageProfile.status = .equivalent := coverageProfile_status
example {N : ℕ} (hbase : WindowRH N)
    (h : ∀ z ∈ HeightFiber.successorBox N, Eligible z → ∃ n, Trial n z) :
    WindowRH (N+1) := window_successor_of_trials hbase h

-- An actual target pair invalidates every strict comparison, regardless of cutoff.
example {z : ℂ} (he : Eligible z) (hz : NontrivialZetaZero z) (n : ℕ) : ¬ Trial n z := by
  intro h
  exact ((exists_trial_iff_not_target he).mp ⟨n,h⟩) hz

-- A valid nonzero source pair need not have a separation-uniform acceptance cutoff.
def repeated (z : ℂ) : ℂ := z^2
def eps (n : ℕ) : ℝ := 1/((n : ℝ)+1)

def looseExact (n : ℕ) (d : ℂ) : Enclosure repeated repeated 0 d where
  valueError := eps n
  secantError := 0
  value_nonneg := by unfold eps; positivity
  secant_nonneg := le_rfl
  even_error := by simp only [sub_self,norm_zero]; unfold eps; positivity
  odd_error := by simp

lemma repeated_energy (d : ℂ) : energy repeated 0 d=‖d‖^4 := by
  have he : even repeated 0 d=d^2 := by unfold even repeated; ring
  have ho : odd repeated 0 d=0 := by unfold odd repeated; ring
  rw [energy,he,ho,norm_pow,norm_zero]
  ring

/-- Every proposed single cutoff has a nonzero separation at which it fails,
although the source has no distinct symmetric zero pair. -/
theorem no_separation_uniform_cutoff (n : ℕ) :
    ∃ d : ℂ, d ≠ 0 ∧ ¬ (repeated d=0 ∧ repeated (-d)=0) ∧
      ¬ ((looseExact n d).budget < energy repeated 0 d) := by
  have hp : 0 < eps n := by unfold eps; positivity
  have hu : eps n ≤ 1 := by
    unfold eps
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < (n : ℝ)+1)).mpr
    nlinarith [Nat.cast_nonneg (α := ℝ) n]
  have hdn : (eps n : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  refine ⟨(eps n : ℂ),hdn,?_,?_⟩
  · intro h
    exact (pow_ne_zero 2 hdn) h.1
  · rw [repeated_energy]
    have hn : ‖(eps n : ℂ)‖=eps n := by
      rw [Complex.norm_real,Real.norm_eq_abs,abs_of_pos hp]
    rw [hn]
    change ¬ ((eps n)^2+‖(eps n : ℂ)‖^2*0^2 < (eps n)^4)
    have hsq : (eps n)^2 ≤ 1 := by nlinarith
    have hmul := mul_nonneg (sq_nonneg (eps n)) (sub_nonneg.mpr hsq)
    nlinarith

-- Cross-error terms belong in a composed enclosure, not a sum of squared budgets.
example : ((1 : ℝ)+1)^2 > 1^2+1^2 := by norm_num
-- Cutoff zero and critical-line displacement zero are not eligible inputs.
example : ¬ (1 ≤ (0 : ℕ)) := by decide
example : ¬ Eligible (⟨1/2,14⟩ : ℂ) := by norm_num [Eligible]
example : (⟨1/2,17⟩ : ℂ) ∈ HeightFiber.successorBox 17 := by
  norm_num [HeightFiber.successorBox,mirrorBox]
-- No new bounded window follows without its all-point strict-comparison supplier.
example (h : ∀ z ∈ HeightFiber.successorBox 17, Eligible z → ∃ n, Trial n z) :
    WindowRH 18 := window_successor_of_trials SeventeenBandJet.windowRH_seventeen h

end
end GRWTSK.RiemannHypothesis.Checks.MirrorPairApproximation
```
