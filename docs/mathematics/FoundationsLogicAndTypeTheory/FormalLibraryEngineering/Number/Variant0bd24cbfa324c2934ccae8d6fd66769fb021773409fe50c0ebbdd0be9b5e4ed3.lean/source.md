# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Number.Variant0bd24cbfa324c2934ccae8d6fd66769fb021773409fe50c0ebbdd0be9b5e4ed3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11485d7108bb8c9e4569a1f1566ad6bd004cd64b` · SHA-256 `b76ae02b33896d4eef1ea48722137756e6f6afecc71240671c57df7fbb66c572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAnalyticNumberModel.Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteAnalyticNumberModel.Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419","mathematical_subject":"Foundations.Unclassified","original_sha256":"5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/Bridge/Number.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Bridge
import Number
import AnalyticNumber.Zeta

/-!
# Number → AnalyticNumber bridge

This is the second primitive bridge in the architecture.

A finite arithmetic payload may be projected into analytic-number-facing shadow
data only through explicit precision, error, and authority fields. This file
does not import Boolean. Boolean has already done its job once the data has
become `Number.ArithmeticPayload`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAnalyticNumberModel.Variant5c9ab5832f57919d18c390ef3d5dbd56830d9a339eb277a878aa805a6c5e4419

namespace AnalyticNumber
namespace Bridge
namespace Number

/--
Finite analytic-number model corresponding exactly to a finite arithmetic
payload.

This is the restricted finite analytic model. It carries exactly the finite
arithmetic information and no global analytic authority.
-/
structure FiniteAnalyticNumberModel where
  payload : _root_.Number.ArithmeticPayload

namespace FiniteAnalyticNumberModel

/-- Lift finite arithmetic payload data to the finite analytic-number model. -/
def ofFinite
    (P : _root_.Number.ArithmeticPayload) :
    FiniteAnalyticNumberModel where
  payload := P

/-- Project a finite analytic-number model back to finite arithmetic payload. -/
def toFinite
    (M : FiniteAnalyticNumberModel) :
    _root_.Number.ArithmeticPayload :=
  M.payload

@[simp] theorem toFinite_ofFinite
    (P : _root_.Number.ArithmeticPayload) :
    toFinite (ofFinite P) = P :=
  rfl

@[simp] theorem ofFinite_toFinite
    (M : FiniteAnalyticNumberModel) :
    ofFinite (toFinite M) = M := by
  cases M
  rfl

/-- Exact finite equivalence between arithmetic payload and finite model. -/
def exactEquivalence :
    _root_.Bridge.ExactFiniteEquivalence
      _root_.Number.ArithmeticPayload
      FiniteAnalyticNumberModel where
  toRight := ofFinite
  toLeft := toFinite
  leftInverse := toFinite_ofFinite
  rightInverse := ofFinite_toFinite

end FiniteAnalyticNumberModel

/--
Analytic-number shadow whose finite projection is an arithmetic payload.

The analytic object itself is outside this finite projection. The `authority`
field records whichever analytic certificate is being used.
-/
structure AnalyticNumberShadowPayload where
  analyticSourceHash : Nat
  projectedPayload : _root_.Number.ArithmeticPayload
  authority : AnalyticNumber.AnalyticCertificate
  projectionSound : Prop
  projectionSoundProof : projectionSound

/-- Number-to-AnalyticNumber bidirectional bridge. -/
structure NumberToAnalyticBridge where
  numberPayload : _root_.Number.ArithmeticPayload
  analyticShadow : AnalyticNumberShadowPayload

  precision : _root_.Bridge.Precision
  numberToAnalyticError : _root_.Bridge.ErrorBound
  analyticToNumberError : _root_.Bridge.ErrorBound

  numberToAnalyticSound : Prop
  numberToAnalyticProof : numberToAnalyticSound

  analyticToNumberSound : Prop
  analyticToNumberProof : analyticToNumberSound

  numberRoundTripSound : Prop
  numberRoundTripProof : numberRoundTripSound

  analyticRoundTripSound : Prop
  analyticRoundTripProof : analyticRoundTripSound

  bridgeSound : Prop
  bridgeSoundProof : bridgeSound

/-- The exact finite analytic-number model associated to the bridge. -/
def NumberToAnalyticBridge.toFiniteAnalyticNumberModel
    (B : NumberToAnalyticBridge) :
    FiniteAnalyticNumberModel :=
  FiniteAnalyticNumberModel.ofFinite B.numberPayload

/-- The finite arithmetic projection emitted by the analytic side. -/
def NumberToAnalyticBridge.projectAnalytic
    (B : NumberToAnalyticBridge) :
    _root_.Number.ArithmeticPayload :=
  B.analyticShadow.projectedPayload

theorem number_to_analytic_sound
    (B : NumberToAnalyticBridge) :
    B.numberToAnalyticSound :=
  B.numberToAnalyticProof

theorem analytic_to_number_sound
    (B : NumberToAnalyticBridge) :
    B.analyticToNumberSound :=
  B.analyticToNumberProof

theorem number_analytic_round_trip_sound
    (B : NumberToAnalyticBridge) :
    B.numberRoundTripSound ∧ B.analyticRoundTripSound :=
  ⟨B.numberRoundTripProof, B.analyticRoundTripProof⟩

theorem number_analytic_bridge_sound
    (B : NumberToAnalyticBridge) :
    B.numberPayload.finiteSound ∧
      B.analyticShadow.authority.sound ∧
      B.numberToAnalyticSound ∧
      B.analyticToNumberSound ∧
      B.bridgeSound :=
  ⟨B.numberPayload.finiteSoundProof,
    B.analyticShadow.authority.soundProof,
    B.numberToAnalyticProof,
    B.analyticToNumberProof,
    B.bridgeSoundProof⟩

/-- Finite arithmetic payloads do not own the full analytic-number object. -/
def ArithmeticPayloadOwnsFullAnalyticNumberObject
    (_P : _root_.Number.ArithmeticPayload) : Prop :=
  False

/-- Analytic shadows are projections, not full analytic-number objects. -/
def AnalyticNumberShadowIsFullAnalyticNumberObject
    (_A : AnalyticNumberShadowPayload) : Prop :=
  False

theorem arithmetic_payload_not_full_analytic_number_object
    (P : _root_.Number.ArithmeticPayload) :
    ¬ ArithmeticPayloadOwnsFullAnalyticNumberObject P := by
  intro h
  exact h

theorem analytic_shadow_not_full_analytic_number_object
    (A : AnalyticNumberShadowPayload) :
    ¬ AnalyticNumberShadowIsFullAnalyticNumberObject A := by
  intro h
  exact h

/--
Exact finite-stage bijection.

This is the precise place where bijectivity is valid: arithmetic payloads are
equivalent to finite analytic-number models carrying the same data.
-/
theorem arithmetic_payload_exactly_equivalent_to_finite_model :
    ∀ P : _root_.Number.ArithmeticPayload,
      FiniteAnalyticNumberModel.toFinite
        (FiniteAnalyticNumberModel.ofFinite P) = P :=
  FiniteAnalyticNumberModel.toFinite_ofFinite

/-- Bidirectional approximation is not global analytic ownership. -/
theorem bidirectional_bridge_does_not_give_full_analytic_ownership
    (B : NumberToAnalyticBridge) :
    ¬ ArithmeticPayloadOwnsFullAnalyticNumberObject B.numberPayload ∧
      ¬ AnalyticNumberShadowIsFullAnalyticNumberObject B.analyticShadow :=
  ⟨arithmetic_payload_not_full_analytic_number_object B.numberPayload,
    analytic_shadow_not_full_analytic_number_object B.analyticShadow⟩

/--
Summary of the Number → AnalyticNumber boundary.

The bridge is bidirectional and precision-bounded, but it does not collapse
finite arithmetic payloads into full analytic-number objects.
-/
theorem number_analytic_bridge_boundary_summary
    (B : NumberToAnalyticBridge) :
    B.numberPayload.finiteSound ∧
      B.analyticShadow.authority.sound ∧
      B.numberToAnalyticSound ∧
      B.analyticToNumberSound ∧
      B.numberRoundTripSound ∧
      B.analyticRoundTripSound ∧
      ¬ ArithmeticPayloadOwnsFullAnalyticNumberObject B.numberPayload ∧
      ¬ AnalyticNumberShadowIsFullAnalyticNumberObject B.analyticShadow :=
  ⟨B.numberPayload.finiteSoundProof,
    B.analyticShadow.authority.soundProof,
    B.numberToAnalyticProof,
    B.analyticToNumberProof,
    B.numberRoundTripProof,
    B.analyticRoundTripProof,
    arithmetic_payload_not_full_analytic_number_object B.numberPayload,
    analytic_shadow_not_full_analytic_number_object B.analyticShadow⟩

end Number
end Bridge
end AnalyticNumber
```
