# selected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2466514d2399a073fe57345b8542d40d670a6513267b2bbf69cdbeebf81a2794",
  "kind": "def",
  "lexical_name": "selected",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "selected--f1565ca5f5dd95f82eaf5138",
  "source": {
    "blob": "20a9bdca820ab10f28d685656899cc8c1da040b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 21,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess/Checks/Evidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1565ca5f5dd95f82eaf51389ed95dc2e66a07bfbb7da8fcbcc28caf092645ce",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess/Checks/Evidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2466514d2399a073fe57345b8542d40d670a6513267b2bbf69cdbeebf81a2794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
  ``GRWTSK.FinitePhraseProcess.pilot_quine_separation,
  ``GRWTSK.FinitePhraseProcess.pilot_quine_universal_factorization,
  ``GRWTSK.FinitePhraseProcess.clarify_source_is_revision,
  ``GRWTSK.FinitePhraseProcess.source_and_revision_are_not_exact,
  ``GRWTSK.FinitePhraseProcess.source_and_revision_preserve_frame_role,
  ``GRWTSK.FinitePhraseProcess.bound_correction_changes_proposition,
  ``GRWTSK.FinitePhraseProcess.clarify_transition_congruence,
  ``GRWTSK.FinitePhraseProcess.induced_clarify_commutes,
  ``GRWTSK.FinitePhraseProcess.interpreter_preserves_structure,
  ``GRWTSK.FinitePhraseProcess.transport_interpreter_correspondence,
  ``GRWTSK.FinitePhraseProcess.execute_quote_self_core_materializes_description,
  ``GRWTSK.FinitePhraseProcess.execute_compose_materializes_order,
  ``GRWTSK.FinitePhraseProcess.execute_project_materializes_observations,
  ``GRWTSK.FinitePhraseProcess.anchor_unit,
  ``GRWTSK.FinitePhraseProcess.pilot_text_scalar_length,
  ``GRWTSK.FinitePhraseProcess.pilot_local_compatible,
  ``GRWTSK.FinitePhraseProcess.pilot_phrase_unique_gluing,
  ``GRWTSK.FinitePhraseProcess.lamp_composition_application,
  ``GRWTSK.FinitePhraseProcess.lamp_composition_preserves_shared_bindings,
  ``GRWTSK.FinitePhraseProcess.lamp_composition_retains_ordered_distinct_actions,
  ``GRWTSK.FinitePhraseProcess.lamp_pair_unique_local_gluing,
  ``GRWTSK.FinitePhraseProcess.lamp_pair_local_compatible,
  ``GRWTSK.FinitePhraseProcess.lamp_pair_joint_unique_gluing,
  ``GRWTSK.FinitePhraseProcess.lamp_pair_joint_gluing_retains_actions,
  ``GRWTSK.FinitePhraseProcess.lamp_process_execution_is_substantive,
  ``GRWTSK.FinitePhraseProcess.quoted_process_execution_is_substantive,
  ``GRWTSK.FinitePhraseProcess.two_legal_lamp_realizations,
  ``GRWTSK.FinitePhraseProcess.lamp_choice_potential_decreases,
  ``GRWTSK.FinitePhraseProcess.lamp_choice_path,
  ``GRWTSK.FinitePhraseProcess.lamp_choice_cost_realizes_symbols,
  ``GRWTSK.FinitePhraseProcess.lamp_realization_class_envelope,
  ``GRWTSK.FinitePhraseProcess.speaker_shift_rejected,
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess/Checks/Evidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess/Checks/Evidence.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a9bdca820ab10f28d685656899cc8c1da040b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
