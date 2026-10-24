# smallGrothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2da7000879eb53bb117105d0df87baf35779c1c1dfec53c7c8852de46caa724c",
  "kind": "abbrev",
  "lexical_name": "smallGrothendieckTopology",
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
  "slug": "smallgrothendiecktopology--978c44a75aa10b53bdf7febf",
  "source": {
    "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 160,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:978c44a75aa10b53bdf7febf5e52800e30ad0ec89eefdae2e94a59dabda08513",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2da7000879eb53bb117105d0df87baf35779c1c1dfec53c7c8852de46caa724c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev smallGrothendieckTopology : GrothendieckTopology (P.Over ⊤ S) :=
  (MorphismProperty.Over.forget P ⊤ S).inducedTopology (S.overGrothendieckTopology P)

variable [Q.IsStableUnderBaseChange] [Q.HasOfPostcompProperty Q]

/-- The pretopology defined on the subcategory of `S`-schemes satisfying `Q` where coverings
are given by `P`-coverings in `S`-schemes satisfying `Q`.
The most common case is `P = Q`. In this case, this is simply surjective families
in `S`-schemes with `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d02013f5603aea09344ac6fdd5ea1cccaf77f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
