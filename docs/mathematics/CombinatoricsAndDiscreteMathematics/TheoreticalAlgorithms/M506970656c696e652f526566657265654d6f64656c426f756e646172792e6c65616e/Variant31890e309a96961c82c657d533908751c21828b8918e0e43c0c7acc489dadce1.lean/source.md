# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e.Variant31890e309a96961c82c657d533908751c21828b8918e0e43c0c7acc489dadce1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a2c047dc8bda8be84d23401593565b7173c1e7c` · SHA-256 `a5d7e308b6667c21e0d8b36e3c265004be93ef92d7823f92863984e8240cb7fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefereeModelSurface.Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RefereeModelSurface.Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9","mathematical_subject":"Computation.DataStructures","original_sha256":"6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit0/Bit0/Bit0/Bit1/M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=0010001|role=proof_code_atom|slug=pipeline-refereemodelboundary|owner=canonical_owner|core=Pipeline/RefereeModelBoundary.lean|leaf=M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefereeModelSurface.Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9

set_option autoImplicit false

namespace Think.Pipeline

inductive RefereeModelSurface where
  | proExtendedThinking
  | other
deriving DecidableEq, Repr

inductive RefereeModelObservationSource where
  | carrierBrowserUi
  | modelSelfAttestation
  | absent
deriving DecidableEq, Repr

namespace RefereeModelSurface

def label : RefereeModelSurface -> String
  | proExtendedThinking => "Pro Extended Thinking"
  | other => "non_pro_extended_referee_surface"

def admitted : RefereeModelSurface -> Bool
  | proExtendedThinking => true
  | other => false

theorem pro_extended_admitted :
    admitted proExtendedThinking = true := by
  rfl

theorem other_refused :
    admitted other = false := by
  rfl

end RefereeModelSurface

namespace RefereeModelObservationSource

def admitted : RefereeModelObservationSource -> Bool
  | carrierBrowserUi => true
  | modelSelfAttestation => false
  | absent => false

theorem carrier_browser_ui_admitted :
    admitted carrierBrowserUi = true := by
  rfl

theorem model_self_attestation_refused :
    admitted modelSelfAttestation = false := by
  rfl

theorem absent_refused :
    admitted absent = false := by
  rfl

end RefereeModelObservationSource

def acceptedRefereeModelLabels : List String :=
  ["Pro Extended Thinking", "Extended Pro", "Pro • Extended"]

def refereeModelLabelAccepted (label : String) : Bool :=
  acceptedRefereeModelLabels.contains label

theorem extended_pro_label_accepted :
    refereeModelLabelAccepted "Extended Pro" = true := by
  rfl

theorem pro_bullet_extended_label_accepted :
    refereeModelLabelAccepted "Pro • Extended" = true := by
  rfl

structure RefereeModelObservation where
  source : RefereeModelObservationSource
  label : String
  surface : RefereeModelSurface
  sourceBound : Bool
deriving DecidableEq, Repr

namespace RefereeModelObservation

def admitted (o : RefereeModelObservation) : Bool :=
  o.source.admitted &&
    (o.sourceBound && (o.surface.admitted && refereeModelLabelAccepted o.label))

theorem extended_pro_browser_observation_admitted :
    admitted
        { source := RefereeModelObservationSource.carrierBrowserUi,
          label := "Extended Pro",
          surface := RefereeModelSurface.proExtendedThinking,
          sourceBound := true } = true := by
  rfl

theorem pro_bullet_extended_browser_observation_admitted :
    admitted
        { source := RefereeModelObservationSource.carrierBrowserUi,
          label := "Pro • Extended",
          surface := RefereeModelSurface.proExtendedThinking,
          sourceBound := true } = true := by
  rfl

theorem model_self_attestation_observation_refused
    (label : String) (surface : RefereeModelSurface) (sourceBound : Bool) :
    admitted
        { source := RefereeModelObservationSource.modelSelfAttestation,
          label := label,
          surface := surface,
          sourceBound := sourceBound } = false := by
  rfl

theorem self_attested_accepted_label_refused
    (surface : RefereeModelSurface) (sourceBound : Bool) :
    admitted
        { source := RefereeModelObservationSource.modelSelfAttestation,
          label := "Pro Extended Thinking",
          surface := surface,
          sourceBound := sourceBound } = false := by
  rfl

theorem unbound_browser_observation_refused
    (label : String) (surface : RefereeModelSurface) :
    admitted
        { source := RefereeModelObservationSource.carrierBrowserUi,
          label := label,
          surface := surface,
          sourceBound := false } = false := by
  rfl

end RefereeModelObservation

inductive CarrierCommunicationSurface where
  | chatgptToCarrier
  | carrierToCodex
  | codexToLocal
  | codexToGit
  | gitToCarrier
  | carrierToReferee
  | refereeToCarrier
  | carrierToChatgpt
deriving DecidableEq, Repr

inductive CarrierCommunicationTransport where
  | carrierEml
  | direct
  | absent
deriving DecidableEq, Repr

namespace CarrierCommunicationTransport

def admitted : CarrierCommunicationTransport -> Bool
  | carrierEml => true
  | direct => false
  | absent => false

theorem carrier_eml_admitted :
    admitted carrierEml = true := by
  rfl

theorem direct_refused :
    admitted direct = false := by
  rfl

theorem absent_refused :
    admitted absent = false := by
  rfl

end CarrierCommunicationTransport

structure CarrierCommunicationReceipt where
  surface : CarrierCommunicationSurface
  transport : CarrierCommunicationTransport
  carrierBound : Bool
  traceBound : Bool
  nonclaimsPreserved : Bool
deriving DecidableEq, Repr

namespace CarrierCommunicationReceipt

def admitted (r : CarrierCommunicationReceipt) : Bool :=
  r.transport.admitted && (r.carrierBound && (r.traceBound && r.nonclaimsPreserved))

theorem carrier_eml_receipt_admitted
    (surface : CarrierCommunicationSurface) :
    admitted
        { surface := surface,
          transport := CarrierCommunicationTransport.carrierEml,
          carrierBound := true,
          traceBound := true,
          nonclaimsPreserved := true } = true := by
  cases surface <;> rfl

theorem direct_receipt_refused
    (surface : CarrierCommunicationSurface)
    (carrierBound traceBound nonclaimsPreserved : Bool) :
    admitted
        { surface := surface,
          transport := CarrierCommunicationTransport.direct,
          carrierBound := carrierBound,
          traceBound := traceBound,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases carrierBound <;> cases traceBound <;> cases nonclaimsPreserved <;> rfl

theorem absent_receipt_refused
    (surface : CarrierCommunicationSurface)
    (carrierBound traceBound nonclaimsPreserved : Bool) :
    admitted
        { surface := surface,
          transport := CarrierCommunicationTransport.absent,
          carrierBound := carrierBound,
          traceBound := traceBound,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases carrierBound <;> cases traceBound <;> cases nonclaimsPreserved <;> rfl

end CarrierCommunicationReceipt

def requiredCarrierCommunicationSurfaces : List CarrierCommunicationSurface :=
  [ CarrierCommunicationSurface.chatgptToCarrier,
    CarrierCommunicationSurface.carrierToCodex,
    CarrierCommunicationSurface.codexToLocal,
    CarrierCommunicationSurface.codexToGit,
    CarrierCommunicationSurface.gitToCarrier,
    CarrierCommunicationSurface.carrierToReferee,
    CarrierCommunicationSurface.refereeToCarrier,
    CarrierCommunicationSurface.carrierToChatgpt ]

structure CarrierCommunicationGate where
  receipts : List CarrierCommunicationReceipt
  allRequiredCovered : Bool
  noUnmediatedPaths : Bool
deriving DecidableEq, Repr

namespace CarrierCommunicationGate

def admitted (g : CarrierCommunicationGate) : Bool :=
  g.allRequiredCovered && (g.noUnmediatedPaths && g.receipts.all CarrierCommunicationReceipt.admitted)

theorem singleton_carrier_receipt_admitted
    (surface : CarrierCommunicationSurface) :
    admitted
        { receipts :=
            [ { surface := surface,
                transport := CarrierCommunicationTransport.carrierEml,
                carrierBound := true,
                traceBound := true,
                nonclaimsPreserved := true } ],
          allRequiredCovered := true,
          noUnmediatedPaths := true } = true := by
  cases surface <;> rfl

theorem missing_communication_refuses_gate :
    admitted
        { receipts := [],
          allRequiredCovered := false,
          noUnmediatedPaths := true } = false := by
  rfl

theorem unmediated_paths_refuse_gate
    (receipts : List CarrierCommunicationReceipt) (allRequiredCovered : Bool) :
    admitted
        { receipts := receipts,
          allRequiredCovered := allRequiredCovered,
          noUnmediatedPaths := false } = false := by
  cases allRequiredCovered <;> simp [admitted]

end CarrierCommunicationGate

inductive CarrierCapability where
  | attachmentIngest
  | sourceRead
  | patchApply
  | gitStatus
  | gitCommit
  | gitPush
  | validation
  | codexReportCapture
  | rawShell
  | unscopedFilesystemWrite
deriving DecidableEq, Repr

namespace CarrierCapability

def advertised : CarrierCapability -> Bool
  | attachmentIngest => true
  | sourceRead => true
  | patchApply => true
  | gitStatus => true
  | gitCommit => true
  | gitPush => true
  | validation => true
  | codexReportCapture => true
  | rawShell => false
  | unscopedFilesystemWrite => false

def residue : CarrierCapability -> String
  | rawShell => "non_carrier_codex_path_refused"
  | unscopedFilesystemWrite => "carrier_capability_missing"
  | _ => "none"

theorem attachment_ingest_advertised :
    advertised attachmentIngest = true := by
  rfl

theorem source_read_advertised :
    advertised sourceRead = true := by
  rfl

theorem patch_apply_advertised :
    advertised patchApply = true := by
  rfl

theorem git_commit_advertised :
    advertised gitCommit = true := by
  rfl

theorem git_push_advertised :
    advertised gitPush = true := by
  rfl

theorem raw_shell_refused :
    advertised rawShell = false := by
  rfl

theorem unscoped_filesystem_write_refused :
    advertised unscopedFilesystemWrite = false := by
  rfl

end CarrierCapability

structure CarrierCapabilityReceipt where
  capability : CarrierCapability
  carrierBound : Bool
  scopeBound : Bool
  residueRouted : Bool
deriving DecidableEq, Repr

namespace CarrierCapabilityReceipt

def admitted (r : CarrierCapabilityReceipt) : Bool :=
  r.capability.advertised && (r.carrierBound && (r.scopeBound && r.residueRouted))

theorem advertised_scoped_receipt_admitted
    (capability : CarrierCapability)
    (h : capability.advertised = true) :
    admitted
        { capability := capability,
          carrierBound := true,
          scopeBound := true,
          residueRouted := true } = true := by
  cases capability <;> simp [admitted, CarrierCapability.advertised] at h ⊢

theorem raw_shell_receipt_refused
    (carrierBound scopeBound residueRouted : Bool) :
    admitted
        { capability := CarrierCapability.rawShell,
          carrierBound := carrierBound,
          scopeBound := scopeBound,
          residueRouted := residueRouted } = false := by
  cases carrierBound <;> cases scopeBound <;> cases residueRouted <;> rfl

theorem unscoped_write_receipt_refused
    (carrierBound scopeBound residueRouted : Bool) :
    admitted
        { capability := CarrierCapability.unscopedFilesystemWrite,
          carrierBound := carrierBound,
          scopeBound := scopeBound,
          residueRouted := residueRouted } = false := by
  cases carrierBound <;> cases scopeBound <;> cases residueRouted <;> rfl

end CarrierCapabilityReceipt

inductive RefereeBrowserHandoffState where
  | submitted
  | completed
  | frozen
  | unreachable
deriving DecidableEq, Repr

namespace RefereeBrowserHandoffState

def known : RefereeBrowserHandoffState -> Bool
  | submitted => true
  | completed => true
  | frozen => true
  | unreachable => true

def closureAdmitted : RefereeBrowserHandoffState -> Bool
  | completed => true
  | submitted => false
  | frozen => false
  | unreachable => false

theorem completed_closes :
    closureAdmitted completed = true := by
  rfl

theorem submitted_refuses_closure :
    closureAdmitted submitted = false := by
  rfl

theorem frozen_refuses_closure :
    closureAdmitted frozen = false := by
  rfl

theorem unreachable_refuses_closure :
    closureAdmitted unreachable = false := by
  rfl

end RefereeBrowserHandoffState

structure RefereePassGate where
  model : RefereeModelObservation
  communication : CarrierCommunicationGate
  browserHandoff : RefereeBrowserHandoffState
  githubInspectionRequired : Bool
  exactShaRequired : Bool
  nonclaimsPreserved : Bool
deriving DecidableEq, Repr

namespace RefereePassGate

def admitted (g : RefereePassGate) : Bool :=
  g.communication.admitted &&
    (g.browserHandoff.closureAdmitted &&
      (g.model.admitted &&
        (g.githubInspectionRequired && (g.exactShaRequired && g.nonclaimsPreserved))))

theorem pro_extended_gate_admitted :
    admitted
        { model :=
            { source := RefereeModelObservationSource.carrierBrowserUi,
              label := "Extended Pro",
              surface := RefereeModelSurface.proExtendedThinking,
              sourceBound := true },
          communication :=
            { receipts :=
                [ { surface := CarrierCommunicationSurface.chatgptToCarrier,
                    transport := CarrierCommunicationTransport.carrierEml,
                    carrierBound := true,
                    traceBound := true,
                    nonclaimsPreserved := true } ],
              allRequiredCovered := true,
              noUnmediatedPaths := true },
          browserHandoff := RefereeBrowserHandoffState.completed,
          githubInspectionRequired := true,
          exactShaRequired := true,
          nonclaimsPreserved := true } = true := by
  rfl

theorem non_pro_extended_gate_refused
    (communication : CarrierCommunicationGate)
    (browserHandoff : RefereeBrowserHandoffState)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model :=
            { source := RefereeModelObservationSource.carrierBrowserUi,
              label := "Extended Pro",
              surface := RefereeModelSurface.other,
              sourceBound := true },
          communication := communication,
          browserHandoff := browserHandoff,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases browserHandoff <;> cases githubInspectionRequired <;> cases exactShaRequired <;>
    cases nonclaimsPreserved <;> simp [admitted, RefereeModelObservation.admitted,
      RefereeModelSurface.admitted]

theorem self_attested_gate_refused
    (label : String) (surface : RefereeModelSurface) (sourceBound : Bool)
    (communication : CarrierCommunicationGate)
    (browserHandoff : RefereeBrowserHandoffState)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model :=
            { source := RefereeModelObservationSource.modelSelfAttestation,
              label := label,
              surface := surface,
              sourceBound := sourceBound },
          communication := communication,
          browserHandoff := browserHandoff,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases surface <;> cases sourceBound <;> cases browserHandoff <;>
    cases githubInspectionRequired <;> cases exactShaRequired <;>
    cases nonclaimsPreserved <;> simp [admitted, RefereeModelObservation.admitted,
      RefereeModelObservationSource.admitted]

theorem missing_communication_refuses_referee_gate
    (model : RefereeModelObservation)
    (browserHandoff : RefereeBrowserHandoffState)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model := model,
          communication :=
            { receipts := [],
              allRequiredCovered := false,
              noUnmediatedPaths := true },
          browserHandoff := browserHandoff,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  rfl

theorem unmediated_communication_refuses_referee_gate
    (model : RefereeModelObservation)
    (browserHandoff : RefereeBrowserHandoffState)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model := model,
          communication :=
            { receipts :=
                [ { surface := CarrierCommunicationSurface.chatgptToCarrier,
                    transport := CarrierCommunicationTransport.direct,
                    carrierBound := false,
                    traceBound := false,
                    nonclaimsPreserved := true } ],
              allRequiredCovered := true,
              noUnmediatedPaths := false },
          browserHandoff := browserHandoff,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  rfl

theorem frozen_browser_handoff_refuses_gate
    (model : RefereeModelObservation)
    (communication : CarrierCommunicationGate)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model := model,
          communication := communication,
          browserHandoff := RefereeBrowserHandoffState.frozen,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases h : communication.admitted <;> simp [admitted, h, RefereeBrowserHandoffState.closureAdmitted]

theorem unreachable_browser_handoff_refuses_gate
    (model : RefereeModelObservation)
    (communication : CarrierCommunicationGate)
    (githubInspectionRequired exactShaRequired nonclaimsPreserved : Bool) :
    admitted
        { model := model,
          communication := communication,
          browserHandoff := RefereeBrowserHandoffState.unreachable,
          githubInspectionRequired := githubInspectionRequired,
          exactShaRequired := exactShaRequired,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases h : communication.admitted <;> simp [admitted, h, RefereeBrowserHandoffState.closureAdmitted]

end RefereePassGate

def refereeModelResidueTerms : List String :=
  [ "referee_model_not_pro_extended",
    "referee_acceptance_verdict_with_wrong_model",
    "referee_browser_handoff_pending",
    "referee_browser_handoff_unavailable",
    "carrier_communication_receipt_missing",
    "non_carrier_communication_path",
    "carrier_capability_missing",
    "carrier_attachment_ingest_required",
    "carrier_source_edit_boundary_missing",
    "non_carrier_codex_path_refused",
    "git_commit_receipt_missing",
    "git_push_receipt_missing",
    "git_stage_failed",
    "git_commit_failed",
    "git_push_failed" ]

def refereeModelNonClaims : List String :=
  [ "pro_extended_thinking_is_scrutiny_setting_not_theorem_authority",
    "carrier_communication_receipts_are_transport_witnesses_not_truth_authority" ]

end Think.Pipeline
```
