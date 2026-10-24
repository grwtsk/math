# operationsForRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce90a2b914b67e786fe05e84188f6c4d831248a0ea924fba800133ae026242c3",
  "kind": "def",
  "lexical_name": "operationsForRoot",
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
  "slug": "operationsforroot--5c9180d97ad11d49d0741525",
  "source": {
    "blob": "771d512c43ac89a8417ef369ee17c79b7b1d4bab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticBoundaryCompactification/Variant1b3c0eda76be2b13983bf509a2035506c080d3b80e3eb57f6b14039f4128352b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9180d97ad11d49d074152565b80160601a903886c1e27eaee8008476dba85d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticBoundaryCompactification/Variant1b3c0eda76be2b13983bf509a2035506c080d3b80e3eb57f6b14039f4128352b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce90a2b914b67e786fe05e84188f6c4d831248a0ea924fba800133ae026242c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def operationsForRoot :
    EmlAnalyticBoundaryRoot -> List EmlAnalyticOperation
  | .four_point_boundary_root => [
      .eml_import_four_point_boundary_normalization,
      .eml_validate_four_point_boundary_roles
    ]
  | .pole_boundary_root => [
      .eml_import_pole_boundary_normalization,
      .eml_define_analytic_boundary_compactification_bit,
      .eml_define_analytic_residue_polarity,
      .eml_define_pole_datum_to_boundary_bit,
      .eml_define_pole_datum_to_residue_polarity,
      .eml_validate_square_boundary_positive_nondegenerate,
      .eml_validate_nonsquare_boundary_negative_nondegenerate,
      .eml_validate_null_boundary_degenerate_without_residue,
      .eml_validate_bsd_type_boundary_braid_no_theorem_claim
    ]
  | .finite_phase_boundary_root => [
      .eml_import_finite_phase_bitmatrix_algebra,
      .eml_validate_midpoint_flow_separate_from_determinant_degeneracy
    ]
  | .derived_localization_boundary_root => [
      .eml_import_derived_localization,
      .eml_validate_derived_localization_residue_route
    ]
  | .spectral_triple_admissibility_root => [
      .eml_import_spectral_triple_admissibility,
      .eml_validate_candidate_spectral_triple_gate
    ]
  | .archimedean_scattering_boundary_root => [
      .eml_import_archimedean_scattering_boundary,
      .eml_validate_archimedean_relative_determinant_gate
    ]
  | .analysis_bridge_root => [
      .eml_import_analysis_bridge,
      .eml_validate_analysis_bridge_obligations
    ]
  | .arithmetic_boundary_index_root => [
      .eml_import_arithmetic_boundary_index,
      .eml_build_analytic_boundary_tree_forest,
      .eml_validate_boundary_tree_overlap_only_at_half,
      .eml_collect_boundary_residue_at_leaves,
      .eml_emit_formal_boundary_evidence
    ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticBoundaryCompactification/Variant1b3c0eda76be2b13983bf509a2035506c080d3b80e3eb57f6b14039f4128352b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticBoundaryCompactification/Variant1b3c0eda76be2b13983bf509a2035506c080d3b80e3eb57f6b14039f4128352b.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d512c43ac89a8417ef369ee17c79b7b1d4bab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
