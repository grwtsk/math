# averageFixtureJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfe25ab2891ce880042299800e5b3d0b79a3b46218e8ee1cad211ebfd2b59585",
  "kind": "def",
  "lexical_name": "averageFixtureJson",
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
  "slug": "averagefixturejson--32758545c2890f0f2c35ab7b",
  "source": {
    "blob": "b84d57bef917b742fc1eab24aa543cd9d3567f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 400,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32758545c2890f0f2c35ab7b23d2db7000cba855af80b8783867238ad23beeab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfe25ab2891ce880042299800e5b3d0b79a3b46218e8ee1cad211ebfd2b59585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def averageFixtureJson : String :=
  let F := canonicalAverageFlow
  let choice := F.spectralChoice
  let result := F.averageResult
  "{\n" ++
  "  \"schema\": \"surface.blm.spectral_average.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrixFlow.Core\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson averageArtifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["tao-averaged-navier-stokes"] ++ ",\n" ++
  "  \"operatorKind\": \"BinaryLogicMatrixSpectralAverage\",\n" ++
  "  \"logicalFoundation\": \"heatAveraging\",\n" ++
  "  \"evolutionMode\": \"heatAveraging\",\n" ++
  "  \"bijectivity\": \"not_claimed\",\n" ++
  "  \"bijectivityStatus\": \"not_claimed\",\n" ++
  "  \"gamma\": " ++ gammaJson ++ ",\n" ++
  "  \"gammaMode\": \"structural\",\n" ++
  "  \"gammaLevel\": 0,\n" ++
  "  \"precisionDirection\": \"baseline\",\n" ++
  "  \"centralTheorem\": \"spectralAverage_correct\",\n" ++
  "  \"provedTheorems\": " ++ stringArrayJson [
    "spectralAverage_correct",
    "spectralAverage_not_reversible_without_bijective_certificate",
    "average_none_iff_zero_divisor",
    "average_mean_sound",
    "spectralKernel_polynomial_defined"
  ] ++ ",\n" ++
  "  \"semanticStatus\": \"structural_coverage_only\",\n" ++
  "  \"domainStatus\": \"total_structural\",\n" ++
  "  \"branchStatus\": \"not_branch_sensitive\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    "structural_coverage_is_not_analytic_equality",
    "spectral_average_is_not_BinaryLogicMatrixFlow",
    "not_claimed: averaging is reversible",
    "not_claimed: averaging is runtime state transition",
    "rendering_has_no_mathematical_authority"
  ] ++ ",\n" ++
  "  \"paddingPolicy\": " ++ stringJson F.paddingPolicy.name ++ ",\n" ++
  "  \"comparisonWeights\": {\"value\": 1, \"padding\": 1},\n" ++
  "  \"spectralPolicy\": {\"kind\":\"polynomialKernel\",\"coeffs\":[" ++ ratJson 1 ++ "],\"anchor\":0},\n" ++
  "  \"commonDimensions\": {\"rows\":3,\"cols\":3},\n" ++
  "  \"sources\": [" ++
    paddedJson "source-a-kindOne" 2 2 paddedSourceA ++ "," ++
    paddedJson "source-b-kindOne" 3 3 paddedSourceB ++
  "],\n" ++
  "  \"comparisons\": [" ++
    String.intercalate "," ((List.finRange F.sourceCount).flatMap fun a =>
      (List.finRange F.sourceCount).map fun b => comparisonJson F a b) ++
  "],\n" ++
  "  \"spectralOperator\": {\"weightedAdjacency\":" ++ ratMatrixJson F.sourceCount F.comparisonGraph ++
    ",\"degree\":" ++ ratMatrixJson F.sourceCount F.degree ++
    ",\"laplacian\":" ++ ratMatrixJson F.sourceCount F.laplacian ++
    ",\"kernel\":" ++ ratMatrixJson F.sourceCount F.spectralKernel ++ "},\n" ++
  "  \"spectralChoice\": {\"selected\":" ++ boolIndexListJson choice.selected ++
    ",\"groupId\":" ++ toString choice.groupId ++
    ",\"group\":" ++ boolIndexListJson choice.group ++
    ",\"scope\":" ++ cellListJson choice.scope ++
    ",\"focus\":" ++ cellListJson choice.focus ++ "},\n" ++
  "  \"average\": " ++ averageCellsJson result.average ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"hashInput\": \"finite-eml-catalogue-plus-polynomial-kernel-average\"\n" ++
  "}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d57bef917b742fc1eab24aa543cd9d3567f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
