# Hilbert.LinearOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3935875074758d3c19d771e4716bbd8c7bc99273bf6ececaa717f85a2cb7ba1b",
  "kind": "structure",
  "lexical_name": "Hilbert.LinearOperator",
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
  "slug": "hilbert-linearoperator--2f68d40b7ecd851ef393d4eb",
  "source": {
    "blob": "c93e68989aefad6b3c3443a1551f123a09f118c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f68d40b7ecd851ef393d4eba8fdca1ed743a2e3adbeab969a933380324b6f88",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3935875074758d3c19d771e4716bbd8c7bc99273bf6ececaa717f85a2cb7ba1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hilbert.LinearOperator
    (H K : Hilbert.Space.{u, v}) where
  domain : Hilbert.DenseDomain H
  map : H.carrier → K.carrier
  mapsDomain : Prop
  mapsDomainCertified : mapsDomain
  linear : Prop
  linearCertified : linear
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93e68989aefad6b3c3443a1551f123a09f118c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
