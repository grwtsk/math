# StabilityScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e53cf0a24f86786daf99b483e640babf3b1fa11991a21be5d9d4e86d9fe3ad16",
  "kind": "structure",
  "lexical_name": "StabilityScope",
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
  "slug": "stabilityscope--427bf95bc3331e27869bbf4e",
  "source": {
    "blob": "e3fa4c59f16d3887a88d7751c2fdb3a3e30a08ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:427bf95bc3331e27869bbf4e22a092b31c7158dd29f70422e53e5edfee93c354",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e53cf0a24f86786daf99b483e640babf3b1fa11991a21be5d9d4e86d9fe3ad16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StabilityScope where
  activeRegion : ArtifactIdentity
  finiteCover : ArtifactIdentity
  modelVersions : ArtifactIdentity
  translationVersions : ArtifactIdentity
  assumptionContext : ArtifactIdentity
  authorityPolicy : ArtifactIdentity
  checkerSet : ArtifactIdentity
  timeHorizon : Nat
  stabilityProfile : ArtifactIdentity
  thresholdTuple : ArtifactIdentity
  evidenceIdentity : ArtifactIdentity
  deriving DecidableEq, Repr

/-- Semantic unit attached to one normalized energy term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3fa4c59f16d3887a88d7751c2fdb3a3e30a08ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
