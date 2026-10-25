# TheoremTransferDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7336c90983694f54e01d5693b978ef3e18fbd2fa66c60be35f112eec42eb3fe",
  "kind": "structure",
  "lexical_name": "TheoremTransferDerivation",
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
  "slug": "theoremtransferderivation--4e7ec0041f2daf903fab03e5",
  "source": {
    "blob": "41cd029be2cacea36e5b3716963b31ff5d717fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e7ec0041f2daf903fab03e5618e96046c027bfc6f3045ad93eba3ce215a2aed",
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

Occurrence: `declaration:d7336c90983694f54e01d5693b978ef3e18fbd2fa66c60be35f112eec42eb3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TheoremTransferDerivation
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation) where
  derivationArtifact : VersionId
  sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions
  sourcePropositionInScope : PropositionWithinScope source sourceScope
    sourceTheorem.proposition
  targetTheorem : CertifiedTheorem targetVersion targetAssumptions
  targetTheoremExact : targetTheorem =
    transport_theorem translation preservation sourceTheorem
      sourcePropositionInScope
  targetPropositionInScope : PropositionWithinScope target targetScope
    targetTheorem.proposition
  dependencyGraph : TransferDependencyGraph.{0}
  sourceNode : dependencyGraph.Node
  targetNode : dependencyGraph.Node
  dependency : dependencyGraph.dependsOn sourceNode targetNode
  /-- Every composite leaf and intermediate semantic stage is ordered in the DAG. -/
  lineageRealization : TranslationLineageRealization dependencyGraph
    translation.lineage sourceNode targetNode
  sourceTheoryVersionExact :
    (dependencyGraph.node sourceNode).theoryVersionArtifact.identity =
      sourceVersion.artifact
  targetTheoryVersionExact :
    (dependencyGraph.node targetNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  sourceTheoremArtifactExact :
    (dependencyGraph.node sourceNode).theoremArtifact = some
      ⟨sourceTheorem.theoremArtifact⟩
  targetTheoremArtifactExact :
    (dependencyGraph.node targetNode).theoremArtifact = some
      ⟨targetTheorem.theoremArtifact⟩
  sourcePropositionArtifactExact :
    (dependencyGraph.node sourceNode).propositionArtifact = some
      ⟨sourceTheorem.propositionArtifact⟩
  targetPropositionArtifactExact :
    (dependencyGraph.node targetNode).propositionArtifact = some
      ⟨targetTheorem.propositionArtifact⟩
  edgeKindExact :
    (dependencyGraph.edge dependency).kind = .Preserves
  bridgeArtifactExact :
    (dependencyGraph.edge dependency).bridgeArtifact = translation.artifact
  evidenceArtifactExact :
    (dependencyGraph.edge dependency).evidenceArtifact =
      preservation.evidenceArtifact
  declaredInformationLoss : List InformationLossProfile
  informationLossExact : declaredInformationLoss = translation.informationLoss
  informationLossAssessment : ∀ profile, profile ∈ declaredInformationLoss →
    @InformationLossAssessment source target sourceFoundation targetFoundation
      sourceVersion targetVersion sourceAssumptions targetAssumptions
      sourceScope targetScope translation profile
  declaredCanonicality : List CanonicalityProfile
  canonicalityExact : declaredCanonicality = translation.canonicality
  lifecycle : TransferLifecycleLedger
  equivalenceRegime : Option (EquivalenceRegime target)
  soundnessLevel : TransferSoundnessLevel
  soundnessEvidence : TransferSoundnessEvidence translation preservation
    sourceTheorem targetTheorem equivalenceRegime soundnessLevel

/-!
Domain-neutral, proof-bearing fan-in aggregate required by FCRS-UTTA §§14–15.

The source theories may differ by index.  Each source retains its exact theory,
foundation, assumptions, scope, theorem, objects, witnesses, translation,
application event, preservation theorem, optional reflection theorem, and loss
ledger.  The target proof is interpreted from a typed inference expression
whose source leaves are indexed by the exact translated source propositions.
Every source index is structurally present in that expression and paired with
the dependency-graph edge for the same index.  This certifies proof-expression
leaf use; it deliberately does not claim the stronger, generally undecidable
counterfactual statement that deleting any premise makes the conclusion false.
`sourceHasFanIn` excludes a unary value, while `TheoremTransferDerivation` above
remains the useful unary specialization.
-/

/--
Proof-relevant syntax for a typed multi-source inference.

`source` is the only leaf constructor, so every leaf is definitionally tied to
one exact translated source proposition.  `inference` combines already-typed
subexpressions with a rule on reified proof objects rather than equating proofs
of a `Prop`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cd029be2cacea36e5b3716963b31ff5d717fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
