# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e81bbb89d22fe2a1ea78f8c30861e0b45237ba28e4e6f5942a1de342d7af09c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a5c3beda4425af05c3121be4",
  "source": {
    "blob": "1f2b6aeb263ae7aab6363a6bdfe346dd0709ebfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5c3beda4425af05c3121be419b01ddcf34c89604e1b39d9809005afb5118b7c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e81bbb89d22fe2a1ea78f8c30861e0b45237ba28e4e6f5942a1de342d7af09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [X₂.Finite] [X₃.Finite] (r : X₂ ⟶ X₄) (b : X₃ ⟶ X₄) :
    (pullback r b).Finite :=
  finite_of_isPullback (IsPullback.of_hasPullback r b)

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FiniteProd/Variant41832f78aefb3a919f1d128a592239f5b3fccf2a01fe69a7d3be7e0bc0887de1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f2b6aeb263ae7aab6363a6bdfe346dd0709ebfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
