/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold

set_option autoImplicit false

/-!
# Integer-square leaves in the unchanged ordered source-jet calculation

Only the inverse-power reconstruction backend changes. Prefix rounding order,
endpoint coefficients, value and UNIFORM derivative tails, curvature, selected
slope and the strict acceptance test remain exactly the same rational outputs.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.IntegerJetStateFold

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)

def powers (c : Coordinates) (p : RationalPoleValue.Parameters) (k : ℕ) : Ball :=
  IntegerExpStateFold.powerValue c (k : ℚ) (RationalPoleValue.resolution p k)

theorem powers_eq (c : Coordinates) (p : RationalPoleValue.Parameters) :
    powers c p = RationalJetStateFold.powers c p := by
  funext k
  exact IntegerExpStateFold.powerValue_eq c (k : ℚ) (RationalPoleValue.resolution p k)

/-- Preserve every parenthesis of the old rounded prefix and finishing formula. -/
def finiteJet (c : Coordinates) (p : RationalPoleValue.Parameters) : Ball × Ball :=
  let ps := powers c p
  let ls := RationalPoleValue.logs p
  let acc := RationalJetStateFold.prefix p.bits ls ps p.cutoff
  let coeff := RationalPoleNormalizedJet.coefficientJet c p.cutoff (p.extraCorrections+1)
  let d := sub c one
  let terminal := ps p.cutoff
  (ballAdd p.bits (ballScale p.bits d acc.1) (ballScale p.bits coeff.1 terminal),
    ballAdd p.bits (ballAdd p.bits acc.1 (ballScale p.bits d acc.2))
      (ballMul p.bits terminal
        (ballAdd p.bits (RationalEndpointJet.point coeff.2)
          (ballScale p.bits (sub zero coeff.1) (ls p.cutoff)))))

theorem finiteJet_eq (c : Coordinates) (p : RationalPoleValue.Parameters) :
    finiteJet c p = RationalJetStateFold.finiteJet c p := by
  simp only [finiteJet, powers_eq, RationalJetStateFold.finiteJet]

/-- Generated output, never an unchecked input table or external success bit. -/
def patch (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    RationalJetStateFold.PatchState :=
  let f := finiteJet c p
  let v := RationalPoleNormalizedJet.sourceBall c p.cutoff p.extraCorrections f.1
  let d : Ball := ⟨f.2.mid, f.2.rad+RationalPoleJet.uniformError c S p/S⟩
  let slope := min (RationalPolePatch.slopeBound c R S)
    (magnitude d.mid+d.rad+RationalJetPolePatch.curvature c R S*R)
  let rad := v.rad+slope*R
  ⟨v,d,rad,decide (RationalPoleJet.check c S p = true ∧ 0 ≤ R ∧ R < S ∧
    0 ≤ v.rad ∧ rad < RationalPolePatch.sampleLower v.mid)⟩

/-- All coordinates, all error radii, image radius AND acceptance bit agree. -/
theorem patch_eq (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    patch c R S p = RationalJetStateFold.patch c R S p := by
  simp only [patch, finiteJet_eq, RationalJetStateFold.patch]

theorem patch_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (h : (patch c R S p).accepted = true) :
    ∀ z ∈ Metric.closedBall (toComplex c) (R : ℝ),
      CriticalStripHeightDescent.poleNormalizedZeta z ≠ 0 := by
  rw [patch_eq] at h
  exact RationalJetStateFold.patch_sound h

end GRWTSK.RiemannHypothesis.IntegerJetStateFold
