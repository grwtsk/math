import GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess
import Lean

/-!
Machine-readable evidence surface for the phrase-process pilot.

This check emits the fully elaborated declaration type, universe parameters,
environment ownership, expression hashes, and transitive axiom set for every
declaration that the transport receipt may cite.  The owner repository hashes
the emitted type text and binds it to the pinned source and toolchain.
-/

open Lean Elab Command

set_option pp.explicit true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.proofs true

private def selected : Array Name := #[
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.Section.restrict_identity,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.Section.restrict_composition,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pivotLocalCompatible,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pivot_unique_gluing,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.frame_transport_identity,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.frame_transport_composition,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.frame_transport_cocycle,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.decode_encode,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.encode_decode,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_quine_exact_carrier,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_quine_certificate_reconstruction,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_quine_separation,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_quine_universal_factorization,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.clarify_source_is_revision,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.source_and_revision_are_not_exact,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.source_and_revision_preserve_frame_role,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.bound_correction_changes_proposition,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.clarify_transition_congruence,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.induced_clarify_commutes,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.interpreter_preserves_structure,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.transport_interpreter_correspondence,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.execute_quote_self_core_materializes_description,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.execute_compose_materializes_order,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.execute_project_materializes_observations,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.anchor_unit,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_text_scalar_length,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_local_compatible,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_phrase_unique_gluing,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_composition_application,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_composition_preserves_shared_bindings,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_composition_retains_ordered_distinct_actions,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_pair_unique_local_gluing,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_pair_local_compatible,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_pair_joint_unique_gluing,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_pair_joint_gluing_retains_actions,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_process_execution_is_substantive,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.quoted_process_execution_is_substantive,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.two_legal_lamp_realizations,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_choice_potential_decreases,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_choice_path,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_choice_cost_realizes_symbols,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.lamp_realization_class_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.speaker_shift_rejected,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_symbol_floor,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_potential_decreases,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.concrete_transition_coverage,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.concrete_transition_cost_coverage,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pivot_stopping_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.contemplative_stopping_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.source_explanation_stopping_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.formal_stopping_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.transitional_pair_stopping_envelope,
  ``GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.TransitionSystems.FinitePhraseProcess.pilot_contract
]

elab "audit_finite_phrase_process_evidence" : command => do
  let env ← getEnv
  for name in selected do
    let some info := env.find? name |
      throwError "missing selected declaration: {name}"
    if info.isUnsafe then
      throwError "unsafe selected declaration: {name}"
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let ownerIndex := env.getModuleIdxFor? name
    let some ownerIndex := ownerIndex |
      throwError "selected declaration has no owner module: {name}"
    let owner := env.header.moduleNames[ownerIndex]!
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "other"
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("name", toJson name.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("type_expr_hash", toJson (toString info.type.hash)),
      ("body_expr_hash", toJson ((info.value? true).map (fun body => toString body.hash))),
      ("level_parameters", toJson (info.levelParams.map Name.toString)),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"PHRASE_PROCESS_DECL::{entry.compress}"
  logInfo m!"PHRASE_PROCESS_DECL_COUNT::{selected.size}"

audit_finite_phrase_process_evidence
