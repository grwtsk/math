# WeierstrassApproximationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9555dc089eb45b6280cbdf59fa3e47cfdc31fe1d4b06f657d10269fb2397847e",
  "kind": "structure",
  "lexical_name": "WeierstrassApproximationCertificate",
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
  "slug": "weierstrassapproximationcertificate--7903f459b61dfadd3ef1f568",
  "source": {
    "blob": "84062d389a1d448e9c943eb656bfc79af72b4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7903f459b61dfadd3ef1f56846f8bb7b5f09b1680a1c6f2916673d2bf1955df6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9555dc089eb45b6280cbdf59fa3e47cfdc31fe1d4b06f657d10269fb2397847e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeierstrassApproximationCertificate where
  input : ComplexFixedV1
  g2Raw : Int
  g3Raw : Int
  approximate : ComplexFixedV1
  errorBound : ℚ
  analyticClaim : Prop
  analyticClaimCertified : analyticClaim

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84062d389a1d448e9c943eb656bfc79af72b4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
