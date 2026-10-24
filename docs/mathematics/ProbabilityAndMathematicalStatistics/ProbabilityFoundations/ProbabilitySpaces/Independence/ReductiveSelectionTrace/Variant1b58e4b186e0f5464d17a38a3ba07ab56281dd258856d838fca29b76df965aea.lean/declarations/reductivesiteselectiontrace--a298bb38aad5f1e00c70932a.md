# ReductiveSiteSelectionTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:debaeb6dfceff8046658ac347388ea113916c3198e3e759c4e27117705d42866",
  "kind": "structure",
  "lexical_name": "ReductiveSiteSelectionTrace",
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
  "slug": "reductivesiteselectiontrace--a298bb38aad5f1e00c70932a",
  "source": {
    "blob": "424d0f329c544ca93442543d989b78ece746a8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 183,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a298bb38aad5f1e00c70932ac1733563774dae20557b0f14f5410a0a72643c40",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:debaeb6dfceff8046658ac347388ea113916c3198e3e759c4e27117705d42866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReductiveSiteSelectionTrace
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  identity : ArtifactIdentity
  digest : EvidenceDigest
  policy : RootTheoremConfiguration
  rootConfig : ArtifactIdentity
  rootConfigDigest : EvidenceDigest
  theoremRegistry : ArtifactIdentity
  theoremRegistryDigest : EvidenceDigest
  root_config_exact : rootConfig = policy.identity
  root_config_digest_exact : rootConfigDigest = policy.digest
  registry_exact : theoremRegistry = policy.registry.identity
  registry_digest_exact : theoremRegistryDigest = policy.registry.digest
  configuredStageOrder : List ArtifactIdentity
  configured_stage_order_exact :
    configuredStageOrder = policy.enabledStageOrder
  configuredStages : List ConfiguredAnalyticStagePin
  configured_stages_exact : configuredStages = policy.enabledStages
  siteUniverse : SurgicalSiteUniverse decomposition
  initialState : State
  initialCandidates : Finset decomposition.Piece
  initial_eq_eligible : initialCandidates = siteUniverse.eligible
  stageResults : List (ReductiveStageResult State decomposition objective)
  finalCandidates : Finset decomposition.Piece
  stage_order_exact :
    stageResults.map ReductiveStageResult.stageIdentity = configuredStageOrder
  stage_configurations_exact :
    stageResults.map ReductiveStageResult.configuredStage = configuredStages
  stage_chain_exact :
    StageResultChain initialState initialCandidates stageResults
  final_eq_fold :
    finalCandidates = foldStageResults initialCandidates stageResults
  allStagesReductive : ∀ result ∈ stageResults,
    result.outputCandidates ⊆ result.inputCandidates

namespace ReductiveSiteSelectionTrace

/--
Canonical trace constructor from one exact typed root policy and ordered stage
list.  Artifact digests remain explicit data; the set and stage-order laws are
kernel-checked here.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ReductiveSelectionTrace/Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424d0f329c544ca93442543d989b78ece746a8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
