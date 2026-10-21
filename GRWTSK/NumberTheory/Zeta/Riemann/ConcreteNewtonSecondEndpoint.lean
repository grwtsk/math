/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondSeed

set_option autoImplicit false

/-!
# A second closed endpoint proof draft, with its nontrivial complex seed

Base two reuses the original fixed packet, all endpoint guards, the exact
22-term seed, nonzero log uncertainty, and the unchanged integer-step theorem.
The two singleton leaves compose only with evidence for the OTHER 62 entries
of the first block. No block, terminal, final sum or SourceAcceptance equality
is claimed here. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonSecondEndpoint

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace
open ConcreteNewtonPacket RationalZetaCenterEvaluation
open ConcreteNewtonFirstEndpoint ConcreteNewtonSecondSeed

/-- Nine stored states. Negative components use floor, not truncation toward zero. -/
def secondTrace (j : Fin 9) : GridState :=
  match j.1 with
  | 0 => secondStart
  | 1 => ⟨18343000008558004311, -1406768156894581479, 19⟩
  | 2 => ⟨18132557774432369485, -2797713050156423137, 43⟩
  | 3 => ⟨17399409448605647639, -5500124392200476857, 100⟩
  | 4 => ⟨14771608460644338424, -10375697297665688225, 251⟩
  | 5 => ⟨5992673919043655001, -16617104609340641788, 687⟩
  | 6 => ⟨-13022136803000469870, -10796581662813792057, 1687⟩
  | 7 => ⟨2873670882104466727, 15243293109736801349, 4359⟩
  | _ => ⟨-12148485369300672815, 4749261699712569162, 8565⟩

def secondOutput : State :=
  ⟨⟨-12148485369300672815 / 18446744073709551616,
    4749261699712569162 / 18446744073709551616⟩,
    8565 / 18446744073709551616⟩

/-- Eight finite INTEGER checks; no seed computation is hidden in the steps. -/
theorem second_steps_valid (j : Fin 8) :
    StepValid 64 (secondTrace j.castSucc) (secondTrace j.succ) := by
  fin_cases j <;>
    norm_num [StepValid, FloorWindow, CeilingWindow, secondTrace, secondStart,
      realProduct, imagProduct, errorProduct, scaleZ]

theorem second_trace_valid : TraceValid 64 secondSeed secondSeedError 8 secondTrace := by
  exact ⟨by simpa [secondTrace] using second_seed_valid, second_steps_valid⟩

theorem second_output_identity :
    decode 64 (secondTrace (Fin.last 8)) = secondOutput := by
  norm_num [decode, secondTrace, secondOutput, scaleQ, Fin.last]

/-- CLOSED proof script: neither endpoint equality nor SourceAcceptance is an input.
It has not been executed; the substantial rational seed lemmas remain unaudited. -/
theorem second_endpoint_compute : RationalPowerEvaluation.compute 2
    (sourceExponent center) (schedule 2) = secondOutput := by
  change run 64 _ _ 8 = _
  rw [second_seed, second_seed_error]
  exact (trace_refines 64 secondSeed secondSeedError 8 secondTrace
    second_trace_valid).trans second_output_identity

/-- The unchanged trace checker receives the original guards and full output state. -/
theorem second_trace_check : RationalPowerTrace.check 2 (sourceExponent center)
    (schedule 2) secondTrace secondOutput = true := by
  apply (RationalPowerTrace.check_iff 2 (sourceExponent center)
    (schedule 2) secondTrace secondOutput).mpr
  refine ⟨second_admissible, ?_, second_output_identity⟩
  change TraceValid 64 _ _ 8 secondTrace
  rw [second_seed, second_seed_error]
  exact second_trace_valid

/-- Application to the same positive-axis power, not a zeta-value or zero theorem. -/
theorem second_power_enclosure :
    ‖IntervalMellinKernel.logPower 2 (QComplex.embed (sourceExponent center)) -
      QComplex.embed secondOutput.value‖ ≤ (secondOutput.error : ℝ) := by
  have h := RationalPowerEvaluation.compute_sound 2 (sourceExponent center)
    (schedule 2) second_admissible
  simpa only [second_endpoint_compute] using h

/-- The two indices are only bases 1 and 2, not an entire 64-term block. -/
def firstTwo : Finset (Fin prefixLength) :=
  {⟨0, by norm_num [prefixLength]⟩, ⟨1, by norm_num [prefixLength]⟩}

theorem second_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (ht : t.prefix ⟨1, by norm_num [prefixLength]⟩ = secondOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      {⟨1, by norm_num [prefixLength]⟩} = true := by
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have he : i = (⟨1, by norm_num [prefixLength]⟩ : Fin prefixLength) :=
    Finset.mem_singleton.mp hi
  subst i
  exact ⟨second_admissible, second_endpoint_compute.trans ht.symm⟩

/-- Literal record identity is still required for an arbitrary external transcript. -/
theorem first_two_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (hfirst : t.prefix ⟨0, by norm_num [prefixLength]⟩ = firstOutput)
    (hsecond : t.prefix ⟨1, by norm_num [prefixLength]⟩ = secondOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t firstTwo = true := by
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t firstTwo).mpr
  intro i hi
  rcases Finset.mem_insert.mp hi with hi | hi
  · subst i
    exact ⟨first_admissible, first_endpoint_compute.trans hfirst.symm⟩
  · have he := Finset.mem_singleton.mp hi
    subst i
    exact ⟨second_admissible, second_endpoint_compute.trans hsecond.symm⟩

/-- The other 62 endpoint checks remain an explicit premise, never presumed passed. -/
theorem first_block_of_remainder (t : RationalZetaTranscript.Transcript prefixLength)
    (hfirst : t.prefix ⟨0, by norm_num [prefixLength]⟩ = firstOutput)
    (hsecond : t.prefix ⟨1, by norm_num [prefixLength]⟩ = secondOutput)
    (hrest : RationalZetaTranscript.checkPrefix prefixLength center plan t
      (ConcreteNewtonBlockAcceptance.blockIndices 0 \ firstTwo) = true) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true := by
  have ht := (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t firstTwo).mp
    (first_two_prefix_check t hfirst hsecond)
  have hr := (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mp hrest
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  by_cases htwo : i ∈ firstTwo
  · exact ht i htwo
  · exact hr i (Finset.mem_sdiff.mpr ⟨hi, htwo⟩)

end GRWTSK.RiemannHypothesis.ConcreteNewtonSecondEndpoint
