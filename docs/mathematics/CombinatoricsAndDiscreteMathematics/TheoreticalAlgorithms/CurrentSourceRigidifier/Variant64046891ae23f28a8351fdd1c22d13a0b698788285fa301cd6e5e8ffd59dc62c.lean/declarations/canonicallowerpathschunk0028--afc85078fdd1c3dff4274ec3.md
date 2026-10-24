# canonicalLowerPathsChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de9f6b3b7f8aebcd394079f66c2db593fd2253e6ad7b257e821eb239f20fa72c",
  "kind": "def",
  "lexical_name": "canonicalLowerPathsChunk0028",
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
  "slug": "canonicallowerpathschunk0028--afc85078fdd1c3dff4274ec3",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35386,
    "line": 35319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc85078fdd1c3dff4274ec315da3fd3c43abdf7f2523ac6fdfb20417549a495",
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

Occurrence: `declaration:de9f6b3b7f8aebcd394079f66c2db593fd2253e6ad7b257e821eb239f20fa72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35319–35386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def canonicalLowerPathsChunk0028 : List String :=
[
  "tools/functions/source_value.py",
  "tools/functions/source_words.py",
  "tools/functions/split_neighborhood_requests.py",
  "tools/functions/stabilizer.py",
  "tools/functions/strategy_evaluate_main.py",
  "tools/functions/strategy_explain_main.py",
  "tools/functions/strict_canonical_json_serializers/bytes/formal_neighborhoods_canonical_bytes.py",
  "tools/functions/strict_canonical_json_serializers/bytes/name_neighborhoods_canonical_bytes.py",
  "tools/functions/strict_canonical_json_serializers/bytes/quotient_canonical_bytes.py",
  "tools/functions/strict_canonical_json_serializers/oracle_canonical_bytes.py",
  "tools/functions/string.py",
  "tools/functions/string_list.py",
  "tools/functions/subtract_signals.py",
  "tools/functions/target_counts.py",
  "tools/functions/taxonomy_anchors/anchors_constant_name.py",
  "tools/functions/taxonomy_anchors/anchors_id_value.py",
  "tools/functions/taxonomy_anchors/anchors_result_expression.py",
  "tools/functions/taxonomy_anchors/anchors_walk.py",
  "tools/functions/taxonomy_anchors/entity_signals.py",
  "tools/functions/taxonomy_anchors/evaluate_domain.py",
  "tools/functions/taxonomy_anchors/evaluate_regions.py",
  "tools/functions/taxonomy_anchors/match_rule.py",
  "tools/functions/taxonomy_anchors/ratio_record.py",
  "tools/functions/taxonomy_anchors/region_centrality.py",
  "tools/functions/taxonomy_anchors/rule_strength.py",
  "tools/functions/taxonomy_anchors/segment_match.py",
  "tools/functions/taxonomy_anchors/tree_children.py",
  "tools/functions/taxonomy_anchors/validate_pack.py",
  "tools/functions/taxonomy_build_anchor_packs/anchor_packs_main.py",
  "tools/functions/taxonomy_build_anchor_packs/build_all.py",
  "tools/functions/taxonomy_build_anchor_packs/domain_record.py",
  "tools/functions/taxonomy_build_anchor_packs/pack.py",
  "tools/functions/taxonomy_build_anchor_packs/packs_canonical.py",
  "tools/functions/taxonomy_build_anchor_packs/packs_rule.py",
  "tools/functions/taxonomy_build_anchor_packs/packs_slug.py",
  "tools/functions/taxonomy_build_calibration_corpus/calibration_corpus_build.py",
  "tools/functions/taxonomy_build_calibration_corpus/calibration_corpus_main.py",
  "tools/functions/taxonomy_build_calibration_corpus/corpus_canonical.py",
  "tools/functions/taxonomy_build_calibration_corpus/corpus_id_value.py",
  "tools/functions/taxonomy_build_registry/add_children.py",
  "tools/functions/taxonomy_build_registry/build_registry.py",
  "tools/functions/taxonomy_build_registry/build_registry_canonical_json_bytes.py",
  "tools/functions/taxonomy_build_registry/build_registry_main.py",
  "tools/functions/taxonomy_build_registry/compute_canonical_paths.py",
  "tools/functions/taxonomy_build_registry/compute_ranks.py",
  "tools/functions/taxonomy_build_registry/did.py",
  "tools/functions/taxonomy_build_registry/registry_add.py",
  "tools/functions/taxonomy_build_registry/registry_slug.py",
  "tools/functions/taxonomy_calibrate_anchors/calibrate_anchors_main.py",
  "tools/functions/taxonomy_calibrate_anchors/evaluate.py",
  "tools/functions/taxonomy_coverage/coverage_id_value.py",
  "tools/functions/taxonomy_coverage/coverage_parse_args.py",
  "tools/functions/taxonomy_coverage/coverage_path_ids.py",
  "tools/functions/taxonomy_coverage/evidence_coordinates.py",
  "tools/functions/taxonomy_coverage/persistent_region.py",
  "tools/functions/taxonomy_coverage/ratio.py",
  "tools/functions/taxonomy_coverage/resolved_witnesses.py",
  "tools/functions/taxonomy_coverage/reviewer_is_resolved.py",
  "tools/functions/taxonomy_coverage/taxonomy_coverage_build.py",
  "tools/functions/taxonomy_coverage/taxonomy_coverage_canonical_json_bytes.py",
  "tools/functions/taxonomy_coverage/taxonomy_coverage_main.py",
  "tools/functions/taxonomy_coverage/witness_ids.py",
  "tools/functions/taxonomy_domain_change/domain_change_main.py",
  "tools/functions/taxonomy_domain_change/domain_change_validate.py"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L35319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
