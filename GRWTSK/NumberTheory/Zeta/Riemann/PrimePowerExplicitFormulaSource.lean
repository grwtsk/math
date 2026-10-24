/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Linear prime-power source versus positive quadratic Gram

The repository's complete arithmetic source interface has a linear prime-power
channel. The positive finite object from the previous layer is quadratic.
This file binds the exact von-Mangoldt prime-power readout into the existing
ArithmeticSource interface and makes the additional quadraticization
residual explicit.

No explicit-formula theorem is asserted here: the remaining Archimedean,
pole, trivial-zero, nontrivial-zero, endpoint, and tail channels are retained
as independent source fields.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

/-- A complete source-channel proposal whose prime-power field is fixed to
the exact finite von-Mangoldt readout. The other six channels remain
independently supplied data. -/
structure Source (T : Type*) where
  sourceId : String
  revision : String
  stage : T → PrimePowerWitnessStage
  test : T → ℝ → ℝ
  archimedean : T → ℝ
  pole : T → ℝ
  trivialZero : T → ℝ
  nontrivialZero : T → ℝ
  endpoint : T → ℝ
  tail : T → ℝ

/-- Embed the proposal into the repository's canonical complete arithmetic
source record without altering any channel. -/
noncomputable def Source.toArithmeticSource {T : Type*}
    (source : Source T) : ArithmeticSource T ℝ where
  sourceId := source.sourceId
  revision := source.revision
  primePower := fun f => stageReadout (source.stage f) (source.test f)
  archimedean := source.archimedean
  pole := source.pole
  trivialZero := source.trivialZero
  nontrivialZero := source.nontrivialZero
  endpoint := source.endpoint
  tail := source.tail

@[simp]
theorem Source.toArithmeticSource_primePower {T : Type*}
    (source : Source T) (f : T) :
    source.toArithmeticSource.primePower f =
      stageReadout (source.stage f) (source.test f) :=
  rfl

@[simp]
theorem Source.extract_primePower {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).primePower =
      stageReadout (source.stage f) (source.test f) :=
  rfl

@[simp]
theorem Source.extract_archimedean {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).archimedean =
      source.archimedean f :=
  rfl

@[simp]
theorem Source.extract_pole {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).pole = source.pole f :=
  rfl

@[simp]
theorem Source.extract_trivialZero {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).trivialZero =
      source.trivialZero f :=
  rfl

@[simp]
theorem Source.extract_nontrivialZero {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).nontrivialZero =
      source.nontrivialZero f :=
  rfl

@[simp]
theorem Source.extract_endpoint {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).endpoint =
      source.endpoint f :=
  rfl

@[simp]
theorem Source.extract_tail {T : Type*}
    (source : Source T) (f : T) :
    (source.toArithmeticSource.extract f).tail = source.tail f :=
  rfl

/-- The complete scalar obtained by adding every named arithmetic source
channel. This is bookkeeping only; equality with a Weil or explicit-formula
target requires a separate theorem. -/
noncomputable def Source.completeChannelSum {T : Type*}
    (source : Source T) (f : T) : ℝ :=
  source.toArithmeticSource.primePower f +
    source.archimedean f +
    source.pole f +
    source.trivialZero f +
    source.nontrivialZero f +
    source.endpoint f +
    source.tail f

/-- The exact extra residual required merely to replace the linear
prime-power source channel by the positive quadratic Gram. -/
noncomputable def Source.quadraticizationResidual {T : Type*}
    (source : Source T) (f : T) : ℝ :=
  source.toArithmeticSource.primePower f -
    stageEnergy (source.stage f) (source.test f)

theorem Source.primePower_eq_energy_add_quadraticizationResidual
    {T : Type*} (source : Source T) (f : T) :
    source.toArithmeticSource.primePower f =
      stageEnergy (source.stage f) (source.test f) +
        source.quadraticizationResidual f := by
  unfold Source.quadraticizationResidual
  ring

/-- An independently selected target equals the complete seven-channel
arithmetic source. This is an actual theorem hypothesis, not metadata. -/
def CompleteTargetIdentity {T : Type*}
    (source : Source T) (target : T → ℝ) : Prop :=
  ∀ f, target f = source.completeChannelSum f

/-- Exact residual ledger after replacing only the linear prime-power source
by the positive finite Gram. Every non-prime channel remains visible. -/
theorem completeTarget_sub_energy_decomposition
    {T : Type*} {source : Source T} {target : T → ℝ}
    (hsource : CompleteTargetIdentity source target) (f : T) :
    target f - stageEnergy (source.stage f) (source.test f) =
      source.quadraticizationResidual f +
      source.archimedean f +
      source.pole f +
      source.trivialZero f +
      source.nontrivialZero f +
      source.endpoint f +
      source.tail f := by
  rw [hsource f]
  unfold Source.completeChannelSum Source.quadraticizationResidual
  ring

/-- A source-level comparison record retaining each channel separately.
Logical and analytic validity of the target identity is carried by
sourceIdentity; it is not inferred from strings or field names. -/
structure CompleteComparison {T : Type*} (source : Source T) where
  target : T → ℝ
  sourceIdentity : CompleteTargetIdentity source target
  comparisonId : String
  normalizationId : String
  invalidationKey : String

namespace CompleteComparison

/-- The exact seven-term residual decomposition for a complete comparison. -/
theorem residual_decomposition {T : Type*} {source : Source T}
    (comparison : CompleteComparison source) (f : T) :
    comparison.target f -
        stageEnergy (source.stage f) (source.test f) =
      source.quadraticizationResidual f +
      source.archimedean f +
      source.pole f +
      source.trivialZero f +
      source.nontrivialZero f +
      source.endpoint f +
      source.tail f :=
  completeTarget_sub_energy_decomposition comparison.sourceIdentity f

end CompleteComparison

/-- One atomic linear contribution at test value two differs from the
corresponding square-energy contribution. This is the basic obstruction to
identifying the explicit-formula prime-power source with the positive Gram. -/
theorem atom_linear_ne_quadratic_at_two
    (a : PrimePowerAtom) :
    atomWeight a * (2 : ℝ) ≠ atomWeight a * (2 : ℝ) ^ 2 := by
  have hpos := atomWeight_pos a
  nlinarith

end GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource
