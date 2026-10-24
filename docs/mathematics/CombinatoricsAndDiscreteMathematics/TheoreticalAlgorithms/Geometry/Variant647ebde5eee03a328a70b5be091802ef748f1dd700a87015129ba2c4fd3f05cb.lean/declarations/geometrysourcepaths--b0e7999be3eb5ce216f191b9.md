# geometrySourcePaths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13102cbd1ade78e099f0ee1d495bbd8f052bc91efb68bf6dce665d8fa5ceef9",
  "kind": "def",
  "lexical_name": "geometrySourcePaths",
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
  "slug": "geometrysourcepaths--b0e7999be3eb5ce216f191b9",
  "source": {
    "blob": "0c91591abcc019c36d1bf78daeba86da2fd4ac79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant647ebde5eee03a328a70b5be091802ef748f1dd700a87015129ba2c4fd3f05cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0e7999be3eb5ce216f191b9174596b47ff302bba3e6f9e03df20354318edb0b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant647ebde5eee03a328a70b5be091802ef748f1dd700a87015129ba2c4fd3f05cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13102cbd1ade78e099f0ee1d495bbd8f052bc91efb68bf6dce665d8fa5ceef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant647ebde5eee03a328a70b5be091802ef748f1dd700a87015129ba2c4fd3f05cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant647ebde5eee03a328a70b5be091802ef748f1dd700a87015129ba2c4fd3f05cb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c91591abcc019c36d1bf78daeba86da2fd4ac79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
