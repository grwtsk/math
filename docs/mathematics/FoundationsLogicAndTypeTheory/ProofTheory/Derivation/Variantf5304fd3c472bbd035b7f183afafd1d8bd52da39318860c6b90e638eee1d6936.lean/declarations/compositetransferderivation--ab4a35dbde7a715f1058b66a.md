# CompositeTransferDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64435d7141b34735df403137a776f90b2e155d5be1a74bbe37597c72dc24d045",
  "kind": "structure",
  "lexical_name": "CompositeTransferDerivation",
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
  "slug": "compositetransferderivation--ab4a35dbde7a715f1058b66a",
  "source": {
    "blob": "41cd029be2cacea36e5b3716963b31ff5d717fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 962,
    "line": 881,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab4a35dbde7a715f1058b66ac0cf646d97812cedff82b99ce6738b2dbc097bd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64435d7141b34735df403137a776f90b2e155d5be1a74bbe37597c72dc24d045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–962.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompositeTransferDerivation
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    {firstPreservation : PreservationTheorem first}
    {secondPreservation : PreservationTheorem second}
    (firstDerivation : @TheoremTransferDerivation
      source middle sourceFoundation middleFoundation
      sourceVersion middleVersion sourceAssumptions middleAssumptions
      sourceScope middleScope first firstPreservation)
    (secondDerivation : @TheoremTransferDerivation
      middle target middleFoundation targetFoundation
      middleVersion targetVersion middleAssumptions targetAssumptions
      middleScope targetScope second secondPreservation) where
  compositeArtifact : VersionId
  middleTheoremExact : secondDerivation.sourceTheorem =
    firstDerivation.targetTheorem
  combinedGraph : TransferDependencyGraph.{0}
  firstDerivationNode : combinedGraph.Node
  middleDerivationNode : combinedGraph.Node
  finalDerivationNode : combinedGraph.Node
  firstDependency :
    combinedGraph.dependsOn firstDerivationNode middleDerivationNode
  secondDependency :
    combinedGraph.dependsOn middleDerivationNode finalDerivationNode
  firstNodeTheoryVersionExact :
    (combinedGraph.node firstDerivationNode).theoryVersionArtifact.identity =
      sourceVersion.artifact
  middleNodeTheoryVersionExact :
    (combinedGraph.node middleDerivationNode).theoryVersionArtifact.identity =
      middleVersion.artifact
  finalNodeTheoryVersionExact :
    (combinedGraph.node finalDerivationNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  firstNodeTheoremExact :
    (combinedGraph.node firstDerivationNode).theoremArtifact = some
      ⟨firstDerivation.sourceTheorem.theoremArtifact⟩
  middleNodeTheoremExact :
    (combinedGraph.node middleDerivationNode).theoremArtifact = some
      ⟨firstDerivation.targetTheorem.theoremArtifact⟩
  finalNodeTheoremExact :
    (combinedGraph.node finalDerivationNode).theoremArtifact = some
      ⟨secondDerivation.targetTheorem.theoremArtifact⟩
  firstNodePropositionExact :
    (combinedGraph.node firstDerivationNode).propositionArtifact = some
      ⟨firstDerivation.sourceTheorem.propositionArtifact⟩
  middleNodePropositionExact :
    (combinedGraph.node middleDerivationNode).propositionArtifact = some
      ⟨firstDerivation.targetTheorem.propositionArtifact⟩
  finalNodePropositionExact :
    (combinedGraph.node finalDerivationNode).propositionArtifact = some
      ⟨secondDerivation.targetTheorem.propositionArtifact⟩
  firstEdgeKindExact : (combinedGraph.edge firstDependency).kind = .Preserves
  secondEdgeKindExact : (combinedGraph.edge secondDependency).kind = .Preserves
  firstBridgeArtifactExact :
    (combinedGraph.edge firstDependency).bridgeArtifact = first.artifact
  secondBridgeArtifactExact :
    (combinedGraph.edge secondDependency).bridgeArtifact = second.artifact
  firstEvidenceArtifactExact :
    (combinedGraph.edge firstDependency).evidenceArtifact =
      firstPreservation.evidenceArtifact
  secondEvidenceArtifactExact :
    (combinedGraph.edge secondDependency).evidenceArtifact =
      secondPreservation.evidenceArtifact

namespace CompositeTransferDerivation

/-- Canonical theorem obtained from both retained preservation components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cd029be2cacea36e5b3716963b31ff5d717fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
