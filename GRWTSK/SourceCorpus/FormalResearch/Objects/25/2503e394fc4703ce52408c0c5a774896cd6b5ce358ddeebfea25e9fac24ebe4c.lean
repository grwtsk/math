import Mathlib.Order.Filter.Basic
import Mathematics.ConnesBitfield.Dynamics
import Mathematics.ConnesBitfield.Typicality
import Mathematics.ConnesBitfield.SpectralSize

/-!
# Terminal arithmetic and semantic interfaces

These records are deliberately external to the finite spectral construction.
The model cannot manufacture any of them from self-adjointness,
contractivity, or concentration.
-/

namespace Mathematics.ConnesBitfield

open Filter

universe uScale uTest uSemantic uPlace uArithmeticLocal uBitfieldLocal
universe uSchedule

structure BoundarySemanticIdentification
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (dynamics :
      ScheduleKernelFamily system carrier Schedule)
    (SemanticBoundary : Type uSemantic) where
  interpretLaw : carrier.Law → SemanticBoundary
  intendedBoundary : SemanticBoundary
  invariantLawIdentified :
    interpretLaw dynamics.invariantLaw =
      intendedBoundary
  interpretationRespectsZeroDistance :
    ∀ {left right},
      carrier.wasserstein left right = 0 →
      interpretLaw left = interpretLaw right
  arithmeticMeaning : Prop
  arithmeticMeaningCertified :
    arithmeticMeaning

structure UniformEnsembleLimitCertificate
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction) where
  asymptoticFilter : Filter Scale
  limitingTrace : TestFunction → ℂ
  traceConverges :
    ∀ test,
      Tendsto
        (fun scale =>
          normalizedReducedTrace
            trace.invariantProjection
            trace.spectralTransform
            scale
            test)
        asymptoticFilter
        (𝓝 (limitingTrace test))
  empiricalSpectralMeasuresConverge : Prop
  empiricalSpectralMeasuresConvergeProof :
    empiricalSpectralMeasuresConverge
  uniformIntegrability : Prop
  uniformIntegrabilityProof :
    uniformIntegrability

structure LocalGlobalArithmeticCompatibility
    (Place : Type uPlace)
    (ArithmeticLocal : Type uArithmeticLocal)
    (BitfieldLocal : Type uBitfieldLocal) where
  arithmeticLocal : Place → ArithmeticLocal
  bitfieldLocal : Place → BitfieldLocal
  compatible : ArithmeticLocal → BitfieldLocal → Prop
  everyLocalDatumCompatible :
    ∀ place,
      compatible
        (arithmeticLocal place)
        (bitfieldLocal place)
  frobeniusDataMatched : Prop
  frobeniusDataMatchedProof :
    frobeniusDataMatched
  conductorDataMatched : Prop
  conductorDataMatchedProof :
    conductorDataMatched
  monodromyDataMatched : Prop
  monodromyDataMatchedProof :
    monodromyDataMatched
  eulerFactorsMatched : Prop
  eulerFactorsMatchedProof :
    eulerFactorsMatched
  automorphicDataMatched : Prop
  automorphicDataMatchedProof :
    automorphicDataMatched
  localDataAssembleGlobally : Prop
  localDataAssembleGloballyProof :
    localDataAssembleGlobally

end Mathematics.ConnesBitfield
