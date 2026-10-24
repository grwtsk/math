# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Geometry.Variant90a22135606e8c46890d2a6f13c1eaead5b91d65b17bb578533e7ee5444e3ae9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be788c2045dc97d4c2a50723d9eefb4f0c7c15e8` · SHA-256 `a160105f08b02da69ac589a16e3bd2e7ef32491457dfc36d4c1879e77b4c627e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variantfa2ae6f716beeb65eb5fd0c263f599d6267a785dc7639f471a8a52f95d1dfb1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa2ae6f716beeb65eb5fd0c263f599d6267a785dc7639f471a8a52f95d1dfb1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AuthorityStage.Variantfa2ae6f716beeb65eb5fd0c263f599d6267a785dc7639f471a8a52f95d1dfb1f","mathematical_subject":"Computation.DataStructures","original_sha256":"fa2ae6f716beeb65eb5fd0c263f599d6267a785dc7639f471a8a52f95d1dfb1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/target/referee_scope_min/src/formal/Formal/Geometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuthorityStage.Variantfa2ae6f716beeb65eb5fd0c263f599d6267a785dc7639f471a8a52f95d1dfb1f

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
  , "src/lib/geometry/src/authority_bit_matrix.rs"
  , "src/lib/geometry/src/run_demo.rs"
  , "src/lib/geometry/src/schema_lattice.rs"
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
    geometrySourcePaths.length = 34 := by
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
```
