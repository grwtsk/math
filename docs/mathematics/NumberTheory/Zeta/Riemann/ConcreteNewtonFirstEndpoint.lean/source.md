# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df1efb9437b257f07d8439784e786166157f48e8` · SHA-256 `17c5c7614e272ec09aa17e88198abc1319daee977c6d798bc427669608043281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalPowerTrace
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# The first concrete endpoint: a closed arithmetic leaf in source form

This concerns ONLY base one in the fixed 4096-term packet. Its power seed is
exactly one, but the historical algorithm still propagates nonzero rounding
allowances. The final error is 1277/2^64, not zero. No whole block, terminal,
final aggregation, SourceAcceptance, or zero-existence premise is discharged
by this leaf alone. All scripts remain NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFirstEndpoint

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.IntegerDyadicTrace
open GRWTSK.Analysis.Complex.RationalPowerTrace
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation

private theorem lower_one (K : ℕ) : lower 1 K = 0 := by
  simp [lower, ratio]

private theorem width_one (K : ℕ) : width 1 K = 0 := by
  simp [width, ratio]

theorem first_log_data :
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.logCenter 1 (schedule 1) = 0 ∧
      GRWTSK.Analysis.Complex.RationalPowerEvaluation.logError 1 (schedule 1) = 0 := by
  simp [GRWTSK.Analysis.Complex.RationalPowerEvaluation.logCenter,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.logError,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.logLower,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.logWidth,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.mantissa,
    schedule, logExponent, scaleQ, lower_one, width_one]

private theorem polynomial_zero_succ (K : ℕ) :
    QComplex.polynomial QComplex.zero (K + 1) = QComplex.one := by
  induction K with
  | zero => simp [QComplex.polynomial, QComplex.pow, QComplex.add, QComplex.smul,
      QComplex.zero, QComplex.one]
  | succ K ih =>
      have hp : QComplex.pow QComplex.zero (K + 1) = QComplex.zero := by
        simp [QComplex.pow, QComplex.mul, QComplex.zero]
      simp [QComplex.polynomial, ih, hp, QComplex.add, QComplex.smul,
        QComplex.zero, QComplex.one]

theorem first_seed :
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.seed 1 (sourceExponent center) (schedule 1) =
      QComplex.one := by
  have harg : GRWTSK.Analysis.Complex.RationalPowerEvaluation.argument 1
      (sourceExponent center) (schedule 1) = QComplex.zero := by
    simp [GRWTSK.Analysis.Complex.RationalPowerEvaluation.argument, first_log_data.1,
      QComplex.smul, QComplex.zero]
  change QComplex.polynomial _ 22 = _
  rw [harg]
  exact polynomial_zero_succ 21

theorem first_seed_error :
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.seedError 1
      (sourceExponent center) (schedule 1) = 0 := by
  simp [GRWTSK.Analysis.Complex.RationalPowerEvaluation.seedError,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.radius,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.displacement,
    first_log_data.1, first_log_data.2, schedule]

theorem first_admissible :
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible 1
      (sourceExponent center) (schedule 1) := by
  simp [GRWTSK.Analysis.Complex.RationalPowerEvaluation.Admissible,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.mantissa,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.radius,
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.displacement,
    first_log_data.1, first_log_data.2, schedule, logExponent, scaleQ]

/-- All nine states; the error numerator evolves 2,7,17,...,1277. -/
def firstTrace (j : Fin 9) : GridState :=
  ⟨18446744073709551616, 0, 5 * (2 : ℤ) ^ j.1 - 3⟩

def firstOutput : State := ⟨QComplex.one, 1277 / 18446744073709551616⟩

/-- Only finite integer inequalities after the seed identities above. No native decision. -/
theorem first_trace_valid : TraceValid 64 QComplex.one 0 8 firstTrace := by
  constructor
  · norm_num [SeedValid, firstTrace, scaleQ, roundoffQ, QComplex.one]
  · intro j
    fin_cases j <;>
      norm_num [StepValid, FloorWindow, CeilingWindow, firstTrace,
        realProduct, imagProduct, errorProduct, scaleZ]

theorem first_output_identity : decode 64 (firstTrace (Fin.last 8)) = firstOutput := by
  norm_num [decode, firstTrace, firstOutput, scaleQ, QComplex.one, Fin.last]

/-- One endpoint equality has a closed proof SCRIPT; Lean has not executed it. -/
theorem first_endpoint_compute :
    GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute 1
      (sourceExponent center) (schedule 1) = firstOutput := by
  change run 64 _ _ 8 = _
  rw [first_seed, first_seed_error]
  exact (trace_refines 64 QComplex.one 0 8 firstTrace first_trace_valid).trans first_output_identity

/-- Supplies precisely the singleton leaf to the old checker for a matching transcript. -/
theorem first_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (ht : t.prefix ⟨0, by norm_num [prefixLength]⟩ = firstOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      {⟨0, by norm_num [prefixLength]⟩} = true := by
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have he : i = (⟨0, by norm_num [prefixLength]⟩ : Fin prefixLength) :=
    Finset.mem_singleton.mp hi
  subst i
  exact ⟨first_admissible, first_endpoint_compute.trans ht.symm⟩

end GRWTSK.RiemannHypothesis.ConcreteNewtonFirstEndpoint
```
