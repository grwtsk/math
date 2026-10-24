# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Geometry.Variant647ebde5eee03a328a70b5be091802ef748f1dd700a87015129ba2c4fd3f05cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c91591abcc019c36d1bf78daeba86da2fd4ac79` · SHA-256 `923b893edbd559d6bc25e98156c1a252495d0220b877f0c61d0964983a19d04c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityStage.Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228","mathematical_subject":"Computation.DataStructures","original_sha256":"90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Checked/Geometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Formal.Checked.Geometry.Authority.Band
import Formal.Checked.Geometry.Authority.Row
import Formal.Checked.Geometry.Authority.Scheduler
import Formal.Checked.Geometry.Authority.Direction
import Formal.Checked.Geometry.Authority.Hash
import Formal.Checked.Geometry.Authority.Witness
import Formal.Checked.Geometry.Authority.Spectrum
import Formal.Checked.Geometry.Authority.Digest
import Formal.Checked.Geometry.Authority.Pipeline


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228

namespace Formal.Checked.Geometry

inductive AuthorityStage where
  | inputGeometry
  | rustWitness
  | boundary_matriciantStream
  | proseStream
  | leanSource
  | leanKernelCheck
  deriving DecidableEq, Repr

def geometryGlob : String := "src/lib/geometry/**/*.*"

def formalRoot : String := "src/formal"

def authorityPipeline : List AuthorityStage :=
  [ AuthorityStage.inputGeometry
  , AuthorityStage.rustWitness
  , AuthorityStage.boundary_matriciantStream
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
  , "src/lib/geometry/Cargo.toml"
  , "src/lib/geometry/README.md"
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
  , "src/lib/geometry/src/category/mod.rs"
  , "src/lib/geometry/src/category/morphism.rs"
  , "src/lib/geometry/src/embedding/features.rs"
  , "src/lib/geometry/src/embedding/mod.rs"
  , "src/lib/geometry/src/graph/distance.rs"
  , "src/lib/geometry/src/graph/landmarks.rs"
  , "src/lib/geometry/src/graph/mod.rs"
  , "src/lib/geometry/src/heat/laplacian.rs"
  , "src/lib/geometry/src/heat/mod.rs"
  , "src/lib/geometry/src/lib.rs"
  , "src/lib/geometry/src/null_locus.rs"
  , "src/lib/geometry/src/run_demo.rs"
  , "src/lib/geometry/src/schema/lattice.rs"
  , "src/lib/geometry/src/schema/mod.rs"
  , "src/lib/geometry/src/schema/node.rs"
  , "src/lib/geometry/src/schema/signature.rs"
  , "src/lib/geometry/src/schema_lattice.rs"
  , "src/lib/geometry/src/value.rs"
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
  [ "src/formal/Formal/Checked/Geometry/Authority/Band.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Row.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Scheduler.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Direction.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Hash.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Witness.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Spectrum.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Digest.lean"
  , "src/formal/Formal/Checked/Geometry/Authority/Pipeline.lean"
  ]

def authorityLeafPairs : List (String × String) :=
  [ ("src/lib/geometry/src/authority_bit_matrix/band.rs", "src/formal/Formal/Checked/Geometry/Authority/Band.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/row.rs", "src/formal/Formal/Checked/Geometry/Authority/Row.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/scheduler.rs", "src/formal/Formal/Checked/Geometry/Authority/Scheduler.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/direction.rs", "src/formal/Formal/Checked/Geometry/Authority/Direction.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/hash.rs", "src/formal/Formal/Checked/Geometry/Authority/Hash.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/witness.rs", "src/formal/Formal/Checked/Geometry/Authority/Witness.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/spectrum.rs", "src/formal/Formal/Checked/Geometry/Authority/Spectrum.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/digest.rs", "src/formal/Formal/Checked/Geometry/Authority/Digest.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/pipeline.rs", "src/formal/Formal/Checked/Geometry/Authority/Pipeline.lean")
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
      , AuthorityStage.boundary_matriciantStream
      , AuthorityStage.proseStream
      , AuthorityStage.leanSource
      ]
  }

theorem authority_pipeline_is_input_forward :
    authorityPipeline =
      [ AuthorityStage.inputGeometry
      , AuthorityStage.rustWitness
      , AuthorityStage.boundary_matriciantStream
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
    geometrySourcePaths.length = 58 := by
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

theorem boundary_matriciant_stream_is_not_theorem_authority :
    mayCloseTheoremAuthority AuthorityStage.boundary_matriciantStream = false := by
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

end Formal.Checked.Geometry
```
