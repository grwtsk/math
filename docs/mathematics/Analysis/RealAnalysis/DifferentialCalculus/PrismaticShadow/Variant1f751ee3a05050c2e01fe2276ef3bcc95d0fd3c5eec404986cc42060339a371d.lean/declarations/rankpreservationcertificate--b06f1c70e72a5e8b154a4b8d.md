# RankPreservationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d939ca836ad606566bbed877cfe6be4daf38f8a6f403c322442e02bfea9a637e",
  "kind": "structure",
  "lexical_name": "RankPreservationCertificate",
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
  "slug": "rankpreservationcertificate--b06f1c70e72a5e8b154a4b8d",
  "source": {
    "blob": "85512fd2cf1111bb28b988d4f34436a828f73749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b06f1c70e72a5e8b154a4b8d48acab3559d3cf7f908325a87ac506d6761b0769",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d939ca836ad606566bbed877cfe6be4daf38f8a6f403c322442e02bfea9a637e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RankPreservationCertificate where
  torsionFreeStableSubcomplex : Prop
  torsionFreeStableSubcomplexProof : torsionFreeStableSubcomplex
  rankPreservedAfterTensorReal : Prop
  rankPreservedAfterTensorRealProof : rankPreservedAfterTensorReal
  realHomologicalEquivalence : Prop
  realHomologicalEquivalenceProof : realHomologicalEquivalence

/-- Certificate for regularized backward recovery. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85512fd2cf1111bb28b988d4f34436a828f73749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
