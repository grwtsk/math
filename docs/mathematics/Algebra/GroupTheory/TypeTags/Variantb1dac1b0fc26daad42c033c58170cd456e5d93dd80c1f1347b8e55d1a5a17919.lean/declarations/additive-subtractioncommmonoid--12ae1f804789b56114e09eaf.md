# Additive.subtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73211b796223c8242a9ff7e391c0a2e4df662b0152a7f0ebb2be8d750d6dda2a",
  "kind": "instance",
  "lexical_name": "Additive.subtractionCommMonoid",
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
  "slug": "additive-subtractioncommmonoid--12ae1f804789b56114e09eaf",
  "source": {
    "blob": "fc94c39e9852ca73cd58f4dea92129b23a45ce3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 387,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12ae1f804789b56114e09eaf3e5578bff334e47e0bc302c0413430c78e9d74df",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73211b796223c8242a9ff7e391c0a2e4df662b0152a7f0ebb2be8d750d6dda2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Additive.subtractionCommMonoid [DivisionCommMonoid α] :
    SubtractionCommMonoid (Additive α) :=
  { Additive.subtractionMonoid, Additive.addCommSemigroup with }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc94c39e9852ca73cd58f4dea92129b23a45ce3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
