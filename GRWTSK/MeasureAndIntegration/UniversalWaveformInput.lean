/- Copyright (c) 2026 grwtsk contributors. MIT.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Universal waveform source input

A source is ANY function `Time → Amplitude`: no arithmetic data,
continuity, differentiability, measurability, finite support or
integrability is required to construct one. Time and amplitude types
are independent and may be real, complex, discrete or symbolic.

Coordinate pullback does not redefine the source. Only a proved
bijection supplies a lossless round trip. An arbitrary observation,
codec or decoder retains the COMPLETE source-minus-observation defect.

Energy is an optional REAL-waveform operation. Its mathematical
integrability must be supplied explicitly; the generic input type
does not claim that every arbitrary waveform has finite energy.
-/

namespace GRWTSK.MeasureAndIntegration.UniversalWaveformInput

open MeasureTheory
open scoped BigOperators

universe u v w z

/-- A completely unrestricted waveform from any time/index type to
any amplitude/data type. No regularity or finite-alphabet assumption. -/
structure UniversalInput (Time : Type u) (Amplitude : Type v) where
  source : Time → Amplitude

/-- Every ordinary waveform is admitted without preprocessing. -/
def UniversalInput.ofFunction {Time : Type u} {Amplitude : Type v}
    (waveform : Time → Amplitude) : UniversalInput Time Amplitude :=
  ⟨waveform⟩

@[simp] theorem UniversalInput.ofFunction_source
    {Time : Type u} {Amplitude : Type v}
    (waveform : Time → Amplitude) (t : Time) :
    (UniversalInput.ofFunction waveform).source t = waveform t := rfl

/-- Every source input is exactly its own unmodified waveform. -/
theorem UniversalInput.ofFunction_source_return
    {Time : Type u} {Amplitude : Type v}
    (input : UniversalInput Time Amplitude) :
    UniversalInput.ofFunction input.source = input := by
  cases input
  rfl

/-- An arbitrary change of clock/chart is only a coordinate pullback.
No injectivity is inferred for a general, possibly lossy chart map. -/
def UniversalInput.pullback
    {Time : Type u} {Amplitude : Type v} {Chart : Type w}
    (input : UniversalInput Time Amplitude) (chart : Chart → Time) :
    UniversalInput Chart Amplitude :=
  ⟨fun x => input.source (chart x)⟩

@[simp] theorem UniversalInput.pullback_source
    {Time : Type u} {Amplitude : Type v} {Chart : Type w}
    (input : UniversalInput Time Amplitude) (chart : Chart → Time)
    (x : Chart) :
    (input.pullback chart).source x = input.source (chart x) := rfl

/-- Composition of charts retains the exact original waveform. -/
theorem UniversalInput.pullback_comp
    {Time : Type u} {Amplitude : Type v} {Chart : Type w} {Other : Type z}
    (input : UniversalInput Time Amplitude)
    (chart : Chart → Time) (other : Other → Chart) :
    (input.pullback chart).pullback other =
      input.pullback (fun x => chart (other x)) := rfl

/-- A genuine equivalence of clocks restores the source exactly. -/
theorem UniversalInput.pullback_equiv_return
    {Time : Type u} {Amplitude : Type v} {Chart : Type w}
    (input : UniversalInput Time Amplitude) (chart : Chart ≃ Time) :
    (input.pullback chart).pullback chart.symm = input := by
  cases input with
  | mk waveform =>
    change UniversalInput.mk (fun t => waveform (chart (chart.symm t))) =
      UniversalInput.mk waveform
    congr 1
    funext t
    simp

/-- For additive amplitudes, every observation has a COMPLETE signed
source-minus-observation residual. It need not be small or zero. -/
def signedDefect
    {Time : Type u} {Amplitude : Type v} [AddCommGroup Amplitude]
    (source observed : UniversalInput Time Amplitude) :
    Time → Amplitude :=
  fun t => source.source t - observed.source t

/-- No amount of encoding changes the original sample: any loss is
paid by the exact signed defect, for EVERY source and observation. -/
theorem observed_add_signedDefect_eq_source
    {Time : Type u} {Amplitude : Type v} [AddCommGroup Amplitude]
    (source observed : UniversalInput Time Amplitude) (t : Time) :
    observed.source t + signedDefect source observed t = source.source t := by
  unfold signedDefect
  abel

/-- A missing/zero observation does not make the original source zero:
it leaves the ENTIRE waveform in its signed defect. -/
theorem missing_observation_retains_source
    {Time : Type u} {Amplitude : Type v} [AddCommGroup Amplitude]
    (source : UniversalInput Time Amplitude) (t : Time) :
    signedDefect source (UniversalInput.ofFunction (fun _ => 0)) t =
      source.source t := by
  simp [signedDefect, UniversalInput.ofFunction]

/-- Encode/decode is an optional source operation; arbitrary codecs
are not assumed injective or lossless. -/
def decodedInput
    {Time : Type u} {Amplitude : Type v} {Code : Type w}
    (source : UniversalInput Time Amplitude)
    (encode : UniversalInput Time Amplitude → Code)
    (decode : Code → Time → Amplitude) :
    UniversalInput Time Amplitude :=
  UniversalInput.ofFunction (decode (encode source))

/-- Exact source return after any codec, with no decoder-law fiction. -/
theorem decoded_add_defect_eq_source
    {Time : Type u} {Amplitude : Type v} {Code : Type w}
    [AddCommGroup Amplitude]
    (source : UniversalInput Time Amplitude)
    (encode : UniversalInput Time Amplitude → Code)
    (decode : Code → Time → Amplitude) (t : Time) :
    (decodedInput source encode decode).source t +
      signedDefect source (decodedInput source encode decode) t =
        source.source t :=
  observed_add_signedDefect_eq_source source _ t

/-- The quadratic observable of ANY real waveform retains BOTH
source/observation mixed orientations and its error-error term.
This identity is pointwise and assumes no integrability. -/
theorem real_square_signed_defect
    {Time : Type u}
    (source observed : UniversalInput Time ℝ) (t : Time) :
    source.source t ^ 2 =
      observed.source t ^ 2 +
        2 * observed.source t * signedDefect source observed t +
        signedDefect source observed t ^ 2 := by
  have h := observed_add_signedDefect_eq_source source observed t
  rw [← h]
  ring

/-- Observation on a possibly different clock, retaining the source
clock's actual value and the COMPLETE signed defect. -/
def clockDefect
    {Time : Type u} {Amplitude : Type v} {Chart : Type w}
    [AddCommGroup Amplitude]
    (source : UniversalInput Time Amplitude)
    (observed : UniversalInput Chart Amplitude)
    (chart : Chart → Time) (x : Chart) : Amplitude :=
  source.source (chart x) - observed.source x

theorem clock_observation_add_defect_eq_source
    {Time : Type u} {Amplitude : Type v} {Chart : Type w}
    [AddCommGroup Amplitude]
    (source : UniversalInput Time Amplitude)
    (observed : UniversalInput Chart Amplitude)
    (chart : Chart → Time) (x : Chart) :
    observed.source x + clockDefect source observed chart x =
      source.source (chart x) := by
  unfold clockDefect
  abel

/-- OPTIONAL finite source synthesis. Both the index type and the
atom waveform are arbitrary; it is NOT assumed that every waveform
admits a finite synthesis, nor that its coefficients are Möbius. -/
def indexedSynthesis
    {Index : Type w}
    (inventory : ℝ → Finset Index)
    (coefficient : Index → ℝ)
    (atom : Index → ℝ → ℝ) : UniversalInput ℝ ℝ :=
  UniversalInput.ofFunction (fun t =>
    ∑ i ∈ inventory t, coefficient i * atom i t)

@[simp] theorem indexedSynthesis_source
    {Index : Type w}
    (inventory : ℝ → Finset Index)
    (coefficient : Index → ℝ)
    (atom : Index → ℝ → ℝ) (t : ℝ) :
    (indexedSynthesis inventory coefficient atom).source t =
      ∑ i ∈ inventory t, coefficient i * atom i t := rfl

/-- A REAL waveform's quadratic energy is an OPTIONAL analytic
operation, not a defining condition on universal input. -/
def realEnergy (source : UniversalInput ℝ ℝ) (T : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..T, (source.source t) ^ 2

/-- Complex-amplitude source energy is also optional. It does not
restrict complex waveform ingestion and requires separate analysis. -/
def complexEnergy (source : UniversalInput ℝ ℂ) (T : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..T, Complex.normSq (source.source t)

/-- A quantified analytic proof may consume this integrability
hypothesis; arbitrary raw waveforms need NOT satisfy it. -/
def EnergyAdmissibleOn (source : UniversalInput ℝ ℝ) (T : ℝ) : Prop :=
  IntervalIntegrable (fun t => (source.source t) ^ 2)
    MeasureTheory.volume 0 T

/-- Exact equality of waveforms yields equality of their declared
energies. No energy estimate follows from the mere equality. -/
theorem realEnergy_eq_of_source_eq
    (a b : UniversalInput ℝ ℝ)
    (h : ∀ t, a.source t = b.source t) (T : ℝ) :
    realEnergy a T = realEnergy b T := by
  have heq : a.source = b.source := funext h
  simp only [realEnergy, heq]

end GRWTSK.MeasureAndIntegration.UniversalWaveformInput
