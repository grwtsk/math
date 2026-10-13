import GRWTSK.DynamicalSystems.TransitionSystems.FinitePhraseProcess
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
  ``GRWTSK.FinitePhraseProcess.Section.restrict_identity,
  ``GRWTSK.FinitePhraseProcess.Section.restrict_composition,
  ``GRWTSK.FinitePhraseProcess.pivotLocalCompatible,
  ``GRWTSK.FinitePhraseProcess.pivot_unique_gluing,
  ``GRWTSK.FinitePhraseProcess.frame_transport_identity,
  ``GRWTSK.FinitePhraseProcess.frame_transport_composition,
  ``GRWTSK.FinitePhraseProcess.frame_transport_cocycle,
  ``GRWTSK.FinitePhraseProcess.decode_encode,
  ``GRWTSK.FinitePhraseProcess.encode_decode,
  ``GRWTSK.FinitePhraseProcess.pilot_quine_exact_carrier,
  ``GRWTSK.FinitePhraseProcess.pilot_quine_certificate_reconstruction,
  ``GRWTSK.FinitePhraseProcess.pilot_quine_minimality,
  ``GRWTSK.FinitePhraseProcess.clarify_source_is_revision,
  ``GRWTSK.FinitePhraseProcess.source_and_revision_are_not_exact,
  ``GRWTSK.FinitePhraseProcess.source_and_revision_are_structurally_equivalent,
  ``GRWTSK.FinitePhraseProcess.clarify_transition_congruence,
  ``GRWTSK.FinitePhraseProcess.induced_clarify_commutes,
  ``GRWTSK.FinitePhraseProcess.interpreter_preserves_structure,
  ``GRWTSK.FinitePhraseProcess.anchor_unit,
  ``GRWTSK.FinitePhraseProcess.pilot_text_scalar_length,
  ``GRWTSK.FinitePhraseProcess.pilot_local_compatible,
  ``GRWTSK.FinitePhraseProcess.pilot_phrase_unique_gluing,
  ``GRWTSK.FinitePhraseProcess.pilot_symbol_floor,
  ``GRWTSK.FinitePhraseProcess.pilot_potential_decreases,
  ``GRWTSK.FinitePhraseProcess.concrete_transition_coverage,
  ``GRWTSK.FinitePhraseProcess.concrete_transition_cost_coverage,
  ``GRWTSK.FinitePhraseProcess.pivot_stopping_envelope,
  ``GRWTSK.FinitePhraseProcess.contemplative_stopping_envelope,
  ``GRWTSK.FinitePhraseProcess.source_explanation_stopping_envelope,
  ``GRWTSK.FinitePhraseProcess.formal_stopping_envelope,
  ``GRWTSK.FinitePhraseProcess.transitional_pair_stopping_envelope,
  ``GRWTSK.FinitePhraseProcess.pilot_contract
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
