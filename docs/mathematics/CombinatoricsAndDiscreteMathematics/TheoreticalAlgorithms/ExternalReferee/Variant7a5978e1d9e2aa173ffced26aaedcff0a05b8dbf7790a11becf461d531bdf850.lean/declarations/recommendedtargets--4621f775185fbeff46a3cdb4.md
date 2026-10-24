# recommendedTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da9962f43217b819d271bc58fb661215c14ab259e6385c26fe987a400b2dabe1",
  "kind": "def",
  "lexical_name": "recommendedTargets",
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
  "slug": "recommendedtargets--4621f775185fbeff46a3cdb4",
  "source": {
    "blob": "9068f996ec43bb3a5136cfa03b5b4d0c8bb6f260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalReferee/Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4621f775185fbeff46a3cdb436f7a59df4b8ac2072cf732bb4fa7129d1242a89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalReferee/Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da9962f43217b819d271bc58fb661215c14ab259e6385c26fe987a400b2dabe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recommendedTargets : List RefereeFinding := [
  { sourceId := "Rado1964"
    label := "extension property and countable universality"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "Rado extension supplies the primary source theorem behind the heatflow witness-insertion boundary"
    residueAtoms := [
      "ambient_rado_graph",
      "rado_extension_property",
      "subset_and_induced_graph",
      "witness_insertion",
      "countable_exhaustion_limit",
      "total_objective_and_convergence"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/RadoUniversalGraph.lean" },
  { sourceId := "1407.2975v1"
    label := "Theorem 1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "finite and bounded blocking gives the closest primary-source theorem target for the roundtrip finite-blocker motif"
    residueAtoms := [
      "translation_surface_object",
      "torus_cover_predicate",
      "blocking_property_predicate",
      "bounded_blocking_predicate",
      "open_pair_set_predicate",
      "finite_blocking_on_open_set_predicate",
      "torus_cover_to_blocking",
      "blocking_to_open_set",
      "open_set_to_bounded_blocking",
      "bounded_blocking_to_torus_cover",
      "theorem_one_equivalence"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/EverythingIsIlluminated.lean" },
  { sourceId := "2603.20396"
    label := "main monoid-compression claims"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "compression motifs should guide the EML interface while remaining residue-bearing source targets"
    residueAtoms := [
      "formal_math_string_model",
      "human_math_compressibility_metric",
      "macro_set_density",
      "free_abelian_monoid_expansion",
      "free_nonabelian_monoid_bound",
      "mathlib_proxy_validity",
      "compression_motif_not_authority"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/CompressionModelingMathematics.lean" },
  { sourceId := "2301.08243"
    label := "I-JEPA objective"
    kind := RefereeFindingKind.definitionTarget
    reason :=
      "the in-repo conjecture seed interface should distinguish representation prediction from proof generation"
    residueAtoms := [
      "context_block_definition",
      "target_block_definition",
      "representation_prediction_objective",
      "masking_strategy",
      "non_generative_objective",
      "jepa_prediction_not_proof",
      "external_ml_result_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/IJEPAObjective.lean" },
  { sourceId := "2004.08934v3"
    label := "Theorem 1.14"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "Lorentzian synthetic optimal transport supplies causal metric-measure primitives for boundary stress testing"
    residueAtoms := [
      "lorentzian_prelength_space",
      "causal_relation",
      "time_separation",
      "optimal_coupling",
      "kantorovich_duality",
      "entropy_convexity",
      "synthetic_timelike_ricci_bound",
      "external_theorem_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/LorentzianSyntheticOT.lean" },
  { sourceId := "2408.15968v2"
    label := "Theorem 2.21"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "nonlinear causal differential calculus should be split into primitives before any comparison statement"
    residueAtoms := [
      "metric_measure_spacetime",
      "causal_function",
      "maximal_weak_subslope",
      "locality",
      "chain_rule",
      "leibniz_rule",
      "infinitesimal_minkowskianity",
      "timelike_mcp",
      "weak_p_dalembert_comparison"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/NonlinearDAlembertMMS.lean" },
  { sourceId := "2410.12632v1"
    label := "Theorem 1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "elliptic Lorentzian splitting is a high-risk analytic target that should remain external until primitives exist"
    residueAtoms := [
      "globally_hyperbolic_spacetime",
      "timelike_line",
      "energy_condition",
      "negative_homogeneity_p_dalembert",
      "elliptic_regularization",
      "splitting_conclusion",
      "classical_splitting_transfer_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/EllipticLorentzianSplitting.lean" },
  { sourceId := "2506.04934v3"
    label := "Theorem 4.6"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "synthetic null hypersurfaces supply gauge-invariance and stability motifs for replay payload comparison"
    residueAtoms := [
      "topological_causal_space",
      "closed_achronal_set",
      "gauge_function",
      "radon_measure",
      "synthetic_null_hypersurface",
      "synthetic_null_energy_condition",
      "gauge_invariance",
      "stability_under_convergence",
      "hawking_area_or_penrose_transfer_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/SyntheticNullHypersurfaces.lean" },
  { sourceId := "2211.10505v1"
    label := "Theorem 1.1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "orbit-equivalence classification has explicit flow, tree, sign, and boundary-action data for residue atomization"
    residueAtoms := [
      "transitive_anosov_flow",
      "pseudo_anosov_flow",
      "closed_3_manifold",
      "free_homotopy_class_set",
      "tree_of_scalloped_regions",
      "sign_data",
      "bifoliated_plane",
      "anosov_like_action",
      "orbit_equivalence_classification"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/PseudoAnosovOrbitEquiv.lean" },
  { sourceId := "2012.11811v4"
    label := "Theorem 1.1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "spectral rigidity for R-covered Anosov flows gives reusable primitives for orbit-equivalence targets"
    residueAtoms := [
      "r_covered_anosov_flow",
      "hyperbolic_like_action_on_line",
      "fundamental_group_periodic_orbit_elements",
      "orbit_equivalence",
      "spectral_rigidity",
      "self_orbit_equivalence_criterion",
      "contact_anosov_transfer_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/RCoveredAnosovOrbitEquiv.lean" },
  { sourceId := "1909.02324v3"
    label := "Theorem 1.1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "boundary-action stability separates topological group-action structure from imported rigidity authority"
    residueAtoms := [
      "negative_curvature_compact_manifold",
      "boundary_at_infinity",
      "standard_boundary_action",
      "nearby_homeomorphism_action",
      "semiconjugacy",
      "slithering_action",
      "global_rigidity",
      "external_rigidity_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/BoundaryActionsAnosov.lean" },
  { sourceId := "2005.11530v2"
    label := "Theorem 1.1"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "Liouville conformal bootstrap is valuable only after probability, spectral, and representation residues are explicit"
    residueAtoms := [
      "liouville_field_definition",
      "gaussian_multiplicative_chaos",
      "virasoro_highest_weight_module",
      "self_adjoint_operator_spectral_analysis",
      "three_point_structure_constants",
      "four_point_correlation",
      "bootstrap_hypothesis",
      "crossing_associativity",
      "external_cft_theorem_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/LiouvilleConformalBootstrap.lean" },
  { sourceId := "1408.3951v1"
    label := "Proposition 1.1 / Theorem 1.5"
    kind := RefereeFindingKind.theoremTarget
    reason :=
      "hyperbolic plug gluing gives construction primitives that should precede downstream flow classification targets"
    residueAtoms := [
      "hyperbolic_plug",
      "filtrating_neighborhood",
      "entrance_exit_boundary",
      "gluing_map",
      "transitive_anosov_vector_field",
      "nontransitive_anosov_vector_field",
      "prescribed_entrance_foliation",
      "gluing_theorem_not_imported"
    ]
    recommendedLeanFile :=
      "Think/ResearchSurvey/BuildingAnosovFlows.lean" }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalReferee/Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalReferee/Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9068f996ec43bb3a5136cfa03b5b4d0c8bb6f260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
