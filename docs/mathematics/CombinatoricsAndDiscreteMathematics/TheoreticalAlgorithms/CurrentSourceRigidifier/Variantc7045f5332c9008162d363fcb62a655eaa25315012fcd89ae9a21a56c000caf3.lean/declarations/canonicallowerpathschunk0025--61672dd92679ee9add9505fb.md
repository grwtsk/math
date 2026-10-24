# canonicalLowerPathsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fc61abc4c8873d4d4f25e72fcecd7faa87bc28ee56ccbcb459a24f4055c0b37",
  "kind": "def",
  "lexical_name": "canonicalLowerPathsChunk0025",
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
  "slug": "canonicallowerpathschunk0025--61672dd92679ee9add9505fb",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35190,
    "line": 35123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61672dd92679ee9add9505fbcb66991474eeb9d87481134426a5cd91441f1017",
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

Occurrence: `declaration:4fc61abc4c8873d4d4f25e72fcecd7faa87bc28ee56ccbcb459a24f4055c0b37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35123–35190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def canonicalLowerPathsChunk0025 : List String :=
[
  "tools/functions/projection_project/normalize_supersessions.py",
  "tools/functions/projection_project/normalized_boundary.py",
  "tools/functions/projection_project/occurrence_sort_key.py",
  "tools/functions/projection_project/principal_path.py",
  "tools/functions/projection_project/project_canonicalize.py",
  "tools/functions/projection_project/project_id_value.py",
  "tools/functions/projection_project/project_path_ids.py",
  "tools/functions/projection_project/projection_bytes.py",
  "tools/functions/projection_project/projection_project.py",
  "tools/functions/projection_project/projection_project_digest.py",
  "tools/functions/projection_project/projection_project_main.py",
  "tools/functions/projection_project/provenance_ids.py",
  "tools/functions/projection_project/provenance_rank.py",
  "tools/functions/projection_project/relation_authority_name.py",
  "tools/functions/projection_project/relation_display_disposition.py",
  "tools/functions/projection_project/relation_rule_map.py",
  "tools/functions/projection_project/remove_cycle_internal_candidates.py",
  "tools/functions/projection_project/role_compatibility_rank.py",
  "tools/functions/projection_project/secondary_paths.py",
  "tools/functions/projection_project/select_parents.py",
  "tools/functions/projection_project/semantic_occurrence_id.py",
  "tools/functions/projection_project/sort_records.py",
  "tools/functions/projection_project/sorted_ids.py",
  "tools/functions/projection_project/specificity_rank.py",
  "tools/functions/projection_project/stable_hash.py",
  "tools/functions/projection_project/strip_nonsemantic_top_level.py",
  "tools/functions/projection_project/strip_relocation_fields.py",
  "tools/functions/projection_project/strongly_connected_components.py",
  "tools/functions/projection_validate/projection_validate.py",
  "tools/functions/projection_validate/projection_validate_main.py",
  "tools/functions/projection_validate/result.py",
  "tools/functions/proof_strategy_classify/children.py",
  "tools/functions/proof_strategy_classify/classify.py",
  "tools/functions/proof_strategy_classify/classify_walk.py",
  "tools/functions/proof_strategy_classify/constant_match.py",
  "tools/functions/proof_strategy_classify/strategy_classify_digest.py",
  "tools/functions/proof_strategy_classify/strategy_classify_main.py",
  "tools/functions/proof_strategy_classify/strategy_classify_read_ndjson.py",
  "tools/functions/proof_strategy_classify/strategy_classify_stable_id.py",
  "tools/functions/propose_invention.py",
  "tools/functions/public_phase_evidence.py",
  "tools/functions/python_assembly_targets.py",
  "tools/functions/python_segment_facade.py",
  "tools/functions/python_targets.py",
  "tools/functions/quotient_canonicalize.py",
  "tools/functions/rank_candidates.py",
  "tools/functions/rank_profiles.py",
  "tools/functions/rank_questions.py",
  "tools/functions/read_jsonl.py",
  "tools/functions/read_ndjson/name_neighborhoods_read_ndjson.py",
  "tools/functions/read_ndjson/projection_certify_read_ndjson.py",
  "tools/functions/recommend.py",
  "tools/functions/reconstruction_digest_bytes.py",
  "tools/functions/reconstruction_reconstruct.py",
  "tools/functions/record_activation_trace.py",
  "tools/functions/refactor_api_snapshot/canonical_set.py",
  "tools/functions/refactor_api_snapshot/is_compiler_auxiliary.py",
  "tools/functions/refactor_api_snapshot/snapshot.py",
  "tools/functions/refactor_api_snapshot/snapshot_compare.py",
  "tools/functions/refactor_apply/apply_candidate.py",
  "tools/functions/refactor_apply/changes.py",
  "tools/functions/refactor_apply/files.py",
  "tools/functions/refactor_apply/rollback.py",
  "tools/functions/refactor_apply/safe_target.py"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L35123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
