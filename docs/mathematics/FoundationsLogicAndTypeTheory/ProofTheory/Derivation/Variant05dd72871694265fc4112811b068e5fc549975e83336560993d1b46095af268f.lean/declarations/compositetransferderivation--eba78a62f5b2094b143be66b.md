# CompositeTransferDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a82eb6c9f5a114101193d4b44a214b98479559171056784ca9f9514a4334cda",
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
  "slug": "compositetransferderivation--eba78a62f5b2094b143be66b",
  "source": {
    "blob": "7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 873,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eba78a62f5b2094b143be66b3bb6f2311b9624c82c73cbb29f05ae60f51fad3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a82eb6c9f5a114101193d4b44a214b98479559171056784ca9f9514a4334cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–954.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
