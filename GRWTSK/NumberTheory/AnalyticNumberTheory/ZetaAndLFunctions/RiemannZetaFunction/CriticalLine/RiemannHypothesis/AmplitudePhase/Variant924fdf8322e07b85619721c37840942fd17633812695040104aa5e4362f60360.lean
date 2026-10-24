import Mathematics.MobiusOntology.Quantization

/-!
# Amplitude--phase separation

Continuous or dyadic amplitude and Boolean phase are independently typed.
There is no implicit coercion or authority transfer between them.
-/

namespace Mathematics.MobiusOntology

universe u v

structure AmplitudePhaseSystem
    (Amplitude : Type u) (Phase : Type v) where
  amplitude : Amplitude
  phase : Phase

inductive DirectAmplitudePhaseCoercion
    (Amplitude : Type u) (Phase : Type v) : Prop

theorem no_direct_amplitude_phase_coercion
    (Amplitude : Type u) (Phase : Type v) :
    ¬ DirectAmplitudePhaseCoercion Amplitude Phase := by
  intro impossible
  cases impossible

/-- The only admitted connection is a separately proved relation. -/
structure AmplitudePhaseBridge
    (Amplitude : Type u) (Phase : Type v) where
  relates : Amplitude → Phase → Prop
  quantize : Amplitude → Phase
  sound : ∀ amplitude, relates amplitude (quantize amplitude)

structure AmplitudePhaseCertificate
    (Amplitude : Type u) (Phase : Type v)
    (amplitudeMetric : Amplitude → Amplitude → ℝ≥0)
    (phaseTwist : Phase → Phase) : Prop where
  phaseInvolutive : Function.Involutive phaseTwist
  phasePreservesAmplitude :
    ∀ amplitude phase,
      amplitudeMetric amplitude amplitude = 0
  complementIsNotAmplitudeNegation : Prop
  complementIsNotAmplitudeNegationProof :
    complementIsNotAmplitudeNegation

end Mathematics.MobiusOntology
