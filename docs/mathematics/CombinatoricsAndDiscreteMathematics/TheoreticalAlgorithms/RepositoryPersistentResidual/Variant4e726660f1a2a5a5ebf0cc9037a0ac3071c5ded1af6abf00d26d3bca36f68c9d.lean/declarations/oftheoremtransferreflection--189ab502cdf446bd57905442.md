# ofTheoremTransferReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2745c9a2d8ffcc1c8bd219e77029f774a189071f8c46e9ce1409c1fb034d26b",
  "kind": "def",
  "lexical_name": "ofTheoremTransferReflection",
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
  "slug": "oftheoremtransferreflection--189ab502cdf446bd57905442",
  "source": {
    "blob": "ef78556f358fb196beaac204f303a4d2d3b6ac8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:189ab502cdf446bd579054421b1b59d6f631c9bb312aec6a92c99026efbb0794",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2745c9a2d8ffcc1c8bd219e77029f774a189071f8c46e9ce1409c1fb034d26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofTheoremTransferReflection
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (reflection : ReflectionTheorem translation)
    (proposition : source.Proposition)
    (inScope : PropositionWithinScope source sourceScope proposition) :
    IndependentReflectionCertificate where
  sourceStatement := sourceAssumptions.Holds → source.Holds proposition
  targetStatement := targetAssumptions.Holds →
    target.Holds (translation.mapProposition proposition)
  translationVersion := translation.artifact
  reflectionEvidenceVersion := reflection.evidenceArtifact
  law := fun targetProof sourceAssumptionsHold =>
    reflection.law.sound proposition inScope targetProof sourceAssumptionsHold

/-- Existing CF decoder yields paired observation injectivity only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RepositoryPersistentResidual/Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef78556f358fb196beaac204f303a4d2d3b6ac8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
