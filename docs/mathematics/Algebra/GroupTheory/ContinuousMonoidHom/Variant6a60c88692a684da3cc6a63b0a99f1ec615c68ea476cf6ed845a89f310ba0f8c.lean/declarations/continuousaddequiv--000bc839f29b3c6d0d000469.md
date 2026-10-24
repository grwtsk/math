# ContinuousAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6eddac36181838b6ec3128a6bea4e20bfef95cff93354361d20e2729754cb07",
  "kind": "structure",
  "lexical_name": "ContinuousAddEquiv",
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
  "slug": "continuousaddequiv--000bc839f29b3c6d0d000469",
  "source": {
    "blob": "c83f258996c9e9410582ef8b3e4dd9cd680c08bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 313,
    "path": "GRWTSK/Algebra/GroupTheory/ContinuousMonoidHom/Variant6a60c88692a684da3cc6a63b0a99f1ec615c68ea476cf6ed845a89f310ba0f8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:000bc839f29b3c6d0d000469cad08d5a2eb7751ffe9e8e43a0ced5b0f143b4d1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ContinuousMonoidHom/Variant6a60c88692a684da3cc6a63b0a99f1ec615c68ea476cf6ed845a89f310ba0f8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6eddac36181838b6ec3128a6bea4e20bfef95cff93354361d20e2729754cb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousAddEquiv [Add G] [Add H] extends G ≃+ H, G ≃ₜ H

/-- The structure of two-sided continuous isomorphisms between groups.
Note that both the map and its inverse have to be continuous. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ContinuousMonoidHom/Variant6a60c88692a684da3cc6a63b0a99f1ec615c68ea476cf6ed845a89f310ba0f8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ContinuousMonoidHom/Variant6a60c88692a684da3cc6a63b0a99f1ec615c68ea476cf6ed845a89f310ba0f8c.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83f258996c9e9410582ef8b3e4dd9cd680c08bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
