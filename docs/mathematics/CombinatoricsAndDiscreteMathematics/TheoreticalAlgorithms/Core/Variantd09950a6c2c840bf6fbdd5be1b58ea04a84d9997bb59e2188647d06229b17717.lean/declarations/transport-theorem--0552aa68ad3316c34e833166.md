# transport_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:866600400f79d0afc7e8c55042c6aa91289b90c5d9f5ac7c88067015142bb91f",
  "kind": "def",
  "lexical_name": "transport_theorem",
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
  "slug": "transport-theorem--0552aa68ad3316c34e833166",
  "source": {
    "blob": "6c806c7b8e61ea23f40355751171c0dbeef12e2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 647,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0552aa68ad3316c34e833166b88622817302310b95cddef5541a2b0cf59c3aba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:866600400f79d0afc7e8c55042c6aa91289b90c5d9f5ac7c88067015142bb91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transport_theorem
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
    (preservation : PreservationTheorem translation)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (sourceInScope :
      PropositionWithinScope source sourceScope sourceTheorem.proposition) :
    CertifiedTheorem targetVersion targetAssumptions where
  theoremArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.theoremArtifact translation.artifact)
    preservation.evidenceArtifact
  propositionArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.propositionArtifact translation.artifact)
    preservation.evidenceArtifact
  proofArtifact := VersionId.composite
    (VersionId.composite sourceTheorem.proofArtifact translation.artifact)
    preservation.evidenceArtifact
  proposition := translation.mapProposition sourceTheorem.proposition
  proofObject := fun targetAssumptionsHold => target.reifyProofObject
    (preservation.law.sound sourceTheorem.proposition sourceInScope
      sourceTheorem.proof targetAssumptionsHold)

/--
First-class multi-source application for a homogeneous theorem aggregate.
Every member must independently satisfy the exact source scope.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c806c7b8e61ea23f40355751171c0dbeef12e2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
