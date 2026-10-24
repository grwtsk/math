# ContractionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a2bf5a2c7163faf5ed0d416e0dea71362f82ee3136eea75c8ee4ea2db0dc31a",
  "kind": "structure",
  "lexical_name": "ContractionCertificate",
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
  "slug": "contractioncertificate--b4b6357ff4c1060250f712dc",
  "source": {
    "blob": "9f8f1bd9c7264a28d23d3f818c413a719cd2769d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 7,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4b6357ff4c1060250f712dc5a92ad5e60a21ffbd35e7ae4c5fc842ae3f300c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a2bf5a2c7163faf5ed0d416e0dea71362f82ee3136eea75c8ee4ea2db0dc31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContractionCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  gainCertificate :
    ScaledDerivativeGainCertificate construction metric
  strictMargin :
    gainCertificate.numerator < gainCertificate.scale
  invariantDomain : construction.mapsDeclaredDomain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8f1bd9c7264a28d23d3f818c413a719cd2769d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
