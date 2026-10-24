/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalExpStateFold
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch

set_option autoImplicit false

/-!
# Ordered state-fold refinement of the exact normalized-source jet

Both finite prefix components travel in one state. The last positive-base term,
all endpoint corrections, source residual and uniform derivative residual are
retained. Nothing is reassociated across a rounded operation. The generated
patch state equals the old value, derivative, radius AND Boolean guard.
This is pure arithmetic data, not a mutable cache or an execution receipt.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalJetStateFold

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)
open CriticalStripHeightDescent

/-- One positive base, one rounded contribution to each of the two old prefixes. -/
def prefixStep (bits : ℕ) (logs powers : ℕ → Ball) (j : ℕ)
    (acc : Ball × Ball) : Ball × Ball :=
  let v := powers (j+1)
  let ell := logs (j+1)
  (ballAdd bits acc.1 v,
    ballAdd bits acc.2 (ballScale bits (sub zero one) (ballMul bits ell v)))

def prefix (bits : ℕ) (logs powers : ℕ → Ball) (N : ℕ) : Ball × Ball :=
  run (prefixStep bits logs powers) 0 N
    (RationalEndpointJet.point zero, RationalEndpointJet.point zero)

/-- Equality preserves the complete value AND derivative radii and their order. -/
theorem prefix_eq (bits : ℕ) (logs powers : ℕ → Ball) (N : ℕ) :
    prefix bits logs powers N = RationalEndpointJet.prefix bits logs powers N := by
  have hstep (j : ℕ) : prefixStep bits logs powers j
      (RationalEndpointJet.prefix bits logs powers j) =
      RationalEndpointJet.prefix bits logs powers (j+1) := rfl
  simpa only [prefix, RationalEndpointJet.prefix, Nat.zero_add] using
    run_spec (prefixStep bits logs powers) (RationalEndpointJet.prefix bits logs powers)
      hstep 0 N

def powers (c : Coordinates) (p : RationalPoleValue.Parameters) (k : ℕ) : Ball :=
  RationalExpStateFold.powerValue c (k : ℚ) (RationalPoleValue.resolution p k)

theorem powers_eq (c : Coordinates) (p : RationalPoleValue.Parameters) :
    powers c p = RationalPoleValue.powers c p := by
  funext k
  exact RationalExpStateFold.powerValue_eq c (k : ℚ) (RationalPoleValue.resolution p k)

/-- Same finish formula; one bound state supplies both prefix projections. -/
def finiteJet (c : Coordinates) (p : RationalPoleValue.Parameters) : Ball × Ball :=
  let ps := powers c p
  let ls := RationalPoleValue.logs p
  let acc := prefix p.bits ls ps p.cutoff
  let coeff := RationalPoleNormalizedJet.coefficientJet c p.cutoff (p.extraCorrections+1)
  let d := sub c one
  let terminal := ps p.cutoff
  (ballAdd p.bits (ballScale p.bits d acc.1) (ballScale p.bits coeff.1 terminal),
    ballAdd p.bits (ballAdd p.bits acc.1 (ballScale p.bits d acc.2))
      (ballMul p.bits terminal
        (ballAdd p.bits (RationalEndpointJet.point coeff.2)
          (ballScale p.bits (sub zero coeff.1) (ls p.cutoff)))))

/-- Total rational identity. Cutoff zero still fails the separate source guard. -/
theorem finiteJet_eq (c : Coordinates) (p : RationalPoleValue.Parameters) :
    finiteJet c p = RationalPoleValue.finiteJet c p := by
  simp only [finiteJet, powers_eq, prefix_eq]
  rfl

/-- This structure is GENERATED, never accepted as an unchecked certificate input. -/
structure PatchState where
  value : Ball
  derivative : Ball
  radius : ℚ
  accepted : Bool
  deriving DecidableEq

/-- One finite jet is bound before computing both source errors and the strict test. -/
def patch (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : PatchState :=
  let f := finiteJet c p
  let v := RationalPoleNormalizedJet.sourceBall c p.cutoff p.extraCorrections f.1
  let d : Ball := ⟨f.2.mid, f.2.rad + RationalPoleJet.uniformError c S p / S⟩
  let slope := min (RationalPolePatch.slopeBound c R S)
    (magnitude d.mid + d.rad + RationalJetPolePatch.curvature c R S * R)
  let rad := v.rad + slope * R
  ⟨v, d, rad, decide (RationalPoleJet.check c S p = true ∧ 0 ≤ R ∧ R < S ∧
    0 ≤ v.rad ∧ rad < RationalPolePatch.sampleLower v.mid)⟩

def reference (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) : PatchState :=
  ⟨RationalPoleValue.valueBall c p, RationalPoleJet.derivativeBall c S p,
    RationalJetPolePatch.imageRadius c R S p, RationalJetPolePatch.check c R S p⟩

/-- All six ball scalars, the image radius AND the acceptance bit agree exactly.
The equality is not merely a soundness theorem for a different allowance. -/
theorem patch_eq (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    patch c R S p = reference c R S p := by
  simp only [patch, finiteJet_eq]
  rfl

@[simp] theorem patch_value (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (patch c R S p).value = RationalPoleValue.valueBall c p := by rw [patch_eq]; rfl

@[simp] theorem patch_derivative (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (patch c R S p).derivative = RationalPoleJet.derivativeBall c S p := by rw [patch_eq]; rfl

@[simp] theorem patch_radius (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (patch c R S p).radius = RationalJetPolePatch.imageRadius c R S p := by rw [patch_eq]; rfl

@[simp] theorem patch_accepted (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (patch c R S p).accepted = RationalJetPolePatch.check c R S p := by rw [patch_eq]; rfl

/-- Existing actual-source jet semantics are transported only after the old guard. -/
theorem finiteJet_sound {c : Coordinates} {p : RationalPoleValue.Parameters}
    (h : RationalPoleValue.check c p = true) :
    Holds (finiteJet c p).1
      (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections+1) (toComplex c)) ∧
    Holds (finiteJet c p).2
      (deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections+1)) (toComplex c)) := by
  rw [finiteJet_eq]
  exact RationalPoleValue.finiteJet_sound h

theorem patch_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (h : (patch c R S p).accepted = true) :
    ∀ z ∈ Metric.closedBall (toComplex c) (R : ℝ), poleNormalizedZeta z ≠ 0 := by
  rw [patch_accepted] at h
  exact RationalJetPolePatch.check_sound h

end GRWTSK.RiemannHypothesis.RationalJetStateFold
