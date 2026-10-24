# canonicalPathsChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71271331f265c7a9d71d89ade9d3e46f5b725c2deb50c982d4e3879c190eae75",
  "kind": "def",
  "lexical_name": "canonicalPathsChunk0026",
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
  "slug": "canonicalpathschunk0026--766f5d0a785a22684b49e895",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33128,
    "line": 33061,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:766f5d0a785a22684b49e89561e9c852a9f8502d21639b954bbb42b58429e7c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71271331f265c7a9d71d89ade9d3e46f5b725c2deb50c982d4e3879c190eae75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33061–33128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def canonicalPathsChunk0026 : List String :=
[
  "tools/functions/refactor_apply/unified_patch.py",
  "tools/functions/refactor_candidate/candidate_run.py",
  "tools/functions/refactor_candidate/create_candidate.py",
  "tools/functions/refactor_candidate/ignore.py",
  "tools/functions/refactor_candidate/refresh_manifest.py",
  "tools/functions/refactor_candidate/validate_candidate.py",
  "tools/functions/refactor_canonical/audit_project_paths.py",
  "tools/functions/refactor_canonical/audit_relative_paths.py",
  "tools/functions/refactor_canonical/casefold_key.py",
  "tools/functions/refactor_canonical/governed_code_paths.py",
  "tools/functions/refactor_canonical/refactor_canonical_atomic_write.py",
  "tools/functions/refactor_canonical/refactor_canonical_file_digest.py",
  "tools/functions/refactor_canonical/refactor_canonical_id_text.py",
  "tools/functions/refactor_canonical/refactor_canonical_normalize.py",
  "tools/functions/refactor_canonical/refactor_canonical_read_json.py",
  "tools/functions/refactor_canonical/refactor_canonical_read_ndjson.py",
  "tools/functions/refactor_canonical/refactor_canonical_relative.py",
  "tools/functions/refactor_canonical/refactor_canonical_write_ndjson.py",
  "tools/functions/refactor_canonical/tree_digest.py",
  "tools/functions/refactor_canonical/validate_relative_path.py",
  "tools/functions/refactor_canonical/walk_without_symlinks.py",
  "tools/functions/refactor_canonical_digest.py",
  "tools/functions/refactor_canonical_text.py",
  "tools/functions/refactor_cli/analysis.py",
  "tools/functions/refactor_cli/attach_probe_receipts.py",
  "tools/functions/refactor_cli/clear_assurance_state.py",
  "tools/functions/refactor_cli/cli_parse_args.py",
  "tools/functions/refactor_cli/execute.py",
  "tools/functions/refactor_cli/log.py",
  "tools/functions/refactor_cli/refactor_cli_main.py",
  "tools/functions/refactor_cli/retain_failed_candidate.py",
  "tools/functions/refactor_cli/run_checked.py",
  "tools/functions/refactor_cli/run_clean_assurance.py",
  "tools/functions/refactor_cli/second_pass_idempotence.py",
  "tools/functions/refactor_cli/write_artifacts.py",
  "tools/functions/refactor_collapse_witness/build_witnesses.py",
  "tools/functions/refactor_collapse_witness/path_between.py",
  "tools/functions/refactor_collapse_witness/validate_witnesses.py",
  "tools/functions/refactor_command_graph/build_graph.py",
  "tools/functions/refactor_command_graph/context_changed.py",
  "tools/functions/refactor_command_graph/graph_edge.py",
  "tools/functions/refactor_command_graph/strong_components.py",
  "tools/functions/refactor_command_graph/write_graph.py",
  "tools/functions/refactor_constraints/cycle.py",
  "tools/functions/refactor_constraints/validate_plan.py",
  "tools/functions/refactor_corpus/build_capsules.py",
  "tools/functions/refactor_corpus/compiled_metadata.py",
  "tools/functions/refactor_corpus/corpus_reconstruct.py",
  "tools/functions/refactor_corpus/enrich_lean_elements.py",
  "tools/functions/refactor_corpus/ranges.py",
  "tools/functions/refactor_corpus/reviewed_coordinates.py",
  "tools/functions/refactor_emit_lean/compatibility_facade.py",
  "tools/functions/refactor_emit_lean/context_prelude.py",
  "tools/functions/refactor_emit_lean/import_header.py",
  "tools/functions/refactor_emit_python/extract_python_points.py",
  "tools/functions/refactor_emit_python/line_starts.py",
  "tools/functions/refactor_emit_python/node_start.py",
  "tools/functions/refactor_emit_python/node_stop.py",
  "tools/functions/refactor_emit_python/offset.py",
  "tools/functions/refactor_emit_python/semantic_kind.py",
  "tools/functions/refactor_emit_shell/emit_shell_validate.py",
  "tools/functions/refactor_emit_shell/extract_shell_points.py",
  "tools/functions/refactor_emit_shell/function_starts.py",
  "tools/functions/refactor_features/build_factors.py"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L33061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
