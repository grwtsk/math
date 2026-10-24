/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# Non-real cutoff-two fixture and evaluation guard controls

All numerical declarations below are unexecuted proof scripts. The positive
example includes a genuine base-two complex power, both endpoints, and the
separate infinite source tail. It is not an enlarged height window. Ordinary
`decide` is used for exact finite rational checks, never native_decide.
-/
namespace GRWTSK.RiemannHypothesis.Checks.RationalFiniteEvaluation
open Complex
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open RationalPowerEvaluation RationalEvaluatedPair
open GRWTSK.Analysis.Complex.SymmetricPair.Rational

/-- Both slots use a degree-12 log series and 16 exponential terms. -/
def baseOne : Proposal := ⟨12,16,⟨1,0⟩,0⟩
def plusTwo : Proposal := ⟨12,16,⟨479611/1048576,-24899/65536⟩,1/524288⟩
def minusTwo : Proposal := ⟨12,16,⟨5299/8192,-70425/131072⟩,1/1048576⟩

def actual : RationalEvaluatedPair.Data :=
  ⟨⟨[baseOne,plusTwo]⟩,⟨[baseOne,minusTwo]⟩⟩

/-- This is the entire fused finite guard, not just the terminal margin bit. -/
theorem actual_accepts : actual.check 2 (3/4) 1=true := by decide

/-- Every evaluation and source-tail premise is constructed by the generic theorem. -/
theorem actual_not_target : ¬ NontrivialZetaZero (⟨3/4,1⟩ : ℂ) := by
  have h := RationalEvaluatedPair.Data.not_target actual_accepts
  exact h

example : (actual.witness 2 (3/4) 1).sourceValue=(117649/691200 : ℚ) := by decide
example : (actual.witness 2 (3/4) 1).sourceSecant=(823543/1382400 : ℚ) := by decide
example : (actual.witness 2 (3/4) 1).evaluationValue=
    (5375654719/923589767331840 : ℚ) := by decide
example : (actual.witness 2 (3/4) 1).evaluationSecant=
    (5375654719/230897441832960 : ℚ) := by decide

/-- A finite-model comparison gap, NOT a lower bound on actual source energy. -/
example : (3/5 : ℚ) < (actual.witness 2 (3/4) 1).packed.lowerEnergy-
    (actual.witness 2 (3/4) 1).packed.upperBudget := by decide

-- Exact support, source identity, and domain guards cannot be bypassed.
example : actual.check 0 (3/4) 1=false := by decide
example : actual.check 3 (3/4) 1=false := by decide
example : actual.check 2 (1/2) 1=false := by decide
example : actual.check 2 0 1=false := by decide
example : actual.check 2 (3/4) 2=false := by decide
example : ({actual with plus := ⟨[baseOne]⟩} : RationalEvaluatedPair.Data).check 2 (3/4) 1=false := by decide
example : ({actual with plus := actual.minus} : RationalEvaluatedPair.Data).check 2 (3/4) 1=false := by decide
example : ({actual with plus := ⟨[plusTwo,baseOne]⟩} : RationalEvaluatedPair.Data).check 2 (3/4) 1=false := by decide
example : ({plusTwo with radius := 0} : Proposal).check 2 (plusPoint (3/4) 1)=false := by decide
example : ({plusTwo with expTerms := 1} : Proposal).check 2 (plusPoint (3/4) 1)=false := by decide
example : ({plusTwo with logDegree := 0} : Proposal).check 2 (plusPoint (3/4) 1)=false := by decide
example : plusTwo.check 0 (plusPoint (3/4) 1)=false := by decide
example : plusTwo.check 2 (plusPoint (-1/4) 1)=false := by decide

-- Endpoint evaluation pays for small separation; this is not the C1 tail bound.
example (a : ℚ) : a/(2*|(1/4 : ℚ)|)=2*a := by norm_num; ring
example (a : ℚ) : a/(2*|(1/8 : ℚ)|)=4*a := by norm_num; ring
-- The old continuum-cover interface remains, with its all-point validity fields.
example {ι : Type*} (V : ι → Set ℂ) (C : ∀ i, RationalMirror.CertifiedRegion (V i))
    (hcover : ∀ z ∈ HeightFiber.successorBox 17,
      MirrorApproximation.Eligible z → ∃ i, z ∈ V i) : WindowRH 18 :=
  RationalMirror.window_successor_of_cover SeventeenBandJet.windowRH_seventeen V C hcover

end GRWTSK.RiemannHypothesis.Checks.RationalFiniteEvaluation
