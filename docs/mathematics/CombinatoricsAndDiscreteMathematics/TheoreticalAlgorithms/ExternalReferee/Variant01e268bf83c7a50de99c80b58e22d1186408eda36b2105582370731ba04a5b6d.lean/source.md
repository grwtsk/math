# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalReferee.Variant01e268bf83c7a50de99c80b58e22d1186408eda36b2105582370731ba04a5b6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625531e127c686eb670b2d1d63e768b14f9f79af` · SHA-256 `f6e3f53edcdc2eb4bae10abe9cfd07f422bee7bde16d466991bbaaafcb3e21aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefereeFindingKind.Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RefereeFindingKind.Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850","mathematical_subject":"Computation.DataStructures","original_sha256":"7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/ExternalReferee.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefereeFindingKind.Variant7a5978e1d9e2aa173ffced26aaedcff0a05b8dbf7790a11becf461d531bdf850

set_option autoImplicit false

namespace Think.ResearchSurvey.ExternalReferee

/-
External research referee interface.

Every request to an outside referee should begin with `researchRefereePrompt`.
The result is advisory source selection only. It does not import theorem
authority; recommended targets are still represented as `Checked.residue`.
-/

def researchRefereePrompt : String :=
  "Please conduct external research using primary sources, then conduct a strict referee review of the repository boundary discipline. Return a prioritized list of theorems that should be formalized in the repo, with source identifiers, theorem labels, and the residue atoms that must remain explicit."

inductive RefereeFindingKind where
  | theoremTarget
  | definitionTarget
  | boundaryRisk
deriving DecidableEq, Repr

structure RefereeFinding where
  sourceId : String
  label : String
  kind : RefereeFindingKind
  reason : String
  residueAtoms : List String
  recommendedLeanFile : String
deriving DecidableEq, Repr

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

theorem recommendedTargets_count :
    recommendedTargets.length = 13 := by
  rfl

def findingResidue (finding : RefereeFinding) : Think.Residue :=
  { target := FWR.Target.ResearchSurvey
    atomId := finding.sourceId ++ ":" ++ finding.label
    kind := FWR.ResidueKind.externalTheoremNotImported
    blocks := "external referee recommendation is source guidance, not theorem authority"
    clearsBy := "local Lean definitions plus kernel-checked proof or certified theorem import" }

def checkedFinding (finding : RefereeFinding) : Think.Checked True :=
  FWR.Checked.residue [findingResidue finding]

theorem checkedFinding_hasResidue (finding : RefereeFinding) :
    (checkedFinding finding).hasResidue = true := by
  rfl

end Think.ResearchSurvey.ExternalReferee
```
