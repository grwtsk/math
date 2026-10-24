import Number.LFunction

/-!
# Finite automorphic Euler product data

Finite automorphic data belongs to `Number`.

This file contains only finite shells: automorphic representation indices,
local Satake parameter packets, Hecke eigenvalue packets, finite-place
ramification data, and archimedean labels.

Carrying such local finite data is not a construction of a global automorphic
representation, and it does not assert automorphy, cuspidality, unitarity,
temperedness, Euler product convergence, Langlands functorial transfer, or a
trace-formula comparison. Those claims belong to
`AnalyticNumber.AutomorphicEulerProduct` and are available only through
explicit authority records.
-/

namespace Number
namespace AutomorphicEulerProduct

/-- Finite label of the underlying reductive group. -/
inductive AutomorphicGroupLabel where
  | GL : Nat → AutomorphicGroupLabel
  | classical : String → AutomorphicGroupLabel
  | custom : String → AutomorphicGroupLabel
deriving Repr, DecidableEq

/-- Finite index of a formal automorphic representation. -/
structure AutomorphicRepresentationIndex where
  group : AutomorphicGroupLabel
  conductor : Nat
  conductorPositive : conductor > 0
  representationHash : Nat
  coefficientFieldHash : Nat
deriving Repr

/-- Adapter into the generic L-function index vocabulary. -/
def AutomorphicRepresentationIndex.toLFunctionIndex
    (I : AutomorphicRepresentationIndex) :
    _root_.Number.LFunction.LFunctionIndex :=
  _root_.Number.LFunction.LFunctionIndex.automorphic
    I.conductor
    I.representationHash

/-- Finite local Satake parameter packet at a labelled place. -/
structure LocalSatakeParameterPacket where
  placeLabel : String
  norm : Nat
  normPositive : norm > 0
  rank : Nat
  satakeParameterHashes : List Nat
  satakePolynomialCoeffs : List Int
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite Hecke eigenvalue packet at a labelled place. -/
structure HeckeEigenvaluePacket where
  placeLabel : String
  operatorLabels : List String
  eigenvalues : List Int
  normalizationHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite-place ramification data. -/
structure FinitePlaceRamificationData where
  placeLabel : String
  norm : Nat
  normPositive : norm > 0
  ramified : Bool
  conductorExponent : Nat
  inertiaTypeHash : Nat
  localMonodromyHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite archimedean label. -/
structure ArchimedeanLabel where
  placeLabel : String
  gammaFactorHash : Nat
  infinitesimalCharacterHash : Nat
  weightLabels : List Int
  normalizationHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Complete finite automorphic Euler product payload. -/
structure FiniteAutomorphicEulerPayload where
  index : AutomorphicRepresentationIndex
  localSatakePackets : List LocalSatakeParameterPacket
  heckeEigenvaluePackets : List HeckeEigenvaluePacket
  finitePlaceRamification : List FinitePlaceRamificationData
  archimedeanLabels : List ArchimedeanLabel
  finiteFunctionalEquationHash : Nat
  finiteEulerProductHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

theorem local_satake_packet_sound
    (P : LocalSatakeParameterPacket) :
    P.finiteSound :=
  P.finiteSoundProof

theorem hecke_eigenvalue_packet_sound
    (P : HeckeEigenvaluePacket) :
    P.finiteSound :=
  P.finiteSoundProof

theorem finite_place_ramification_data_sound
    (D : FinitePlaceRamificationData) :
    D.finiteSound :=
  D.finiteSoundProof

theorem archimedean_label_sound
    (A : ArchimedeanLabel) :
    A.finiteSound :=
  A.finiteSoundProof

theorem finite_automorphic_euler_payload_sound
    (P : FiniteAutomorphicEulerPayload) :
    P.finiteSound :=
  P.finiteSoundProof

/-- A finite payload is not a construction of a global automorphic representation. -/
def FinitePayloadConstructsGlobalAutomorphicRepresentation
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own automorphy. -/
def FinitePayloadOwnsAutomorphy
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own cuspidality. -/
def FinitePayloadOwnsCuspidality
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own unitarity. -/
def FinitePayloadOwnsUnitarity
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own temperedness. -/
def FinitePayloadOwnsTemperedness
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own Euler product convergence. -/
def FinitePayloadOwnsEulerProductConvergence
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own Langlands functorial transfer. -/
def FinitePayloadOwnsLanglandsFunctorialTransfer
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

/-- A finite automorphic payload does not own a trace-formula comparison. -/
def FinitePayloadOwnsTraceFormulaComparison
    (_P : FiniteAutomorphicEulerPayload) : Prop :=
  False

theorem finite_payload_not_global_automorphic_representation
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadConstructsGlobalAutomorphicRepresentation P := by
  intro h
  exact h

theorem finite_payload_not_automorphy
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsAutomorphy P := by
  intro h
  exact h

theorem finite_payload_not_cuspidality
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsCuspidality P := by
  intro h
  exact h

theorem finite_payload_not_unitarity
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsUnitarity P := by
  intro h
  exact h

theorem finite_payload_not_temperedness
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsTemperedness P := by
  intro h
  exact h

theorem finite_payload_not_euler_product_convergence
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsEulerProductConvergence P := by
  intro h
  exact h

theorem finite_payload_not_langlands_functorial_transfer
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsLanglandsFunctorialTransfer P := by
  intro h
  exact h

theorem finite_payload_not_trace_formula_comparison
    (P : FiniteAutomorphicEulerPayload) :
    ¬ FinitePayloadOwnsTraceFormulaComparison P := by
  intro h
  exact h

/--
Boundary summary for the finite automorphic layer.

A finite automorphic Euler payload is finitely sound, it does not construct
the global automorphic representation, and it owns none of the analytic
automorphic boundary claims.
-/
theorem finite_automorphic_euler_payload_boundary_summary
    (P : FiniteAutomorphicEulerPayload) :
    P.finiteSound ∧
      ¬ FinitePayloadConstructsGlobalAutomorphicRepresentation P ∧
      ¬ FinitePayloadOwnsAutomorphy P ∧
      ¬ FinitePayloadOwnsCuspidality P ∧
      ¬ FinitePayloadOwnsUnitarity P ∧
      ¬ FinitePayloadOwnsTemperedness P ∧
      ¬ FinitePayloadOwnsEulerProductConvergence P ∧
      ¬ FinitePayloadOwnsLanglandsFunctorialTransfer P ∧
      ¬ FinitePayloadOwnsTraceFormulaComparison P :=
  ⟨P.finiteSoundProof,
    finite_payload_not_global_automorphic_representation P,
    finite_payload_not_automorphy P,
    finite_payload_not_cuspidality P,
    finite_payload_not_unitarity P,
    finite_payload_not_temperedness P,
    finite_payload_not_euler_product_convergence P,
    finite_payload_not_langlands_functorial_transfer P,
    finite_payload_not_trace_formula_comparison P⟩

end AutomorphicEulerProduct
end Number
