# canonicalLowerPathsChunk0027

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a2c0c9eabf5e5b49685dbeb3f8e05e51d8dbce6c4ae12cfcaecfc588a6b873e",
  "kind": "def",
  "lexical_name": "canonicalLowerPathsChunk0027",
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
  "slug": "canonicallowerpathschunk0027--541265884d79f51c4b1442e6",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35318,
    "line": 35251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:541265884d79f51c4b1442e6ddff90928cee823ee3a64f169217506b1277f755",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a2c0c9eabf5e5b49685dbeb3f8e05e51d8dbce6c4ae12cfcaecfc588a6b873e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35251–35318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def canonicalLowerPathsChunk0027 : List String :=
[
  "tools/functions/refactor_features/features_add.py",
  "tools/functions/refactor_materialize/existing_imports.py",
  "tools/functions/refactor_materialize/lean_header.py",
  "tools/functions/refactor_materialize/lean_is_context.py",
  "tools/functions/refactor_materialize/lean_source.py",
  "tools/functions/refactor_materialize/materialize.py",
  "tools/functions/refactor_materialize/materialize_fragment_language.py",
  "tools/functions/refactor_materialize/materialize_lean.py",
  "tools/functions/refactor_materialize/update_self_modules.py",
  "tools/functions/refactor_materialize/verified_fragments.py",
  "tools/functions/refactor_materialize/write.py",
  "tools/functions/refactor_module_plan/safe_token.py",
  "tools/functions/refactor_module_plan/solve.py",
  "tools/functions/refactor_module_plan/target.py",
  "tools/functions/refactor_module_plan/transitively_reduce_imports.py",
  "tools/functions/refactor_preflight/manifest_files.py",
  "tools/functions/refactor_preflight/preflight_run.py",
  "tools/functions/refactor_preflight/verify_manifest.py",
  "tools/functions/refactor_probe/lean_artifact.py",
  "tools/functions/refactor_probe/probe_materialized_points.py",
  "tools/functions/refactor_rollback_main.py",
  "tools/functions/refactor_source_trace/assemble_command_ledger.py",
  "tools/functions/refactor_source_trace/compiled_maps.py",
  "tools/functions/refactor_source_trace/context_transition_digest.py",
  "tools/functions/refactor_source_trace/id_key.py",
  "tools/functions/refactor_source_trace/load_compiled_ledger.py",
  "tools/functions/refactor_source_trace/range_contains.py",
  "tools/functions/refactor_source_trace/run_lean_tracer.py",
  "tools/functions/refactor_source_trace/source_trace_main.py",
  "tools/functions/refactor_source_trace/trace_parse_args.py",
  "tools/functions/refactor_source_trace/write_outputs.py",
  "tools/functions/regularity_status.py",
  "tools/functions/relative_absolute.py",
  "tools/functions/remove_empty_ancestors.py",
  "tools/functions/report_acceptance.py",
  "tools/functions/request.py",
  "tools/functions/request_surgery.py",
  "tools/functions/require_unique.py",
  "tools/functions/rewrite_lean_imports.py",
  "tools/functions/rigidifier_digest_text.py",
  "tools/functions/rotate_bitfield.py",
  "tools/functions/rotate_face.py",
  "tools/functions/rotate_face_signal.py",
  "tools/functions/rotation_k_face_orbit_count.py",
  "tools/functions/rotation_orbit_count.py",
  "tools/functions/sample_budget.py",
  "tools/functions/search.py",
  "tools/functions/select_best_profile.py",
  "tools/functions/selection_contract.py",
  "tools/functions/self_ledger_digest.py",
  "tools/functions/sha256_digest_records/byte_digest.py",
  "tools/functions/sha256_digest_records/project_digest_record.py",
  "tools/functions/sha_bytes/environment_canonical_sha256_bytes.py",
  "tools/functions/sha_bytes/inventory_enrich_sha256_bytes.py",
  "tools/functions/sha_bytes/refactor_canonical_sha256_bytes.py",
  "tools/functions/shared_context_tokens.py",
  "tools/functions/shell_assembly_targets.py",
  "tools/functions/shell_segment_facade.py",
  "tools/functions/shell_targets.py",
  "tools/functions/signal_is_zero.py",
  "tools/functions/source_evidence.py",
  "tools/functions/source_rigid_key_map.py",
  "tools/functions/source_row.py",
  "tools/functions/source_shape.py"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L35251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
