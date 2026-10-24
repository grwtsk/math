# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e655df12070859f27d0a8372e94f268290ab8b6cfa2b7ebdfc1073638257dc2",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--654d6deffed23b7d358b0f36",
  "source": {
    "blob": "b84d57bef917b742fc1eab24aa543cd9d3567f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 685,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:654d6deffed23b7d358b0f36a2a1c59617b27ebe7ece2ca0f0dd8ceabf7d77a0",
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

Occurrence: `declaration:8e655df12070859f27d0a8372e94f268290ab8b6cfa2b7ebdfc1073638257dc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main : IO Unit := do
  IO.FS.createDirAll "../fixtures/lean-generated"
  IO.FS.writeFile "../fixtures/lean-generated/eml-catalogue.json" emlCatalogueJson
  IO.FS.writeFile "../fixtures/lean-generated/extended-eml-coverage.json" extendedCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/measurable-coverage.json" measurableCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/fractal-coverage.json" fractalCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/zeta-mobius-fractal.json" zetaMobiusFractalJson
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-average.json" averageFixtureJson
  IO.FS.writeFile "../fixtures/lean-generated/paper-map.json" paperMapJson
  IO.FS.writeFile "../fixtures/lean-generated/foundations.json" foundationsJson
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-bijective.json" blmFlowBijectiveJson
  IO.FS.writeFile "../fixtures/lean-generated/flow-transport.json"
    (foundationFixtureJson "flow-transport" "FlowAutomorphismTransport"
      "bijectiveFiniteFlow" "binaryLogicMatrixFlow" "proved_bijective"
      "flowAutomorphismTransport_bijective"
      "not_claimed: arbitrary decode/encode pairs are faithful")
  IO.FS.writeFile "../fixtures/lean-generated/oracle-coverage.json"
    (foundationFixtureJson "oracle-coverage" "OracleRepresentableFunction"
      "oracle" "combined" "not_claimed"
      "oracleComputable_covered_by_extendedEML"
      "not_claimed: oracle-relative computation is ordinary computation")
  IO.FS.writeFile "../fixtures/lean-generated/heat-flow-coverage.json"
    (foundationFixtureJson "heat-flow-coverage" "HeatFlowRepresentableObject"
      "heatFlow" "heatTransport" "not_claimed"
      "heatFlowRepresentable_covered_by_extendedEML"
      "not_claimed: heat flow smoothing without a certificate")
  IO.FS.writeFile "../fixtures/lean-generated/heat-averaging.json"
    (foundationFixtureJson "heat-averaging" "CertifiedHeatAveragingOperator"
      "heatAveraging" "heatAveraging" "not_claimed"
      "heatFlow_decomposition_sound"
      "not_claimed: heat averaging is BinaryLogicMatrixFlow")
  IO.FS.writeFile "../fixtures/lean-generated/frame-commuting-flow.json"
    (foundationFixtureJson "frame-commuting-flow" "FrameCommutationCertificate"
      "homologyStability" "frameCommutingHeatTransport" "requires_certificate"
      "frameCommuting_flow_requires_commutation_certificate"
      "not_claimed: frame commutation implies homology invariance without quasi-isomorphism")
  IO.FS.writeFile "../fixtures/lean-generated/homology-stability.json"
    (foundationFixtureJson "homology-stability" "HomologyStabilityCertificate"
      "homologyStability" "chainHomotopyFlow" "requires_certificate"
      "HomologyStabilityCertificate.claimSound_id"
      "not_claimed: numerical Betti computation is a Lean proof")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-flow-coverage.json"
    (foundationFixtureJson "ricci-flow-coverage" "RicciFlowRepresentableObject"
      "ricciFlow" "ricciFlow" "not_claimed"
      "ricciFlowRepresentable_covered_by_extendedEML"
      "not_claimed: Ricci flow automatically stabilizes topology")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-surgery.json"
    (foundationFixtureJson "ricci-surgery" "RicciSurgeryStep"
      "ricciSurgery" "ricciFlowWithSurgery" "not_claimed"
      "ricciSurgery_topology_change_requires_twoSphere_surgery"
      "not_claimed: Dehn surgery is controlled by two-sphere surgery certificates")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-extinction-topology.json"
    (foundationFixtureJson "ricci-extinction-topology" "FiniteTimeExtinctionCertificate"
      "extinctionTopology" "finiteTimeExtinction" "not_claimed"
      "ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses"
      "not_claimed: every Ricci flow becomes extinct")
  IO.FS.writeFile "../fixtures/lean-generated/topological-stability.json"
    (foundationFixtureJson "topological-stability" "TopologicalStabilityCertificate"
      "infiniteTime" "infiniteTimeLimit" "not_claimed"
      "topologicalStability_requires_convergence_certificate"
      "not_claimed: stability without convergence certificate")
  IO.FS.writeFile "../fixtures/lean-generated/infinite-time-coverage.json"
    (foundationFixtureJson "infinite-time-coverage" "InfiniteTimeRepresentableFunction"
      "infiniteTime" "infiniteTimeLimit" "not_claimed"
      "infiniteTimeRepresentable_covered_by_extendedEML"
      "not_claimed: infinite time is finite execution")
  IO.FS.writeFile "../fixtures/lean-generated/choice-coverage.json"
    (foundationFixtureJson "choice-coverage" "ChoiceDependentObject"
      "choice" "combined" "not_claimed"
      "choiceCoverage_requires_foundation"
      "not_claimed: Choice is constructive")
  IO.FS.writeFile "../fixtures/lean-generated/vitali.json"
    (foundationFixtureJson "vitali" "VitaliSet"
      "choice" "combined" "not_claimed"
      "vitali_exists_under_choice"
      "not_claimed: Vitali set construction is choice-free")
  IO.FS.writeFile "../fixtures/lean-generated/eml-catalogue.sha256" (emlArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/extended-eml-coverage.sha256" (coverageArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/measurable-coverage.sha256" (measurableArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/fractal-coverage.sha256" (fractalArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/zeta-mobius-fractal.sha256" (zetaMobiusArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-average.sha256" (averageArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/paper-map.sha256" (paperMapArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/foundations.sha256"
    (foundationArtifactHash "foundations" ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-bijective.sha256"
    (bijectiveFlowArtifactHash ++ "\n")
  for name in [
    "flow-transport",
    "oracle-coverage",
    "heat-flow-coverage",
    "heat-averaging",
    "frame-commuting-flow",
    "homology-stability",
    "ricci-flow-coverage",
    "ricci-surgery",
    "ricci-extinction-topology",
    "topological-stability",
    "infinite-time-coverage",
    "choice-coverage",
    "vitali"
  ] do
    IO.FS.writeFile ("../fixtures/lean-generated/" ++ name ++ ".sha256")
      (foundationArtifactHash name ++ "\n")
  IO.println "wrote finite EML, reversible flow, foundation, coverage, and boundary fixtures"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d57bef917b742fc1eab24aa543cd9d3567f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
