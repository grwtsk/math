# selectedOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29ff41b751b3edc26ca765feb6e57fe84887e054cdb002090886fdf69f482fbd",
  "kind": "def",
  "lexical_name": "selectedOptions",
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
  "slug": "selectedoptions--062a1446a3e8df1dfe425d91",
  "source": {
    "blob": "55c9ec7a31a17ec8261c60963c60bdafd64a5cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoProjectedHeatflow/Variantc7dded98c4b19de48e30766efdab7756d1b4ce9c49b82986063df7b991b3b073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:062a1446a3e8df1dfe425d917f75234d9543f97a8446d44a713a1d70351f4426",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoProjectedHeatflow/Variantc7dded98c4b19de48e30766efdab7756d1b4ce9c49b82986063df7b991b3b073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29ff41b751b3edc26ca765feb6e57fe84887e054cdb002090886fdf69f482fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectedOptions : SelectedOptions :=
  { subsetMode := "finite_induced"
    projection := "residue_directed + orbit_quotient"
    heatGraph := "hybrid: tree + phase/pole + target/witness + aggregator"
    heatKernel := "chebyshev_accelerated_laplacian_exp"
    group := "typed_wreath + phase_reflection"
    weightRule := "heat + residue_pressure + phase_symmetric + orbit_average"
    qCoefficients := "structural + phase + pole + residue + witness"
    residueModel := "weighted_additive + boundary_corrected"
    pairCorrelation := "montgomery_gue_regularizer"
    layout := "residue_shells"
    witnessPolicy := "on_residue_threshold"
    pruningPolicy := "contract_when_objective_decreases" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoProjectedHeatflow/Variantc7dded98c4b19de48e30766efdab7756d1b4ce9c49b82986063df7b991b3b073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoProjectedHeatflow/Variantc7dded98c4b19de48e30766efdab7756d1b4ce9c49b82986063df7b991b3b073.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c9ec7a31a17ec8261c60963c60bdafd64a5cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
