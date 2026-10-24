# Homology.KakeyaTubeCoverCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86193101f739284c7dc091182134550ff2944eb26fab4a6125d0cfef2d582006",
  "kind": "structure",
  "lexical_name": "Homology.KakeyaTubeCoverCertificate",
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
  "slug": "homology-kakeyatubecovercertificate--af946c190670b2a89c6cba4b",
  "source": {
    "blob": "cb8305c898a441712a40362320cc06abaaebb382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af946c190670b2a89c6cba4bf132ea2a4ee5d01654bb676c5dac95b355004a7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86193101f739284c7dc091182134550ff2944eb26fab4a6125d0cfef2d582006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Homology.KakeyaTubeCoverCertificate
    (K : Homology.KakeyaTubeCover) where
  wangZahlPartition : Prop
  wangZahlPartitionCertified : wangZahlPartition
  multiscaleTubeData : Prop
  multiscaleTubeDataCertified : multiscaleTubeData
  plankData : Prop
  plankDataCertified : plankData
  stickyAlternative : Prop
  stickyAlternativeCertified : stickyAlternative
  thickeningAlternative : Prop
  thickeningAlternativeCertified : thickeningAlternative
  zoomAlternative : Prop
  zoomAlternativeCertified : zoomAlternative
  plankArrangementAlternative : Prop
  plankArrangementAlternativeCertified : plankArrangementAlternative
  finiteStructuralOnly : Prop
  finiteStructuralOnlyCertified : finiteStructuralOnly
  finiteStructuralDataMatchesDashboard :
    K.refereeReady = true
  noQuantitativeKakeyaEstimateClaim : Prop
  noQuantitativeKakeyaEstimateClaimCertified :
    noQuantitativeKakeyaEstimateClaim
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaTubeCover/Variant9119150a1f9a161de38bc1ad35f05773c6c660ce39558e7976f68a4f19623921.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8305c898a441712a40362320cc06abaaebb382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
