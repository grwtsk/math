/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint

set_option autoImplicit false

/-!
# The nonzero-logarithm seed for base two in the fixed Newton packet

All constants below are rational finite expressions. The logarithm identities
are identities of the existing LOWER/WIDTH supplier, not assertions that a
rational equals Real.log 2. The original 22-term polynomial and its COMPLETE
seed error are retained. Three separate closed proof scripts locate their
scaled components/error inside the original floor/ceiling windows.

No seed equality, seed-validity hypothesis, endpoint computation equality or
SourceAcceptance premise is accepted. No evaluator is changed. The finite
rational proof scripts can be expensive and have NOT been elaborated or run.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonSecondSeed

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace
open GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation

/-- The midpoint of the inherited 18-term enclosure, NOT exact log(2). -/
def lambdaTwo : ℚ := 1717353641454772093151484317 / 2477617581979402619418862200

def etaTwo : ℚ := 1 / 400252360791997656

/-- The schedule still uses exponent 1 and mantissa 1 for the BASE TWO input. -/
theorem second_log_data :
    RationalPowerEvaluation.logCenter 2 (schedule 2) = lambdaTwo ∧
      RationalPowerEvaluation.logError 2 (schedule 2) = etaTwo := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ,
    lower, width, ratio, Finset.sum_range_succ, lambdaTwo, etaTwo]

/-- Common exponent -c and the ORIGINAL scale 2^8. Both components are nonzero. -/
def secondArgument : QComplex :=
  ⟨-1717353641454772093151484317 / 1268540201973454141142457446400,
    -12137160846788010280474125695059299007 / 317135050493363535285614361600000000000⟩

def secondRadius : ℚ :=
  4188833085717234434587332258103099669 / 105711683497787845095204787200000000000

def secondDisplacement : ℚ :=
  2439120857 / 17077434060458566656000000000

/-- The exact finite polynomial; this is not a new approximate seed. -/
def secondSeed : QComplex := QComplex.polynomial secondArgument 22

/-- Taylor truncation AND transported logarithm uncertainty, unchanged. -/
def secondSeedError : ℚ :=
  let e := 2 * secondRadius ^ 22 / (Nat.factorial 22 : ℚ)
  e + 2 * (QComplex.rect secondSeed + e) * secondDisplacement

theorem second_argument : RationalPowerEvaluation.argument 2
    (sourceExponent center) (schedule 2) = secondArgument := by
  unfold RationalPowerEvaluation.argument
  rw [second_log_data.1]
  norm_num [sourceExponent, center, schedule, scaleQ, QComplex.smul,
    secondArgument, lambdaTwo]

theorem second_radius : RationalPowerEvaluation.radius 2
    (sourceExponent center) (schedule 2) = secondRadius := by
  unfold RationalPowerEvaluation.radius
  rw [second_log_data.1]
  norm_num [sourceExponent, center, schedule, scaleQ, QComplex.smul,
    QComplex.rect, secondRadius, lambdaTwo]

theorem second_displacement : RationalPowerEvaluation.displacement 2
    (sourceExponent center) (schedule 2) = secondDisplacement := by
  unfold RationalPowerEvaluation.displacement
  rw [second_log_data.2]
  norm_num [sourceExponent, center, schedule, scaleQ, QComplex.smul,
    QComplex.rect, secondDisplacement, etaTwo]

theorem second_seed : RationalPowerEvaluation.seed 2
    (sourceExponent center) (schedule 2) = secondSeed := by
  change QComplex.polynomial _ 22 = QComplex.polynomial secondArgument 22
  exact congrArg (fun a => QComplex.polynomial a 22) second_argument

theorem second_seed_error : RationalPowerEvaluation.seedError 2
    (sourceExponent center) (schedule 2) = secondSeedError := by
  simp only [RationalPowerEvaluation.seedError, second_radius,
    second_displacement, second_seed] <;> rfl

/-- Admissibility is proved independently of seed/output acceptance. -/
theorem second_admissible : RationalPowerEvaluation.Admissible 2
    (sourceExponent center) (schedule 2) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ]
  · norm_num [schedule]
  · rw [second_radius]
    norm_num [secondRadius]
  · rw [second_displacement]
    norm_num [secondDisplacement]

/-- Explicit data only. The next three lemmas prove the rounding windows. -/
def secondStart : GridState := ⟨18408298253608376264, -704853099503417683, 8⟩

theorem second_seed_real_window :
    (secondStart.realPart : ℚ) ≤ scaleQ 64 * secondSeed.re ∧
      scaleQ 64 * secondSeed.re < (secondStart.realPart : ℚ) + 1 := by
  norm_num [secondStart, secondSeed, secondArgument, scaleQ,
    QComplex.polynomial, QComplex.pow, QComplex.add, QComplex.mul,
    QComplex.smul, QComplex.zero, QComplex.one, Nat.factorial]

theorem second_seed_imag_window :
    (secondStart.imagPart : ℚ) ≤ scaleQ 64 * secondSeed.im ∧
      scaleQ 64 * secondSeed.im < (secondStart.imagPart : ℚ) + 1 := by
  norm_num [secondStart, secondSeed, secondArgument, scaleQ,
    QComplex.polynomial, QComplex.pow, QComplex.add, QComplex.mul,
    QComplex.smul, QComplex.zero, QComplex.one, Nat.factorial]

/-- The full initial error belongs to ceiling cell 8, not cell 2 or zero. -/
theorem second_seed_error_window :
    0 ≤ secondSeedError ∧
      (secondStart.errorPart : ℚ) - 1 < scaleQ 64 * (secondSeedError + roundoffQ 64) ∧
      scaleQ 64 * (secondSeedError + roundoffQ 64) ≤ (secondStart.errorPart : ℚ) := by
  norm_num [secondStart, secondSeedError, secondRadius, secondDisplacement,
    secondSeed, secondArgument, scaleQ, roundoffQ, QComplex.rect,
    QComplex.polynomial, QComplex.pow, QComplex.add, QComplex.mul,
    QComplex.smul, QComplex.zero, QComplex.one, Nat.factorial]

/-- No externally supplied seed premise; all five conjuncts are derived. -/
theorem second_seed_valid : SeedValid 64 secondSeed secondSeedError secondStart := by
  exact ⟨second_seed_error_window.1, by norm_num [secondStart],
    second_seed_real_window, second_seed_imag_window, second_seed_error_window.2⟩

end GRWTSK.RiemannHypothesis.ConcreteNewtonSecondSeed
