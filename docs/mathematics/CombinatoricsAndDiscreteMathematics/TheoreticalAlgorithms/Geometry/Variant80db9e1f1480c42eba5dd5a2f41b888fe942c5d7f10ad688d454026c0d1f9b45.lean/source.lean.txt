-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variante937b83dc97e807ce084c0962acd0989aba74c7040a8ab11051f29196aadaf7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e937b83dc97e807ce084c0962acd0989aba74c7040a8ab11051f29196aadaf7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityStage.Variante937b83dc97e807ce084c0962acd0989aba74c7040a8ab11051f29196aadaf7b","mathematical_subject":"Computation.DataStructures","original_sha256":"e937b83dc97e807ce084c0962acd0989aba74c7040a8ab11051f29196aadaf7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/target/referee_scope_production/src/formal/Formal/Geometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Geometry.Authority.Band
import Formal.Geometry.Authority.Row
import Formal.Geometry.Authority.Scheduler
import Formal.Geometry.Authority.Direction
import Formal.Geometry.Authority.Hash
import Formal.Geometry.Authority.Witness
import Formal.Geometry.Authority.Spectrum
import Formal.Geometry.Authority.Digest
import Formal.Geometry.Authority.Pipeline


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variante937b83dc97e807ce084c0962acd0989aba74c7040a8ab11051f29196aadaf7b

namespace Formal.Geometry

inductive AuthorityStage where
  | inputGeometry
  | rustWitness
  | carrierStream
  | proseStream
  | leanSource
  | leanKernelCheck
  deriving DecidableEq, Repr

def geometryGlob : String := "src/lib/geometry/**/*.*"

def formalRoot : String := "src/formal"

def authorityPipeline : List AuthorityStage :=
  [ AuthorityStage.inputGeometry
  , AuthorityStage.rustWitness
  , AuthorityStage.carrierStream
  , AuthorityStage.proseStream
  , AuthorityStage.leanSource
  , AuthorityStage.leanKernelCheck
  ]

def mayCloseTheoremAuthority : AuthorityStage -> Bool
  | AuthorityStage.leanKernelCheck => true
  | _ => false

def geometrySourcePaths : List String :=
  [ "src/lib/geometry/00_manifest.yml"
  , "src/lib/geometry/01_core_atom_grammar.yml"
  , "src/lib/geometry/02_formal_category.yml"
  , "src/lib/geometry/03_schema_lattice.yml"
  , "src/lib/geometry/04_prime_site_sheaf.yml"
  , "src/lib/geometry/05_centered_null_locus.yml"
  , "src/lib/geometry/06_schema_distances.yml"
  , "src/lib/geometry/07_dimal_embedding.yml"
  , "src/lib/geometry/08_heat_flow_stability.yml"
  , "src/lib/geometry/09_minimal_example.yml"
  , "src/lib/geometry/10_pseudocode.yml"
  , "src/lib/geometry/11_rigour_vs_analogy.yml"
  , "src/lib/geometry/12_checksums.yml"
  , "src/lib/geometry/13_formal_semantics.yml"
  , "src/lib/geometry/14_dangerous_bends.yml"
  , "src/lib/geometry/15_logical_dependencies.yml"
  , "src/lib/geometry/16_finite_weighted_sum_boundary.yml"
  , "src/lib/geometry/17_etale_bounded_eml_poles.yml"
  , "src/lib/geometry/18_medoid_kakeya_heatflow.yml"
  , "src/lib/geometry/19_stateful_residue_stack_loop.yml"
  , "src/lib/geometry/20_authority_bit_matrix_pipeline.yml"
  , "src/lib/geometry/21_mlx_band_witness.yml"
  , "src/lib/geometry/CITATIONS.md"
  , "src/lib/geometry/README.md"
  , "src/lib/geometry/docs/framework.md"
  , "src/lib/geometry/docs/rigorous_vs_analogical.md"
  , "src/lib/geometry/examples/2-core.yaml"
  , "src/lib/geometry/examples/3-contact.yaml"
  , "src/lib/geometry/examples/5-user-v2.yaml"
  , "src/lib/geometry/examples/non_null_extension.yaml"
  , "src/lib/geometry/examples/null_value.yaml"
  , "src/lib/geometry/src/authority_bit_matrix/band.rs"
  , "src/lib/geometry/src/authority_bit_matrix/digest.rs"
  , "src/lib/geometry/src/authority_bit_matrix/direction.rs"
  , "src/lib/geometry/src/authority_bit_matrix/hash.rs"
  , "src/lib/geometry/src/authority_bit_matrix/mod.rs"
  , "src/lib/geometry/src/authority_bit_matrix/pipeline.rs"
  , "src/lib/geometry/src/authority_bit_matrix/row.rs"
  , "src/lib/geometry/src/authority_bit_matrix/scheduler.rs"
  , "src/lib/geometry/src/authority_bit_matrix/spectrum.rs"
  , "src/lib/geometry/src/authority_bit_matrix/witness.rs"
  , "src/lib/geometry/src/run_demo.rs"
  , "src/lib/geometry/src/schema_lattice.rs"
  ]

def authorityRustLeaves : List String :=
  [ "src/lib/geometry/src/authority_bit_matrix/band.rs"
  , "src/lib/geometry/src/authority_bit_matrix/row.rs"
  , "src/lib/geometry/src/authority_bit_matrix/scheduler.rs"
  , "src/lib/geometry/src/authority_bit_matrix/direction.rs"
  , "src/lib/geometry/src/authority_bit_matrix/hash.rs"
  , "src/lib/geometry/src/authority_bit_matrix/witness.rs"
  , "src/lib/geometry/src/authority_bit_matrix/spectrum.rs"
  , "src/lib/geometry/src/authority_bit_matrix/digest.rs"
  , "src/lib/geometry/src/authority_bit_matrix/pipeline.rs"
  ]

def authorityLeanLeaves : List String :=
  [ "src/formal/Formal/Geometry/Authority/Band.lean"
  , "src/formal/Formal/Geometry/Authority/Row.lean"
  , "src/formal/Formal/Geometry/Authority/Scheduler.lean"
  , "src/formal/Formal/Geometry/Authority/Direction.lean"
  , "src/formal/Formal/Geometry/Authority/Hash.lean"
  , "src/formal/Formal/Geometry/Authority/Witness.lean"
  , "src/formal/Formal/Geometry/Authority/Spectrum.lean"
  , "src/formal/Formal/Geometry/Authority/Digest.lean"
  , "src/formal/Formal/Geometry/Authority/Pipeline.lean"
  ]

def authorityLeafPairs : List (String × String) :=
  [ ("src/lib/geometry/src/authority_bit_matrix/band.rs", "src/formal/Formal/Geometry/Authority/Band.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/row.rs", "src/formal/Formal/Geometry/Authority/Row.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/scheduler.rs", "src/formal/Formal/Geometry/Authority/Scheduler.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/direction.rs", "src/formal/Formal/Geometry/Authority/Direction.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/hash.rs", "src/formal/Formal/Geometry/Authority/Hash.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/witness.rs", "src/formal/Formal/Geometry/Authority/Witness.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/spectrum.rs", "src/formal/Formal/Geometry/Authority/Spectrum.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/digest.rs", "src/formal/Formal/Geometry/Authority/Digest.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/pipeline.rs", "src/formal/Formal/Geometry/Authority/Pipeline.lean")
  ]

structure CheckTheoremAuthority where
  sourceGlob : String
  formalRoot : String
  inputStage : AuthorityStage
  closingStage : AuthorityStage
  requiredCommand : String
  nonAuthorityStages : List AuthorityStage
  deriving Repr

def check_theorem_authority : CheckTheoremAuthority :=
  { sourceGlob := geometryGlob
  , formalRoot := formalRoot
  , inputStage := AuthorityStage.inputGeometry
  , closingStage := AuthorityStage.leanKernelCheck
  , requiredCommand := "cd src/formal && lake build"
  , nonAuthorityStages :=
      [ AuthorityStage.inputGeometry
      , AuthorityStage.rustWitness
      , AuthorityStage.carrierStream
      , AuthorityStage.proseStream
      , AuthorityStage.leanSource
      ]
  }

theorem authority_pipeline_is_input_forward :
    authorityPipeline =
      [ AuthorityStage.inputGeometry
      , AuthorityStage.rustWitness
      , AuthorityStage.carrierStream
      , AuthorityStage.proseStream
      , AuthorityStage.leanSource
      , AuthorityStage.leanKernelCheck
      ] := by
  rfl

theorem geometry_manifest_is_recorded :
    "src/lib/geometry/00_manifest.yml" ∈ geometrySourcePaths := by
  simp [geometrySourcePaths]

theorem geometry_authority_pipeline_is_recorded :
    "src/lib/geometry/20_authority_bit_matrix_pipeline.yml" ∈ geometrySourcePaths := by
  simp [geometrySourcePaths]

theorem geometry_mlx_witness_is_recorded :
    "src/lib/geometry/21_mlx_band_witness.yml" ∈ geometrySourcePaths := by
  simp [geometrySourcePaths]

theorem geometry_source_manifest_count :
    geometrySourcePaths.length = 43 := by
  rfl

theorem authority_leaf_count :
    authorityRustLeaves.length = 9 := by
  rfl

theorem authority_rust_and_lean_leaf_counts_match :
    authorityRustLeaves.length = authorityLeanLeaves.length := by
  rfl

theorem authority_leaf_pairs_are_one_to_one_count :
    authorityLeafPairs.length = authorityRustLeaves.length := by
  rfl

theorem geometry_formal_root_is_src_formal :
    formalRoot = "src/formal" := by
  rfl

theorem input_geometry_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.inputGeometry = false := by
  rfl

theorem rust_witness_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.rustWitness = false := by
  rfl

theorem carrier_stream_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.carrierStream = false := by
  rfl

theorem prose_stream_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.proseStream = false := by
  rfl

theorem lean_source_alone_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.leanSource = false := by
  rfl

theorem lean_kernel_check_may_close_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.leanKernelCheck = true := by
  rfl

theorem only_lean_kernel_check_may_close_theorem_authority
    (stage : AuthorityStage)
    (h : mayCloseTheoremAuthority stage = true) :
    stage = AuthorityStage.leanKernelCheck := by
  cases stage <;> simp [mayCloseTheoremAuthority] at h ⊢

theorem check_theorem_authority_closes_at_lean_kernel_check :
    check_theorem_authority.closingStage = AuthorityStage.leanKernelCheck := by
  rfl

end Formal.Geometry
