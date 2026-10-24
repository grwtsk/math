/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.VerifiedRationalNewtonCenter
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# A concrete rational candidate for the maintained local-zero checker

The finite decimal center is a proposal, not a zero axiom. All six claimed
output fields are explicit, and the original joint-source verifier recomputes
them. The small Newton arithmetic below is separate from the large source
acceptance proposition. SourceAcceptance is NOT proved in this module.

A Python exact-rational companion has evaluated this candidate, but that is
not a Lean equality proof or an accepted replay. The existence statement
below therefore retains SourceAcceptance explicitly. No first-zero ordering,
critical-line assertion, complete zero count or prime margin is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonPacket

open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open CanonicalZeroDivisor

/-- The 4096 included integers are distinct from the terminal base 4097. -/
def prefixLength : ℕ := 4096

def center : QComplex := ⟨1 / 2, 7067362571 / 500000000⟩

/-- Bounded proposal rule, not a trusted dyadic-factorization certificate.
Every resulting schedule still faces the inherited rational guards. -/
def logExponent : ℕ → ℕ → ℕ
  | 0, _ => 0
  | fuel + 1, n => if 2 ≤ n then 1 + logExponent fuel (n / 2) else 0

def schedule (base : ℕ) : GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation.Schedule where
  logExponent := logExponent 13 base
  logTerms := 18
  squarings := 8
  degree := 22
  bits := 64

def plan : RationalZetaCenterEvaluation.Plan prefixLength where
  «prefix» := fun i => schedule (i.1 + 1)
  terminal := schedule (prefixLength + 1)
  cauchyRadius := 1 / 2
  valueBits := 64
  slopeBits := 64

/-- Exact data to be checked, never a source-enclosure premise by itself. -/
def claimed : RationalZetaCenterEvaluation.CenterState where
  value := {
    value := ⟨-593543767 / 18446744073709551616,
      3832149473 / 18446744073709551616⟩
    error := 43571967602713 / 18446744073709551616 }
  slope := {
    value := ⟨14449270289225919641 / 18446744073709551616,
      2300305842400270138 / 18446744073709551616⟩
    error := 95798856128413 / 18446744073709551616 }

def valueTolerance : ℚ := 1 / 400000
def slopeTolerance : ℚ := 1 / 100000
def newtonRadius : ℚ := 1 / 100000
def inverse : QComplex := ⟨5 / 4, -1 / 5⟩
def chart : ℕ := 12

/-- Literal copying of both returned errors; they cannot be reduced downstream. -/
def newtonData : RationalNewtonWitness.Data :=
  VerifiedRationalNewtonCenter.newtonData center newtonRadius inverse claimed

/-- This large exact-computation obligation is deliberately left OPEN here.
A Python diagnostic, printed decimal or hash is not a proof of this equality. -/
def SourceAcceptance : Prop :=
  RationalZetaCenterEvaluation.verify prefixLength center plan
    valueTolerance slopeTolerance claimed = true

/-- Only a check of the declared constants, not actual-source validity. -/
theorem declared_errors_meet_targets :
    claimed.value.error ≤ valueTolerance ∧ claimed.slope.error ≤ slopeTolerance := by
  norm_num [claimed, valueTolerance, slopeTolerance]

/-- Small rational contraction arithmetic, independent of the prefix recomputation. -/
theorem newton_admissible : RationalNewtonWitness.Admissible chart true newtonData := by
  norm_num [RationalNewtonWitness.Admissible, RationalNewtonWitness.Geometry,
    RationalNewtonWitness.chartCenter, RationalNewtonWitness.curvature,
    RationalNewtonWitness.residualBudget, RationalNewtonWitness.defectBudget,
    newtonData, VerifiedRationalNewtonCenter.newtonData, center, newtonRadius,
    inverse, chart, claimed, QComplex.rect, QComplex.normSq, QComplex.sub,
    QComplex.mul, QComplex.one]

theorem newton_accepts : RationalNewtonWitness.verify chart true newtonData = true :=
  (RationalNewtonWitness.verify_iff chart true newtonData).mpr newton_admissible

theorem residual_budget_lt : RationalNewtonWitness.residualBudget newtonData < 7 / 2000000 := by
  norm_num [RationalNewtonWitness.residualBudget, newtonData,
    VerifiedRationalNewtonCenter.newtonData, inverse, claimed, QComplex.rect]

theorem contraction_budget_lt_third :
    RationalNewtonWitness.defectBudget chart newtonData < 1 / 3 := by
  norm_num [RationalNewtonWitness.defectBudget, RationalNewtonWitness.curvature,
    newtonData, VerifiedRationalNewtonCenter.newtonData, inverse, claimed,
    chart, newtonRadius, QComplex.rect, QComplex.sub, QComplex.mul, QComplex.one]

/-- A strictly positive self-map slack for this rational candidate. -/
theorem self_map_slack_gt : (3 / 1000000 : ℚ) < newtonRadius -
    RationalNewtonWitness.residualBudget newtonData -
    RationalNewtonWitness.defectBudget chart newtonData * newtonRadius := by
  norm_num [RationalNewtonWitness.residualBudget, RationalNewtonWitness.defectBudget,
    RationalNewtonWitness.curvature, newtonData, VerifiedRationalNewtonCenter.newtonData,
    inverse, claimed, chart, newtonRadius, QComplex.rect, QComplex.sub,
    QComplex.mul, QComplex.one]

/-- The two checks remain separate: small Newton arithmetic does not prove the source. -/
theorem combined_acceptance_of_source (hsource : SourceAcceptance) :
    VerifiedRationalNewtonCenter.verifyZero prefixLength chart true center plan
      valueTolerance slopeTolerance newtonRadius inverse claimed = true := by
  exact Bool.and_eq_true_iff.mpr ⟨hsource, newton_accepts⟩

/-- A conditional theorem only. There is no closed zero-existence theorem in
this increment until the source acceptance equality and inherited stack are audited. -/
theorem local_zero_of_source_acceptance (hsource : SourceAcceptance) :
    ∃ z : ZeroPoint, ‖z.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) → w = z :=
  VerifiedRationalNewtonCenter.exists_zero_of_verify prefixLength chart true center plan
    valueTolerance slopeTolerance newtonRadius inverse claimed
    (combined_acceptance_of_source hsource)

end GRWTSK.RiemannHypothesis.ConcreteNewtonPacket
