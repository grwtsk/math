# actualLeadingResidualEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85cba0a337c0361c72f00829e5fa7ebe209d13b2d80d39352328a71275b122b3",
  "kind": "def",
  "lexical_name": "actualLeadingResidualEnvelope",
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
  "slug": "actualleadingresidualenvelope--0fdca13ee05b8569be5bd9ff",
  "source": {
    "blob": "016de2f777aec174d60a833219449416c0923feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fdca13ee05b8569be5bd9ffa36a8061cb664fb78125d2621fc0fcdbc1e894d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85cba0a337c0361c72f00829e5fa7ebe209d13b2d80d39352328a71275b122b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLeadingResidualEnvelope (A : ℝ) : ℝ :=
  260 / A ^ 2 + 960 * 67 / A ^ 3 + logarithmicLeadingErrorEnvelope A +
    actualHeadFractionalEnvelope A

/-- Complete signed pairing retains the independently calibrated integer source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016de2f777aec174d60a833219449416c0923feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
