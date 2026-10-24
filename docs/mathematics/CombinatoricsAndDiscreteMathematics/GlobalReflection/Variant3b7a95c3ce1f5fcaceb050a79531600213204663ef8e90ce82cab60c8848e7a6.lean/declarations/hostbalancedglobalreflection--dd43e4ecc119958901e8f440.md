# HostBalancedGlobalReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f012d4d5f392b2eb47bf70ddbbf1c267d1ff2fb116df2eea30f58dbc222b0919",
  "kind": "structure",
  "lexical_name": "HostBalancedGlobalReflection",
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
  "slug": "hostbalancedglobalreflection--dd43e4ecc119958901e8f440",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2620,
    "line": 2553,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd43e4ecc119958901e8f4403e1feae443f9fa9cd34253909571a7702281395c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f012d4d5f392b2eb47bf70ddbbf1c267d1ff2fb116df2eea30f58dbc222b0919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2553–2620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HostBalancedGlobalReflection
    (Agent : Type*) [DecidableEq Agent] where
  supervision : SupervisedGlobalReflection Agent
  formalRefinement : OntologyRustLeanRefinement
  executionRefinement : MemoryComputeRefinement
  correction : GlobalCorrectionSelection
  formalDependency : DependencyId
  proofDependency : DependencyId
  executionDependency : DependencyId
  correctionGraphAligned : correction.graph = supervision.graph
  ontologyArtifactNode : Fin supervision.graph.nodeCount
  rustArtifactNode : Fin supervision.graph.nodeCount
  leanArtifactNode : Fin supervision.graph.nodeCount
  memoryArtifactNode : Fin supervision.graph.nodeCount
  computeArtifactNode : Fin supervision.graph.nodeCount
  ontologyArtifactExact :
    supervision.graph.node ontologyArtifactNode = {
      stratum := .ontology
      artifact := formalRefinement.ontologyToRust.source
    }
  rustArtifactExact :
    supervision.graph.node rustArtifactNode = {
      stratum := .rustSource
      artifact := formalRefinement.ontologyToRust.target
    }
  leanArtifactExact :
    supervision.graph.node leanArtifactNode = {
      stratum := .leanProof
      artifact := formalRefinement.rustToLean.target
    }
  memoryArtifactExact :
    supervision.graph.node memoryArtifactNode = {
      stratum := .memory
      artifact := executionRefinement.memoryToCompute.source
    }
  computeArtifactExact :
    supervision.graph.node computeArtifactNode = {
      stratum := .compute
      artifact := executionRefinement.memoryToCompute.target
    }
  ontologyToRustEdge : Fin supervision.graph.edgeCount
  rustToLeanEdge : Fin supervision.graph.edgeCount
  memoryToComputeEdge : Fin supervision.graph.edgeCount
  ontologyToRustGraphBinding :
    supervision.graph.edgeSource ontologyToRustEdge = ontologyArtifactNode ∧
      supervision.graph.edgeTarget ontologyToRustEdge = rustArtifactNode ∧
      supervision.graph.edgeDependency ontologyToRustEdge = formalDependency
  rustToLeanGraphBinding :
    supervision.graph.edgeSource rustToLeanEdge = rustArtifactNode ∧
      supervision.graph.edgeTarget rustToLeanEdge = leanArtifactNode ∧
      supervision.graph.edgeDependency rustToLeanEdge = proofDependency
  memoryToComputeGraphBinding :
    supervision.graph.edgeSource memoryToComputeEdge = memoryArtifactNode ∧
      supervision.graph.edgeTarget memoryToComputeEdge = computeArtifactNode ∧
      supervision.graph.edgeDependency memoryToComputeEdge = executionDependency
  memoryDemandPositive : 0 < supervision.hostPlan.demand.memoryUnits
  computeDemandPositive : 0 < supervision.hostPlan.demand.computeUnits
  selectedHostFeaturesNonempty :
    supervision.hostPlan.selectedFeatures.Nonempty
  componentCandidateScope :
    supervision.CandidateScoped ∧
      formalRefinement.ontologyToRust.CandidateScoped ∧
      formalRefinement.rustToLean.CandidateScoped ∧
      executionRefinement.memoryToCompute.CandidateScoped ∧
      correction.CandidateScoped

namespace HostBalancedGlobalReflection

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L2553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
