/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck

set_option autoImplicit false

/-!
# An exact arithmetic witness and rejection controls

The actual source example is the real mirror pair 3/4 and 1/4 at cutoff one.
Every finite power there has base one, so the corrected finite model is exactly
rational. Its nonzero Mellin tail is still charged. This fixture introduces no
new height theorem. Synthetic countermodels below are not zeta-zero claims.
The Lean scripts and `decide` proofs have NOT been executed.
-/
namespace GRWTSK.RiemannHypothesis.Checks.RationalMirrorPair
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open RationalMirror GRWTSK.Analysis.Complex.SymmetricPair
open CenteredMellin CenteredMellin.SexticPrimitive

/-- Complete rational witness data, not a sampled or fitted source value. -/
def actual : Witness where
  cutoff := 1
  evenCenter := ⟨3371743/4587520,0⟩
  oddCenter := ⟨35873/71680,0⟩
  sourceValue := 1/1024
  sourceSecant := 1/256
  evaluationValue := 0
  evaluationSecant := 0
  weightLo := 1/16
  weightHi := 1/16

lemma actual_check : actual.check = true := by
  norm_num [Witness.check, Witness.Guard, Witness.packed, Rational.Data.check,
    Rational.Data.Pass, Rational.Data.upperBudget, Rational.Data.lowerEnergy,
    Rational.Gaussian.normSq, actual]

lemma actual_weight : actual.WeightValid (1/4 : ℂ) := by
  norm_num [Witness.WeightValid, actual, norm_div]

/-- At cutoff one the earlier exact source identities identify the finite reference. -/
lemma finite_one_reference {s : ℂ} (hs : 0 < s.re) : finiteModel 1 s = reference s := by
  have hf := finiteModel_residual (N := 1) (s := s) (by decide) hs
  have hr := source_identity hs
  norm_num only [Nat.cast_one] at hf
  linear_combination -hf+hr

lemma actual_finite_plus : finiteModel 1 (3/4 : ℂ) = (563673/655360 : ℂ) := by
  rw [finite_one_reference (by norm_num)]
  norm_num [reference,quadraticFactor]

lemma actual_finite_minus : finiteModel 1 (1/4 : ℂ) = (559555/917504 : ℂ) := by
  rw [finite_one_reference (by norm_num)]
  norm_num [reference,quadraticFactor]

lemma actual_evaluation : actual.EvaluationValid (1/2 : ℂ) (1/4 : ℂ) := by
  have hp : (1/2 : ℂ)+1/4=3/4 := by ring
  have hm : (1/2 : ℂ)-1/4=1/4 := by ring
  unfold Witness.EvaluationValid even odd
  rw [hp,hm,actual_finite_plus,actual_finite_minus]
  norm_num [actual,Rational.Gaussian.value]

lemma actual_tail_plus :
    ‖poleNormalizedZeta (3/4 : ℂ)-finiteModel 1 (3/4 : ℂ)‖ ≤ (1/1024 : ℝ) := by
  have h := finiteModel_error (N := 1) (s := (3/4 : ℂ)) (σ := (1/4 : ℝ))
    (by decide) (by norm_num) (by norm_num)
  have hm : multiplier (3/4 : ℂ) = (-1514205/16384 : ℂ) := by
    norm_num [multiplier,QuarticPrimitive.multiplier,CubicPrimitive.multiplier]
  rw [hm] at h
  norm_num [norm_div] at h
  exact h.trans (by norm_num)

lemma actual_tail_minus :
    ‖poleNormalizedZeta (1/4 : ℂ)-finiteModel 1 (1/4 : ℂ)‖ ≤ (1/1024 : ℝ) := by
  have h := finiteModel_error (N := 1) (s := (1/4 : ℂ)) (σ := (1/4 : ℝ))
    (by decide) (by norm_num) (by norm_num)
  have hm : multiplier (1/4 : ℂ) = (-626535/16384 : ℂ) := by
    norm_num [multiplier,QuarticPrimitive.multiplier,CubicPrimitive.multiplier]
  rw [hm] at h
  norm_num [norm_div] at h
  exact h.trans (by norm_num)

/-- This one FIXED pair uses endpoint errors. The general C1 adapter remains
available for near-line secants without a 1/|d| loss. No derivative is inferred. -/
lemma actual_source : actual.SourceTailValid (1/2 : ℂ) (1/4 : ℂ) := by
  have hp : (1/2 : ℂ)+1/4=3/4 := by ring
  have hm : (1/2 : ℂ)-1/4=1/4 := by ring
  constructor
  · have h := even_error_of_values
      (F := poleNormalizedZeta) (P := finiteModel 1) (c := (1/2 : ℂ)) (d := (1/4 : ℂ))
      (e := (1/1024 : ℝ))
      (by rw [hp]; exact actual_tail_plus) (by rw [hm]; exact actual_tail_minus)
    exact h
  · have heq : odd poleNormalizedZeta (1/2 : ℂ) (1/4 : ℂ)-
        odd (finiteModel 1) (1/2 : ℂ) (1/4 : ℂ) =
        ((poleNormalizedZeta (3/4 : ℂ)-finiteModel 1 (3/4 : ℂ))-
          (poleNormalizedZeta (1/4 : ℂ)-finiteModel 1 (1/4 : ℂ)))/(1/2 : ℂ) := by
      unfold odd
      rw [hp,hm]
      ring
    change ‖odd poleNormalizedZeta (1/2 : ℂ) (1/4 : ℂ)-
      odd (finiteModel 1) (1/2 : ℂ) (1/4 : ℂ)‖ ≤ (1/256 : ℝ)
    rw [heq,norm_div]
    have ht := (norm_sub_le
      (poleNormalizedZeta (3/4 : ℂ)-finiteModel 1 (3/4 : ℂ))
      (poleNormalizedZeta (1/4 : ℂ)-finiteModel 1 (1/4 : ℂ))).trans
      (add_le_add actual_tail_plus actual_tail_minus)
    norm_num at ht ⊢
    linarith

/-- Complete source-bound instantiation; no unfilled sample or tail premise. -/
theorem actual_pair_excluded :
    ¬ (poleNormalizedZeta (3/4 : ℂ)=0 ∧ poleNormalizedZeta (1/4 : ℂ)=0) := by
  have h := Witness.sound actual_source actual_evaluation actual_weight actual_check
  norm_num only [show (1/2 : ℂ)+1/4=3/4 by ring,
    show (1/2 : ℂ)-1/4=1/4 by ring] at h
  exact h

theorem actual_not_target : ¬ NontrivialZetaZero (3/4 : ℂ) := by
  intro hz
  apply actual_pair_excluded
  refine ⟨poleNormalizedZeta_zero_of_target hz,?_⟩
  have h := poleNormalizedZeta_zero_of_target hz.critical_reflection
  norm_num [criticalReflection] at h
  exact h

-- Exact finite comparison margin, not the source's energy lower bound.
example : actual.packed.upperBudget = (1/524288 : ℚ) := by
  norm_num [actual,Witness.packed,Rational.Data.upperBudget]
example : actual.packed.lowerEnergy-actual.packed.upperBudget > (1/2 : ℚ) := by
  norm_num [actual,Witness.packed,Rational.Data.upperBudget,Rational.Data.lowerEnergy,
    Rational.Gaussian.normSq]

-- Guard failures are genuine Boolean rejections.
example : ({actual with cutoff := 0} : Witness).check=false := by
  norm_num [Witness.check,Witness.Guard,actual]
example : ({actual with evaluationValue := -1} : Witness).check=false := by
  norm_num [Witness.check,Witness.Guard,actual]
example : ({actual with weightLo := 0} : Witness).check=false := by
  norm_num [Witness.check,Witness.Guard,Witness.packed,Rational.Data.check,Rational.Data.Pass,actual]
example : ({actual with weightHi := 0} : Witness).check=false := by
  norm_num [Witness.check,Witness.Guard,Witness.packed,Rational.Data.check,Rational.Data.Pass,actual]

/-- Strictness cannot be replaced with non-strict comparison. -/
def equalityCase : Rational.Data := ⟨⟨1,0⟩,⟨0,0⟩,1,0,1,1⟩
example : equalityCase.check=false := by
  norm_num [Rational.Data.check,Rational.Data.Pass,Rational.Data.upperBudget,
    Rational.Data.lowerEnergy,Rational.Gaussian.normSq,equalityCase]

/-- A passing numeric record for a wrong function is NOT a source certificate. -/
def forged : Rational.Data := ⟨⟨1,0⟩,⟨0,0⟩,0,0,1,1⟩
example : forged.check=true := by
  norm_num [Rational.Data.check,Rational.Data.Pass,Rational.Data.upperBudget,
    Rational.Data.lowerEnergy,Rational.Gaussian.normSq,forged]
example : ¬ forged.Valid (fun _ : ℂ => 0) 0 1 := by
  intro h
  have he := h.1
  norm_num [forged,even,Rational.Gaussian.value] at he
-- A true bit does not validate a false displacement interval either.
example : ¬ actual.WeightValid (1/2 : ℂ) := by
  norm_num [Witness.WeightValid,actual,norm_div]

-- Complete new-region coverage, not a few accepted samples, is still required.
example {ι : Type*} (V : ι → Set ℂ) (C : ∀ i, CertifiedRegion (V i))
    (hcover : ∀ z ∈ HeightFiber.successorBox 17,
      MirrorApproximation.Eligible z → ∃ i, z ∈ V i) : WindowRH 18 :=
  window_successor_of_cover SeventeenBandJet.windowRH_seventeen V C hcover

end GRWTSK.RiemannHypothesis.Checks.RationalMirrorPair
