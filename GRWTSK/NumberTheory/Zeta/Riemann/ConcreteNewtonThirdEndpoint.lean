/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdSeed
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondEndpoint

set_option autoImplicit false

/-!
# Third concrete endpoint: non-unit mantissa, exact seed, and all eight steps

The base-three proof uses the integer-normalized seed and the unchanged step
refinement. The first-three adapter preserves literal full-record equality.
The other 61 entries of the first block remain a premise. No full block,
terminal check, final aggregation or SourceAcceptance is discharged here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonThirdEndpoint

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace
open ConcreteNewtonPacket RationalZetaCenterEvaluation
open ConcreteNewtonFirstEndpoint ConcreteNewtonSecondEndpoint ConcreteNewtonThirdSeed

/-- Every stored value component and error is explicit; the seed is proved separately. -/
def thirdTrace (j : Fin 9) : GridState :=
  match j.1 with
  | 0 => start
  | 1 => ⟨18232749346025746264, -2222859347250586273, 19⟩
  | 2 => ⟨17753379335060395760, -4394145345969467837, 45⟩
  | 3 => ⟨16039359754262885093, -8457961889498751038, 111⟩
  | 4 => ⟨10068115070081659255, -14708318496905877158, 297⟩
  | 5 => ⟨-6232411068459014867, -16055412545708906747, 800⟩
  | 6 => ⟨-11868399291053322372, 10848953122428129787, 1936⟩
  | 7 => ⟨1255458295875557776, -13960155465094365029, 4771⟩
  | _ => ⟨-10479343362953028843, -1900215335598869484, 7873⟩

def thirdOutput : State :=
  ⟨⟨-10479343362953028843 / 18446744073709551616, -1900215335598869484 / 18446744073709551616⟩,
    7873 / 18446744073709551616⟩

/-- Eight integer checks. The original quadratic error and local allowance remain. -/
theorem third_steps_valid (j : Fin 8) :
    StepValid 64 (thirdTrace j.castSucc) (thirdTrace j.succ) := by
  fin_cases j <;>
    norm_num [StepValid, FloorWindow, CeilingWindow, thirdTrace, start,
      realProduct, imagProduct, errorProduct, scaleZ]

theorem third_trace_valid : TraceValid 64
    (RationalPowerEvaluation.seed 3 (sourceExponent center) (schedule 3))
    (RationalPowerEvaluation.seedError 3 (sourceExponent center) (schedule 3)) 8 thirdTrace := by
  exact ⟨by simpa [thirdTrace] using original_seed_valid, third_steps_valid⟩

theorem third_output_identity :
    decode 64 (thirdTrace (Fin.last 8)) = thirdOutput := by
  norm_num [decode, thirdTrace, thirdOutput, scaleQ, Fin.last]

/-- Closed proof SCRIPT, not a kernel-accepted equality. No SourceAcceptance premise. -/
theorem third_endpoint_compute : RationalPowerEvaluation.compute 3
    (sourceExponent center) (schedule 3) = thirdOutput := by
  change run 64 _ _ 8 = _
  exact (trace_refines 64 _ _ 8 thirdTrace third_trace_valid).trans third_output_identity

theorem third_trace_check : RationalPowerTrace.check 3 (sourceExponent center)
    (schedule 3) thirdTrace thirdOutput = true := by
  apply (RationalPowerTrace.check_iff 3 (sourceExponent center)
    (schedule 3) thirdTrace thirdOutput).mpr
  exact ⟨third_admissible, third_trace_valid, third_output_identity⟩

/-- The SAME positive-axis power, not a new zeta value or zero certificate. -/
theorem third_power_enclosure :
    ‖IntervalMellinKernel.logPower 3 (QComplex.embed (sourceExponent center)) -
      QComplex.embed thirdOutput.value‖ ≤ (thirdOutput.error : ℝ) := by
  have h := RationalPowerEvaluation.compute_sound 3 (sourceExponent center)
    (schedule 3) third_admissible
  simpa only [third_endpoint_compute] using h

/-- The third index represents integer base three, not the terminal base 4097. -/
def firstThree : Finset (Fin prefixLength) :=
  insert ⟨2, by norm_num [prefixLength]⟩ firstTwo

theorem third_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (ht : t.prefix ⟨2, by norm_num [prefixLength]⟩ = thirdOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      {⟨2, by norm_num [prefixLength]⟩} = true := by
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have he : i = (⟨2, by norm_num [prefixLength]⟩ : Fin prefixLength) :=
    Finset.mem_singleton.mp hi
  subst i
  exact ⟨third_admissible, third_endpoint_compute.trans ht.symm⟩

/-- The transcript must match ALL three complete states, including their errors. -/
theorem first_three_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (hfirst : t.prefix ⟨0, by norm_num [prefixLength]⟩ = firstOutput)
    (hsecond : t.prefix ⟨1, by norm_num [prefixLength]⟩ = secondOutput)
    (hthird : t.prefix ⟨2, by norm_num [prefixLength]⟩ = thirdOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t firstThree = true := by
  have htwo := (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t firstTwo).mp
    (first_two_prefix_check t hfirst hsecond)
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t firstThree).mpr
  intro i hi
  rcases Finset.mem_insert.mp hi with hi | hi
  · subst i
    exact ⟨third_admissible, third_endpoint_compute.trans hthird.symm⟩
  · exact htwo i hi

/-- All other 61 checks in the first block remain explicit, not presumed passed. -/
theorem first_block_of_remainder (t : RationalZetaTranscript.Transcript prefixLength)
    (hfirst : t.prefix ⟨0, by norm_num [prefixLength]⟩ = firstOutput)
    (hsecond : t.prefix ⟨1, by norm_num [prefixLength]⟩ = secondOutput)
    (hthird : t.prefix ⟨2, by norm_num [prefixLength]⟩ = thirdOutput)
    (hrest : RationalZetaTranscript.checkPrefix prefixLength center plan t
      (ConcreteNewtonBlockAcceptance.blockIndices 0 \ firstThree) = true) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true := by
  have ht := (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t firstThree).mp
    (first_three_prefix_check t hfirst hsecond hthird)
  have hr := (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mp hrest
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  by_cases hthree : i ∈ firstThree
  · exact ht i hthree
  · exact hr i (Finset.mem_sdiff.mpr ⟨hi, hthree⟩)

end GRWTSK.RiemannHypothesis.ConcreteNewtonThirdEndpoint
