-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AdmissionStage.Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AdmissionStage.Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/PrimeWalkTrajectoryAdmission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkSpatialEncoding
public import Surface.Core.ProjectiveFubiniStudy
import Mathlib.Tactic

/-!
# Admission-safe projective trajectories

`S` in `SpatialEncodedTrajectory S ...` is a temporal signal of type
`ℝ → ℂ`; it is not a serialization typeclass.  This module therefore does
not install an `S` instance.  It adds the missing proof-carrying admission
boundary around a supplied spatial encoding.

There are two independent clocks:

* the path parameter and any simulation state may move according to the
  application model;
* the admission clock is an append-only logical clock.  Every record proves
  `controlFlowTick < kernelAdmissionTick < handshakeTick`, and the ledger
  proves `handshakeTick < next.controlFlowTick`.

Consequently, rewind, reset, or a repeated simulation state cannot collapse
two ledger admissions onto the same logical tick.  The executable sealers
return `Except AdmissionError ...`, distinguishing equality from regression.

Projective flatness is deliberately not inferred from serialized floating
point data.  A caller supplies a nonvanishing Hilbert-space path, an
observation map back to the signal, continuity, and a flat transport
certificate.  This is positive evidence along one path; it is not a claim of
zero curvature for an ambient projective connection.

No prismatic module is imported.  The Bhatt--Scholze delta operator belongs to
an algebraic delta-ring.  Tube thickness `delta`, superlevel thresholds, and
admission ticks remain geometric or operational data in separate namespaces.
-/


namespace GRWTSK.Topology.GeneralTopology.AdmissionStage.Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521

public section

namespace Surface.Core.PrimeWalkTrajectoryAdmission

open scoped LinearAlgebra.Projectivization
open Surface.Core.PrimeWalkSpatialEncoding

/-! ## Executable admission-clock validation -/

/-- The three ordered stages of one trajectory admission. -/
inductive AdmissionStage where
  | controlFlow
  | kernelAdmission
  | handshake
deriving DecidableEq, Repr, BEq

/-- The boundary currently checked by the executable validator. -/
inductive AdmissionBoundary where
  | controlFlowToKernelAdmission
  | kernelAdmissionToHandshake
  | handshakeToNextControlFlow
deriving DecidableEq, Repr, BEq

/-- Errors returned before an untrusted clock can enter the ledger. -/
inductive AdmissionError where
  | sameTick (boundary : AdmissionBoundary) (tick : Nat)
  | tickRegression (boundary : AdmissionBoundary) (earlier later : Nat)
  | stateDiscontinuity (recordIndex : Nat)
deriving DecidableEq, Repr, BEq

/-- Untrusted, serializable logical ticks for one admission. -/
structure AdmissionClockDraft where
  controlFlowTick : Nat
  kernelAdmissionTick : Nat
  handshakeTick : Nat
deriving DecidableEq, Repr, BEq

/-- A clock admitted only after both lifecycle inequalities are proved. -/
structure AdmissionClock extends AdmissionClockDraft where
  controlFlow_before_kernelAdmission :
    controlFlowTick < kernelAdmissionTick
  kernelAdmission_before_handshake :
    kernelAdmissionTick < handshakeTick

/-- Check one strict precedence edge, reporting equality separately from a
backwards edge. -/
@[expose]
def validatePrecedence
    (boundary : AdmissionBoundary) (earlier later : Nat) :
    Except AdmissionError (PLift (earlier < later)) :=
  if hlt : earlier < later then
    .ok ⟨hlt⟩
  else if _heq : earlier = later then
    .error (.sameTick boundary earlier)
  else
    .error (.tickRegression boundary earlier later)

/-- Seal an untrusted per-admission clock.  Serialization is downstream of
this function, never a substitute for it. -/
@[expose]
def sealAdmissionClock (draft : AdmissionClockDraft) :
    Except AdmissionError AdmissionClock :=
  match validatePrecedence .controlFlowToKernelAdmission
      draft.controlFlowTick draft.kernelAdmissionTick with
  | .error admissionError => .error admissionError
  | .ok controlBeforeKernel =>
      match validatePrecedence .kernelAdmissionToHandshake
          draft.kernelAdmissionTick draft.handshakeTick with
      | .error admissionError => .error admissionError
      | .ok kernelBeforeHandshake =>
          .ok
            { draft with
              controlFlow_before_kernelAdmission := controlBeforeKernel.down
              kernelAdmission_before_handshake := kernelBeforeHandshake.down }

/-- A transition whose analytic/geometric relation is already backed by
positive evidence.  The clock remains untrusted until sealing. -/
structure TransitionDraft (State : Type*) (Flat : State → State → Prop) where
  before : State
  after : State
  clock : AdmissionClockDraft
  flat : Flat before after

/-- One admitted transition.  Flatness evidence and logical precedence are
both present in the type. -/
structure AdmissionRecord (State : Type*) (Flat : State → State → Prop) where
  before : State
  after : State
  clock : AdmissionClock
  flat : Flat before after

/-- Validate the logical clock while preserving supplied flatness evidence. -/
@[expose]
def sealTransition
    {State : Type*} {Flat : State → State → Prop}
    (draft : TransitionDraft State Flat) :
    Except AdmissionError (AdmissionRecord State Flat) :=
  match sealAdmissionClock draft.clock with
  | .error admissionError => .error admissionError
  | .ok admittedClock =>
      .ok
        { before := draft.before
          after := draft.after
          clock := admittedClock
          flat := draft.flat }

/-! ## Adjacent ledger laws -/

/-- A proof that a relation holds at every adjacent boundary in a list. -/
inductive AdjacentChain {α : Type*} (relation : α → α → Prop) :
    List α → Prop where
  | nil : AdjacentChain relation []
  | singleton (value : α) : AdjacentChain relation [value]
  | cons {first second : α} {rest : List α}
      (head : relation first second)
      (tail : AdjacentChain relation (second :: rest)) :
      AdjacentChain relation (first :: second :: rest)

/-- An append-only ledger of admitted transitions.

The state-continuity field binds adjacent path pieces.  The precedence field
places the next control-flow stage strictly after the previous handshake. -/
structure AdmissionLedger (State : Type*) (Flat : State → State → Prop) where
  records : List (AdmissionRecord State Flat)
  state_continuity :
    AdjacentChain (fun previous next ↦ previous.after = next.before) records
  admission_precedence :
    AdjacentChain
      (fun previous next ↦
        previous.clock.handshakeTick < next.clock.controlFlowTick)
      records

/-- The dependent proof payload produced by the executable list validator. -/
structure LedgerChainEvidence
    {State : Type*} {Flat : State → State → Prop}
    (records : List (AdmissionRecord State Flat)) where
  state_continuity :
    AdjacentChain (fun previous next ↦ previous.after = next.before) records
  admission_precedence :
    AdjacentChain
      (fun previous next ↦
        previous.clock.handshakeTick < next.clock.controlFlowTick)
      records

def sealLedgerRecords
    {State : Type*} [DecidableEq State]
    {Flat : State → State → Prop} :
    (recordIndex : Nat) →
    (records : List (AdmissionRecord State Flat)) →
    Except AdmissionError (PLift (LedgerChainEvidence records))
  | _, [] => .ok ⟨⟨.nil, .nil⟩⟩
  | _, [record] => .ok ⟨⟨.singleton record, .singleton record⟩⟩
  | recordIndex, previous :: next :: rest =>
      if hstate : previous.after = next.before then do
        let hprecedence ←
          validatePrecedence .handshakeToNextControlFlow
            previous.clock.handshakeTick next.clock.controlFlowTick
        let tail ← sealLedgerRecords (recordIndex + 1) (next :: rest)
        pure
          ⟨⟨.cons hstate tail.down.state_continuity,
            .cons hprecedence.down tail.down.admission_precedence⟩⟩
      else
        .error (.stateDiscontinuity recordIndex)

/-- Validate continuity and cross-admission precedence before constructing a
ledger.  This is the executable rejection boundary for same-tick collapse. -/
@[expose]
def sealLedger
    {State : Type*} [DecidableEq State]
    {Flat : State → State → Prop}
    (records : List (AdmissionRecord State Flat)) :
    Except AdmissionError (AdmissionLedger State Flat) :=
  match sealLedgerRecords 0 records with
  | .error admissionError => .error admissionError
  | .ok evidence =>
      .ok
        { records
          state_continuity := evidence.down.state_continuity
          admission_precedence := evidence.down.admission_precedence }

/-! ## Kernel-checked lifecycle consequences -/

/-- Kernel admission is never serialized at the control-flow tick. -/
@[surface_novel, surface_published]
theorem AdmissionClock.controlFlowTick_ne_kernelAdmissionTick
    (clock : AdmissionClock) :
    clock.controlFlowTick ≠ clock.kernelAdmissionTick :=
  Nat.ne_of_lt clock.controlFlow_before_kernelAdmission

/-- Handshake is never serialized at the kernel-admission tick. -/
@[surface_novel, surface_published]
theorem AdmissionClock.kernelAdmissionTick_ne_handshakeTick
    (clock : AdmissionClock) :
    clock.kernelAdmissionTick ≠ clock.handshakeTick :=
  Nat.ne_of_lt clock.kernelAdmission_before_handshake

/-- The full per-admission precedence law. -/
@[surface_novel, surface_published]
theorem AdmissionClock.controlFlow_before_handshake
    (clock : AdmissionClock) :
    clock.controlFlowTick < clock.handshakeTick :=
  Nat.lt_trans clock.controlFlow_before_kernelAdmission
    clock.kernelAdmission_before_handshake

/-- A successful clock seal exposes the exact proof target; serialization does
not manufacture theorem authority. -/
@[surface_novel, surface_published]
theorem sealAdmissionClock_sound
    (draft : AdmissionClockDraft) (clock : AdmissionClock)
    (hseal : sealAdmissionClock draft = .ok clock) :
    clock.toAdmissionClockDraft = draft ∧
      clock.controlFlowTick < clock.kernelAdmissionTick ∧
      clock.kernelAdmissionTick < clock.handshakeTick := by
  by_cases hcontrol : draft.controlFlowTick < draft.kernelAdmissionTick
  · by_cases hkernel : draft.kernelAdmissionTick < draft.handshakeTick
    · simp [sealAdmissionClock, validatePrecedence, hcontrol, hkernel] at hseal
      subst clock
      exact ⟨rfl, hcontrol, hkernel⟩
    · by_cases hequal : draft.kernelAdmissionTick = draft.handshakeTick
      · have hcontrol' : draft.controlFlowTick < draft.handshakeTick := by
          simpa [hequal] using hcontrol
        simp [sealAdmissionClock, validatePrecedence, hcontrol', hequal] at hseal
      · simp [sealAdmissionClock, validatePrecedence, hcontrol, hkernel,
          hequal] at hseal
  · by_cases hequal : draft.controlFlowTick = draft.kernelAdmissionTick <;>
      simp [sealAdmissionClock, validatePrecedence, hcontrol, hequal] at hseal

/-- Equality is rejected explicitly rather than being folded into a generic
ordering failure. -/
@[surface_novel, surface_published]
theorem validatePrecedence_sameTick
    (boundary : AdmissionBoundary) (tick : Nat) :
    validatePrecedence boundary tick tick =
      .error (.sameTick boundary tick) := by
  simp [validatePrecedence]

/-- A backwards lifecycle edge is reported as a regression. -/
@[surface_novel, surface_published]
theorem validatePrecedence_regression
    (boundary : AdmissionBoundary) {earlier later : Nat}
    (hregression : later < earlier) :
    validatePrecedence boundary earlier later =
      .error (.tickRegression boundary earlier later) := by
  simp [validatePrecedence, Nat.not_lt.mpr (Nat.le_of_lt hregression),
    Nat.ne_of_gt hregression]

/-! ## Projective path and flat-transport admission -/

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- Projectivization of an explicitly nonvanishing Hilbert-space path. -/
@[expose]
noncomputable def projectiveTrajectory
    (state : ℝ → H) (state_ne_zero : ∀ parameter, state parameter ≠ 0) :
    ℝ → Projectivization ℂ H :=
  fun parameter ↦
    Projectivization.mk ℂ (state parameter) (state_ne_zero parameter)

/-- Endpoint-dependent, path-independent transport on the pullback ray bundle
along one projective trajectory.

This is a flat transport certificate along this path.  It does not assert that
an ambient projective connection has zero curvature. -/
structure ProjectivePathFlatnessCertificate
    (gamma : ℝ → Projectivization ℂ H) where
  transport :
    ∀ source target,
      (gamma source).submodule ≃ₗᵢ[ℂ] (gamma target).submodule
  transport_refl :
    ∀ parameter,
      transport parameter parameter =
        LinearIsometryEquiv.refl ℂ (gamma parameter).submodule
  transport_trans :
    ∀ first second third,
      transport first third =
        (transport first second).trans (transport second third)

/-- A supplied spatial encoding admitted together with a continuous,
nonvanishing Hilbert path, its signal observation, a strict transition ledger,
and flat projective transport.

The ledger state is the real path parameter.  Thus every record's `flat` field
proves that its target parameter is strictly later than its source parameter;
the independent `AdmissionClock` proves serialization order. -/
structure AdmittedProjectiveTrajectory
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain) where
  state : ℝ → H
  state_ne_zero : ∀ parameter, state parameter ≠ 0
  observation : H →L[ℂ] ℂ
  observation_state : ∀ parameter, observation (state parameter) = signal parameter
  gamma_continuous : Continuous (projectiveTrajectory state state_ne_zero)
  flatTransport :
    ProjectivePathFlatnessCertificate
      (projectiveTrajectory state state_ne_zero)
  ledger : AdmissionLedger ℝ (fun source target ↦ source < target)

/-- Honest existence proposition.  No global instance and no inhabitant for a
prime-error signal is installed by this module. -/
@[expose]
def HasAdmittedProjectiveTrajectory
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain) : Prop :=
  Nonempty (AdmittedProjectiveTrajectory (H := H) encoding)

/-- The projective path is definitionally tied to the supplied Hilbert path. -/
@[surface_novel, surface_published]
theorem projectiveTrajectory_apply
    (state : ℝ → H) (state_ne_zero : ∀ parameter, state parameter ≠ 0)
    (parameter : ℝ) :
    projectiveTrajectory state state_ne_zero parameter =
      Projectivization.mk ℂ (state parameter) (state_ne_zero parameter) :=
  rfl

/-- The admitted Hilbert path evaluates to the same temporal signal carried by
the spatial encoding. -/
@[surface_novel, surface_published]
theorem AdmittedProjectiveTrajectory.observes_signal
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain}
    (admitted : AdmittedProjectiveTrajectory (H := H) encoding)
    (parameter : ℝ) :
    admitted.observation (admitted.state parameter) = signal parameter :=
  admitted.observation_state parameter

/-- Flat transport has identity holonomy at every admitted path parameter. -/
@[surface_novel, surface_published]
theorem AdmittedProjectiveTrajectory.transport_identity
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain}
    (admitted : AdmittedProjectiveTrajectory (H := H) encoding)
    (parameter : ℝ) :
    admitted.flatTransport.transport parameter parameter =
      LinearIsometryEquiv.refl ℂ
        ((projectiveTrajectory admitted.state admitted.state_ne_zero parameter).submodule) :=
  admitted.flatTransport.transport_refl parameter

/-- Projective transport composes consistently across every three path
parameters, hence across every transition admitted from that path. -/
@[surface_novel, surface_published]
theorem AdmittedProjectiveTrajectory.transport_cocycle
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain}
    (admitted : AdmittedProjectiveTrajectory (H := H) encoding)
    (first second third : ℝ) :
    admitted.flatTransport.transport first third =
      (admitted.flatTransport.transport first second).trans
        (admitted.flatTransport.transport second third) :=
  admitted.flatTransport.transport_trans first second third

/-- Every admitted ledger record advances strictly along the real path
parameter, independently of its logical admission ticks. -/
@[surface_novel, surface_published]
theorem AdmittedProjectiveTrajectory.record_parameter_strict
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain}
    (admitted : AdmittedProjectiveTrajectory (H := H) encoding)
    (record : AdmissionRecord ℝ (fun source target ↦ source < target))
    (_record_mem : record ∈ admitted.ledger.records) :
    record.before < record.after :=
  record.flat

/-- Each admitted ledger transition has the projective transport certified for
its two endpoint parameters. -/
@[surface_novel, surface_published]
theorem AdmittedProjectiveTrajectory.record_has_flatTransport
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain}
    (admitted : AdmittedProjectiveTrajectory (H := H) encoding)
    (record : AdmissionRecord ℝ (fun source target ↦ source < target))
    (_record_mem : record ∈ admitted.ledger.records) :
    Nonempty
      ((projectiveTrajectory admitted.state admitted.state_ne_zero
          record.before).submodule ≃ₗᵢ[ℂ]
        (projectiveTrajectory admitted.state admitted.state_ne_zero
          record.after).submodule) :=
  ⟨admitted.flatTransport.transport record.before record.after⟩

end Surface.Core.PrimeWalkTrajectoryAdmission
