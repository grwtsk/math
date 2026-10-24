# ResolventCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd428192fdbacdf44e84690cd1e05448180ffa0c0b8ec260a587913647a74a42",
  "kind": "structure",
  "lexical_name": "ResolventCircle",
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
  "slug": "resolventcircle--05ffae1a6d265e5b90ce3384",
  "source": {
    "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 257,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05ffae1a6d265e5b90ce338408becc38120490ec8288095abc1add7eb20b9f14",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd428192fdbacdf44e84690cd1e05448180ffa0c0b8ec260a587913647a74a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResolventCircle (A : H →L[ℂ] H) where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius
  contour_resolvent : Metric.sphere center radius ⊆ resolventSet ℂ A

namespace ResolventCircle

/-- The candidate selected by a certified resolvent circle. -/
@[expose, surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdf9d48707cf9984996c02d232aaa3cd14ed56b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
